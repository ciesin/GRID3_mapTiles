<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+08" version="3.34.10-Prizren" hasScaleBasedVisibilityFlag="0" maxScale="0" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <customproperties>
    <Option/>
  </customproperties>
  <renderer type="basic">
    <styles>
      <style name="background" max-zoom="-1" layer="background" expression="" geometry="2" enabled="0" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{5ddc6046-97d2-4070-8f58-8a08520c75b8}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="225,225,225,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="35,35,35,255"/>
                <Option name="outline_style" type="QString" value="no"/>
                <Option name="outline_width" type="QString" value="0.26"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="earth" max-zoom="-1" layer="earth" expression="_geom_type IS 'Polygon'" geometry="2" enabled="0" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{06225f00-80ee-4ff0-9a8c-d555e4a1aa71}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="226,223,218,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="226,223,218,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landcover" max-zoom="-1" layer="landcover" expression="" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{7ff7fd67-b038-4771-9ca8-fd0fbeea9566}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="200,229,189,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="200,229,189,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;kind&quot; IN () THEN '#dcf1d0' WHEN &quot;kind&quot; IN () THEN '#fff3d7' WHEN &quot;kind&quot; IN () THEN '#e6e6e6' WHEN &quot;kind&quot; IN () THEN '#d8efd2' WHEN &quot;kind&quot; IN () THEN '#ffffff' WHEN &quot;kind&quot; IN () THEN '#e9f4d7' ELSE '#c8e5bd' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;kind&quot; IN () THEN '#dcf1d0' WHEN &quot;kind&quot; IN () THEN '#fff3d7' WHEN &quot;kind&quot; IN () THEN '#e6e6e6' WHEN &quot;kind&quot; IN () THEN '#d8efd2' WHEN &quot;kind&quot; IN () THEN '#ffffff' WHEN &quot;kind&quot; IN () THEN '#e9f4d7' ELSE '#c8e5bd' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_park" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IN ('national_park', 'park', 'cemetery', 'protected_area', 'nature_reserve', 'forest', 'golf_course', 'wood', 'nature_reserve', 'forest', 'scrub', 'grassland', 'grass', 'military', 'naval_base', 'airfield')" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{8375b6e0-df97-4911-887c-962c212c370f}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="173,220,145,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="173,220,145,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="cod-settlement-extents" max-zoom="-1" layer="GRID3-COD-settlement-extents-v3-1" expression="" geometry="2" enabled="1" min-zoom="7">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{4ba23706-b093-42fc-ba93-400a5c7b12ed}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="237,217,240,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="237,217,240,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;type&quot; IN () THEN '#e0d1e8' WHEN &quot;type&quot; IN () THEN '#e6d4ed' WHEN &quot;type&quot; IN () THEN '#edd9f0' ELSE '#edd9f0' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;type&quot; IN () THEN '#e0d1e8' WHEN &quot;type&quot; IN () THEN '#e6d4ed' WHEN &quot;type&quot; IN () THEN '#edd9f0' ELSE '#edd9f0' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="nga-settlement-extents" max-zoom="11" layer="GRID3-NGA-settlement-extents-v4-0" expression="" geometry="2" enabled="1" min-zoom="7">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{16c02d98-4439-45cc-a402-7ae4c96750d9}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="255,140,0,0"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="35,35,35,255"/>
                <Option name="outline_style" type="QString" value="no"/>
                <Option name="outline_width" type="QString" value="0.26"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;extent_type&quot; IN () THEN '#e0d1e8' WHEN &quot;extent_type&quot; IN () THEN '#e6d4ed' WHEN &quot;extent_type&quot; IN () THEN '#edd9f0' ELSE '#ff8c00' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;extent_type&quot; IN () THEN '#e0d1e8' WHEN &quot;extent_type&quot; IN () THEN '#e6d4ed' WHEN &quot;extent_type&quot; IN () THEN '#edd9f0' ELSE '#ff8c00' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="nga-settlement-blocks" max-zoom="19" layer="GRID3-NGA-settlement-blocks-v4-0" expression="" geometry="2" enabled="1" min-zoom="11">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="0.75" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{6afedf15-d9bd-4b7d-9994-71f274d96e22}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="186,104,200,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="186,104,200,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_urban_green" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IN ('allotments', 'village_green', 'playground')" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="0.7" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{046bfab6-2b55-4f9e-aee6-59c991687947}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="156,211,180,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="156,211,180,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_hospital" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IS 'hospital'" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{80cdc8aa-4869-4665-b666-463491379ea4}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="250,187,203,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="250,187,203,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 12 THEN color_hsla(344, 86, 85, 255) WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt; 16 THEN color_hsla(scale_linear(@vector_tile_zoom,12,16,344,0), scale_linear(@vector_tile_zoom,12,16,86,73), scale_linear(@vector_tile_zoom,12,16,85,63), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 73, 63, 255) ELSE color_hsla(0, 73, 63, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 12 THEN color_hsla(344, 86, 85, 255) WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt; 16 THEN color_hsla(scale_linear(@vector_tile_zoom,12,16,344,0), scale_linear(@vector_tile_zoom,12,16,86,73), scale_linear(@vector_tile_zoom,12,16,85,63), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 73, 63, 255) ELSE color_hsla(0, 73, 63, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_industrial" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IS 'industrial'" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{63fa04e1-e3e6-4879-b7cc-71b1c0f741f4}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="178,168,162,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="178,168,162,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_school" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IN ('school', 'university', 'college')" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{6db58ac7-f6f9-4ae6-91f9-30ef0be84727}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="248,224,142,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="248,224,142,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_beach" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IN ('beach')" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ecf62003-510f-40b1-b869-202ea1159847}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="232,228,208,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="232,228,208,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_zoo" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IN ('zoo')" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{dc604943-22f4-481e-aa8e-9f638c426924}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="198,220,220,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="198,220,220,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_aerodrome" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IN ('aerodrome')" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{9e9a458b-02d4-4528-a517-ba4f8928df76}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="218,219,223,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="218,219,223,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_runway" max-zoom="-1" layer="roads" expression="&quot;kind_detail&quot; IS 'runway'" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{fde5d471-a71f-4b07-b55b-e9794ce3d58a}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="233,233,237,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 10 AND @vector_tile_zoom &lt;= 12 THEN ((0) + ((1.6^(@vector_tile_zoom - 10) - 1) / (1.6^(12 - 10) - 1)) * ((4) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 18 THEN ((4) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(18 - 12) - 1)) * ((30) - (4))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 7.9375 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="nga-settlement-blocks-outline" max-zoom="19" layer="GRID3-NGA-settlement-blocks-v4-0" expression="" geometry="1" enabled="1" min-zoom="13">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ba0576e4-e6ca-4d4c-b26b-a63a90f2e749}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0;0"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="213,194,216,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(1.5,4.5),@element * (((0) + ((2^(@vector_tile_zoom - 14) - 1) / (2^(16 - 14) - 1)) * ((1.5) - (0))) * 0.264583)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((2^(@vector_tile_zoom - 14) - 1) / (2^(16 - 14) - 1)) * ((1.5) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_taxiway" max-zoom="-1" layer="roads" expression="&quot;kind_detail&quot; IS 'taxiway'" geometry="1" enabled="1" min-zoom="13">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{83631556-10eb-49df-a5e9-72cee1b28943}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="233,233,237,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 13 AND @vector_tile_zoom &lt;= 13.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(13.5 - 13) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 13.5 AND @vector_tile_zoom &lt;= 15 THEN ((1) + ((1.6^(@vector_tile_zoom - 13.5) - 1) / (1.6^(15 - 13.5) - 1)) * ((6) - (1))) * 0.264583 WHEN @vector_tile_zoom > 15 THEN 1.5875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_runway" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IN ('runway', 'taxiway')" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{b95bdc21-edd5-4481-9ce9-46fc0a273697}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="233,233,237,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="233,233,237,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="water_stream_casing" max-zoom="-1" layer="water" expression="&quot;kind&quot; IN ('stream')" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{bdb55d63-9d56-4b84-ba9d-62e5746707ed}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="0,163,224,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 12 THEN color_hsla(196, 100, 43, 255) WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt; 16 THEN color_hsla(scale_linear(@vector_tile_zoom,12,16,196,197), scale_linear(@vector_tile_zoom,12,16,100,72), scale_linear(@vector_tile_zoom,12,16,43,67), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(197, 72, 67, 255) ELSE color_hsla(197, 72, 67, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 12 THEN color_hsla(196, 100, 43, 255) WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt; 16 THEN color_hsla(scale_linear(@vector_tile_zoom,12,16,196,197), scale_linear(@vector_tile_zoom,12,16,100,72), scale_linear(@vector_tile_zoom,12,16,43,67), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(197, 72, 67, 255) ELSE color_hsla(197, 72, 67, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt;= 12.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(12.5 - 12) - 1)) * ((1.5) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12.5 AND @vector_tile_zoom &lt;= 16 THEN ((1.5) + ((1.6^(@vector_tile_zoom - 12.5) - 1) / (1.6^(16 - 12.5) - 1)) * ((4) - (1.5))) * 0.264583 WHEN @vector_tile_zoom > 16 THEN 1.05833 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="water_stream" max-zoom="-1" layer="water" expression="&quot;kind&quot; IN ('stream')" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{1376495e-80cb-4dc5-a34d-62f7ee9e4bf1}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="164,219,232,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt;= 12.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(12.5 - 12) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12.5 AND @vector_tile_zoom &lt;= 16 THEN ((1) + ((1.6^(@vector_tile_zoom - 12.5) - 1) / (1.6^(16 - 12.5) - 1)) * ((3) - (1))) * 0.264583 WHEN @vector_tile_zoom > 16 THEN 0.79375 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="water_river_casing" max-zoom="-1" layer="water" expression="&quot;kind&quot; IN ('river')" geometry="1" enabled="1" min-zoom="9">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{98299689-17ca-4e41-83ba-68def0213f19}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="0,163,224,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 8 THEN color_hsla(196, 100, 43, 255) WHEN @vector_tile_zoom >= 8 AND @vector_tile_zoom &lt; 13 THEN color_hsla(scale_linear(@vector_tile_zoom,8,13,196,197), scale_linear(@vector_tile_zoom,8,13,100,72), scale_linear(@vector_tile_zoom,8,13,43,67), 255) WHEN @vector_tile_zoom >= 13 THEN color_hsla(197, 72, 67, 255) ELSE color_hsla(197, 72, 67, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 8 THEN color_hsla(196, 100, 43, 255) WHEN @vector_tile_zoom >= 8 AND @vector_tile_zoom &lt; 13 THEN color_hsla(scale_linear(@vector_tile_zoom,8,13,196,197), scale_linear(@vector_tile_zoom,8,13,100,72), scale_linear(@vector_tile_zoom,8,13,43,67), 255) WHEN @vector_tile_zoom >= 13 THEN color_hsla(197, 72, 67, 255) ELSE color_hsla(197, 72, 67, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="(scale_linear(@vector_tile_zoom,9,16,0,6)) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="water_river" max-zoom="-1" layer="water" expression="&quot;kind&quot; IN ('river')" geometry="1" enabled="1" min-zoom="9">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{f38e157b-7868-4388-b179-69af4ce906f7}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="89,203,232,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 8 THEN color_hsla(192, 75, 63, 255) WHEN @vector_tile_zoom >= 8 AND @vector_tile_zoom &lt; 13 THEN color_hsla(scale_linear(@vector_tile_zoom,8,13,192,190), scale_linear(@vector_tile_zoom,8,13,75,62), scale_linear(@vector_tile_zoom,8,13,63,75), 255) WHEN @vector_tile_zoom >= 13 THEN color_hsla(190, 62, 75, 255) ELSE color_hsla(190, 62, 75, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 8 THEN color_hsla(192, 75, 63, 255) WHEN @vector_tile_zoom >= 8 AND @vector_tile_zoom &lt; 13 THEN color_hsla(scale_linear(@vector_tile_zoom,8,13,192,190), scale_linear(@vector_tile_zoom,8,13,75,62), scale_linear(@vector_tile_zoom,8,13,63,75), 255) WHEN @vector_tile_zoom >= 13 THEN color_hsla(190, 62, 75, 255) ELSE color_hsla(190, 62, 75, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 9 AND @vector_tile_zoom &lt;= 9.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 9) - 1) / (1.6^(9.5 - 9) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 9.5 AND @vector_tile_zoom &lt;= 18 THEN ((1) + ((1.6^(@vector_tile_zoom - 9.5) - 1) / (1.6^(18 - 9.5) - 1)) * ((12) - (1))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 3.175 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="water_casing" max-zoom="-1" layer="water" expression="_geom_type IS 'Polygon'" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ea226862-cc63-4c82-8123-069661aaa87d}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="0,163,224,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 8 THEN color_hsla(196, 100, 43, 255) WHEN @vector_tile_zoom >= 8 AND @vector_tile_zoom &lt; 13 THEN color_hsla(scale_linear(@vector_tile_zoom,8,13,196,197), scale_linear(@vector_tile_zoom,8,13,100,72), scale_linear(@vector_tile_zoom,8,13,43,67), 255) WHEN @vector_tile_zoom >= 13 THEN color_hsla(197, 72, 67, 255) ELSE color_hsla(197, 72, 67, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 8 THEN color_hsla(196, 100, 43, 255) WHEN @vector_tile_zoom >= 8 AND @vector_tile_zoom &lt; 13 THEN color_hsla(scale_linear(@vector_tile_zoom,8,13,196,197), scale_linear(@vector_tile_zoom,8,13,100,72), scale_linear(@vector_tile_zoom,8,13,43,67), 255) WHEN @vector_tile_zoom >= 13 THEN color_hsla(197, 72, 67, 255) ELSE color_hsla(197, 72, 67, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="(scale_linear(@vector_tile_zoom,9,16,0,4)) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="water" max-zoom="-1" layer="water" expression="_geom_type IS 'Polygon'" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{cff8862f-e5e7-488c-a1b5-8d82e1ff74b9}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="164,219,232,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="164,219,232,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_pedestrian" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IN ('pedestrian', 'dam')" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{df94c057-923e-49af-8e64-2e0647d57d30}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="227,224,212,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="227,224,212,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="landuse_pier" max-zoom="-1" layer="landuse" expression="&quot;kind&quot; IS 'pier'" geometry="2" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{2b62b4f8-2c6a-430a-8c86-9504f3e63d74}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="224,224,224,255"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="224,224,224,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_other_casing" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NOT NULL) AND (&quot;kind&quot; IN ('other', 'path'))" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{104a2ca8-ae6f-4da0-b44f-884e9dce2e48}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.264583"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_minor_casing" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'minor_road')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{8a1a0b18-495b-471a-a47c-7c8320883def}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(12.5 - 12) - 1)) * ((1) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_link_casing" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NOT NULL) AND (&quot;is_link&quot; IS NOT NULL)" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{3b67dc8e-ea7a-4c53-b41c-5a21dc8cb5aa}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(12.5 - 12) - 1)) * ((1) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_major_casing_early" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'major_road')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{001af272-dc33-42c6-857f-7b8d565d3eab}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 6 AND @vector_tile_zoom &lt;= 6.5 THEN (scale_linear(@vector_tile_zoom,6,6.5,0,0.5)) * 0.264583 WHEN @vector_tile_zoom > 6.5 AND @vector_tile_zoom &lt;= 8 THEN (scale_linear(@vector_tile_zoom,6.5,8,0.5,0.75)) * 0.264583 WHEN @vector_tile_zoom > 8 AND @vector_tile_zoom &lt;= 10 THEN (scale_linear(@vector_tile_zoom,8,10,0.75,0)) * 0.264583 WHEN @vector_tile_zoom > 10 THEN 0 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_highway_casing_late" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'highway') AND (&quot;is_link&quot; IS NULL)" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{93374442-a03a-4da6-a823-fbc5c7a93e7b}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="213,213,213,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt;= 12.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(12.5 - 12) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12.5 AND @vector_tile_zoom &lt;= 20 THEN ((1) + ((1.6^(@vector_tile_zoom - 12.5) - 1) / (1.6^(20 - 12.5) - 1)) * ((15) - (1))) * 0.264583 WHEN @vector_tile_zoom > 20 THEN 3.96875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_other" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NOT NULL) AND (&quot;kind&quot; IN ('other', 'path'))" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{c811761c-b98f-41fd-9877-d2cbbd7a6e02}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0;0"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="213,213,213,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(4.5,0.5),@element * (((0) + ((1.6^(@vector_tile_zoom - 14) - 1) / (1.6^(20 - 14) - 1)) * ((7) - (0))) * 0.264583)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 14) - 1) / (1.6^(20 - 14) - 1)) * ((7) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_minor" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'minor_road')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ae44ec1d-b9bc-4e65-9137-224c0fa6ba46}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="213,213,213,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt;= 12 THEN ((0) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(12 - 11) - 1)) * ((0.5) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(15 - 12) - 1)) * ((2) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((2) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((11) - (2))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.91042 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_link" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NOT NULL) AND (&quot;is_link&quot; IS NOT NULL)" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{328bcb59-01f1-4041-b3b6-9dfeb52d6b03}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="213,213,213,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 13 AND @vector_tile_zoom &lt;= 13.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(13.5 - 13) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 13.5 AND @vector_tile_zoom &lt;= 18 THEN ((1) + ((1.6^(@vector_tile_zoom - 13.5) - 1) / (1.6^(18 - 13.5) - 1)) * ((11) - (1))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.91042 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_major" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'major_road')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{a074739d-b9df-43d3-aade-92f3e5e9deb0}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 5 THEN color_hsla(0, 0, 100, 255) WHEN @vector_tile_zoom >= 5 AND @vector_tile_zoom &lt; 15 THEN color_hsla(0, 0, (100) + ((1.6^(@vector_tile_zoom - 5) - 1) / (1.6^(15 - 5) - 1)) * ((83) - (100)), 255) WHEN @vector_tile_zoom >= 15 THEN color_hsla(0, 0, 83, 255) ELSE color_hsla(0, 0, 83, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 5 THEN color_hsla(0, 0, 100, 255) WHEN @vector_tile_zoom >= 5 AND @vector_tile_zoom &lt; 15 THEN color_hsla(0, 0, (100) + ((1.6^(@vector_tile_zoom - 5) - 1) / (1.6^(15 - 5) - 1)) * ((83) - (100)), 255) WHEN @vector_tile_zoom >= 15 THEN color_hsla(0, 0, 83, 255) ELSE color_hsla(0, 0, 83, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 9 AND @vector_tile_zoom &lt;= 10 THEN ((0) + ((1.6^(@vector_tile_zoom - 9) - 1) / (1.6^(10 - 9) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 10 AND @vector_tile_zoom &lt;= 15 THEN ((1) + ((1.6^(@vector_tile_zoom - 10) - 1) / (1.6^(15 - 10) - 1)) * ((3) - (1))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((3) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((13) - (3))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 3.43958 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_tunnels_highway" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'highway') AND (&quot;is_link&quot; IS NULL)" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{88f5b47c-b4d2-4828-9043-ee799e243bc2}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="213,213,213,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 6 THEN ((0) + ((1.6^(@vector_tile_zoom - 3) - 1) / (1.6^(6 - 3) - 1)) * ((1.1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 6 AND @vector_tile_zoom &lt;= 12 THEN ((1.1) + ((1.6^(@vector_tile_zoom - 6) - 1) / (1.6^(12 - 6) - 1)) * ((1.6) - (1.1))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN ((1.6) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(15 - 12) - 1)) * ((5) - (1.6))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((5) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((15) - (5))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 3.96875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_other_casing_late" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IN ('other', 'path')) AND (&quot;kind_detail&quot; IS NOT 'pier')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{92f1363c-6638-43c2-93bb-4511e4fa2612}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="250,250,250,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt;= 12.25 THEN ((0) + ((1.2^(@vector_tile_zoom - 12) - 1) / (1.2^(12.25 - 12) - 1)) * ((0.75) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12.25 AND @vector_tile_zoom &lt;= 18 THEN ((0.75) + ((1.2^(@vector_tile_zoom - 12.25) - 1) / (1.2^(18 - 12.25) - 1)) * ((3) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 0.79375 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_other" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IN ('other', 'path')) AND (&quot;kind_detail&quot; IS NOT 'pier')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{982589b5-f6c3-4c7c-9f50-ecf6cc8efe62}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0.396875;0.396875;0.198437;0.396875"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="158,158,158,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.198437"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(2,2,1,2),@element * (CASE WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt;= 12.25 THEN ((0.75) + ((1.2^(@vector_tile_zoom - 12) - 1) / (1.2^(12.25 - 12) - 1)) * ((1) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 12.25 AND @vector_tile_zoom &lt;= 18 THEN ((1) + ((1.2^(@vector_tile_zoom - 12.25) - 1) / (1.2^(18 - 12.25) - 1)) * ((1.5) - (1))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 0.396875 END)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 11 THEN color_hsla(0, 0, 61, 255) WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt; 14 THEN color_hsla((0) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(14 - 11) - 1)) * ((180) - (0)), (0) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(14 - 11) - 1)) * ((5) - (0)), (61) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(14 - 11) - 1)) * ((59) - (61)), 255) WHEN @vector_tile_zoom >= 14 THEN color_hsla(180, 5, 59, 255) ELSE color_hsla(180, 5, 59, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 11 THEN color_hsla(0, 0, 61, 255) WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt; 14 THEN color_hsla((0) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(14 - 11) - 1)) * ((180) - (0)), (0) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(14 - 11) - 1)) * ((5) - (0)), (61) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(14 - 11) - 1)) * ((59) - (61)), 255) WHEN @vector_tile_zoom >= 14 THEN color_hsla(180, 5, 59, 255) ELSE color_hsla(180, 5, 59, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt;= 12.25 THEN ((0.75) + ((1.2^(@vector_tile_zoom - 12) - 1) / (1.2^(12.25 - 12) - 1)) * ((1) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 12.25 AND @vector_tile_zoom &lt;= 18 THEN ((1) + ((1.2^(@vector_tile_zoom - 12.25) - 1) / (1.2^(18 - 12.25) - 1)) * ((1.5) - (1))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 0.396875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_pier" max-zoom="-1" layer="roads" expression="&quot;kind_detail&quot; IS 'pier'" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{66c41152-508a-4961-a992-7ba0b82923bd}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="0,0,0,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 14 THEN color_hsla(0, 0, 0, 255) WHEN @vector_tile_zoom >= 14 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,14,16,0,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 14 THEN color_hsla(0, 0, 0, 255) WHEN @vector_tile_zoom >= 14 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,14,16,0,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt;= 12.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(12.5 - 12) - 1)) * ((0.5) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12.5 AND @vector_tile_zoom &lt;= 20 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 12.5) - 1) / (1.6^(20 - 12.5) - 1)) * ((16) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 20 THEN 4.23333 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_minor_service_casing" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'minor_road') AND (&quot;kind_detail&quot; IS 'service')" geometry="1" enabled="1" min-zoom="13">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{87f2c605-93fa-4997-87af-6bcc805aa93c}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 13 AND @vector_tile_zoom &lt;= 13.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(13.5 - 13) - 1)) * ((0.8) - (0))) * 0.264583 WHEN @vector_tile_zoom > 13.5 AND @vector_tile_zoom &lt;= 15 THEN ((0.8) + ((1.6^(@vector_tile_zoom - 13.5) - 1) / (1.6^(15 - 13.5) - 1)) * ((0.9) - (0.8))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((0.9) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((1) - (0.9))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 0.264583 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_minor_casing" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'minor_road') AND (&quot;kind_detail&quot; IS NOT 'service')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{e4255d6b-c9f2-4817-802f-640800780b6f}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.079375"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 11.5 AND @vector_tile_zoom &lt;= 12 THEN ((0.3) + ((1.6^(@vector_tile_zoom - 11.5) - 1) / (1.6^(12 - 11.5) - 1)) * ((0.5) - (0.3))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 14 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(14 - 12) - 1)) * ((0.85) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 14 AND @vector_tile_zoom &lt;= 16 THEN ((0.85) + ((1.6^(@vector_tile_zoom - 14) - 1) / (1.6^(16 - 14) - 1)) * ((1.2) - (0.85))) * 0.264583 WHEN @vector_tile_zoom > 16 AND @vector_tile_zoom &lt;= 18 THEN ((1.2) + ((1.6^(@vector_tile_zoom - 16) - 1) / (1.6^(18 - 16) - 1)) * ((1.3) - (1.2))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 0.343958 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_link_casing" max-zoom="-1" layer="roads" expression="&quot;is_link&quot; IS NOT NULL" geometry="1" enabled="1" min-zoom="13">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{2d77ee78-0846-453a-8f9d-61525bba4042}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.264583"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 13 AND @vector_tile_zoom &lt;= 15 THEN ((1) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(15 - 13) - 1)) * ((1.6) - (1))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((1.6) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((1.7) - (1.6))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 0.449792 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_major_casing_late" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'major_road')" geometry="1" enabled="1" min-zoom="13">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{c014d948-e8a2-487b-9256-8f8a5ee9235b}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(18 - 13) - 1)) * ((1.5) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_highway_casing_late" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'highway') AND (&quot;is_link&quot; IS NULL)" geometry="1" enabled="1" min-zoom="11">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{848de8af-0cd4-4d48-8d0b-e916a3867470}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.132292"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 11.5 AND @vector_tile_zoom &lt;= 12 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 11.5) - 1) / (1.6^(12 - 11.5) - 1)) * ((1) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 20 THEN ((1) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(20 - 12) - 1)) * ((15) - (1))) * 0.264583 WHEN @vector_tile_zoom > 20 THEN 3.96875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_link" max-zoom="-1" layer="roads" expression="&quot;is_link&quot; IS NOT NULL" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{cc90415c-49c5-4bd6-8538-b99b78b31684}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 13 AND @vector_tile_zoom &lt;= 13.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(13.5 - 13) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 13.5 AND @vector_tile_zoom &lt;= 18 THEN ((1) + ((1.6^(@vector_tile_zoom - 13.5) - 1) / (1.6^(18 - 13.5) - 1)) * ((11) - (1))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.91042 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_minor_service" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'minor_road') AND (&quot;kind_detail&quot; IS 'service')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{87080ca6-47aa-406f-86cc-4a9c2f1d3c14}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(18 - 13) - 1)) * ((8) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_minor" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'minor_road') AND (&quot;kind_detail&quot; IS NOT 'service')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{72153256-a5ef-4d9e-921a-3dea5f095e00}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.132292"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 10 THEN color_hsla(0, 0, 100, 255) WHEN @vector_tile_zoom >= 10 AND @vector_tile_zoom &lt; 15 THEN color_hsla(0, 0, 100, 255) WHEN @vector_tile_zoom >= 15 THEN color_hsla(0, 0, 100, 255) ELSE color_hsla(0, 0, 100, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 10 THEN color_hsla(0, 0, 100, 255) WHEN @vector_tile_zoom >= 10 AND @vector_tile_zoom &lt; 15 THEN color_hsla(0, 0, 100, 255) WHEN @vector_tile_zoom >= 15 THEN color_hsla(0, 0, 100, 255) ELSE color_hsla(0, 0, 100, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 10 AND @vector_tile_zoom &lt;= 11.5 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 10) - 1) / (1.6^(11.5 - 10) - 1)) * ((1) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 11.5 AND @vector_tile_zoom &lt;= 15 THEN ((1) + ((1.6^(@vector_tile_zoom - 11.5) - 1) / (1.6^(15 - 11.5) - 1)) * ((2) - (1))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((2) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((11) - (2))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.91042 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_major_casing_early" max-zoom="11" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'major_road')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{f602c03b-8706-41b3-a536-730714b8e001}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.132292"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 3 THEN color_hsla(0, 0, 100, 255) WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt; 12 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,3,12,100,98), 255) WHEN @vector_tile_zoom >= 12 THEN color_hsla(0, 0, 98, 255) ELSE color_hsla(0, 0, 98, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 3 THEN color_hsla(0, 0, 100, 255) WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt; 12 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,3,12,100,98), 255) WHEN @vector_tile_zoom >= 12 THEN color_hsla(0, 0, 98, 255) ELSE color_hsla(0, 0, 98, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 9.5 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 3) - 1) / (1.6^(9.5 - 3) - 1)) * ((1) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 9.5 AND @vector_tile_zoom &lt;= 12 THEN ((1) + ((1.6^(@vector_tile_zoom - 9.5) - 1) / (1.6^(12 - 9.5) - 1)) * ((0) - (1))) * 0.264583 WHEN @vector_tile_zoom > 12 THEN 0 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_major" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'major_road')" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{fd140e5f-1882-404d-899b-1e1ae4c21815}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 6 AND @vector_tile_zoom &lt;= 6.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 6) - 1) / (1.6^(6.5 - 6) - 1)) * ((0.33) - (0))) * 0.264583 WHEN @vector_tile_zoom > 6.5 AND @vector_tile_zoom &lt;= 11 THEN ((0.33) + ((1.6^(@vector_tile_zoom - 6.5) - 1) / (1.6^(11 - 6.5) - 1)) * ((0.75) - (0.33))) * 0.264583 WHEN @vector_tile_zoom > 11 AND @vector_tile_zoom &lt;= 18 THEN ((0.75) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(18 - 11) - 1)) * ((9) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.38125 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_highway_casing_early" max-zoom="11" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'highway') AND (&quot;is_link&quot; IS NULL)" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ab65a558-5c9c-4bf6-89ed-89a306e5b71e}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="186,187,177,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 5) - 1) / (1.6^(5.5 - 5) - 1)) * ((1) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_highway" max-zoom="-1" layer="roads" expression="(&quot;is_tunnel&quot; IS NULL) AND (&quot;is_bridge&quot; IS NULL) AND (&quot;kind&quot; IS 'highway') AND (&quot;is_link&quot; IS NULL)" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{2fe0f802-3b17-432f-aad1-135c201163f4}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 6 THEN ((0) + ((1.6^(@vector_tile_zoom - 3) - 1) / (1.6^(6 - 3) - 1)) * ((0.75) - (0))) * 0.264583 WHEN @vector_tile_zoom > 6 AND @vector_tile_zoom &lt;= 12 THEN ((0.75) + ((1.6^(@vector_tile_zoom - 6) - 1) / (1.6^(12 - 6) - 1)) * ((1.2) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN ((1.2) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(15 - 12) - 1)) * ((5) - (1.2))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((5) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((15) - (5))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 3.96875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_rail" max-zoom="-1" layer="roads" expression="&quot;kind&quot; IS 'rail'" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="0.5" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{aef54f28-c2ae-409c-bddc-dd3840a33f93}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0;0"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="167,177,179,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(0.29999999999999999,0.75),@element * (CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 6 THEN ((0) + ((1.6^(@vector_tile_zoom - 3) - 1) / (1.6^(6 - 3) - 1)) * ((0.15) - (0))) * 0.264583 WHEN @vector_tile_zoom > 6 AND @vector_tile_zoom &lt;= 18 THEN ((0.15) + ((1.6^(@vector_tile_zoom - 6) - 1) / (1.6^(18 - 6) - 1)) * ((9) - (0.15))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.38125 END)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 6 THEN ((0) + ((1.6^(@vector_tile_zoom - 3) - 1) / (1.6^(6 - 3) - 1)) * ((0.15) - (0))) * 0.264583 WHEN @vector_tile_zoom > 6 AND @vector_tile_zoom &lt;= 18 THEN ((0.15) + ((1.6^(@vector_tile_zoom - 6) - 1) / (1.6^(18 - 6) - 1)) * ((9) - (0.15))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.38125 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="boundaries_country" max-zoom="-1" layer="boundaries" expression="&quot;kind_detail&quot; &lt;= 2" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{246733c2-3c4e-4759-86d4-83c066028ac5}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0.635;0.3175"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="173,173,173,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.3175"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(2,1),@element * (((1.2) + ((1.2^(@vector_tile_zoom - 0) - 1) / (1.2^(5.5 - 0) - 1)) * ((0) - (1.2))) * 0.264583)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((1.2) + ((1.2^(@vector_tile_zoom - 0) - 1) / (1.2^(5.5 - 0) - 1)) * ((0) - (1.2))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="boundaries" max-zoom="-1" layer="boundaries" expression="&quot;kind_detail&quot; > 2" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{c6f748a1-d401-4e8e-b5f9-604bc6d13e93}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0.211667;0.105833"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="173,173,173,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.105833"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="buildings-flat" max-zoom="14" layer="building" expression="" geometry="2" enabled="1" min-zoom="11">
        <symbols>
          <symbol name="0" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{f347b759-a578-4253-9be3-b179ecbaa5a9}" pass="0" class="SimpleFill" enabled="1">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="239,186,225,144"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="35,35,35,255"/>
                <Option name="outline_style" type="QString" value="no"/>
                <Option name="outline_width" type="QString" value="0.26"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 11 THEN color_hsla(315, 62, 83, 144) WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt; 15 THEN color_hsla((315) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(15 - 11) - 1)) * ((319) - (315)), (62) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(15 - 11) - 1)) * ((48) - (62)), (83) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(15 - 11) - 1)) * ((85) - (83)), (144) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(15 - 11) - 1)) * ((255) - (144))) WHEN @vector_tile_zoom >= 15 THEN color_hsla(319, 48, 85, 255) ELSE color_hsla(319, 48, 85, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 11 THEN color_hsla(315, 62, 83, 144) WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt; 15 THEN color_hsla((315) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(15 - 11) - 1)) * ((319) - (315)), (62) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(15 - 11) - 1)) * ((48) - (62)), (83) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(15 - 11) - 1)) * ((85) - (83)), (144) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(15 - 11) - 1)) * ((255) - (144))) WHEN @vector_tile_zoom >= 15 THEN color_hsla(319, 48, 85, 255) ELSE color_hsla(319, 48, 85, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="building-outlines" max-zoom="-1" layer="building" expression="" geometry="1" enabled="1" min-zoom="11">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="0.5" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{3f4306da-6674-4822-82d8-5f82aeaa947d}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="91,103,112,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 11 THEN color_hsla(205, 10, 40, 255) WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt; 16 THEN color_hsla((205) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(16 - 11) - 1)) * ((197) - (205)), (10) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(16 - 11) - 1)) * ((5) - (10)), (40) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(16 - 11) - 1)) * ((76) - (40)), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(197, 5, 76, 255) ELSE color_hsla(197, 5, 76, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 11 THEN color_hsla(205, 10, 40, 255) WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt; 16 THEN color_hsla((205) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(16 - 11) - 1)) * ((197) - (205)), (10) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(16 - 11) - 1)) * ((5) - (10)), (40) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(16 - 11) - 1)) * ((76) - (40)), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(197, 5, 76, 255) ELSE color_hsla(197, 5, 76, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt;= 13 THEN ((0) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(13 - 11) - 1)) * ((0.5) - (0))) * 0.264583 WHEN @vector_tile_zoom > 13 AND @vector_tile_zoom &lt;= 16 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(16 - 13) - 1)) * ((1) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 16 THEN 0.264583 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_other_casing" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;kind&quot; IN ('other', 'path'))" geometry="1" enabled="0" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{098eef89-28d6-4465-b062-48750751215e}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="0,0,0,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.264583"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 14 THEN color_hsla(0, 0, 0, 255) WHEN @vector_tile_zoom >= 14 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,14,16,0,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 14 THEN color_hsla(0, 0, 0, 255) WHEN @vector_tile_zoom >= 14 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,14,16,0,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_link_casing" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;is_link&quot; IS NOT NULL)" geometry="1" enabled="0" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{598ed593-bd38-4f3a-9071-ff86ae581ad2}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="213,213,213,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 14 THEN color_hsla(0, 0, 83, 255) WHEN @vector_tile_zoom >= 14 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,14,16,83,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 14 THEN color_hsla(0, 0, 83, 255) WHEN @vector_tile_zoom >= 14 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,14,16,83,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 12 AND @vector_tile_zoom &lt;= 12.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(12.5 - 12) - 1)) * ((0.5) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12.5 AND @vector_tile_zoom &lt;= 15 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 12.5) - 1) / (1.6^(15 - 12.5) - 1)) * ((2.5) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 15 THEN 0.661458 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_minor_casing" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'minor_road')" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{fa2164c3-4c30-4cbb-8290-5bd6dbc7a2cf}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="0,0,0,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 11 THEN color_hsla(0, 0, 0, 255) WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,11,16,0,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 11 THEN color_hsla(0, 0, 0, 255) WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,11,16,0,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(13.5 - 13) - 1)) * ((0.5) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_major_casing" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'major_road')" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ae84a76b-81f3-45e0-a3f2-8c8310aad07a}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="224,224,224,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 9) - 1) / (1.6^(9.5 - 9) - 1)) * ((1.5) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_other" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;kind&quot; IN ('other', 'path'))" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{24290d60-4aac-4bcb-a8f5-ac8b7513b20f}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0;0"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="137,141,141,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(2,1),@element * (((0) + ((1.6^(@vector_tile_zoom - 14) - 1) / (1.6^(20 - 14) - 1)) * ((7) - (0))) * 0.264583)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="((0) + ((1.6^(@vector_tile_zoom - 14) - 1) / (1.6^(20 - 14) - 1)) * ((7) - (0))) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_minor" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'minor_road')" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{9b2d5353-e849-49c1-a7b1-5aee614f07da}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 11 AND @vector_tile_zoom &lt;= 12.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 11) - 1) / (1.6^(12.5 - 11) - 1)) * ((0.5) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12.5 AND @vector_tile_zoom &lt;= 15 THEN ((0.5) + ((1.6^(@vector_tile_zoom - 12.5) - 1) / (1.6^(15 - 12.5) - 1)) * ((2) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((2) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((11) - (2))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.91042 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_link" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;is_link&quot; IS NOT NULL)" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{931d1e57-be1c-400d-b30a-0bbda6cf6c83}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 13 AND @vector_tile_zoom &lt;= 13.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 13) - 1) / (1.6^(13.5 - 13) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 13.5 AND @vector_tile_zoom &lt;= 18 THEN ((1) + ((1.6^(@vector_tile_zoom - 13.5) - 1) / (1.6^(18 - 13.5) - 1)) * ((11) - (1))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 2.91042 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_major" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'major_road')" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{e4ed4bd3-6f74-45ed-a7a2-9613c63f0105}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="245,245,245,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 6 AND @vector_tile_zoom &lt;= 12 THEN ((0) + ((1.6^(@vector_tile_zoom - 6) - 1) / (1.6^(12 - 6) - 1)) * ((1.6) - (0))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN ((1.6) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(15 - 12) - 1)) * ((3) - (1.6))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((3) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((13) - (3))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 3.43958 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_highway_casing" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'highway') AND (&quot;is_link&quot; IS NULL)" geometry="1" enabled="1" min-zoom="12">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ee01a06e-6ae6-4fdf-97e0-e2e7c2e306d9}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="213,213,213,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 14 THEN color_hsla(0, 0, 83, 255) WHEN @vector_tile_zoom >= 14 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,14,16,83,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 14 THEN color_hsla(0, 0, 83, 255) WHEN @vector_tile_zoom >= 14 AND @vector_tile_zoom &lt; 16 THEN color_hsla(0, 0, scale_linear(@vector_tile_zoom,14,16,83,87), 255) WHEN @vector_tile_zoom >= 16 THEN color_hsla(0, 0, 87, 255) ELSE color_hsla(0, 0, 87, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 7 AND @vector_tile_zoom &lt;= 7.5 THEN ((0) + ((1.6^(@vector_tile_zoom - 7) - 1) / (1.6^(7.5 - 7) - 1)) * ((1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 7.5 AND @vector_tile_zoom &lt;= 20 THEN ((1) + ((1.6^(@vector_tile_zoom - 7.5) - 1) / (1.6^(20 - 7.5) - 1)) * ((15) - (1))) * 0.264583 WHEN @vector_tile_zoom > 20 THEN 3.96875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="roads_bridges_highway" max-zoom="-1" layer="roads" expression="(&quot;is_bridge&quot; IS NOT NULL) AND (&quot;kind&quot; IS 'highway') AND (&quot;is_link&quot; IS NULL)" geometry="1" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{dbd5e751-131c-415a-916e-26dc5680b4a4}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 6 THEN ((0) + ((1.6^(@vector_tile_zoom - 3) - 1) / (1.6^(6 - 3) - 1)) * ((1.1) - (0))) * 0.264583 WHEN @vector_tile_zoom > 6 AND @vector_tile_zoom &lt;= 12 THEN ((1.1) + ((1.6^(@vector_tile_zoom - 6) - 1) / (1.6^(12 - 6) - 1)) * ((1.6) - (1.1))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN ((1.6) + ((1.6^(@vector_tile_zoom - 12) - 1) / (1.6^(15 - 12) - 1)) * ((5) - (1.6))) * 0.264583 WHEN @vector_tile_zoom > 15 AND @vector_tile_zoom &lt;= 18 THEN ((5) + ((1.6^(@vector_tile_zoom - 15) - 1) / (1.6^(18 - 15) - 1)) * ((15) - (5))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 3.96875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="cod-settlement-extents-outline" max-zoom="-1" layer="GRID3-COD-settlement-extents-v3-1" expression="" geometry="1" enabled="1" min-zoom="7">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{1729e99d-07d9-482a-81db-d4e93bf19076}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,140,0,0"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;type&quot; IN () THEN '#dfc8e7' WHEN &quot;type&quot; IN () THEN '#caa2dd' WHEN &quot;type&quot; IN () THEN '#b580d1' ELSE '#ff8c00' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;type&quot; IN () THEN '#dfc8e7' WHEN &quot;type&quot; IN () THEN '#caa2dd' WHEN &quot;type&quot; IN () THEN '#b580d1' ELSE '#ff8c00' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 7 AND @vector_tile_zoom &lt;= 8 THEN (scale_linear(@vector_tile_zoom,7,8,CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0 WHEN (&quot;type&quot; = 'Hamlet') THEN 0 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 0 ELSE 0 END,CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;type&quot; = 'Hamlet') THEN 0 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 0 ELSE 0 END)) * 0.264583 WHEN @vector_tile_zoom > 8 AND @vector_tile_zoom &lt;= 9 THEN (scale_linear(@vector_tile_zoom,8,9,CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;type&quot; = 'Hamlet') THEN 0 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 0 ELSE 0 END,CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;type&quot; = 'Hamlet') THEN 0 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 0.5 ELSE 0 END)) * 0.264583 WHEN @vector_tile_zoom > 9 AND @vector_tile_zoom &lt;= 12 THEN (scale_linear(@vector_tile_zoom,9,12,CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;type&quot; = 'Hamlet') THEN 0 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 0.5 ELSE 0 END,CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;type&quot; = 'Hamlet') THEN 0.25 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 0.5 ELSE 0 END)) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN (scale_linear(@vector_tile_zoom,12,15,CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;type&quot; = 'Hamlet') THEN 0.25 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 0.5 ELSE 0 END,CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;type&quot; = 'Hamlet') THEN 0.75 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 1 ELSE 0 END)) * 0.264583 WHEN @vector_tile_zoom > 15 THEN ( ( CASE WHEN (&quot;type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;type&quot; = 'Hamlet') THEN 0.75 WHEN (&quot;type&quot; = 'Small Settlement Area') THEN 1 ELSE 0 END ) * 0.264583 ) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="nga-settlement-extents-outline" max-zoom="-1" layer="GRID3-NGA-settlement-extents-v4-0" expression="" geometry="1" enabled="1" min-zoom="7">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{246af2f3-be43-436e-ba48-578cea1f6bf4}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,140,0,0"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;extent_type&quot; IN () THEN '#dfc8e7' WHEN &quot;extent_type&quot; IN () THEN '#caa2dd' WHEN &quot;extent_type&quot; IN () THEN '#b580d1' ELSE '#ff8c00' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN &quot;extent_type&quot; IN () THEN '#dfc8e7' WHEN &quot;extent_type&quot; IN () THEN '#caa2dd' WHEN &quot;extent_type&quot; IN () THEN '#b580d1' ELSE '#ff8c00' END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 7 AND @vector_tile_zoom &lt;= 8 THEN (scale_linear(@vector_tile_zoom,7,8,CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 0 ELSE 0 END,CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 0 ELSE 0 END)) * 0.264583 WHEN @vector_tile_zoom > 8 AND @vector_tile_zoom &lt;= 9 THEN (scale_linear(@vector_tile_zoom,8,9,CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 0 ELSE 0 END,CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 0.5 ELSE 0 END)) * 0.264583 WHEN @vector_tile_zoom > 9 AND @vector_tile_zoom &lt;= 12 THEN (scale_linear(@vector_tile_zoom,9,12,CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 0.5 ELSE 0 END,CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0.25 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 0.5 ELSE 0 END)) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN (scale_linear(@vector_tile_zoom,12,15,CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0.25 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 0.5 ELSE 0 END,CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0.75 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 1 ELSE 0 END)) * 0.264583 WHEN @vector_tile_zoom > 15 THEN ( ( CASE WHEN (&quot;extent_type&quot; = 'Built-up Area') THEN 0.5 WHEN (&quot;extent_type&quot; = 'Hamlet') THEN 0.75 WHEN (&quot;extent_type&quot; = 'Small Settlement Area') THEN 1 ELSE 0 END ) * 0.264583 ) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="cod-provinces-boundary" max-zoom="9" layer="GRID3-COD-province-v8-0" expression="" geometry="1" enabled="1" min-zoom="3">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="0.7" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{ac0acad1-be69-4e6f-976d-b2a500cb6176}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0;0"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="162,170,173,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(2,3),@element * (CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 5 THEN ((0) + ((1.4^(@vector_tile_zoom - 3) - 1) / (1.4^(5 - 3) - 1)) * ((0.75) - (0))) * 0.264583 WHEN @vector_tile_zoom > 5 AND @vector_tile_zoom &lt;= 6.5 THEN ((0.75) + ((1.4^(@vector_tile_zoom - 5) - 1) / (1.4^(6.5 - 5) - 1)) * ((1.5) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 6.5 AND @vector_tile_zoom &lt;= 8 THEN ((1.5) + ((1.4^(@vector_tile_zoom - 6.5) - 1) / (1.4^(8 - 6.5) - 1)) * ((2) - (1.5))) * 0.264583 WHEN @vector_tile_zoom > 8 AND @vector_tile_zoom &lt;= 10 THEN ((2) + ((1.4^(@vector_tile_zoom - 8) - 1) / (1.4^(10 - 8) - 1)) * ((3) - (2))) * 0.264583 WHEN @vector_tile_zoom > 10 THEN 0.79375 END)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 5 THEN ((0) + ((1.4^(@vector_tile_zoom - 3) - 1) / (1.4^(5 - 3) - 1)) * ((0.75) - (0))) * 0.264583 WHEN @vector_tile_zoom > 5 AND @vector_tile_zoom &lt;= 6.5 THEN ((0.75) + ((1.4^(@vector_tile_zoom - 5) - 1) / (1.4^(6.5 - 5) - 1)) * ((1.5) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 6.5 AND @vector_tile_zoom &lt;= 8 THEN ((1.5) + ((1.4^(@vector_tile_zoom - 6.5) - 1) / (1.4^(8 - 6.5) - 1)) * ((2) - (1.5))) * 0.264583 WHEN @vector_tile_zoom > 8 AND @vector_tile_zoom &lt;= 10 THEN ((2) + ((1.4^(@vector_tile_zoom - 8) - 1) / (1.4^(10 - 8) - 1)) * ((3) - (2))) * 0.264583 WHEN @vector_tile_zoom > 10 THEN 0.79375 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="nga-adm0-boundary" max-zoom="-1" layer="GRID3-NGA-unpublished-adm0" expression="" geometry="1" enabled="1" min-zoom="3">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{abe7b175-069b-479a-8f1a-cc5c2be949a2}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0;0"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="162,170,173,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(2,4),@element * (CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 5 THEN ((0) + ((1.4^(@vector_tile_zoom - 3) - 1) / (1.4^(5 - 3) - 1)) * ((0.75) - (0))) * 0.264583 WHEN @vector_tile_zoom > 5 AND @vector_tile_zoom &lt;= 6.5 THEN ((0.75) + ((1.4^(@vector_tile_zoom - 5) - 1) / (1.4^(6.5 - 5) - 1)) * ((1.5) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 6.5 THEN 0.396875 END)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="set_color_part(@symbol_color, 'alpha', scale_linear(@vector_tile_zoom,5,12,178.5,63.75))"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 3 AND @vector_tile_zoom &lt;= 5 THEN ((0) + ((1.4^(@vector_tile_zoom - 3) - 1) / (1.4^(5 - 3) - 1)) * ((0.75) - (0))) * 0.264583 WHEN @vector_tile_zoom > 5 AND @vector_tile_zoom &lt;= 6.5 THEN ((0.75) + ((1.4^(@vector_tile_zoom - 5) - 1) / (1.4^(6.5 - 5) - 1)) * ((1.5) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 6.5 THEN 0.396875 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="cod-antenne-boundary" max-zoom="-1" layer="GRID3-COD-antenne-v8-0" expression="" geometry="1" enabled="1" min-zoom="4">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{1167b746-84f6-4377-8159-47bf5c9c450b}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0;0"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="108,194,74,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(1,12),@element * (CASE WHEN @vector_tile_zoom >= 4 AND @vector_tile_zoom &lt;= 6 THEN ((0) + ((1.4^(@vector_tile_zoom - 4) - 1) / (1.4^(6 - 4) - 1)) * ((0.25) - (0))) * 0.264583 WHEN @vector_tile_zoom > 6 AND @vector_tile_zoom &lt;= 9 THEN ((0.25) + ((1.4^(@vector_tile_zoom - 6) - 1) / (1.4^(9 - 6) - 1)) * ((0.75) - (0.25))) * 0.264583 WHEN @vector_tile_zoom > 9 AND @vector_tile_zoom &lt;= 18 THEN ((0.75) + ((1.4^(@vector_tile_zoom - 9) - 1) / (1.4^(18 - 9) - 1)) * ((3) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 0.79375 END)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="fillColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 10 THEN color_hsla(103, 49, 52, 255) WHEN @vector_tile_zoom >= 10 AND @vector_tile_zoom &lt; 15 THEN color_hsla((103) + ((1.7^(@vector_tile_zoom - 10) - 1) / (1.7^(15 - 10) - 1)) * ((142) - (103)), (49) + ((1.7^(@vector_tile_zoom - 10) - 1) / (1.7^(15 - 10) - 1)) * ((100) - (49)), (52) + ((1.7^(@vector_tile_zoom - 10) - 1) / (1.7^(15 - 10) - 1)) * ((29) - (52)), 255) WHEN @vector_tile_zoom >= 15 THEN color_hsla(142, 100, 29, 255) ELSE color_hsla(142, 100, 29, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 10 THEN color_hsla(103, 49, 52, 255) WHEN @vector_tile_zoom >= 10 AND @vector_tile_zoom &lt; 15 THEN color_hsla((103) + ((1.7^(@vector_tile_zoom - 10) - 1) / (1.7^(15 - 10) - 1)) * ((142) - (103)), (49) + ((1.7^(@vector_tile_zoom - 10) - 1) / (1.7^(15 - 10) - 1)) * ((100) - (49)), (52) + ((1.7^(@vector_tile_zoom - 10) - 1) / (1.7^(15 - 10) - 1)) * ((29) - (52)), 255) WHEN @vector_tile_zoom >= 15 THEN color_hsla(142, 100, 29, 255) ELSE color_hsla(142, 100, 29, 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 4 AND @vector_tile_zoom &lt;= 6 THEN ((0) + ((1.4^(@vector_tile_zoom - 4) - 1) / (1.4^(6 - 4) - 1)) * ((0.25) - (0))) * 0.264583 WHEN @vector_tile_zoom > 6 AND @vector_tile_zoom &lt;= 9 THEN ((0.25) + ((1.4^(@vector_tile_zoom - 6) - 1) / (1.4^(9 - 6) - 1)) * ((0.75) - (0.25))) * 0.264583 WHEN @vector_tile_zoom > 9 AND @vector_tile_zoom &lt;= 18 THEN ((0.75) + ((1.4^(@vector_tile_zoom - 9) - 1) / (1.4^(18 - 9) - 1)) * ((3) - (0.75))) * 0.264583 WHEN @vector_tile_zoom > 18 THEN 0.79375 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="cod-health-areas-boundary-casing" max-zoom="-1" layer="GRID3-COD-airesante-v8-0" expression="" geometry="1" enabled="1" min-zoom="11">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{977bb66c-f910-47fd-95d5-62b9338bce49}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,255,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.529167"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="(scale_linear(@vector_tile_zoom,11.5,14,2,3)) * 0.264583"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="cod-health-areas-boundary-early" max-zoom="-1" layer="GRID3-COD-airesante-v8-0" expression="" geometry="1" enabled="1" min-zoom="6">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{505ba988-d414-414f-b2e3-e0a7ba1a28c1}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="0;0"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="255,87,34,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="1"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="customDash" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="array_to_string(array_foreach(array(2,4),@element * (CASE WHEN @vector_tile_zoom >= 6 AND @vector_tile_zoom &lt;= 9 THEN (scale_linear(@vector_tile_zoom,6,9,0,0.5)) * 0.264583 WHEN @vector_tile_zoom > 9 AND @vector_tile_zoom &lt;= 12 THEN (scale_linear(@vector_tile_zoom,9,12,0.5,1.25)) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN (scale_linear(@vector_tile_zoom,12,15,1.25,2)) * 0.264583 WHEN @vector_tile_zoom > 15 THEN 0.529167 END)), ';')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 6 AND @vector_tile_zoom &lt;= 9 THEN (scale_linear(@vector_tile_zoom,6,9,0,0.5)) * 0.264583 WHEN @vector_tile_zoom > 9 AND @vector_tile_zoom &lt;= 12 THEN (scale_linear(@vector_tile_zoom,9,12,0.5,1.25)) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 15 THEN (scale_linear(@vector_tile_zoom,12,15,1.25,2)) * 0.264583 WHEN @vector_tile_zoom > 15 THEN 0.529167 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="cod-health-zones-boundary" max-zoom="-1" layer="GRID3-COD-zonesante-v8-0" expression="" geometry="1" enabled="1" min-zoom="5">
        <symbols>
          <symbol name="0" type="line" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{87cab961-c484-4743-a258-d093b9d44903}" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="flat"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="miter"/>
                <Option name="line_color" type="QString" value="179,136,255,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.132292"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineColor" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom &lt; 5 THEN set_color_part(@symbol_color, 'alpha', 38.25) WHEN @vector_tile_zoom >= 5 AND @vector_tile_zoom &lt; 7 THEN set_color_part(@symbol_color, 'alpha', scale_linear(@vector_tile_zoom,5,7,38.25,63.75)) WHEN @vector_tile_zoom >= 7 AND @vector_tile_zoom &lt; 8 THEN set_color_part(@symbol_color, 'alpha', scale_linear(@vector_tile_zoom,7,8,63.75,255)) WHEN @vector_tile_zoom >= 8 THEN set_color_part(@symbol_color, 'alpha', 255) END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="CASE WHEN @vector_tile_zoom >= 5 AND @vector_tile_zoom &lt;= 12 THEN ((0.5) + ((1.5^(@vector_tile_zoom - 5) - 1) / (1.5^(12 - 5) - 1)) * ((1) - (0.5))) * 0.264583 WHEN @vector_tile_zoom > 12 AND @vector_tile_zoom &lt;= 16 THEN ((1) + ((1.5^(@vector_tile_zoom - 12) - 1) / (1.5^(16 - 12) - 1)) * ((2.5) - (1))) * 0.264583 WHEN @vector_tile_zoom > 16 THEN 0.661458 END"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
      <style name="" max-zoom="-1" layer="GRID3-COD-health-facilities-v8-0" expression="geometry_type(@geometry)='Point'" geometry="0" enabled="1" min-zoom="-1">
        <symbols>
          <symbol name="0" type="marker" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" id="{6a6130ad-3c45-4062-bfa6-ef3579f84fb8}" pass="0" class="SimpleMarker" enabled="1">
              <Option type="Map">
                <Option name="angle" type="QString" value="0"/>
                <Option name="cap_style" type="QString" value="square"/>
                <Option name="color" type="QString" value="219,30,42,255"/>
                <Option name="horizontal_anchor_point" type="QString" value="1"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="name" type="QString" value="cross_fill"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="128,17,25,255"/>
                <Option name="outline_style" type="QString" value="solid"/>
                <Option name="outline_width" type="QString" value="0.4"/>
                <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="scale_method" type="QString" value="diameter"/>
                <Option name="size" type="QString" value="4"/>
                <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="size_unit" type="QString" value="MM"/>
                <Option name="vertical_anchor_point" type="QString" value="1"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </symbols>
      </style>
    </styles>
  </renderer>
  <labeling type="basic" labelsEnabled="1">
    <styles/>
  </labeling>
  <blendMode>0</blendMode>
  <layerOpacity>1</layerOpacity>
</qgis>
