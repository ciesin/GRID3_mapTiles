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
                <Option name="size" type="QString" value="6"/>
                <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="size_unit" type="QString" value="Point"/>
                <Option name="vertical_anchor_point" type="QString" value="1"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="size" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="@zoom_level"/>
                      <Option name="transformer" type="Map">
                        <Option name="d" type="Map">
                          <Option name="exponent" type="double" value="0.57"/>
                          <Option name="maxSize" type="double" value="10"/>
                          <Option name="maxValue" type="double" value="18"/>
                          <Option name="minSize" type="double" value="1"/>
                          <Option name="minValue" type="double" value="8"/>
                          <Option name="nullSize" type="double" value="0"/>
                          <Option name="scaleType" type="int" value="2"/>
                        </Option>
                        <Option name="t" type="int" value="1"/>
                      </Option>
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
    </styles>
  </renderer>
  <labeling type="basic" labelsEnabled="1">
    <styles>
      <style name="address_label" max-zoom="-1" layer="buildings" expression="&quot;kind&quot; IS 'address'" geometry="0" enabled="1" min-zoom="18">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="1" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Italic" fontSizeUnit="MM" textColor="145,136,139,255" textOrientation="horizontal" fieldName="&quot;addr_housenumber&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{78ca59b4-8e96-4e26-9b38-1cadbd9cc849}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="water_label_ocean" max-zoom="-1" layer="water" expression="&quot;kind&quot; IN ('sea', 'ocean', 'bay', 'strait', 'fjord')" geometry="0" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="1" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.09375" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Italic" fontSizeUnit="MM" textColor="114,141,212,255" textOrientation="horizontal" fieldName="upper(&quot;name&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="128,222,234,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="18" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{fca38d4a-dee3-4bd0-99d5-eb2206ff8e77}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="earth_label_islands" max-zoom="-1" layer="earth" expression="&quot;kind&quot; IN ('island')" geometry="0" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="1" capitalization="0" isExpression="1" fontSize="2.6458333333333335" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.09375" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Italic" fontSizeUnit="MM" textColor="143,143,143,255" textOrientation="horizontal" fieldName="&quot;name&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="224,224,224,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="16" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="3" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{71d57cff-0950-4754-8dfb-6dd7736d3221}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="water_label_lakes" max-zoom="-1" layer="water" expression="&quot;kind&quot; IN ('lake', 'water')" geometry="0" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="1" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.09375" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Italic" fontSizeUnit="MM" textColor="114,141,212,255" textOrientation="horizontal" fieldName="&quot;name&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="128,222,234,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="18" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{b46f57bf-bde4-4915-88b7-50d63e6e2cc1}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="roads_shields" max-zoom="-1" layer="roads" expression="(&quot;kind&quot; IN ('highway', 'major_road')) AND (&quot;shield_text&quot; IS NOT NULL)" geometry="1" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="2.1166666666666667" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="57" namedStyle="Medium" fontSizeUnit="MM" textColor="147,138,141,255" textOrientation="horizontal" fieldName="&quot;shield_text&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="0" bufferSize="1" bufferBlendMode="0" bufferNoFill="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="2" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="4" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{2607200f-945e-4756-a457-3c7639b9c80d}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="roads_labels_major" max-zoom="-1" layer="roads" expression="&quot;kind&quot; IN ('highway', 'major_road')" geometry="1" enabled="1" min-zoom="11">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Regular" fontSizeUnit="MM" textColor="147,138,141,255" textOrientation="horizontal" fieldName="&quot;name&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="3" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{e5f22d60-28c1-4933-8ee0-facf0b633ecb}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="roads_labels_minor" max-zoom="-1" layer="roads" expression="&quot;kind&quot; IN ('minor_road', 'other', 'path')" geometry="1" enabled="1" min-zoom="15">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Regular" fontSizeUnit="MM" textColor="145,136,139,255" textOrientation="horizontal" fieldName="&quot;name&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="3" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{4d917cda-0ed6-48b3-abc1-dd6a85c9e2ee}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="pois" max-zoom="-1" layer="pois" expression="&quot;kind&quot; IN ('beach', 'forest', 'marina', 'park', 'peak', 'zoo', 'garden', 'bench', 'aerodrome', 'station', 'bus_stop', 'ferry_terminal', 'stadium', 'university', 'library', 'school', 'animal', 'toilets', 'drinking_water', 'post_office', 'building', 'townhall', 'restaurant', 'fast_food', 'cafe', 'bar', 'supermarket', 'convenience', 'books', 'beauty', 'electronics', 'clothes', 'attraction', 'museum', 'theatre', 'artwork')" geometry="0" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="4.2333333333333334" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Regular" fontSizeUnit="MM" textColor="226,223,218,255" textOrientation="horizontal" fieldName="&quot;name&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.79374999999999996" bufferBlendMode="0" bufferNoFill="1" bufferColor="245,245,250,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="3" addDirectionSymbol="0" autoWrapLength="16" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="5" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="4.6566666666666672" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Color" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="CASE WHEN &quot;kind&quot; IN ('beach','forest','marina','park','peak','zoo','garden','bench') THEN '#20834d' WHEN &quot;kind&quot; IN ('aerodrome','station','bus_stop','ferry_terminal') THEN '#315bcf' WHEN &quot;kind&quot; IN ('stadium','university','library','school','animal','toilets','drinking_water','post_office','building','townhall') THEN '#6a5b8f' WHEN &quot;kind&quot; IN ('supermarket','convenience','books','beauty','electronics','clothes') THEN '#1a8cbd' WHEN &quot;kind&quot; IN ('restaurant','fast_food','cafe','bar') THEN '#cb6704' WHEN &quot;kind&quot; IN ('attraction','museum','theatre','artwork') THEN '#ef56ba' ELSE '#e2dfda' END"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{4de83b2d-34b2-4c4e-b3d1-d4073494d87c}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="places_subplace" max-zoom="-1" layer="places" expression="&quot;kind&quot; IN ('neighbourhood', 'macrohood')" geometry="0" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="6.3499999999999996" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.09375" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Regular" fontSizeUnit="MM" textColor="38,50,56,255" textOrientation="horizontal" fieldName="upper(&quot;name&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="224,224,224,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="14" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="8" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{0091ec4a-6670-41b1-9786-ff538efb234e}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="places_region" max-zoom="-1" layer="places" expression="&quot;kind&quot; IS 'region'" geometry="0" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="4.2333333333333334" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Regular" fontSizeUnit="MM" textColor="179,179,179,255" textOrientation="horizontal" fieldName="upper(&quot;ref:en&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="224,224,224,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="5" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{a49edd69-9e96-49a4-89e6-270d795598b9}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="places_country" max-zoom="-1" layer="places" expression="&quot;kind&quot; IS 'country'" geometry="0" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="57" namedStyle="Medium" fontSizeUnit="MM" textColor="163,163,163,255" textOrientation="horizontal" fieldName="upper(&quot;name&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="226,223,218,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{25b108be-6c0a-4c39-a621-43c9c68f8621}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="cod-antenne-boundary-label" max-zoom="-1" layer="GRID3-COD-antenne-v8-0" expression="" geometry="1" enabled="1" min-zoom="9">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="4.7625000000000002" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.09375" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="57" namedStyle="Medium" fontSizeUnit="MM" textColor="66,66,66,255" textOrientation="horizontal" fieldName="upper(&quot;antenne&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="245,245,250,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="6" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="3" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{f6b8a2dd-fd49-47c2-89b9-9995e141766f}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="cod-health-areas-boundary-label" max-zoom="-1" layer="GRID3-COD-airesante-v8-0" expression="" geometry="1" enabled="1" min-zoom="11">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="10" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Open Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Regular" fontSizeUnit="Point" textColor="50,50,50,255" textOrientation="horizontal" fieldName="upper(&quot;airesante&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="0" bufferSize="1" bufferBlendMode="0" bufferNoFill="1" bufferColor="250,250,250,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="Point" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="Point" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="Point" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="Point" shapeOffsetY="0" shapeRotation="0">
              <symbol name="markerSymbol" type="marker" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="114,155,111,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
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
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_unit" type="QString" value="Point"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="6" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="3" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="LineGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="3" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{631ef4b8-04c2-49db-af78-1bbe545322a3}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="cod-health-zones-boundary-label" max-zoom="-1" layer="GRID3-COD-zonesante-v8-0" expression="" geometry="1" enabled="1" min-zoom="8">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="4.7625000000000002" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.140625" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="57" namedStyle="Medium" fontSizeUnit="MM" textColor="66,66,66,255" textOrientation="horizontal" fieldName="upper(&quot;zonesante&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="245,245,250,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="6" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="3" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{b429078f-5afb-4be4-b33e-f94ba0daf66a}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="cod-settlement-names-label" max-zoom="-1" layer="GRID3-COD-settlement-names-v8-0" expression="" geometry="0" enabled="1" min-zoom="10">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="3.7041666666666666" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Regular" fontSizeUnit="MM" textColor="38,50,56,255" textOrientation="horizontal" fieldName="&quot;localite&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.79374999999999996" bufferBlendMode="0" bufferNoFill="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="16" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{a3d912a3-d2bd-4bfe-8bf1-2a9c20db8bbd}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="places_locality" max-zoom="-1" layer="places" expression="&quot;kind&quot; IS 'locality'" geometry="0" enabled="1" min-zoom="-1">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Andale Mono" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="" fontSizeUnit="MM" textColor="38,50,56,255" textOrientation="horizontal" fieldName="&quot;name&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.79374999999999996" bufferBlendMode="0" bufferNoFill="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="3" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{2933acbf-0a90-4f6e-b068-17f3cdd14f96}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="cod-health-facilities-label" max-zoom="-1" layer="GRID3-COD-health-facilities-v8-0" expression="" geometry="0" enabled="1" min-zoom="7">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="6" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0" legendString="Aa" fontUnderline="0" fontFamily="Arial" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="75" namedStyle="Bold" fontSizeUnit="Point" textColor="100,100,100,255" textOrientation="horizontal" fieldName="&quot;essnom1&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.66149999999999998" bufferBlendMode="0" bufferNoFill="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="markerSymbol" type="marker" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="231,113,72,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
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
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="16" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="6" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="1" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="PointGeometry" yOffset="-2.3813" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="AllowOverlapIfRequired" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="1" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="3" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="BufferColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="CASE WHEN &quot;esstype&quot; IN () THEN '#53565a' ELSE '#ffffff' END"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="CASE WHEN &quot;esstype&quot; IN ('Poste de Santé','Clinique') THEN '#3a5dae' WHEN &quot;esstype&quot; IN ('Centre de Santé','Hôpital Général de Référence','Centre Hopitalier','Hôpital','Centre Médical') THEN '#b44769' WHEN &quot;esstype&quot; IN () THEN '#ffff00' ELSE '#646464' END"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="@zoom_level"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{6dd76b59-b4e4-43f1-8166-7e4cf68ffafa}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="cod-health-areas-centroids-label" max-zoom="-1" layer="GRID3-COD-airesante-v8-0-centroids" expression="" geometry="0" enabled="1" min-zoom="9">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.296875" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Regular" fontSizeUnit="MM" textColor="207,69,32,255" textOrientation="horizontal" fieldName="upper(&quot;airesante&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.63500000000000001" bufferBlendMode="0" bufferNoFill="1" bufferColor="245,245,250,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="markerSymbol" type="marker" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="183,72,75,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
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
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="3" addDirectionSymbol="0" autoWrapLength="8" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="2" offsetUnits="MM" allowDegraded="0" placement="6" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="PointGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="3" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="1"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{4b144b4e-839f-4b32-b00f-3e869c891e8f}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="5"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="cod-health-zones-centroids-label" max-zoom="-1" layer="GRID3-COD-zonesante-v8-0-centroids" expression="" geometry="0" enabled="1" min-zoom="7">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.125" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="57" namedStyle="Medium" fontSizeUnit="MM" textColor="130,70,175,255" textOrientation="horizontal" fieldName="upper(&quot;zonesante&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.79369999999999996" bufferBlendMode="0" bufferNoFill="1" bufferColor="232,232,242,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="markerSymbol" type="marker" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="231,113,72,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
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
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="3" addDirectionSymbol="0" autoWrapLength="16" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="6" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="PointGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="3" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{053816f2-616b-435a-a94e-babeb7e4c115}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="provinces-centroids-label" max-zoom="8" layer="GRID3-COD-province-v8-0-centroids" expression="" geometry="0" enabled="1" min-zoom="6">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="0" capitalization="0" isExpression="1" fontSize="4.2332999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="1" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="57" namedStyle="Medium" fontSizeUnit="MM" textColor="124,135,142,255" textOrientation="horizontal" fieldName="upper(&quot;province&quot;)">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="0.251" bufferDraw="1" bufferSize="0.79369999999999996" bufferBlendMode="0" bufferNoFill="1" bufferColor="255,255,255,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="markerSymbol" type="marker" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="152,125,183,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
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
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="3" addDirectionSymbol="0" autoWrapLength="32" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="5" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="6" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="PointGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="3" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{38022cf8-8f13-4337-a194-8fd39200113b}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
      <style name="water_waterway_label" max-zoom="-1" layer="water" expression="&quot;kind&quot; IN ('river', 'stream')" geometry="1" enabled="1" min-zoom="13">
        <settings calloutType="simple">
          <text-style textOpacity="1" fontWordSpacing="0" allowHtml="0" previewBkgrdColor="255,255,255,255" fontItalic="1" capitalization="0" isExpression="1" fontSize="3.1749999999999998" forcedBold="0" multilineHeight="1" blendMode="0" fontLetterSpacing="0.1875" legendString="Aa" fontUnderline="0" fontFamily="Noto Sans" useSubstitutions="0" fontStrikeout="0" multilineHeightUnit="Percentage" fontSizeMapUnitScale="3x:0,0,0,0,0,0" forcedItalic="0" fontKerning="1" fontWeight="50" namedStyle="Italic" fontSizeUnit="MM" textColor="114,141,212,255" textOrientation="horizontal" fieldName="&quot;name&quot;">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferDraw="1" bufferSize="0.52916666666666667" bufferBlendMode="0" bufferNoFill="1" bufferColor="128,222,234,255" bufferSizeUnits="MM" bufferJoinStyle="128"/>
            <text-mask maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskSize2="1.5"/>
            <background shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeY="0" shapeSizeX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeSizeUnit="MM" shapeOffsetY="0" shapeRotation="0">
              <symbol name="fillSymbol" type="fill" is_animated="0" alpha="1" force_rhr="0" clip_to_extent="1" frame_rate="10">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" id="" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
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
            </background>
            <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadius="1.5" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" formatNumbers="0" placeDirectionSymbol="0" multilineAlign="1" addDirectionSymbol="0" autoWrapLength="20" rightDirectionSymbol=">" decimals="3" wrapChar=""/>
          <placement priority="4" maxCurvedCharAngleIn="25" geometryGeneratorType="PointGeometry" lineAnchorTextPoint="FollowPlacement" overrunDistance="0" dist="0" offsetUnits="MM" allowDegraded="0" placement="3" geometryGenerator="" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" rotationUnit="AngleDegrees" preserveRotation="1" lineAnchorClipping="0" layerType="UnknownGeometry" yOffset="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" repeatDistance="0" rotationAngle="0" centroidWhole="0" geometryGeneratorEnabled="0" offsetType="0" xOffset="0" overlapHandling="PreventOverlap" placementFlags="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" lineAnchorPercent="0.5" polygonPlacementFlags="2" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" centroidInside="0" lineAnchorType="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering minFeatureSize="0" labelPerPart="0" scaleVisibility="0" fontLimitPixelSize="0" maxNumLabels="2000" zIndex="0" obstacle="1" drawLabels="1" scaleMax="0" upsidedownLabels="0" limitNumLabels="0" fontMinPixelSize="0" mergeLines="0" fontMaxPixelSize="10000" unplacedVisibility="0" obstacleFactor="0.10000000000000001" scaleMin="0" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; is_animated=&quot;0&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; frame_rate=&quot;10&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; id=&quot;{a9d16932-14f5-4982-87cf-934e3c72772a}&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </style>
    </styles>
  </labeling>
  <blendMode>0</blendMode>
  <layerOpacity>1</layerOpacity>
</qgis>
