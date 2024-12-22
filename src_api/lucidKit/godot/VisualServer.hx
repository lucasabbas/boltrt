package lucidKit.godot;

@:native("godot.VisualServer")
extern class VisualServer extends Object {
    public var render_loop_enabled: Bool;
    public function black_bars_set_images(left: RID, top: RID, right: RID, bottom: RID): Void;
    public function black_bars_set_margins(left: Int, top: Int, right: Int, bottom: Int): Void;
    public function camera_create(): RID;
    public function camera_set_cull_mask(camera: RID, layers: Int): Void;
    public function camera_set_environment(camera: RID, env: RID): Void;
    public function camera_set_frustum(camera: RID, size: Float, offset: GdVector2, z_near: Float, z_far: Float): Void;
    public function camera_set_orthogonal(camera: RID, size: Float, z_near: Float, z_far: Float): Void;
    public function camera_set_perspective(camera: RID, fovy_degrees: Float, z_near: Float, z_far: Float): Void;
    public function camera_set_transform(camera: RID, transform: Transform): Void;
    public function camera_set_use_vertical_aspect(camera: RID, enable: Bool): Void;
    public function canvas_create(): RID;
    public function canvas_item_add_circle(item: RID, pos: GdVector2, radius: Float, color: Color): Void;
    public function canvas_item_add_clip_ignore(item: RID, ignore: Bool): Void;
    public function canvas_item_add_line(item: RID, from: GdVector2, to: GdVector2, color: Color, width: Float, antialiased: Bool): Void;
    public function canvas_item_add_mesh(item: RID, mesh: RID, transform: Transform2D, modulate: Color, texture: RID, normal_map: RID): Void;
    public function canvas_item_add_multimesh(item: RID, mesh: RID, texture: RID, normal_map: RID): Void;
    public function canvas_item_add_nine_patch(item: RID, rect: Rect2, source: Rect2, texture: RID, topleft: GdVector2, bottomright: GdVector2, x_axis_mode: Int, y_axis_mode: Int, draw_center: Bool, modulate: Color, normal_map: RID): Void;
    public function canvas_item_add_particles(item: RID, particles: RID, texture: RID, normal_map: RID): Void;
    public function canvas_item_add_polygon(item: RID, points: PoolVector2Array, colors: PoolColorArray, uvs: PoolVector2Array, texture: RID, normal_map: RID, antialiased: Bool): Void;
    public function canvas_item_add_polyline(item: RID, points: PoolVector2Array, colors: PoolColorArray, width: Float, antialiased: Bool): Void;
    public function canvas_item_add_primitive(item: RID, points: PoolVector2Array, colors: PoolColorArray, uvs: PoolVector2Array, texture: RID, width: Float, normal_map: RID): Void;
    public function canvas_item_add_rect(item: RID, rect: Rect2, color: Color): Void;
    public function canvas_item_add_set_transform(item: RID, transform: Transform2D): Void;
    public function canvas_item_add_texture_rect(item: RID, rect: Rect2, texture: RID, tile: Bool, modulate: Color, transpose: Bool, normal_map: RID): Void;
    public function canvas_item_add_texture_rect_region(item: RID, rect: Rect2, texture: RID, src_rect: Rect2, modulate: Color, transpose: Bool, normal_map: RID, clip_uv: Bool): Void;
    public function canvas_item_add_triangle_array(item: RID, indices: PoolIntArray, points: PoolVector2Array, colors: PoolColorArray, uvs: PoolVector2Array, bones: PoolIntArray, weights: PoolRealArray, texture: RID, count: Int, normal_map: RID, antialiased: Bool, antialiasing_use_indices: Bool): Void;
    public function canvas_item_clear(item: RID): Void;
    public function canvas_item_create(): RID;
    public function canvas_item_reset_physics_interpolation(item: RID): Void;
    public function canvas_item_set_clip(item: RID, clip: Bool): Void;
    public function canvas_item_set_copy_to_backbuffer(item: RID, enabled: Bool, rect: Rect2): Void;
    public function canvas_item_set_custom_rect(item: RID, use_custom_rect: Bool, rect: Rect2): Void;
    public function canvas_item_set_distance_field_mode(item: RID, enabled: Bool): Void;
    public function canvas_item_set_draw_behind_parent(item: RID, enabled: Bool): Void;
    public function canvas_item_set_draw_index(item: RID, index: Int): Void;
    public function canvas_item_set_interpolated(item: RID, interpolated: Bool): Void;
    public function canvas_item_set_light_mask(item: RID, mask: Int): Void;
    public function canvas_item_set_material(item: RID, material: RID): Void;
    public function canvas_item_set_modulate(item: RID, color: Color): Void;
    public function canvas_item_set_parent(item: RID, parent: RID): Void;
    public function canvas_item_set_self_modulate(item: RID, color: Color): Void;
    public function canvas_item_set_sort_children_by_y(item: RID, enabled: Bool): Void;
    public function canvas_item_set_transform(item: RID, transform: Transform2D): Void;
    public function canvas_item_set_use_parent_material(item: RID, enabled: Bool): Void;
    public function canvas_item_set_visible(item: RID, visible: Bool): Void;
    public function canvas_item_set_z_as_relative_to_parent(item: RID, enabled: Bool): Void;
    public function canvas_item_set_z_index(item: RID, z_index: Int): Void;
    public function canvas_item_transform_physics_interpolation(item: RID, xform: Transform2D): Void;
    public function canvas_light_attach_to_canvas(light: RID, canvas: RID): Void;
    public function canvas_light_create(): RID;
    public function canvas_light_occluder_attach_to_canvas(occluder: RID, canvas: RID): Void;
    public function canvas_light_occluder_create(): RID;
    public function canvas_light_occluder_reset_physics_interpolation(occluder: RID): Void;
    public function canvas_light_occluder_set_enabled(occluder: RID, enabled: Bool): Void;
    public function canvas_light_occluder_set_interpolated(occluder: RID, interpolated: Bool): Void;
    public function canvas_light_occluder_set_light_mask(occluder: RID, mask: Int): Void;
    public function canvas_light_occluder_set_polygon(occluder: RID, polygon: RID): Void;
    public function canvas_light_occluder_set_transform(occluder: RID, transform: Transform2D): Void;
    public function canvas_light_occluder_transform_physics_interpolation(occluder: RID, xform: Transform2D): Void;
    public function canvas_light_reset_physics_interpolation(light: RID): Void;
    public function canvas_light_set_color(light: RID, color: Color): Void;
    public function canvas_light_set_enabled(light: RID, enabled: Bool): Void;
    public function canvas_light_set_energy(light: RID, energy: Float): Void;
    public function canvas_light_set_height(light: RID, height: Float): Void;
    public function canvas_light_set_interpolated(light: RID, interpolated: Bool): Void;
    public function canvas_light_set_item_cull_mask(light: RID, mask: Int): Void;
    public function canvas_light_set_item_shadow_cull_mask(light: RID, mask: Int): Void;
    public function canvas_light_set_layer_range(light: RID, min_layer: Int, max_layer: Int): Void;
    public function canvas_light_set_mode(light: RID, mode: Int): Void;
    public function canvas_light_set_scale(light: RID, scale: Float): Void;
    public function canvas_light_set_shadow_buffer_size(light: RID, size: Int): Void;
    public function canvas_light_set_shadow_color(light: RID, color: Color): Void;
    public function canvas_light_set_shadow_enabled(light: RID, enabled: Bool): Void;
    public function canvas_light_set_shadow_filter(light: RID, filter: Int): Void;
    public function canvas_light_set_shadow_gradient_length(light: RID, length: Float): Void;
    public function canvas_light_set_shadow_smooth(light: RID, smooth: Float): Void;
    public function canvas_light_set_texture(light: RID, texture: RID): Void;
    public function canvas_light_set_texture_offset(light: RID, offset: GdVector2): Void;
    public function canvas_light_set_transform(light: RID, transform: Transform2D): Void;
    public function canvas_light_set_z_range(light: RID, min_z: Int, max_z: Int): Void;
    public function canvas_light_transform_physics_interpolation(light: RID, xform: Transform2D): Void;
    public function canvas_occluder_polygon_create(): RID;
    public function canvas_occluder_polygon_set_cull_mode(occluder_polygon: RID, mode: Int): Void;
    public function canvas_occluder_polygon_set_shape(occluder_polygon: RID, shape: PoolVector2Array, closed: Bool): Void;
    public function canvas_occluder_polygon_set_shape_as_lines(occluder_polygon: RID, shape: PoolVector2Array): Void;
    public function canvas_set_item_mirroring(canvas: RID, item: RID, mirroring: GdVector2): Void;
    public function canvas_set_modulate(canvas: RID, color: Color): Void;
    public function debug_canvas_item_get_local_bound(item: RID): Rect2;
    public function debug_canvas_item_get_rect(item: RID): Rect2;
    public function directional_light_create(): RID;
    public function draw(swap_buffers: Bool, frame_step: Float): Void;
    public function environment_create(): RID;
    public function environment_set_adjustment(env: RID, enable: Bool, brightness: Float, contrast: Float, saturation: Float, ramp: RID): Void;
    public function environment_set_ambient_light(env: RID, color: Color, energy: Float, sky_contibution: Float): Void;
    public function environment_set_background(env: RID, bg: Int): Void;
    public function environment_set_bg_color(env: RID, color: Color): Void;
    public function environment_set_bg_energy(env: RID, energy: Float): Void;
    public function environment_set_canvas_max_layer(env: RID, max_layer: Int): Void;
    public function environment_set_dof_blur_far(env: RID, enable: Bool, distance: Float, transition: Float, far_amount: Float, quality: Int): Void;
    public function environment_set_dof_blur_near(env: RID, enable: Bool, distance: Float, transition: Float, far_amount: Float, quality: Int): Void;
    public function environment_set_fog(env: RID, enable: Bool, color: Color, sun_color: Color, sun_amount: Float): Void;
    public function environment_set_fog_depth(env: RID, enable: Bool, depth_begin: Float, depth_end: Float, depth_curve: Float, transmit: Bool, transmit_curve: Float): Void;
    public function environment_set_fog_height(env: RID, enable: Bool, min_height: Float, max_height: Float, height_curve: Float): Void;
    public function environment_set_glow(env: RID, enable: Bool, level_flags: Int, intensity: Float, strength: Float, bloom_threshold: Float, blend_mode: Int, hdr_bleed_threshold: Float, hdr_bleed_scale: Float, hdr_luminance_cap: Float, bicubic_upscale: Bool, high_quality: Bool): Void;
    public function environment_set_sky(env: RID, sky: RID): Void;
    public function environment_set_sky_custom_fov(env: RID, scale: Float): Void;
    public function environment_set_sky_orientation(env: RID, orientation: Basis): Void;
    public function environment_set_ssao(env: RID, enable: Bool, radius: Float, intensity: Float, radius2: Float, intensity2: Float, bias: Float, light_affect: Float, ao_channel_affect: Float, color: Color, quality: Int, blur: Int, bilateral_sharpness: Float): Void;
    public function environment_set_ssr(env: RID, enable: Bool, max_steps: Int, fade_in: Float, fade_out: Float, depth_tolerance: Float, roughness: Bool): Void;
    public function environment_set_tonemap(env: RID, tone_mapper: Int, exposure: Float, white: Float, auto_exposure: Bool, min_luminance: Float, max_luminance: Float, auto_exp_speed: Float, auto_exp_grey: Float): Void;
    public function finish(): Void;
    public function force_draw(swap_buffers: Bool, frame_step: Float): Void;
    public function force_sync(): Void;
    public function free_rid(rid: RID): Void;
    public function get_render_info(info: Int): Int;
    public function get_test_cube(): RID;
    public function get_test_texture(): RID;
    public function get_video_adapter_name(): String;
    public function get_video_adapter_vendor(): String;
    public function get_white_texture(): RID;
    public function gi_probe_create(): RID;
    public function gi_probe_get_bias(probe: RID): Float;
    public function gi_probe_get_bounds(probe: RID): AABB;
    public function gi_probe_get_cell_size(probe: RID): Float;
    public function gi_probe_get_dynamic_data(probe: RID): PoolIntArray;
    public function gi_probe_get_dynamic_range(probe: RID): Int;
    public function gi_probe_get_energy(probe: RID): Float;
    public function gi_probe_get_normal_bias(probe: RID): Float;
    public function gi_probe_get_propagation(probe: RID): Float;
    public function gi_probe_get_to_cell_xform(probe: RID): Transform;
    public function gi_probe_is_compressed(probe: RID): Bool;
    public function gi_probe_is_interior(probe: RID): Bool;
    public function gi_probe_set_bias(probe: RID, bias: Float): Void;
    public function gi_probe_set_bounds(probe: RID, bounds: AABB): Void;
    public function gi_probe_set_cell_size(probe: RID, range: Float): Void;
    public function gi_probe_set_compress(probe: RID, enable: Bool): Void;
    public function gi_probe_set_dynamic_data(probe: RID, data: PoolIntArray): Void;
    public function gi_probe_set_dynamic_range(probe: RID, range: Int): Void;
    public function gi_probe_set_energy(probe: RID, energy: Float): Void;
    public function gi_probe_set_interior(probe: RID, enable: Bool): Void;
    public function gi_probe_set_normal_bias(probe: RID, bias: Float): Void;
    public function gi_probe_set_propagation(probe: RID, propagation: Float): Void;
    public function gi_probe_set_to_cell_xform(probe: RID, xform: Transform): Void;
    public function has_changed(queried_priority: Int): Bool;
    public function has_feature(feature: Int): Bool;
    public function has_os_feature(feature: String): Bool;
    public function immediate_begin(immediate: RID, primitive: Int, texture: RID): Void;
    public function immediate_clear(immediate: RID): Void;
    public function immediate_color(immediate: RID, color: Color): Void;
    public function immediate_create(): RID;
    public function immediate_end(immediate: RID): Void;
    public function immediate_get_material(immediate: RID): RID;
    public function immediate_normal(immediate: RID, normal: GdVector3): Void;
    public function immediate_set_material(immediate: RID, material: RID): Void;
    public function immediate_tangent(immediate: RID, tangent: Plane): Void;
    public function immediate_uv(immediate: RID, tex_uv: GdVector2): Void;
    public function immediate_uv2(immediate: RID, tex_uv: GdVector2): Void;
    public function immediate_vertex(immediate: RID, vertex: GdVector3): Void;
    public function immediate_vertex_2d(immediate: RID, vertex: GdVector2): Void;
    public function init(): Void;
    public function instance_attach_object_instance_id(instance: RID, id: Int): Void;
    public function instance_attach_skeleton(instance: RID, skeleton: RID): Void;
    public function instance_create(): RID;
    public function instance_create2(base: RID, scenario: RID): RID;
    public function instance_geometry_set_cast_shadows_setting(instance: RID, shadow_casting_setting: Int): Void;
    public function instance_geometry_set_flag(instance: RID, flag: Int, enabled: Bool): Void;
    public function instance_geometry_set_material_overlay(instance: RID, material: RID): Void;
    public function instance_geometry_set_material_override(instance: RID, material: RID): Void;
    public function instance_reset_physics_interpolation(instance: RID): Void;
    public function instance_set_base(instance: RID, base: RID): Void;
    public function instance_set_blend_shape_weight(instance: RID, shape: Int, weight: Float): Void;
    public function instance_set_custom_aabb(instance: RID, aabb: AABB): Void;
    public function instance_set_exterior(instance: RID, enabled: Bool): Void;
    public function instance_set_extra_visibility_margin(instance: RID, margin: Float): Void;
    public function instance_set_interpolated(instance: RID, interpolated: Bool): Void;
    public function instance_set_layer_mask(instance: RID, mask: Int): Void;
    public function instance_set_scenario(instance: RID, scenario: RID): Void;
    public function instance_set_surface_material(instance: RID, surface: Int, material: RID): Void;
    public function instance_set_transform(instance: RID, transform: Transform): Void;
    public function instance_set_use_lightmap(instance: RID, lightmap_instance: RID, lightmap: RID, lightmap_slice: Int, lightmap_uv_rect: Rect2): Void;
    public function instance_set_visible(instance: RID, visible: Bool): Void;
    public function instances_cull_aabb(aabb: AABB, scenario: RID): Array<Dynamic>;
    public function instances_cull_convex(convex: Array<Dynamic>, scenario: RID): Array<Dynamic>;
    public function instances_cull_ray(from: GdVector3, to: GdVector3, scenario: RID): Array<Dynamic>;
    public function light_directional_set_blend_splits(light: RID, enable: Bool): Void;
    public function light_directional_set_shadow_depth_range_mode(light: RID, range_mode: Int): Void;
    public function light_directional_set_shadow_mode(light: RID, mode: Int): Void;
    public function light_omni_set_shadow_detail(light: RID, detail: Int): Void;
    public function light_omni_set_shadow_mode(light: RID, mode: Int): Void;
    public function light_set_bake_mode(light: RID, bake_mode: Int): Void;
    public function light_set_color(light: RID, color: Color): Void;
    public function light_set_cull_mask(light: RID, mask: Int): Void;
    public function light_set_negative(light: RID, enable: Bool): Void;
    public function light_set_param(light: RID, param: Int, value: Float): Void;
    public function light_set_projector(light: RID, texture: RID): Void;
    public function light_set_reverse_cull_face_mode(light: RID, enabled: Bool): Void;
    public function light_set_shadow(light: RID, enabled: Bool): Void;
    public function light_set_shadow_color(light: RID, color: Color): Void;
    public function light_set_use_gi(light: RID, enabled: Bool): Void;
    public function lightmap_capture_create(): RID;
    public function lightmap_capture_get_bounds(capture: RID): AABB;
    public function lightmap_capture_get_energy(capture: RID): Float;
    public function lightmap_capture_get_octree(capture: RID): PoolByteArray;
    public function lightmap_capture_get_octree_cell_subdiv(capture: RID): Int;
    public function lightmap_capture_get_octree_cell_transform(capture: RID): Transform;
    public function lightmap_capture_is_interior(capture: RID): Bool;
    public function lightmap_capture_set_bounds(capture: RID, bounds: AABB): Void;
    public function lightmap_capture_set_energy(capture: RID, energy: Float): Void;
    public function lightmap_capture_set_interior(capture: RID, interior: Bool): Void;
    public function lightmap_capture_set_octree(capture: RID, octree: PoolByteArray): Void;
    public function lightmap_capture_set_octree_cell_subdiv(capture: RID, subdiv: Int): Void;
    public function lightmap_capture_set_octree_cell_transform(capture: RID, xform: Transform): Void;
    public function make_sphere_mesh(latitudes: Int, longitudes: Int, radius: Float): RID;
    public function material_create(): RID;
    public function material_get_param(material: RID, parameter: String): Variant;
    public function material_get_param_default(material: RID, parameter: String): Variant;
    public function material_get_shader(shader_material: RID): RID;
    public function material_set_line_width(material: RID, width: Float): Void;
    public function material_set_next_pass(material: RID, next_material: RID): Void;
    public function material_set_param(material: RID, parameter: String, value: Variant): Void;
    public function material_set_render_priority(material: RID, priority: Int): Void;
    public function material_set_shader(shader_material: RID, shader: RID): Void;
    public function mesh_add_surface_from_arrays(mesh: RID, primitive: Int, arrays: Array<Dynamic>, blend_shapes: Array<Dynamic>, compress_format: Int): Void;
    public function mesh_clear(mesh: RID): Void;
    public function mesh_create(): RID;
    public function mesh_get_blend_shape_count(mesh: RID): Int;
    public function mesh_get_blend_shape_mode(mesh: RID): Int;
    public function mesh_get_custom_aabb(mesh: RID): AABB;
    public function mesh_get_surface_count(mesh: RID): Int;
    public function mesh_remove_surface(mesh: RID, index: Int): Void;
    public function mesh_set_blend_shape_count(mesh: RID, amount: Int): Void;
    public function mesh_set_blend_shape_mode(mesh: RID, mode: Int): Void;
    public function mesh_set_custom_aabb(mesh: RID, aabb: AABB): Void;
    public function mesh_surface_get_aabb(mesh: RID, surface: Int): AABB;
    public function mesh_surface_get_array(mesh: RID, surface: Int): PoolByteArray;
    public function mesh_surface_get_array_index_len(mesh: RID, surface: Int): Int;
    public function mesh_surface_get_array_len(mesh: RID, surface: Int): Int;
    public function mesh_surface_get_arrays(mesh: RID, surface: Int): Array<Dynamic>;
    public function mesh_surface_get_blend_shape_arrays(mesh: RID, surface: Int): Array<Dynamic>;
    public function mesh_surface_get_format(mesh: RID, surface: Int): Int;
    public function mesh_surface_get_format_offset(format: Int, vertex_len: Int, index_len: Int, array_index: Int): Int;
    public function mesh_surface_get_format_stride(format: Int, vertex_len: Int, index_len: Int, array_index: Int): Int;
    public function mesh_surface_get_index_array(mesh: RID, surface: Int): PoolByteArray;
    public function mesh_surface_get_material(mesh: RID, surface: Int): RID;
    public function mesh_surface_get_primitive_type(mesh: RID, surface: Int): Int;
    public function mesh_surface_get_skeleton_aabb(mesh: RID, surface: Int): Array<Dynamic>;
    public function mesh_surface_set_material(mesh: RID, surface: Int, material: RID): Void;
    public function mesh_surface_update_region(mesh: RID, surface: Int, offset: Int, data: PoolByteArray): Void;
    public function multimesh_allocate(multimesh: RID, instances: Int, transform_format: Int, color_format: Int, custom_data_format: Int): Void;
    public function multimesh_create(): RID;
    public function multimesh_get_aabb(multimesh: RID): AABB;
    public function multimesh_get_instance_count(multimesh: RID): Int;
    public function multimesh_get_mesh(multimesh: RID): RID;
    public function multimesh_get_visible_instances(multimesh: RID): Int;
    public function multimesh_instance_get_color(multimesh: RID, index: Int): Color;
    public function multimesh_instance_get_custom_data(multimesh: RID, index: Int): Color;
    public function multimesh_instance_get_transform(multimesh: RID, index: Int): Transform;
    public function multimesh_instance_get_transform_2d(multimesh: RID, index: Int): Transform2D;
    public function multimesh_instance_reset_physics_interpolation(multimesh: RID, index: Int): Void;
    public function multimesh_instance_set_color(multimesh: RID, index: Int, color: Color): Void;
    public function multimesh_instance_set_custom_data(multimesh: RID, index: Int, custom_data: Color): Void;
    public function multimesh_instance_set_transform(multimesh: RID, index: Int, transform: Transform): Void;
    public function multimesh_instance_set_transform_2d(multimesh: RID, index: Int, transform: Transform2D): Void;
    public function multimesh_set_as_bulk_array(multimesh: RID, array: PoolRealArray): Void;
    public function multimesh_set_as_bulk_array_interpolated(multimesh: RID, array: PoolRealArray, array_previous: PoolRealArray): Void;
    public function multimesh_set_mesh(multimesh: RID, mesh: RID): Void;
    public function multimesh_set_physics_interpolated(multimesh: RID, interpolated: Bool): Void;
    public function multimesh_set_physics_interpolation_quality(multimesh: RID, quality: Int): Void;
    public function multimesh_set_visible_instances(multimesh: RID, visible: Int): Void;
    public function omni_light_create(): RID;
    public function particles_create(): RID;
    public function particles_get_current_aabb(particles: RID): AABB;
    public function particles_get_emitting(particles: RID): Bool;
    public function particles_is_inactive(particles: RID): Bool;
    public function particles_request_process(particles: RID): Void;
    public function particles_restart(particles: RID): Void;
    public function particles_set_amount(particles: RID, amount: Int): Void;
    public function particles_set_custom_aabb(particles: RID, aabb: AABB): Void;
    public function particles_set_draw_order(particles: RID, order: Int): Void;
    public function particles_set_draw_pass_mesh(particles: RID, pass: Int, mesh: RID): Void;
    public function particles_set_draw_passes(particles: RID, count: Int): Void;
    public function particles_set_emission_transform(particles: RID, transform: Transform): Void;
    public function particles_set_emitting(particles: RID, emitting: Bool): Void;
    public function particles_set_explosiveness_ratio(particles: RID, ratio: Float): Void;
    public function particles_set_fixed_fps(particles: RID, fps: Int): Void;
    public function particles_set_fractional_delta(particles: RID, enable: Bool): Void;
    public function particles_set_lifetime(particles: RID, lifetime: Float): Void;
    public function particles_set_one_shot(particles: RID, one_shot: Bool): Void;
    public function particles_set_pre_process_time(particles: RID, time: Float): Void;
    public function particles_set_process_material(particles: RID, material: RID): Void;
    public function particles_set_randomness_ratio(particles: RID, ratio: Float): Void;
    public function particles_set_speed_scale(particles: RID, scale: Float): Void;
    public function particles_set_use_local_coordinates(particles: RID, enable: Bool): Void;
    public function reflection_probe_create(): RID;
    public function reflection_probe_set_as_interior(probe: RID, enable: Bool): Void;
    public function reflection_probe_set_cull_mask(probe: RID, layers: Int): Void;
    public function reflection_probe_set_enable_box_projection(probe: RID, enable: Bool): Void;
    public function reflection_probe_set_enable_shadows(probe: RID, enable: Bool): Void;
    public function reflection_probe_set_extents(probe: RID, extents: GdVector3): Void;
    public function reflection_probe_set_intensity(probe: RID, intensity: Float): Void;
    public function reflection_probe_set_interior_ambient(probe: RID, color: Color): Void;
    public function reflection_probe_set_interior_ambient_energy(probe: RID, energy: Float): Void;
    public function reflection_probe_set_interior_ambient_probe_contribution(probe: RID, contrib: Float): Void;
    public function reflection_probe_set_max_distance(probe: RID, distance: Float): Void;
    public function reflection_probe_set_origin_offset(probe: RID, offset: GdVector3): Void;
    public function reflection_probe_set_update_mode(probe: RID, mode: Int): Void;
    public function request_frame_drawn_callback(where: Object, method: String, userdata: Variant): Void;
    public function scenario_create(): RID;
    public function scenario_set_debug(scenario: RID, debug_mode: Int): Void;
    public function scenario_set_environment(scenario: RID, environment: RID): Void;
    public function scenario_set_fallback_environment(scenario: RID, environment: RID): Void;
    public function scenario_set_reflection_atlas_size(scenario: RID, size: Int, subdiv: Int): Void;
    public function set_boot_image(image: Image, color: Color, scale: Bool, use_filter: Bool): Void;
    public function set_debug_generate_wireframes(generate: Bool): Void;
    public function set_default_clear_color(color: Color): Void;
    public function set_shader_async_hidden_forbidden(forbidden: Bool): Void;
    public function set_shader_time_scale(scale: Float): Void;
    public function set_use_occlusion_culling(enable: Bool): Void;
    public function shader_create(): RID;
    public function shader_get_code(shader: RID): String;
    public function shader_get_default_texture_param(shader: RID, name: String): RID;
    public function shader_get_param_list(shader: RID): Array<Dynamic>;
    public function shader_set_code(shader: RID, code: String): Void;
    public function shader_set_default_texture_param(shader: RID, name: String, texture: RID): Void;
    public function skeleton_allocate(skeleton: RID, bones: Int, is_2d_skeleton: Bool): Void;
    public function skeleton_bone_get_transform(skeleton: RID, bone: Int): Transform;
    public function skeleton_bone_get_transform_2d(skeleton: RID, bone: Int): Transform2D;
    public function skeleton_bone_set_transform(skeleton: RID, bone: Int, transform: Transform): Void;
    public function skeleton_bone_set_transform_2d(skeleton: RID, bone: Int, transform: Transform2D): Void;
    public function skeleton_create(): RID;
    public function skeleton_get_bone_count(skeleton: RID): Int;
    public function sky_create(): RID;
    public function sky_set_texture(sky: RID, cube_map: RID, radiance_size: Int): Void;
    public function spot_light_create(): RID;
    public function sync(): Void;
    public function texture_allocate(texture: RID, width: Int, height: Int, depth_3d: Int, format: Int, type: Int, flags: Int): Void;
    public function texture_bind(texture: RID, number: Int): Void;
    public function texture_create(): RID;
    public function texture_create_from_image(image: Image, flags: Int): RID;
    public function texture_debug_usage(): Array<Dynamic>;
    public function texture_get_data(texture: RID, cube_side: Int): Image;
    public function texture_get_depth(texture: RID): Int;
    public function texture_get_flags(texture: RID): Int;
    public function texture_get_format(texture: RID): Int;
    public function texture_get_height(texture: RID): Int;
    public function texture_get_path(texture: RID): String;
    public function texture_get_texid(texture: RID): Int;
    public function texture_get_type(texture: RID): Int;
    public function texture_get_width(texture: RID): Int;
    public function texture_set_data(texture: RID, image: Image, layer: Int): Void;
    public function texture_set_data_partial(texture: RID, image: Image, src_x: Int, src_y: Int, src_w: Int, src_h: Int, dst_x: Int, dst_y: Int, dst_mip: Int, layer: Int): Void;
    public function texture_set_flags(texture: RID, flags: Int): Void;
    public function texture_set_path(texture: RID, path: String): Void;
    public function texture_set_proxy(proxy: RID, base: RID): Void;
    public function texture_set_shrink_all_x2_on_set_data(shrink: Bool): Void;
    public function texture_set_size_override(texture: RID, width: Int, height: Int, depth: Int): Void;
    public function textures_keep_original(enable: Bool): Void;
    public function viewport_attach_camera(viewport: RID, camera: RID): Void;
    public function viewport_attach_canvas(viewport: RID, canvas: RID): Void;
    public function viewport_attach_to_screen(viewport: RID, rect: Rect2, screen: Int): Void;
    public function viewport_create(): RID;
    public function viewport_detach(viewport: RID): Void;
    public function viewport_get_render_info(viewport: RID, info: Int): Int;
    public function viewport_get_texture(viewport: RID): RID;
    public function viewport_remove_canvas(viewport: RID, canvas: RID): Void;
    public function viewport_set_active(viewport: RID, active: Bool): Void;
    public function viewport_set_canvas_stacking(viewport: RID, canvas: RID, layer: Int, sublayer: Int): Void;
    public function viewport_set_canvas_transform(viewport: RID, canvas: RID, offset: Transform2D): Void;
    public function viewport_set_clear_mode(viewport: RID, clear_mode: Int): Void;
    public function viewport_set_debug_draw(viewport: RID, draw: Int): Void;
    public function viewport_set_disable_3d(viewport: RID, disabled: Bool): Void;
    public function viewport_set_disable_environment(viewport: RID, disabled: Bool): Void;
    public function viewport_set_global_canvas_transform(viewport: RID, transform: Transform2D): Void;
    public function viewport_set_hdr(viewport: RID, enabled: Bool): Void;
    public function viewport_set_hide_canvas(viewport: RID, hidden: Bool): Void;
    public function viewport_set_hide_scenario(viewport: RID, hidden: Bool): Void;
    public function viewport_set_msaa(viewport: RID, msaa: Int): Void;
    public function viewport_set_parent_viewport(viewport: RID, parent_viewport: RID): Void;
    public function viewport_set_render_direct_to_screen(viewport: RID, enabled: Bool): Void;
    public function viewport_set_scenario(viewport: RID, scenario: RID): Void;
    public function viewport_set_shadow_atlas_quadrant_subdivision(viewport: RID, quadrant: Int, subdivision: Int): Void;
    public function viewport_set_shadow_atlas_size(viewport: RID, size: Int): Void;
    public function viewport_set_sharpen_intensity(viewport: RID, intensity: Float): Void;
    public function viewport_set_size(viewport: RID, width: Int, height: Int): Void;
    public function viewport_set_transparent_background(viewport: RID, enabled: Bool): Void;
    public function viewport_set_update_mode(viewport: RID, update_mode: Int): Void;
    public function viewport_set_usage(viewport: RID, usage: Int): Void;
    public function viewport_set_use_32_bpc_depth(viewport: RID, enabled: Bool): Void;
    public function viewport_set_use_arvr(viewport: RID, use_arvr: Bool): Void;
    public function viewport_set_use_debanding(viewport: RID, debanding: Bool): Void;
    public function viewport_set_use_fxaa(viewport: RID, fxaa: Bool): Void;
    public function viewport_set_vflip(viewport: RID, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
