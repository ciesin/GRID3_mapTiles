/**
 * Configuration for tile serving endpoints
 * Handles detection and fallback between self-hosted Caddy server and GitHub Pages
 */

export class TileConfig {
    constructor() {
        // Read Caddy configuration from environment or use defaults
        // In production, these can be overridden via Vite's import.meta.env
        const caddyHost = import.meta.env.VITE_CADDY_HOST || '127.0.0.1';
        const caddyPort = import.meta.env.VITE_CADDY_PORT || '3002';
        
        this.endpoints = {
            // Self-hosted Caddy server endpoints
            caddy: {
                pmtiles: `http://${caddyHost}:${caddyPort}/static`,
                mvt: `http://${caddyHost}:${caddyPort}/mvt`,
                health: `http://${caddyHost}:${caddyPort}/health`
            },
            // GitHub Pages fallback (direct PMTiles files)
            github: {
                pmtiles: null // Will be set based on repo name
            }
        };

        this.currentEndpoint = null;
        this.isLocalhost = false;
        this.isGitHubPages = false;
        this.repoName = '';
        this.basePath = '';
        
        this.detectEnvironment();
    }

    /**
     * Detect the current hosting environment
     */
    detectEnvironment() {
        this.isLocalhost = window.location.hostname === 'localhost' || 
                          window.location.hostname === '127.0.0.1';
        this.isGitHubPages = window.location.hostname.includes('github.io');
        
        if (this.isGitHubPages) {
            this.repoName = window.location.pathname.split('/')[1] || '';
            this.basePath = this.repoName ? `/${this.repoName}` : '';
            this.endpoints.github.pmtiles = `${this.basePath}/tiles`;
        } else if (this.isLocalhost) {
            this.basePath = '';
            this.endpoints.github.pmtiles = './tiles';
        }
    }

    /**
     * Check if the Caddy server is accessible
     * Returns a promise that resolves to true if accessible, false otherwise
     */
    async checkCaddyAvailability() {
        try {
            const controller = new AbortController();
            const timeoutId = setTimeout(() => controller.abort(), 2000); // 2 second timeout
            
            console.log(`🔍 Checking Caddy server at: ${this.endpoints.caddy.health}`);
            
            const response = await fetch(this.endpoints.caddy.health, {
                method: 'GET',
                mode: 'cors',
                signal: controller.signal
            });
            
            clearTimeout(timeoutId);
            console.log(`✅ Caddy server responded: ${response.status} ${response.statusText}`);
            return response.ok;
        } catch (error) {
            // Server not accessible (CORS, timeout, network error, etc.)
            console.warn(`❌ Caddy server check failed:`, error.name, error.message);
            return false;
        }
    }

    /**
     * Determine the best endpoint to use for tiles
     * Prioritizes Caddy server if available, falls back to GitHub Pages
     */
    async selectBestEndpoint() {
        // On localhost during development, prefer Caddy if available
        if (this.isLocalhost) {
            const caddyAvailable = await this.checkCaddyAvailability();
            if (caddyAvailable) {
                this.currentEndpoint = 'caddy';
                console.log(' Using self-hosted Caddy server for tiles');
                return 'caddy';
            }
            // Fall back to local files
            this.currentEndpoint = 'github';
            console.log('Using local PMTiles files (Caddy server not available)');
            return 'github';
        }

        // On GitHub Pages, check if Caddy server is accessible
        if (this.isGitHubPages) {
            const caddyAvailable = await this.checkCaddyAvailability();
            if (caddyAvailable) {
                this.currentEndpoint = 'caddy';
                console.log('Using self-hosted Caddy server for tiles (from GitHub Pages)');
                console.log('⚡ This provides better performance with proper HTTP range request support');
                return 'caddy';
            }
            // Fall back to GitHub Pages hosted files
            this.currentEndpoint = 'github';
            console.log('Using GitHub Pages hosted PMTiles files');
            console.warn('GitHub Pages may have limitations with byte-serving for large PMTiles');
            return 'github';
        }

        // Default to GitHub endpoint for other hosting scenarios
        this.currentEndpoint = 'github';
        return 'github';
    }

    /**
     * Get the PMTiles URL for a given tile file
     * @param {string} tileName - Name of the tile file (e.g., 'buildings.pmtiles')
     * @returns {string} Full PMTiles protocol URL
     */
    getPMTilesUrl(tileName) {
        if (!this.currentEndpoint) {
            throw new Error('Endpoint not selected. Call selectBestEndpoint() first.');
        }

        const endpoint = this.currentEndpoint === 'caddy' 
            ? this.endpoints.caddy.pmtiles 
            : this.endpoints.github.pmtiles;

        // Always use pmtiles:// protocol - it handles both HTTP and file URLs
        return `pmtiles://${endpoint}/${tileName}`;
    }

    /**
     * Get the base URL for PMTiles (without protocol prefix)
     * Useful for manual PMTiles instance creation
     */
    getPMTilesBaseUrl(tileName) {
        if (!this.currentEndpoint) {
            throw new Error('Endpoint not selected. Call selectBestEndpoint() first.');
        }

        const endpoint = this.currentEndpoint === 'caddy' 
            ? this.endpoints.caddy.pmtiles 
            : this.endpoints.github.pmtiles;

        return `${endpoint}/${tileName}`;
    }

    /**
     * Get the MVT endpoint URL (only available on Caddy server)
     * @param {string} tableName - Name of the PostGIS table
     * @returns {string|null} MVT endpoint URL or null if not available
     */
    getMVTUrl(tableName) {
        if (this.currentEndpoint === 'caddy') {
            return `${this.endpoints.caddy.mvt}/${tableName}/{z}/{x}/{y}`;
        }
        return null;
    }

    /**
     * Check if MVT tiles are available (requires Caddy server)
     */
    isMVTAvailable() {
        return this.currentEndpoint === 'caddy';
    }

    /**
     * Get configuration info for debugging
     */
    getInfo() {
        return {
            environment: this.isLocalhost ? 'localhost' : (this.isGitHubPages ? 'github-pages' : 'other'),
            currentEndpoint: this.currentEndpoint,
            basePath: this.basePath,
            repoName: this.repoName,
            endpoints: this.endpoints
        };
    }
}

// Export a singleton instance
export const tileConfig = new TileConfig();
