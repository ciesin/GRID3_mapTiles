import { defineConfig, loadEnv } from 'vite'
import { fileURLToPath } from 'url'
import { dirname, resolve } from 'path'

const __filename = fileURLToPath(import.meta.url)
const __dirname = dirname(__filename)

export default defineConfig(({ mode }) => {
  // Load env from repository root (one level up)
  const env = loadEnv(mode, resolve(__dirname, '..'), '')
  
  // Make selected env vars available to the app with VITE_ prefix
  const envWithPrefix = {
    VITE_CADDY_HOST: env.HOST_IP || '127.0.0.1',
    VITE_CADDY_PORT: env.CADDY_HTTP_PORT || '3002'
  }
  
  return {
  base: './', // For GitHub Pages deployment
  build: {
    outDir: 'dist',
    assetsDir: 'assets',
    sourcemap: true,
    rollupOptions: {
      output: {
        manualChunks: {
          // Separate MapLibre and related mapping libraries
          'maplibre': ['maplibre-gl'],
          'contour': ['maplibre-contour'],
          'pmtiles': ['pmtiles'],
          // Keep application code separate
          'app': ['./src/js/basemap.js']
        }
      }
    },
    // Increase chunk size warning limit for mapping applications
    chunkSizeWarningLimit: 1000,
    // Copy tiles directory to dist for GitHub Pages deployment
    copyPublicDir: true
  },
  publicDir: 'public',
  server: {
    port: 3000,
    open: true,
    cors: true,
    proxy: {
      // Proxy Caddy server endpoints during development
      // This allows testing the Caddy integration locally
      '/api/tiles': {
        target: 'http://127.0.0.1:3002',
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api\/tiles/, '/static'),
        configure: (proxy, _options) => {
          proxy.on('error', (err, _req, _res) => {
            console.log('Caddy proxy error - falling back to local tiles:', err.message);
          });
        }
      },
      '/api/mvt': {
        target: 'http://127.0.0.1:3002',
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api\/mvt/, '/mvt'),
        configure: (proxy, _options) => {
          proxy.on('error', (err, _req, _res) => {
            console.log('Martin MVT proxy error:', err.message);
          });
        }
      }
    }
  },
  optimizeDeps: {
    include: ['maplibre-gl', 'pmtiles'],
    exclude: ['maplibre-contour']
  },
  define: {
    // Expose env vars to the app
    'import.meta.env.VITE_CADDY_HOST': JSON.stringify(envWithPrefix.VITE_CADDY_HOST),
    'import.meta.env.VITE_CADDY_PORT': JSON.stringify(envWithPrefix.VITE_CADDY_PORT)
  }
}})
