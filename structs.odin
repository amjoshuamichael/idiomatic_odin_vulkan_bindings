//
// Vulkan wrapper generated from "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/master/include/vulkan/vulkan_core.h"
//
package idiomatic_odin_vulkan_bindings

import "core:c"

import win32 "core:sys/windows"
_ :: win32
when ODIN_OS == .Windows {
	HINSTANCE           :: win32.HINSTANCE
	HWND                :: win32.HWND
	HMONITOR            :: win32.HMONITOR
	HANDLE              :: win32.HANDLE
	LPCWSTR             :: win32.LPCWSTR
	SECURITY_ATTRIBUTES :: win32.SECURITY_ATTRIBUTES
	DWORD               :: win32.DWORD
	LONG                :: win32.LONG
	LUID                :: win32.LUID
} else {
	HINSTANCE           :: distinct rawptr
	HWND                :: distinct rawptr
	HMONITOR            :: distinct rawptr
	HANDLE              :: distinct rawptr
	LPCWSTR             :: ^u16
	SECURITY_ATTRIBUTES :: struct {}
	DWORD               :: u32
	LONG                :: c.long
	LUID :: struct {
		LowPart:  DWORD,
		HighPart: LONG,
	}
}

// TODO: these names are kind of messed up... improve to_ada_case converter
Cametal_Layer :: struct {}
Mtldevice_Id :: rawptr
Mtlcommandqueue_Id :: rawptr
Mtlbuffer_Id :: rawptr
Mtltexture_Id :: rawptr
Mtlsharedevent_Id :: rawptr

/********************************/

Extent_2D :: struct  {
	width: u32,
	height: u32,
}

Extent_3D :: struct  {
	width: u32,
	height: u32,
	depth: u32,
}

Offset_2D :: struct  {
	x: i32,
	y: i32,
}

Offset_3D :: struct  {
	x: i32,
	y: i32,
	z: i32,
}

Rect_2D :: struct  {
	offset: Offset_2D,
	extent: Extent_2D,
}

Base_In_Structure :: struct  {
	s_type: Structure_Type,
	next: ^Base_In_Structure,
}

Base_Out_Structure :: struct  {
	s_type: Structure_Type,
	next: ^Base_Out_Structure,
}

Buffer_Memory_Barrier :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_access_mask: Access_Flags,
	dst_access_mask: Access_Flags,
	src_queue_family_index: u32,
	dst_queue_family_index: u32,
	buffer: Buffer,
	offset: Device_Size,
	size: Device_Size,
}

Dispatch_Indirect_Command :: struct  {
	x: u32,
	y: u32,
	z: u32,
}

Draw_Indexed_Indirect_Command :: struct  {
	index_count: u32,
	instance_count: u32,
	first_index: u32,
	vertex_offset: i32,
	first_instance: u32,
}

Draw_Indirect_Command :: struct  {
	vertex_count: u32,
	instance_count: u32,
	first_vertex: u32,
	first_instance: u32,
}

Image_Subresource_Range :: struct  {
	aspect_mask: Image_Aspect_Flags,
	base_mip_level: u32,
	level_count: u32,
	base_array_layer: u32,
	layer_count: u32,
}

Image_Memory_Barrier :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_access_mask: Access_Flags,
	dst_access_mask: Access_Flags,
	old_layout: Image_Layout,
	new_layout: Image_Layout,
	src_queue_family_index: u32,
	dst_queue_family_index: u32,
	image: Image,
	subresource_range: Image_Subresource_Range,
}

Memory_Barrier :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_access_mask: Access_Flags,
	dst_access_mask: Access_Flags,
}

Pipeline_Cache_Header_Version_One :: struct  {
	header_size: u32,
	header_version: Pipeline_Cache_Header_Version,
	vendor_id: u32,
	device_id: u32,
	pipeline_cache_uuid: [UUID_SIZE]u8,
}

Allocation_Callbacks :: struct  {
	user_data: [^]u8,
	allocation: Proc_Allocation_Function,
	reallocation: Proc_Reallocation_Function,
	free: Proc_Free_Function,
	internal_allocation: Proc_Internal_Allocation_Notification,
	internal_free: Proc_Internal_Free_Notification,
}

Application_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	application_name: cstring,
	application_version: u32,
	engine_name: cstring,
	engine_version: u32,
	api_version: u32,
}

Format_Properties :: struct  {
	linear_tiling_features: Format_Feature_Flags,
	optimal_tiling_features: Format_Feature_Flags,
	buffer_features: Format_Feature_Flags,
}

Image_Format_Properties :: struct  {
	max_extent: Extent_3D,
	max_mip_levels: u32,
	max_array_layers: u32,
	sample_counts: Sample_Count_Flags,
	max_resource_size: Device_Size,
}

Instance_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Instance_Create_Flags,
	application_info: ^Application_Info,
	enabled_layer_count: u32,
	enabled_layer_names: [^]cstring,
	enabled_extension_count: u32,
	enabled_extension_names: [^]cstring,
}

Memory_Heap :: struct  {
	size: Device_Size,
	flags: Memory_Heap_Flags,
}

Memory_Type :: struct  {
	property_flags: Memory_Property_Flags,
	heap_index: u32,
}

Physical_Device_Features :: struct  {
	robust_buffer_access: b32,
	full_draw_index_uint32: b32,
	image_cube_array: b32,
	independent_blend: b32,
	geometry_shader: b32,
	tessellation_shader: b32,
	sample_rate_shading: b32,
	dual_src_blend: b32,
	logic_op: b32,
	multi_draw_indirect: b32,
	draw_indirect_first_instance: b32,
	depth_clamp: b32,
	depth_bias_clamp: b32,
	fill_mode_non_solid: b32,
	depth_bounds: b32,
	wide_lines: b32,
	large_points: b32,
	alpha_to_one: b32,
	multi_viewport: b32,
	sampler_anisotropy: b32,
	texture_compression_etc2: b32,
	texture_compression_astc_ldr: b32,
	texture_compression_bc: b32,
	occlusion_query_precise: b32,
	pipeline_statistics_query: b32,
	vertex_pipeline_stores_and_atomics: b32,
	fragment_stores_and_atomics: b32,
	shader_tessellation_and_geometry_point_size: b32,
	shader_image_gather_extended: b32,
	shader_storage_image_extended_formats: b32,
	shader_storage_image_multisample: b32,
	shader_storage_image_read_without_format: b32,
	shader_storage_image_write_without_format: b32,
	shader_uniform_buffer_array_dynamic_indexing: b32,
	shader_sampled_image_array_dynamic_indexing: b32,
	shader_storage_buffer_array_dynamic_indexing: b32,
	shader_storage_image_array_dynamic_indexing: b32,
	shader_clip_distance: b32,
	shader_cull_distance: b32,
	shader_float64: b32,
	shader_int64: b32,
	shader_int16: b32,
	shader_resource_residency: b32,
	shader_resource_min_lod: b32,
	sparse_binding: b32,
	sparse_residency_buffer: b32,
	sparse_residency_image_2d: b32,
	sparse_residency_image_3d: b32,
	sparse_residency2_samples: b32,
	sparse_residency4_samples: b32,
	sparse_residency8_samples: b32,
	sparse_residency16_samples: b32,
	sparse_residency_aliased: b32,
	variable_multisample_rate: b32,
	inherited_queries: b32,
}

Physical_Device_Limits :: struct  {
	max_image_dimension_1d: u32,
	max_image_dimension_2d: u32,
	max_image_dimension_3d: u32,
	max_image_dimension_cube: u32,
	max_image_array_layers: u32,
	max_texel_buffer_elements: u32,
	max_uniform_buffer_range: u32,
	max_storage_buffer_range: u32,
	max_push_constants_size: u32,
	max_memory_allocation_count: u32,
	max_sampler_allocation_count: u32,
	buffer_image_granularity: Device_Size,
	sparse_address_space_size: Device_Size,
	max_bound_descriptor_sets: u32,
	max_per_stage_descriptor_samplers: u32,
	max_per_stage_descriptor_uniform_buffers: u32,
	max_per_stage_descriptor_storage_buffers: u32,
	max_per_stage_descriptor_sampled_images: u32,
	max_per_stage_descriptor_storage_images: u32,
	max_per_stage_descriptor_input_attachments: u32,
	max_per_stage_resources: u32,
	max_descriptor_set_samplers: u32,
	max_descriptor_set_uniform_buffers: u32,
	max_descriptor_set_uniform_buffers_dynamic: u32,
	max_descriptor_set_storage_buffers: u32,
	max_descriptor_set_storage_buffers_dynamic: u32,
	max_descriptor_set_sampled_images: u32,
	max_descriptor_set_storage_images: u32,
	max_descriptor_set_input_attachments: u32,
	max_vertex_input_attributes: u32,
	max_vertex_input_bindings: u32,
	max_vertex_input_attribute_offset: u32,
	max_vertex_input_binding_stride: u32,
	max_vertex_output_components: u32,
	max_tessellation_generation_level: u32,
	max_tessellation_patch_size: u32,
	max_tessellation_control_per_vertex_input_components: u32,
	max_tessellation_control_per_vertex_output_components: u32,
	max_tessellation_control_per_patch_output_components: u32,
	max_tessellation_control_total_output_components: u32,
	max_tessellation_evaluation_input_components: u32,
	max_tessellation_evaluation_output_components: u32,
	max_geometry_shader_invocations: u32,
	max_geometry_input_components: u32,
	max_geometry_output_components: u32,
	max_geometry_output_vertices: u32,
	max_geometry_total_output_components: u32,
	max_fragment_input_components: u32,
	max_fragment_output_attachments: u32,
	max_fragment_dual_src_attachments: u32,
	max_fragment_combined_output_resources: u32,
	max_compute_shared_memory_size: u32,
	max_compute_work_group_count: [3]u32,
	max_compute_work_group_invocations: u32,
	max_compute_work_group_size: [3]u32,
	sub_pixel_precision_bits: u32,
	sub_texel_precision_bits: u32,
	mipmap_precision_bits: u32,
	max_draw_indexed_index_value: u32,
	max_draw_indirect_count: u32,
	max_sampler_lod_bias: f32,
	max_sampler_anisotropy: f32,
	max_viewports: u32,
	max_viewport_dimensions: [2]u32,
	viewport_bounds_range: [2]f32,
	viewport_sub_pixel_bits: u32,
	min_memory_map_alignment: int,
	min_texel_buffer_offset_alignment: Device_Size,
	min_uniform_buffer_offset_alignment: Device_Size,
	min_storage_buffer_offset_alignment: Device_Size,
	min_texel_offset: i32,
	max_texel_offset: u32,
	min_texel_gather_offset: i32,
	max_texel_gather_offset: u32,
	min_interpolation_offset: f32,
	max_interpolation_offset: f32,
	sub_pixel_interpolation_offset_bits: u32,
	max_framebuffer_width: u32,
	max_framebuffer_height: u32,
	max_framebuffer_layers: u32,
	framebuffer_color_sample_counts: Sample_Count_Flags,
	framebuffer_depth_sample_counts: Sample_Count_Flags,
	framebuffer_stencil_sample_counts: Sample_Count_Flags,
	framebuffer_no_attachments_sample_counts: Sample_Count_Flags,
	max_color_attachments: u32,
	sampled_image_color_sample_counts: Sample_Count_Flags,
	sampled_image_integer_sample_counts: Sample_Count_Flags,
	sampled_image_depth_sample_counts: Sample_Count_Flags,
	sampled_image_stencil_sample_counts: Sample_Count_Flags,
	storage_image_sample_counts: Sample_Count_Flags,
	max_sample_mask_words: u32,
	timestamp_compute_and_graphics: b32,
	timestamp_period: f32,
	max_clip_distances: u32,
	max_cull_distances: u32,
	max_combined_clip_and_cull_distances: u32,
	discrete_queue_priorities: u32,
	point_size_range: [2]f32,
	line_width_range: [2]f32,
	point_size_granularity: f32,
	line_width_granularity: f32,
	strict_lines: b32,
	standard_sample_locations: b32,
	optimal_buffer_copy_offset_alignment: Device_Size,
	optimal_buffer_copy_row_pitch_alignment: Device_Size,
	non_coherent_atom_size: Device_Size,
}

Physical_Device_Memory_Properties :: struct  {
	memory_type_count: u32,
	memory_types: [MAX_MEMORY_TYPES]Memory_Type,
	memory_heap_count: u32,
	memory_heaps: [MAX_MEMORY_HEAPS]Memory_Heap,
}

Physical_Device_Sparse_Properties :: struct  {
	residency_standard2_dblock_shape: b32,
	residency_standard2_dmultisample_block_shape: b32,
	residency_standard3_dblock_shape: b32,
	residency_aligned_mip_size: b32,
	residency_non_resident_strict: b32,
}

Physical_Device_Properties :: struct  {
	api_version: u32,
	driver_version: u32,
	vendor_id: u32,
	device_id: u32,
	device_type: Physical_Device_Type,
	device_name: [MAX_PHYSICAL_DEVICE_NAME_SIZE]byte,
	pipeline_cache_uuid: [UUID_SIZE]u8,
	limits: Physical_Device_Limits,
	sparse_properties: Physical_Device_Sparse_Properties,
}

Queue_Family_Properties :: struct  {
	queue_flags: Queue_Flags,
	queue_count: u32,
	timestamp_valid_bits: u32,
	min_image_transfer_granularity: Extent_3D,
}

Device_Queue_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Device_Queue_Create_Flags,
	queue_family_index: u32,
	queue_count: u32,
	queue_priorities: [^]f32,
}

Device_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Device_Create_Flags,
	queue_create_info_count: u32,
	queue_create_infos: [^]Device_Queue_Create_Info,
	enabled_layer_count: u32,
	enabled_layer_names: [^]cstring,
	enabled_extension_count: u32,
	enabled_extension_names: [^]cstring,
	enabled_features: ^Physical_Device_Features,
}

Extension_Properties :: struct  {
	extension_name: [MAX_EXTENSION_NAME_SIZE]byte,
	spec_version: u32,
}

Layer_Properties :: struct  {
	layer_name: [MAX_EXTENSION_NAME_SIZE]byte,
	spec_version: u32,
	implementation_version: u32,
	description: [MAX_DESCRIPTION_SIZE]byte,
}

Submit_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	wait_semaphore_count: u32,
	wait_semaphores: [^]Semaphore,
	wait_dst_stage_mask: [^]Pipeline_Stage_Flags,
	command_buffer_count: u32,
	command_buffers: [^]Command_Buffer,
	signal_semaphore_count: u32,
	signal_semaphores: [^]Semaphore,
}

Mapped_Memory_Range :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	memory: Device_Memory,
	offset: Device_Size,
	size: Device_Size,
}

Memory_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	allocation_size: Device_Size,
	memory_type_index: u32,
}

Memory_Requirements :: struct  {
	size: Device_Size,
	alignment: Device_Size,
	memory_type_bits: u32,
}

Sparse_Memory_Bind :: struct  {
	resource_offset: Device_Size,
	size: Device_Size,
	memory: Device_Memory,
	memory_offset: Device_Size,
	flags: Sparse_Memory_Bind_Flags,
}

Sparse_Buffer_Memory_Bind_Info :: struct  {
	buffer: Buffer,
	bind_count: u32,
	binds: [^]Sparse_Memory_Bind,
}

Sparse_Image_Opaque_Memory_Bind_Info :: struct  {
	image: Image,
	bind_count: u32,
	binds: [^]Sparse_Memory_Bind,
}

Image_Subresource :: struct  {
	aspect_mask: Image_Aspect_Flags,
	mip_level: u32,
	array_layer: u32,
}

Sparse_Image_Memory_Bind :: struct  {
	subresource: Image_Subresource,
	offset: Offset_3D,
	extent: Extent_3D,
	memory: Device_Memory,
	memory_offset: Device_Size,
	flags: Sparse_Memory_Bind_Flags,
}

Sparse_Image_Memory_Bind_Info :: struct  {
	image: Image,
	bind_count: u32,
	binds: [^]Sparse_Image_Memory_Bind,
}

Bind_Sparse_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	wait_semaphore_count: u32,
	wait_semaphores: [^]Semaphore,
	buffer_bind_count: u32,
	buffer_binds: [^]Sparse_Buffer_Memory_Bind_Info,
	image_opaque_bind_count: u32,
	image_opaque_binds: [^]Sparse_Image_Opaque_Memory_Bind_Info,
	image_bind_count: u32,
	image_binds: [^]Sparse_Image_Memory_Bind_Info,
	signal_semaphore_count: u32,
	signal_semaphores: [^]Semaphore,
}

Sparse_Image_Format_Properties :: struct  {
	aspect_mask: Image_Aspect_Flags,
	image_granularity: Extent_3D,
	flags: Sparse_Image_Format_Flags,
}

Sparse_Image_Memory_Requirements :: struct  {
	format_properties: Sparse_Image_Format_Properties,
	image_mip_tail_first_lod: u32,
	image_mip_tail_size: Device_Size,
	image_mip_tail_offset: Device_Size,
	image_mip_tail_stride: Device_Size,
}

Fence_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Fence_Create_Flags,
}

Semaphore_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Semaphore_Create_Flags,
}

Event_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Event_Create_Flags,
}

Query_Pool_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Query_Pool_Create_Flags,
	query_type: Query_Type,
	query_count: u32,
	pipeline_statistics: Query_Pipeline_Statistic_Flags,
}

Buffer_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Buffer_Create_Flags,
	size: Device_Size,
	usage: Buffer_Usage_Flags,
	sharing_mode: Sharing_Mode,
	queue_family_index_count: u32,
	queue_family_indices: [^]u32,
}

Buffer_View_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Buffer_View_Create_Flags,
	buffer: Buffer,
	format: Format,
	offset: Device_Size,
	range: Device_Size,
}

Image_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Image_Create_Flags,
	image_type: Image_Type,
	format: Format,
	extent: Extent_3D,
	mip_levels: u32,
	array_layers: u32,
	samples: Sample_Count_Flags,
	tiling: Image_Tiling,
	usage: Image_Usage_Flags,
	sharing_mode: Sharing_Mode,
	queue_family_index_count: u32,
	queue_family_indices: [^]u32,
	initial_layout: Image_Layout,
}

Subresource_Layout :: struct  {
	offset: Device_Size,
	size: Device_Size,
	row_pitch: Device_Size,
	array_pitch: Device_Size,
	depth_pitch: Device_Size,
}

Component_Mapping :: struct  {
	r: Component_Swizzle,
	g: Component_Swizzle,
	b: Component_Swizzle,
	a: Component_Swizzle,
}

Image_View_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Image_View_Create_Flags,
	image: Image,
	view_type: Image_View_Type,
	format: Format,
	components: Component_Mapping,
	subresource_range: Image_Subresource_Range,
}

Shader_Module_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Shader_Module_Create_Flags,
	code_size: int,
	code: ^u32,
}

Pipeline_Cache_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Cache_Create_Flags,
	initial_data_size: int,
	initial_data: rawptr,
}

Specialization_Map_Entry :: struct  {
	constant_id: u32,
	offset: u32,
	size: int,
}

Specialization_Info :: struct  {
	map_entry_count: u32,
	map_entries: [^]Specialization_Map_Entry,
	data_size: int,
	data: rawptr,
}

Pipeline_Shader_Stage_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Shader_Stage_Create_Flags,
	stage: Shader_Stage_Flags,
	module: Shader_Module,
	name: cstring,
	specialization_info: ^Specialization_Info,
}

Compute_Pipeline_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Create_Flags,
	stage: Pipeline_Shader_Stage_Create_Info,
	layout: Pipeline_Layout,
	base_pipeline_handle: Pipeline,
	base_pipeline_index: i32,
}

Vertex_Input_Binding_Description :: struct  {
	binding: u32,
	stride: u32,
	input_rate: Vertex_Input_Rate,
}

Vertex_Input_Attribute_Description :: struct  {
	location: u32,
	binding: u32,
	format: Format,
	offset: u32,
}

Pipeline_Vertex_Input_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Vertex_Input_State_Create_Flags,
	vertex_binding_description_count: u32,
	vertex_binding_descriptions: [^]Vertex_Input_Binding_Description,
	vertex_attribute_description_count: u32,
	vertex_attribute_descriptions: [^]Vertex_Input_Attribute_Description,
}

Pipeline_Input_Assembly_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Input_Assembly_State_Create_Flags,
	topology: Primitive_Topology,
	primitive_restart_enable: b32,
}

Pipeline_Tessellation_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Tessellation_State_Create_Flags,
	patch_control_points: u32,
}

Viewport :: struct  {
	x: f32,
	y: f32,
	width: f32,
	height: f32,
	min_depth: f32,
	max_depth: f32,
}

Pipeline_Viewport_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Viewport_State_Create_Flags,
	viewport_count: u32,
	viewports: [^]Viewport,
	scissor_count: u32,
	scissors: [^]Rect_2D,
}

Pipeline_Rasterization_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Rasterization_State_Create_Flags,
	depth_clamp_enable: b32,
	rasterizer_discard_enable: b32,
	polygon_mode: Polygon_Mode,
	cull_mode: Cull_Mode_Flags,
	front_face: Front_Face,
	depth_bias_enable: b32,
	depth_bias_constant_factor: f32,
	depth_bias_clamp: f32,
	depth_bias_slope_factor: f32,
	line_width: f32,
}

Pipeline_Multisample_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Multisample_State_Create_Flags,
	rasterization_samples: Sample_Count_Flags,
	sample_shading_enable: b32,
	min_sample_shading: f32,
	sample_mask: ^Sample_Mask,
	alpha_to_coverage_enable: b32,
	alpha_to_one_enable: b32,
}

Stencil_Op_State :: struct  {
	fail_op: Stencil_Op,
	pass_op: Stencil_Op,
	depth_fail_op: Stencil_Op,
	compare_op: Compare_Op,
	compare_mask: u32,
	write_mask: u32,
	reference: u32,
}

Pipeline_Depth_Stencil_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Depth_Stencil_State_Create_Flags,
	depth_test_enable: b32,
	depth_write_enable: b32,
	depth_compare_op: Compare_Op,
	depth_bounds_test_enable: b32,
	stencil_test_enable: b32,
	front: Stencil_Op_State,
	back: Stencil_Op_State,
	min_depth_bounds: f32,
	max_depth_bounds: f32,
}

Pipeline_Color_Blend_Attachment_State :: struct  {
	blend_enable: b32,
	src_color_blend_factor: Blend_Factor,
	dst_color_blend_factor: Blend_Factor,
	color_blend_op: Blend_Op,
	src_alpha_blend_factor: Blend_Factor,
	dst_alpha_blend_factor: Blend_Factor,
	alpha_blend_op: Blend_Op,
	color_write_mask: Color_Component_Flags,
}

Pipeline_Color_Blend_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Color_Blend_State_Create_Flags,
	logic_op_enable: b32,
	logic_op: Logic_Op,
	attachment_count: u32,
	attachments: [^]Pipeline_Color_Blend_Attachment_State,
	blend_constants: [4]f32,
}

Pipeline_Dynamic_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Dynamic_State_Create_Flags,
	dynamic_state_count: u32,
	dynamic_states: [^]Dynamic_State,
}

Graphics_Pipeline_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Create_Flags,
	stage_count: u32,
	stages: [^]Pipeline_Shader_Stage_Create_Info,
	vertex_input_state: ^Pipeline_Vertex_Input_State_Create_Info,
	input_assembly_state: ^Pipeline_Input_Assembly_State_Create_Info,
	tessellation_state: ^Pipeline_Tessellation_State_Create_Info,
	viewport_state: ^Pipeline_Viewport_State_Create_Info,
	rasterization_state: ^Pipeline_Rasterization_State_Create_Info,
	multisample_state: ^Pipeline_Multisample_State_Create_Info,
	depth_stencil_state: ^Pipeline_Depth_Stencil_State_Create_Info,
	color_blend_state: ^Pipeline_Color_Blend_State_Create_Info,
	dynamic_state: ^Pipeline_Dynamic_State_Create_Info,
	layout: Pipeline_Layout,
	render_pass: Render_Pass,
	subpass: u32,
	base_pipeline_handle: Pipeline,
	base_pipeline_index: i32,
}

Push_Constant_Range :: struct  {
	stage_flags: Shader_Stage_Flags,
	offset: u32,
	size: u32,
}

Pipeline_Layout_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Layout_Create_Flags,
	set_layout_count: u32,
	set_layouts: [^]Descriptor_Set_Layout,
	push_constant_range_count: u32,
	push_constant_ranges: [^]Push_Constant_Range,
}

Sampler_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Sampler_Create_Flags,
	mag_filter: Filter,
	min_filter: Filter,
	mipmap_mode: Sampler_Mipmap_Mode,
	address_mode_u: Sampler_Address_Mode,
	address_mode_v: Sampler_Address_Mode,
	address_mode_w: Sampler_Address_Mode,
	mip_lod_bias: f32,
	anisotropy_enable: b32,
	max_anisotropy: f32,
	compare_enable: b32,
	compare_op: Compare_Op,
	min_lod: f32,
	max_lod: f32,
	border_color: Border_Color,
	unnormalized_coordinates: b32,
}

Copy_Descriptor_Set :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_set: Descriptor_Set,
	src_binding: u32,
	src_array_element: u32,
	dst_set: Descriptor_Set,
	dst_binding: u32,
	dst_array_element: u32,
	descriptor_count: u32,
}

Descriptor_Buffer_Info :: struct  {
	buffer: Buffer,
	offset: Device_Size,
	range: Device_Size,
}

Descriptor_Image_Info :: struct  {
	sampler: Sampler,
	image_view: Image_View,
	image_layout: Image_Layout,
}

Descriptor_Pool_Size :: struct  {
	type: Descriptor_Type,
	descriptor_count: u32,
}

Descriptor_Pool_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Descriptor_Pool_Create_Flags,
	max_sets: u32,
	pool_size_count: u32,
	pool_sizes: [^]Descriptor_Pool_Size,
}

Descriptor_Set_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	descriptor_pool: Descriptor_Pool,
	descriptor_set_count: u32,
	set_layouts: [^]Descriptor_Set_Layout,
}

Descriptor_Set_Layout_Binding :: struct  {
	binding: u32,
	descriptor_type: Descriptor_Type,
	descriptor_count: u32,
	stage_flags: Shader_Stage_Flags,
	immutable_samplers: ^Sampler,
}

Descriptor_Set_Layout_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Descriptor_Set_Layout_Create_Flags,
	binding_count: u32,
	bindings: [^]Descriptor_Set_Layout_Binding,
}

Write_Descriptor_Set :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	dst_set: Descriptor_Set,
	dst_binding: u32,
	dst_array_element: u32,
	descriptor_count: u32,
	descriptor_type: Descriptor_Type,
	image_info: ^Descriptor_Image_Info,
	buffer_info: ^Descriptor_Buffer_Info,
	texel_buffer_view: ^Buffer_View,
}

Attachment_Description :: struct  {
	flags: Attachment_Description_Flags,
	format: Format,
	samples: Sample_Count_Flags,
	load_op: Attachment_Load_Op,
	store_op: Attachment_Store_Op,
	stencil_load_op: Attachment_Load_Op,
	stencil_store_op: Attachment_Store_Op,
	initial_layout: Image_Layout,
	final_layout: Image_Layout,
}

Attachment_Reference :: struct  {
	attachment: u32,
	layout: Image_Layout,
}

Framebuffer_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Framebuffer_Create_Flags,
	render_pass: Render_Pass,
	attachment_count: u32,
	attachments: [^]Image_View,
	width: u32,
	height: u32,
	layers: u32,
}

Subpass_Description :: struct  {
	flags: Subpass_Description_Flags,
	pipeline_bind_point: Pipeline_Bind_Point,
	input_attachment_count: u32,
	input_attachments: [^]Attachment_Reference,
	color_attachment_count: u32,
	color_attachments: [^]Attachment_Reference,
	resolve_attachments: ^Attachment_Reference,
	depth_stencil_attachment: ^Attachment_Reference,
	preserve_attachment_count: u32,
	preserve_attachments: [^]u32,
}

Subpass_Dependency :: struct  {
	src_subpass: u32,
	dst_subpass: u32,
	src_stage_mask: Pipeline_Stage_Flags,
	dst_stage_mask: Pipeline_Stage_Flags,
	src_access_mask: Access_Flags,
	dst_access_mask: Access_Flags,
	dependency_flags: Dependency_Flags,
}

Render_Pass_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Render_Pass_Create_Flags,
	attachment_count: u32,
	attachments: [^]Attachment_Description,
	subpass_count: u32,
	subpasses: [^]Subpass_Description,
	dependency_count: u32,
	dependencies: [^]Subpass_Dependency,
}

Command_Pool_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Command_Pool_Create_Flags,
	queue_family_index: u32,
}

Command_Buffer_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	command_pool: Command_Pool,
	level: Command_Buffer_Level,
	command_buffer_count: u32,
}

Command_Buffer_Inheritance_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	render_pass: Render_Pass,
	subpass: u32,
	framebuffer: Framebuffer,
	occlusion_query_enable: b32,
	query_flags: Query_Control_Flags,
	pipeline_statistics: Query_Pipeline_Statistic_Flags,
}

Command_Buffer_Begin_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Command_Buffer_Usage_Flags,
	inheritance_info: ^Command_Buffer_Inheritance_Info,
}

Buffer_Copy :: struct  {
	src_offset: Device_Size,
	dst_offset: Device_Size,
	size: Device_Size,
}

Image_Subresource_Layers :: struct  {
	aspect_mask: Image_Aspect_Flags,
	mip_level: u32,
	base_array_layer: u32,
	layer_count: u32,
}

Buffer_Image_Copy :: struct  {
	buffer_offset: Device_Size,
	buffer_row_length: u32,
	buffer_image_height: u32,
	image_subresource: Image_Subresource_Layers,
	image_offset: Offset_3D,
	image_extent: Extent_3D,
}

Clear_Color_Value :: struct #raw_union {
	float32: [4]f32,
	int32: [4]i32,
	uint32: [4]u32,
}

Clear_Depth_Stencil_Value :: struct  {
	depth: f32,
	stencil: u32,
}

Clear_Value :: struct #raw_union {
	color: Clear_Color_Value,
	depth_stencil: Clear_Depth_Stencil_Value,
}

Clear_Attachment :: struct  {
	aspect_mask: Image_Aspect_Flags,
	color_attachment: u32,
	clear_value: Clear_Value,
}

Clear_Rect :: struct  {
	rect: Rect_2D,
	base_array_layer: u32,
	layer_count: u32,
}

Image_Blit :: struct  {
	src_subresource: Image_Subresource_Layers,
	src_offsets: [2]Offset_3D,
	dst_subresource: Image_Subresource_Layers,
	dst_offsets: [2]Offset_3D,
}

Image_Copy :: struct  {
	src_subresource: Image_Subresource_Layers,
	src_offset: Offset_3D,
	dst_subresource: Image_Subresource_Layers,
	dst_offset: Offset_3D,
	extent: Extent_3D,
}

Image_Resolve :: struct  {
	src_subresource: Image_Subresource_Layers,
	src_offset: Offset_3D,
	dst_subresource: Image_Subresource_Layers,
	dst_offset: Offset_3D,
	extent: Extent_3D,
}

Render_Pass_Begin_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	render_pass: Render_Pass,
	framebuffer: Framebuffer,
	render_area: Rect_2D,
	clear_value_count: u32,
	clear_values: [^]Clear_Value,
}

Physical_Device_Subgroup_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	subgroup_size: u32,
	supported_stages: Shader_Stage_Flags,
	supported_operations: Subgroup_Feature_Flags,
	quad_operations_in_all_stages: b32,
}

Bind_Buffer_Memory_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	buffer: Buffer,
	memory: Device_Memory,
	memory_offset: Device_Size,
}

Bind_Image_Memory_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
	memory: Device_Memory,
	memory_offset: Device_Size,
}

Physical_Device_16Bit_Storage_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	storage_buffer16_bit_access: b32,
	uniform_and_storage_buffer16_bit_access: b32,
	storage_push_constant16: b32,
	storage_input_output16: b32,
}

Memory_Dedicated_Requirements :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	prefers_dedicated_allocation: b32,
	requires_dedicated_allocation: b32,
}

Memory_Dedicated_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
	buffer: Buffer,
}

Memory_Allocate_Flags_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Memory_Allocate_Flags,
	device_mask: u32,
}

Device_Group_Render_Pass_Begin_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	device_mask: u32,
	device_render_area_count: u32,
	device_render_areas: [^]Rect_2D,
}

Device_Group_Command_Buffer_Begin_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	device_mask: u32,
}

Device_Group_Submit_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	wait_semaphore_count: u32,
	wait_semaphore_device_indices: [^]u32,
	command_buffer_count: u32,
	command_buffer_device_masks: [^]u32,
	signal_semaphore_count: u32,
	signal_semaphore_device_indices: [^]u32,
}

Device_Group_Bind_Sparse_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	resource_device_index: u32,
	memory_device_index: u32,
}

Bind_Buffer_Memory_Device_Group_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	device_index_count: u32,
	device_indices: [^]u32,
}

Bind_Image_Memory_Device_Group_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	device_index_count: u32,
	device_indices: [^]u32,
	split_instance_bind_region_count: u32,
	split_instance_bind_regions: [^]Rect_2D,
}

Physical_Device_Group_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	physical_device_count: u32,
	physical_devices: [MAX_DEVICE_GROUP_SIZE]Physical_Device,
	subset_allocation: b32,
}

Device_Group_Device_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	physical_device_count: u32,
	physical_devices: [^]Physical_Device,
}

Buffer_Memory_Requirements_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	buffer: Buffer,
}

Image_Memory_Requirements_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
}

Image_Sparse_Memory_Requirements_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
}

Memory_Requirements_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_requirements: Memory_Requirements,
}

Sparse_Image_Memory_Requirements_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_requirements: Sparse_Image_Memory_Requirements,
}

Physical_Device_Features_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	features: Physical_Device_Features,
}

Physical_Device_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	properties: Physical_Device_Properties,
}

Format_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	format_properties: Format_Properties,
}

Image_Format_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_format_properties: Image_Format_Properties,
}

Physical_Device_Image_Format_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	format: Format,
	type: Image_Type,
	tiling: Image_Tiling,
	usage: Image_Usage_Flags,
	flags: Image_Create_Flags,
}

Queue_Family_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	queue_family_properties: Queue_Family_Properties,
}

Physical_Device_Memory_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_properties: Physical_Device_Memory_Properties,
}

Sparse_Image_Format_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	properties: Sparse_Image_Format_Properties,
}

Physical_Device_Sparse_Image_Format_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	format: Format,
	type: Image_Type,
	samples: Sample_Count_Flags,
	usage: Image_Usage_Flags,
	tiling: Image_Tiling,
}

Physical_Device_Point_Clipping_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	point_clipping_behavior: Point_Clipping_Behavior,
}

Input_Attachment_Aspect_Reference :: struct  {
	subpass: u32,
	input_attachment_index: u32,
	aspect_mask: Image_Aspect_Flags,
}

Render_Pass_Input_Attachment_Aspect_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	aspect_reference_count: u32,
	aspect_references: [^]Input_Attachment_Aspect_Reference,
}

Image_View_Usage_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	usage: Image_Usage_Flags,
}

Pipeline_Tessellation_Domain_Origin_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	domain_origin: Tessellation_Domain_Origin,
}

Render_Pass_Multiview_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	subpass_count: u32,
	view_masks: [^]u32,
	dependency_count: u32,
	view_offsets: [^]i32,
	correlation_mask_count: u32,
	correlation_masks: [^]u32,
}

Physical_Device_Multiview_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	multiview: b32,
	multiview_geometry_shader: b32,
	multiview_tessellation_shader: b32,
}

Physical_Device_Multiview_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_multiview_view_count: u32,
	max_multiview_instance_index: u32,
}

Physical_Device_Variable_Pointers_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	variable_pointers_storage_buffer: b32,
	variable_pointers: b32,
}

Physical_Device_Protected_Memory_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	protected_memory: b32,
}

Physical_Device_Protected_Memory_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	protected_no_fault: b32,
}

Device_Queue_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Device_Queue_Create_Flags,
	queue_family_index: u32,
	queue_index: u32,
}

Protected_Submit_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	protected_submit: b32,
}

Sampler_Ycbcr_Conversion_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	format: Format,
	ycbcr_model: Sampler_Ycbcr_Model_Conversion,
	ycbcr_range: Sampler_Ycbcr_Range,
	components: Component_Mapping,
	x_chroma_offset: Chroma_Location,
	y_chroma_offset: Chroma_Location,
	chroma_filter: Filter,
	force_explicit_reconstruction: b32,
}

Sampler_Ycbcr_Conversion_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	conversion: Sampler_Ycbcr_Conversion,
}

Bind_Image_Plane_Memory_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	plane_aspect: Image_Aspect_Flags,
}

Image_Plane_Memory_Requirements_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	plane_aspect: Image_Aspect_Flags,
}

Physical_Device_Sampler_Ycbcr_Conversion_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	sampler_ycbcr_conversion: b32,
}

Sampler_Ycbcr_Conversion_Image_Format_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	combined_image_sampler_descriptor_count: u32,
}

Descriptor_Update_Template_Entry :: struct  {
	dst_binding: u32,
	dst_array_element: u32,
	descriptor_count: u32,
	descriptor_type: Descriptor_Type,
	offset: int,
	stride: int,
}

Descriptor_Update_Template_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Descriptor_Update_Template_Create_Flags,
	descriptor_update_entry_count: u32,
	descriptor_update_entries: [^]Descriptor_Update_Template_Entry,
	template_type: Descriptor_Update_Template_Type,
	descriptor_set_layout: Descriptor_Set_Layout,
	pipeline_bind_point: Pipeline_Bind_Point,
	pipeline_layout: Pipeline_Layout,
	set: u32,
}

External_Memory_Properties :: struct  {
	external_memory_features: External_Memory_Feature_Flags,
	export_from_imported_handle_types: External_Memory_Handle_Type_Flags,
	compatible_handle_types: External_Memory_Handle_Type_Flags,
}

Physical_Device_External_Image_Format_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_type: External_Memory_Handle_Type_Flags,
}

External_Image_Format_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	external_memory_properties: External_Memory_Properties,
}

Physical_Device_External_Buffer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Buffer_Create_Flags,
	usage: Buffer_Usage_Flags,
	handle_type: External_Memory_Handle_Type_Flags,
}

External_Buffer_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	external_memory_properties: External_Memory_Properties,
}

Physical_Device_Idproperties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	device_uuid: [UUID_SIZE]u8,
	driver_uuid: [UUID_SIZE]u8,
	device_luid: [LUID_SIZE]u8,
	device_node_mask: u32,
	device_luidvalid: b32,
}

External_Memory_Image_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_types: External_Memory_Handle_Type_Flags,
}

External_Memory_Buffer_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_types: External_Memory_Handle_Type_Flags,
}

Export_Memory_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_types: External_Memory_Handle_Type_Flags,
}

Physical_Device_External_Fence_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_type: External_Fence_Handle_Type_Flags,
}

External_Fence_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	export_from_imported_handle_types: External_Fence_Handle_Type_Flags,
	compatible_handle_types: External_Fence_Handle_Type_Flags,
	external_fence_features: External_Fence_Feature_Flags,
}

Export_Fence_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_types: External_Fence_Handle_Type_Flags,
}

Export_Semaphore_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_types: External_Semaphore_Handle_Type_Flags,
}

Physical_Device_External_Semaphore_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_type: External_Semaphore_Handle_Type_Flags,
}

External_Semaphore_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	export_from_imported_handle_types: External_Semaphore_Handle_Type_Flags,
	compatible_handle_types: External_Semaphore_Handle_Type_Flags,
	external_semaphore_features: External_Semaphore_Feature_Flags,
}

Physical_Device_Maintenance_3Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_per_set_descriptors: u32,
	max_memory_allocation_size: Device_Size,
}

Descriptor_Set_Layout_Support :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	supported: b32,
}

Physical_Device_Shader_Draw_Parameters_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_draw_parameters: b32,
}

Physical_Device_Vulkan_11Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	storage_buffer16_bit_access: b32,
	uniform_and_storage_buffer16_bit_access: b32,
	storage_push_constant16: b32,
	storage_input_output16: b32,
	multiview: b32,
	multiview_geometry_shader: b32,
	multiview_tessellation_shader: b32,
	variable_pointers_storage_buffer: b32,
	variable_pointers: b32,
	protected_memory: b32,
	sampler_ycbcr_conversion: b32,
	shader_draw_parameters: b32,
}

Physical_Device_Vulkan_11Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	device_uuid: [UUID_SIZE]u8,
	driver_uuid: [UUID_SIZE]u8,
	device_luid: [LUID_SIZE]u8,
	device_node_mask: u32,
	device_luidvalid: b32,
	subgroup_size: u32,
	subgroup_supported_stages: Shader_Stage_Flags,
	subgroup_supported_operations: Subgroup_Feature_Flags,
	subgroup_quad_operations_in_all_stages: b32,
	point_clipping_behavior: Point_Clipping_Behavior,
	max_multiview_view_count: u32,
	max_multiview_instance_index: u32,
	protected_no_fault: b32,
	max_per_set_descriptors: u32,
	max_memory_allocation_size: Device_Size,
}

Physical_Device_Vulkan_12Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	sampler_mirror_clamp_to_edge: b32,
	draw_indirect_count: b32,
	storage_buffer8_bit_access: b32,
	uniform_and_storage_buffer8_bit_access: b32,
	storage_push_constant8: b32,
	shader_buffer_int64_atomics: b32,
	shader_shared_int64_atomics: b32,
	shader_float16: b32,
	shader_int8: b32,
	descriptor_indexing: b32,
	shader_input_attachment_array_dynamic_indexing: b32,
	shader_uniform_texel_buffer_array_dynamic_indexing: b32,
	shader_storage_texel_buffer_array_dynamic_indexing: b32,
	shader_uniform_buffer_array_non_uniform_indexing: b32,
	shader_sampled_image_array_non_uniform_indexing: b32,
	shader_storage_buffer_array_non_uniform_indexing: b32,
	shader_storage_image_array_non_uniform_indexing: b32,
	shader_input_attachment_array_non_uniform_indexing: b32,
	shader_uniform_texel_buffer_array_non_uniform_indexing: b32,
	shader_storage_texel_buffer_array_non_uniform_indexing: b32,
	descriptor_binding_uniform_buffer_update_after_bind: b32,
	descriptor_binding_sampled_image_update_after_bind: b32,
	descriptor_binding_storage_image_update_after_bind: b32,
	descriptor_binding_storage_buffer_update_after_bind: b32,
	descriptor_binding_uniform_texel_buffer_update_after_bind: b32,
	descriptor_binding_storage_texel_buffer_update_after_bind: b32,
	descriptor_binding_update_unused_while_pending: b32,
	descriptor_binding_partially_bound: b32,
	descriptor_binding_variable_descriptor_count: b32,
	runtime_descriptor_array: b32,
	sampler_filter_minmax: b32,
	scalar_block_layout: b32,
	imageless_framebuffer: b32,
	uniform_buffer_standard_layout: b32,
	shader_subgroup_extended_types: b32,
	separate_depth_stencil_layouts: b32,
	host_query_reset: b32,
	timeline_semaphore: b32,
	buffer_device_address: b32,
	buffer_device_address_capture_replay: b32,
	buffer_device_address_multi_device: b32,
	vulkan_memory_model: b32,
	vulkan_memory_model_device_scope: b32,
	vulkan_memory_model_availability_visibility_chains: b32,
	shader_output_viewport_index: b32,
	shader_output_layer: b32,
	subgroup_broadcast_dynamic_id: b32,
}

Conformance_Version :: struct  {
	major: u8,
	minor: u8,
	subminor: u8,
	patch: u8,
}

Physical_Device_Vulkan_12Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	driver_id: Driver_Id,
	driver_name: [MAX_DRIVER_NAME_SIZE]byte,
	driver_info: [MAX_DRIVER_INFO_SIZE]byte,
	conformance_version: Conformance_Version,
	denorm_behavior_independence: Shader_Float_Controls_Independence,
	rounding_mode_independence: Shader_Float_Controls_Independence,
	shader_signed_zero_inf_nan_preserve_float16: b32,
	shader_signed_zero_inf_nan_preserve_float32: b32,
	shader_signed_zero_inf_nan_preserve_float64: b32,
	shader_denorm_preserve_float16: b32,
	shader_denorm_preserve_float32: b32,
	shader_denorm_preserve_float64: b32,
	shader_denorm_flush_to_zero_float16: b32,
	shader_denorm_flush_to_zero_float32: b32,
	shader_denorm_flush_to_zero_float64: b32,
	shader_rounding_mode_rtefloat16: b32,
	shader_rounding_mode_rtefloat32: b32,
	shader_rounding_mode_rtefloat64: b32,
	shader_rounding_mode_rtzfloat16: b32,
	shader_rounding_mode_rtzfloat32: b32,
	shader_rounding_mode_rtzfloat64: b32,
	max_update_after_bind_descriptors_in_all_pools: u32,
	shader_uniform_buffer_array_non_uniform_indexing_native: b32,
	shader_sampled_image_array_non_uniform_indexing_native: b32,
	shader_storage_buffer_array_non_uniform_indexing_native: b32,
	shader_storage_image_array_non_uniform_indexing_native: b32,
	shader_input_attachment_array_non_uniform_indexing_native: b32,
	robust_buffer_access_update_after_bind: b32,
	quad_divergent_implicit_lod: b32,
	max_per_stage_descriptor_update_after_bind_samplers: u32,
	max_per_stage_descriptor_update_after_bind_uniform_buffers: u32,
	max_per_stage_descriptor_update_after_bind_storage_buffers: u32,
	max_per_stage_descriptor_update_after_bind_sampled_images: u32,
	max_per_stage_descriptor_update_after_bind_storage_images: u32,
	max_per_stage_descriptor_update_after_bind_input_attachments: u32,
	max_per_stage_update_after_bind_resources: u32,
	max_descriptor_set_update_after_bind_samplers: u32,
	max_descriptor_set_update_after_bind_uniform_buffers: u32,
	max_descriptor_set_update_after_bind_uniform_buffers_dynamic: u32,
	max_descriptor_set_update_after_bind_storage_buffers: u32,
	max_descriptor_set_update_after_bind_storage_buffers_dynamic: u32,
	max_descriptor_set_update_after_bind_sampled_images: u32,
	max_descriptor_set_update_after_bind_storage_images: u32,
	max_descriptor_set_update_after_bind_input_attachments: u32,
	supported_depth_resolve_modes: Resolve_Mode_Flags,
	supported_stencil_resolve_modes: Resolve_Mode_Flags,
	independent_resolve_none: b32,
	independent_resolve: b32,
	filter_minmax_single_component_formats: b32,
	filter_minmax_image_component_mapping: b32,
	max_timeline_semaphore_value_difference: u64,
	framebuffer_integer_color_sample_counts: Sample_Count_Flags,
}

Image_Format_List_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	view_format_count: u32,
	view_formats: [^]Format,
}

Attachment_Description_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Attachment_Description_Flags,
	format: Format,
	samples: Sample_Count_Flags,
	load_op: Attachment_Load_Op,
	store_op: Attachment_Store_Op,
	stencil_load_op: Attachment_Load_Op,
	stencil_store_op: Attachment_Store_Op,
	initial_layout: Image_Layout,
	final_layout: Image_Layout,
}

Attachment_Reference_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	attachment: u32,
	layout: Image_Layout,
	aspect_mask: Image_Aspect_Flags,
}

Subpass_Description_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Subpass_Description_Flags,
	pipeline_bind_point: Pipeline_Bind_Point,
	view_mask: u32,
	input_attachment_count: u32,
	input_attachments: [^]Attachment_Reference_2,
	color_attachment_count: u32,
	color_attachments: [^]Attachment_Reference_2,
	resolve_attachments: ^Attachment_Reference_2,
	depth_stencil_attachment: ^Attachment_Reference_2,
	preserve_attachment_count: u32,
	preserve_attachments: [^]u32,
}

Subpass_Dependency_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_subpass: u32,
	dst_subpass: u32,
	src_stage_mask: Pipeline_Stage_Flags,
	dst_stage_mask: Pipeline_Stage_Flags,
	src_access_mask: Access_Flags,
	dst_access_mask: Access_Flags,
	dependency_flags: Dependency_Flags,
	view_offset: i32,
}

Render_Pass_Create_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Render_Pass_Create_Flags,
	attachment_count: u32,
	attachments: [^]Attachment_Description_2,
	subpass_count: u32,
	subpasses: [^]Subpass_Description_2,
	dependency_count: u32,
	dependencies: [^]Subpass_Dependency_2,
	correlated_view_mask_count: u32,
	correlated_view_masks: [^]u32,
}

Subpass_Begin_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	contents: Subpass_Contents,
}

Subpass_End_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
}

Physical_Device_8Bit_Storage_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	storage_buffer8_bit_access: b32,
	uniform_and_storage_buffer8_bit_access: b32,
	storage_push_constant8: b32,
}

Physical_Device_Driver_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	driver_id: Driver_Id,
	driver_name: [MAX_DRIVER_NAME_SIZE]byte,
	driver_info: [MAX_DRIVER_INFO_SIZE]byte,
	conformance_version: Conformance_Version,
}

Physical_Device_Shader_Atomic_Int_64Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_buffer_int64_atomics: b32,
	shader_shared_int64_atomics: b32,
}

Physical_Device_Shader_Float_16Int_8Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_float16: b32,
	shader_int8: b32,
}

Physical_Device_Float_Controls_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	denorm_behavior_independence: Shader_Float_Controls_Independence,
	rounding_mode_independence: Shader_Float_Controls_Independence,
	shader_signed_zero_inf_nan_preserve_float16: b32,
	shader_signed_zero_inf_nan_preserve_float32: b32,
	shader_signed_zero_inf_nan_preserve_float64: b32,
	shader_denorm_preserve_float16: b32,
	shader_denorm_preserve_float32: b32,
	shader_denorm_preserve_float64: b32,
	shader_denorm_flush_to_zero_float16: b32,
	shader_denorm_flush_to_zero_float32: b32,
	shader_denorm_flush_to_zero_float64: b32,
	shader_rounding_mode_rtefloat16: b32,
	shader_rounding_mode_rtefloat32: b32,
	shader_rounding_mode_rtefloat64: b32,
	shader_rounding_mode_rtzfloat16: b32,
	shader_rounding_mode_rtzfloat32: b32,
	shader_rounding_mode_rtzfloat64: b32,
}

Descriptor_Set_Layout_Binding_Flags_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	binding_count: u32,
	binding_flags: [^]Descriptor_Binding_Flags,
}

Physical_Device_Descriptor_Indexing_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_input_attachment_array_dynamic_indexing: b32,
	shader_uniform_texel_buffer_array_dynamic_indexing: b32,
	shader_storage_texel_buffer_array_dynamic_indexing: b32,
	shader_uniform_buffer_array_non_uniform_indexing: b32,
	shader_sampled_image_array_non_uniform_indexing: b32,
	shader_storage_buffer_array_non_uniform_indexing: b32,
	shader_storage_image_array_non_uniform_indexing: b32,
	shader_input_attachment_array_non_uniform_indexing: b32,
	shader_uniform_texel_buffer_array_non_uniform_indexing: b32,
	shader_storage_texel_buffer_array_non_uniform_indexing: b32,
	descriptor_binding_uniform_buffer_update_after_bind: b32,
	descriptor_binding_sampled_image_update_after_bind: b32,
	descriptor_binding_storage_image_update_after_bind: b32,
	descriptor_binding_storage_buffer_update_after_bind: b32,
	descriptor_binding_uniform_texel_buffer_update_after_bind: b32,
	descriptor_binding_storage_texel_buffer_update_after_bind: b32,
	descriptor_binding_update_unused_while_pending: b32,
	descriptor_binding_partially_bound: b32,
	descriptor_binding_variable_descriptor_count: b32,
	runtime_descriptor_array: b32,
}

Physical_Device_Descriptor_Indexing_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_update_after_bind_descriptors_in_all_pools: u32,
	shader_uniform_buffer_array_non_uniform_indexing_native: b32,
	shader_sampled_image_array_non_uniform_indexing_native: b32,
	shader_storage_buffer_array_non_uniform_indexing_native: b32,
	shader_storage_image_array_non_uniform_indexing_native: b32,
	shader_input_attachment_array_non_uniform_indexing_native: b32,
	robust_buffer_access_update_after_bind: b32,
	quad_divergent_implicit_lod: b32,
	max_per_stage_descriptor_update_after_bind_samplers: u32,
	max_per_stage_descriptor_update_after_bind_uniform_buffers: u32,
	max_per_stage_descriptor_update_after_bind_storage_buffers: u32,
	max_per_stage_descriptor_update_after_bind_sampled_images: u32,
	max_per_stage_descriptor_update_after_bind_storage_images: u32,
	max_per_stage_descriptor_update_after_bind_input_attachments: u32,
	max_per_stage_update_after_bind_resources: u32,
	max_descriptor_set_update_after_bind_samplers: u32,
	max_descriptor_set_update_after_bind_uniform_buffers: u32,
	max_descriptor_set_update_after_bind_uniform_buffers_dynamic: u32,
	max_descriptor_set_update_after_bind_storage_buffers: u32,
	max_descriptor_set_update_after_bind_storage_buffers_dynamic: u32,
	max_descriptor_set_update_after_bind_sampled_images: u32,
	max_descriptor_set_update_after_bind_storage_images: u32,
	max_descriptor_set_update_after_bind_input_attachments: u32,
}

Descriptor_Set_Variable_Descriptor_Count_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	descriptor_set_count: u32,
	descriptor_counts: [^]u32,
}

Descriptor_Set_Variable_Descriptor_Count_Layout_Support :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_variable_descriptor_count: u32,
}

Subpass_Description_Depth_Stencil_Resolve :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	depth_resolve_mode: Resolve_Mode_Flags,
	stencil_resolve_mode: Resolve_Mode_Flags,
	depth_stencil_resolve_attachment: ^Attachment_Reference_2,
}

Physical_Device_Depth_Stencil_Resolve_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	supported_depth_resolve_modes: Resolve_Mode_Flags,
	supported_stencil_resolve_modes: Resolve_Mode_Flags,
	independent_resolve_none: b32,
	independent_resolve: b32,
}

Physical_Device_Scalar_Block_Layout_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	scalar_block_layout: b32,
}

Image_Stencil_Usage_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stencil_usage: Image_Usage_Flags,
}

Sampler_Reduction_Mode_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	reduction_mode: Sampler_Reduction_Mode,
}

Physical_Device_Sampler_Filter_Minmax_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	filter_minmax_single_component_formats: b32,
	filter_minmax_image_component_mapping: b32,
}

Physical_Device_Vulkan_Memory_Model_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	vulkan_memory_model: b32,
	vulkan_memory_model_device_scope: b32,
	vulkan_memory_model_availability_visibility_chains: b32,
}

Physical_Device_Imageless_Framebuffer_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	imageless_framebuffer: b32,
}

Framebuffer_Attachment_Image_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Image_Create_Flags,
	usage: Image_Usage_Flags,
	width: u32,
	height: u32,
	layer_count: u32,
	view_format_count: u32,
	view_formats: [^]Format,
}

Framebuffer_Attachments_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	attachment_image_info_count: u32,
	attachment_image_infos: [^]Framebuffer_Attachment_Image_Info,
}

Render_Pass_Attachment_Begin_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	attachment_count: u32,
	attachments: [^]Image_View,
}

Physical_Device_Uniform_Buffer_Standard_Layout_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	uniform_buffer_standard_layout: b32,
}

Physical_Device_Shader_Subgroup_Extended_Types_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_subgroup_extended_types: b32,
}

Physical_Device_Separate_Depth_Stencil_Layouts_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	separate_depth_stencil_layouts: b32,
}

Attachment_Reference_Stencil_Layout :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	stencil_layout: Image_Layout,
}

Attachment_Description_Stencil_Layout :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	stencil_initial_layout: Image_Layout,
	stencil_final_layout: Image_Layout,
}

Physical_Device_Host_Query_Reset_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	host_query_reset: b32,
}

Physical_Device_Timeline_Semaphore_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	timeline_semaphore: b32,
}

Physical_Device_Timeline_Semaphore_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_timeline_semaphore_value_difference: u64,
}

Semaphore_Type_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	semaphore_type: Semaphore_Type,
	initial_value: u64,
}

Timeline_Semaphore_Submit_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	wait_semaphore_value_count: u32,
	wait_semaphore_values: [^]u64,
	signal_semaphore_value_count: u32,
	signal_semaphore_values: [^]u64,
}

Semaphore_Wait_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Semaphore_Wait_Flags,
	semaphore_count: u32,
	semaphores: [^]Semaphore,
	values: ^u64,
}

Semaphore_Signal_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	semaphore: Semaphore,
	value: u64,
}

Physical_Device_Buffer_Device_Address_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	buffer_device_address: b32,
	buffer_device_address_capture_replay: b32,
	buffer_device_address_multi_device: b32,
}

Buffer_Device_Address_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	buffer: Buffer,
}

Buffer_Opaque_Capture_Address_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	opaque_capture_address: u64,
}

Memory_Opaque_Capture_Address_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	opaque_capture_address: u64,
}

Device_Memory_Opaque_Capture_Address_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	memory: Device_Memory,
}

Physical_Device_Vulkan_13Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	robust_image_access: b32,
	inline_uniform_block: b32,
	descriptor_binding_inline_uniform_block_update_after_bind: b32,
	pipeline_creation_cache_control: b32,
	private_data: b32,
	shader_demote_to_helper_invocation: b32,
	shader_terminate_invocation: b32,
	subgroup_size_control: b32,
	compute_full_subgroups: b32,
	synchronization2: b32,
	texture_compression_astc_hdr: b32,
	shader_zero_initialize_workgroup_memory: b32,
	dynamic_rendering: b32,
	shader_integer_dot_product: b32,
	maintenance4: b32,
}

Physical_Device_Vulkan_13Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_subgroup_size: u32,
	max_subgroup_size: u32,
	max_compute_workgroup_subgroups: u32,
	required_subgroup_size_stages: Shader_Stage_Flags,
	max_inline_uniform_block_size: u32,
	max_per_stage_descriptor_inline_uniform_blocks: u32,
	max_per_stage_descriptor_update_after_bind_inline_uniform_blocks: u32,
	max_descriptor_set_inline_uniform_blocks: u32,
	max_descriptor_set_update_after_bind_inline_uniform_blocks: u32,
	max_inline_uniform_total_size: u32,
	integer_dot_product8_bit_unsigned_accelerated: b32,
	integer_dot_product8_bit_signed_accelerated: b32,
	integer_dot_product8_bit_mixed_signedness_accelerated: b32,
	integer_dot_product4x8_bit_packed_unsigned_accelerated: b32,
	integer_dot_product4x8_bit_packed_signed_accelerated: b32,
	integer_dot_product4x8_bit_packed_mixed_signedness_accelerated: b32,
	integer_dot_product16_bit_unsigned_accelerated: b32,
	integer_dot_product16_bit_signed_accelerated: b32,
	integer_dot_product16_bit_mixed_signedness_accelerated: b32,
	integer_dot_product32_bit_unsigned_accelerated: b32,
	integer_dot_product32_bit_signed_accelerated: b32,
	integer_dot_product32_bit_mixed_signedness_accelerated: b32,
	integer_dot_product64_bit_unsigned_accelerated: b32,
	integer_dot_product64_bit_signed_accelerated: b32,
	integer_dot_product64_bit_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating8_bit_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating8_bit_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating8_bit_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating4x8_bit_packed_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating4x8_bit_packed_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating4x8_bit_packed_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating16_bit_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating16_bit_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating16_bit_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating32_bit_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating32_bit_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating32_bit_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating64_bit_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating64_bit_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating64_bit_mixed_signedness_accelerated: b32,
	storage_texel_buffer_offset_alignment_bytes: Device_Size,
	storage_texel_buffer_offset_single_texel_alignment: b32,
	uniform_texel_buffer_offset_alignment_bytes: Device_Size,
	uniform_texel_buffer_offset_single_texel_alignment: b32,
	max_buffer_size: Device_Size,
}

Pipeline_Creation_Feedback :: struct  {
	flags: Pipeline_Creation_Feedback_Flags,
	duration: u64,
}

Pipeline_Creation_Feedback_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	pipeline_creation_feedback: ^Pipeline_Creation_Feedback,
	pipeline_stage_creation_feedback_count: u32,
	pipeline_stage_creation_feedbacks: [^]Pipeline_Creation_Feedback,
}

Physical_Device_Shader_Terminate_Invocation_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_terminate_invocation: b32,
}

Physical_Device_Tool_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	name: [MAX_EXTENSION_NAME_SIZE]byte,
	version: [MAX_EXTENSION_NAME_SIZE]byte,
	purposes: Tool_Purpose_Flags,
	description: [MAX_DESCRIPTION_SIZE]byte,
	layer: [MAX_EXTENSION_NAME_SIZE]byte,
}

Physical_Device_Shader_Demote_To_Helper_Invocation_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_demote_to_helper_invocation: b32,
}

Physical_Device_Private_Data_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	private_data: b32,
}

Device_Private_Data_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	private_data_slot_request_count: u32,
}

Private_Data_Slot_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Private_Data_Slot_Create_Flags,
}

Physical_Device_Pipeline_Creation_Cache_Control_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_creation_cache_control: b32,
}

Memory_Barrier_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_stage_mask: Pipeline_Stage_Flags_2,
	src_access_mask: Access_Flags_2,
	dst_stage_mask: Pipeline_Stage_Flags_2,
	dst_access_mask: Access_Flags_2,
}

Buffer_Memory_Barrier_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_stage_mask: Pipeline_Stage_Flags_2,
	src_access_mask: Access_Flags_2,
	dst_stage_mask: Pipeline_Stage_Flags_2,
	dst_access_mask: Access_Flags_2,
	src_queue_family_index: u32,
	dst_queue_family_index: u32,
	buffer: Buffer,
	offset: Device_Size,
	size: Device_Size,
}

Image_Memory_Barrier_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_stage_mask: Pipeline_Stage_Flags_2,
	src_access_mask: Access_Flags_2,
	dst_stage_mask: Pipeline_Stage_Flags_2,
	dst_access_mask: Access_Flags_2,
	old_layout: Image_Layout,
	new_layout: Image_Layout,
	src_queue_family_index: u32,
	dst_queue_family_index: u32,
	image: Image,
	subresource_range: Image_Subresource_Range,
}

Dependency_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	dependency_flags: Dependency_Flags,
	memory_barrier_count: u32,
	memory_barriers: [^]Memory_Barrier_2,
	buffer_memory_barrier_count: u32,
	buffer_memory_barriers: [^]Buffer_Memory_Barrier_2,
	image_memory_barrier_count: u32,
	image_memory_barriers: [^]Image_Memory_Barrier_2,
}

Semaphore_Submit_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	semaphore: Semaphore,
	value: u64,
	stage_mask: Pipeline_Stage_Flags_2,
	device_index: u32,
}

Command_Buffer_Submit_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	command_buffer: Command_Buffer,
	device_mask: u32,
}

Submit_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Submit_Flags,
	wait_semaphore_info_count: u32,
	wait_semaphore_infos: [^]Semaphore_Submit_Info,
	command_buffer_info_count: u32,
	command_buffer_infos: [^]Command_Buffer_Submit_Info,
	signal_semaphore_info_count: u32,
	signal_semaphore_infos: [^]Semaphore_Submit_Info,
}

Physical_Device_Synchronization_2Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	synchronization2: b32,
}

Physical_Device_Zero_Initialize_Workgroup_Memory_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_zero_initialize_workgroup_memory: b32,
}

Physical_Device_Image_Robustness_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	robust_image_access: b32,
}

Buffer_Copy_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_offset: Device_Size,
	dst_offset: Device_Size,
	size: Device_Size,
}

Copy_Buffer_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_buffer: Buffer,
	dst_buffer: Buffer,
	region_count: u32,
	regions: [^]Buffer_Copy_2,
}

Image_Copy_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_subresource: Image_Subresource_Layers,
	src_offset: Offset_3D,
	dst_subresource: Image_Subresource_Layers,
	dst_offset: Offset_3D,
	extent: Extent_3D,
}

Copy_Image_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_image: Image,
	src_image_layout: Image_Layout,
	dst_image: Image,
	dst_image_layout: Image_Layout,
	region_count: u32,
	regions: [^]Image_Copy_2,
}

Buffer_Image_Copy_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	buffer_offset: Device_Size,
	buffer_row_length: u32,
	buffer_image_height: u32,
	image_subresource: Image_Subresource_Layers,
	image_offset: Offset_3D,
	image_extent: Extent_3D,
}

Copy_Buffer_To_Image_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_buffer: Buffer,
	dst_image: Image,
	dst_image_layout: Image_Layout,
	region_count: u32,
	regions: [^]Buffer_Image_Copy_2,
}

Copy_Image_To_Buffer_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_image: Image,
	src_image_layout: Image_Layout,
	dst_buffer: Buffer,
	region_count: u32,
	regions: [^]Buffer_Image_Copy_2,
}

Image_Blit_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_subresource: Image_Subresource_Layers,
	src_offsets: [2]Offset_3D,
	dst_subresource: Image_Subresource_Layers,
	dst_offsets: [2]Offset_3D,
}

Blit_Image_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_image: Image,
	src_image_layout: Image_Layout,
	dst_image: Image,
	dst_image_layout: Image_Layout,
	region_count: u32,
	regions: [^]Image_Blit_2,
	filter: Filter,
}

Image_Resolve_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_subresource: Image_Subresource_Layers,
	src_offset: Offset_3D,
	dst_subresource: Image_Subresource_Layers,
	dst_offset: Offset_3D,
	extent: Extent_3D,
}

Resolve_Image_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_image: Image,
	src_image_layout: Image_Layout,
	dst_image: Image,
	dst_image_layout: Image_Layout,
	region_count: u32,
	regions: [^]Image_Resolve_2,
}

Physical_Device_Subgroup_Size_Control_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	subgroup_size_control: b32,
	compute_full_subgroups: b32,
}

Physical_Device_Subgroup_Size_Control_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_subgroup_size: u32,
	max_subgroup_size: u32,
	max_compute_workgroup_subgroups: u32,
	required_subgroup_size_stages: Shader_Stage_Flags,
}

Pipeline_Shader_Stage_Required_Subgroup_Size_Create_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	required_subgroup_size: u32,
}

Physical_Device_Inline_Uniform_Block_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	inline_uniform_block: b32,
	descriptor_binding_inline_uniform_block_update_after_bind: b32,
}

Physical_Device_Inline_Uniform_Block_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_inline_uniform_block_size: u32,
	max_per_stage_descriptor_inline_uniform_blocks: u32,
	max_per_stage_descriptor_update_after_bind_inline_uniform_blocks: u32,
	max_descriptor_set_inline_uniform_blocks: u32,
	max_descriptor_set_update_after_bind_inline_uniform_blocks: u32,
}

Write_Descriptor_Set_Inline_Uniform_Block :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	data_size: u32,
	data: rawptr,
}

Descriptor_Pool_Inline_Uniform_Block_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	max_inline_uniform_block_bindings: u32,
}

Physical_Device_Texture_Compression_Astchdrfeatures :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	texture_compression_astc_hdr: b32,
}

Rendering_Attachment_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image_view: Image_View,
	image_layout: Image_Layout,
	resolve_mode: Resolve_Mode_Flags,
	resolve_image_view: Image_View,
	resolve_image_layout: Image_Layout,
	load_op: Attachment_Load_Op,
	store_op: Attachment_Store_Op,
	clear_value: Clear_Value,
}

Rendering_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Rendering_Flags,
	render_area: Rect_2D,
	layer_count: u32,
	view_mask: u32,
	color_attachment_count: u32,
	color_attachments: [^]Rendering_Attachment_Info,
	depth_attachment: ^Rendering_Attachment_Info,
	stencil_attachment: ^Rendering_Attachment_Info,
}

Pipeline_Rendering_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	view_mask: u32,
	color_attachment_count: u32,
	color_attachment_formats: [^]Format,
	depth_attachment_format: Format,
	stencil_attachment_format: Format,
}

Physical_Device_Dynamic_Rendering_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	dynamic_rendering: b32,
}

Command_Buffer_Inheritance_Rendering_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Rendering_Flags,
	view_mask: u32,
	color_attachment_count: u32,
	color_attachment_formats: [^]Format,
	depth_attachment_format: Format,
	stencil_attachment_format: Format,
	rasterization_samples: Sample_Count_Flags,
}

Physical_Device_Shader_Integer_Dot_Product_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_integer_dot_product: b32,
}

Physical_Device_Shader_Integer_Dot_Product_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	integer_dot_product8_bit_unsigned_accelerated: b32,
	integer_dot_product8_bit_signed_accelerated: b32,
	integer_dot_product8_bit_mixed_signedness_accelerated: b32,
	integer_dot_product4x8_bit_packed_unsigned_accelerated: b32,
	integer_dot_product4x8_bit_packed_signed_accelerated: b32,
	integer_dot_product4x8_bit_packed_mixed_signedness_accelerated: b32,
	integer_dot_product16_bit_unsigned_accelerated: b32,
	integer_dot_product16_bit_signed_accelerated: b32,
	integer_dot_product16_bit_mixed_signedness_accelerated: b32,
	integer_dot_product32_bit_unsigned_accelerated: b32,
	integer_dot_product32_bit_signed_accelerated: b32,
	integer_dot_product32_bit_mixed_signedness_accelerated: b32,
	integer_dot_product64_bit_unsigned_accelerated: b32,
	integer_dot_product64_bit_signed_accelerated: b32,
	integer_dot_product64_bit_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating8_bit_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating8_bit_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating8_bit_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating4x8_bit_packed_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating4x8_bit_packed_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating4x8_bit_packed_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating16_bit_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating16_bit_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating16_bit_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating32_bit_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating32_bit_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating32_bit_mixed_signedness_accelerated: b32,
	integer_dot_product_accumulating_saturating64_bit_unsigned_accelerated: b32,
	integer_dot_product_accumulating_saturating64_bit_signed_accelerated: b32,
	integer_dot_product_accumulating_saturating64_bit_mixed_signedness_accelerated: b32,
}

Physical_Device_Texel_Buffer_Alignment_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	storage_texel_buffer_offset_alignment_bytes: Device_Size,
	storage_texel_buffer_offset_single_texel_alignment: b32,
	uniform_texel_buffer_offset_alignment_bytes: Device_Size,
	uniform_texel_buffer_offset_single_texel_alignment: b32,
}

Format_Properties_3 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	linear_tiling_features: Format_Feature_Flags_2,
	optimal_tiling_features: Format_Feature_Flags_2,
	buffer_features: Format_Feature_Flags_2,
}

Physical_Device_Maintenance_4Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	maintenance4: b32,
}

Physical_Device_Maintenance_4Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_buffer_size: Device_Size,
}

Device_Buffer_Memory_Requirements :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	create_info: ^Buffer_Create_Info,
}

Device_Image_Memory_Requirements :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	create_info: ^Image_Create_Info,
	plane_aspect: Image_Aspect_Flags,
}

Physical_Device_Vulkan_14Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	global_priority_query: b32,
	shader_subgroup_rotate: b32,
	shader_subgroup_rotate_clustered: b32,
	shader_float_controls2: b32,
	shader_expect_assume: b32,
	rectangular_lines: b32,
	bresenham_lines: b32,
	smooth_lines: b32,
	stippled_rectangular_lines: b32,
	stippled_bresenham_lines: b32,
	stippled_smooth_lines: b32,
	vertex_attribute_instance_rate_divisor: b32,
	vertex_attribute_instance_rate_zero_divisor: b32,
	index_type_uint8: b32,
	dynamic_rendering_local_read: b32,
	maintenance5: b32,
	maintenance6: b32,
	pipeline_protected_access: b32,
	pipeline_robustness: b32,
	host_image_copy: b32,
	push_descriptor: b32,
}

Physical_Device_Vulkan_14Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	line_sub_pixel_precision_bits: u32,
	max_vertex_attrib_divisor: u32,
	supports_non_zero_first_instance: b32,
	max_push_descriptors: u32,
	dynamic_rendering_local_read_depth_stencil_attachments: b32,
	dynamic_rendering_local_read_multisampled_attachments: b32,
	early_fragment_multisample_coverage_after_sample_counting: b32,
	early_fragment_sample_mask_test_before_sample_counting: b32,
	depth_stencil_swizzle_one_support: b32,
	polygon_mode_point_size: b32,
	non_strict_single_pixel_wide_lines_use_parallelogram: b32,
	non_strict_wide_lines_use_parallelogram: b32,
	block_texel_view_compatible_multiple_layers: b32,
	max_combined_image_sampler_descriptor_count: u32,
	fragment_shading_rate_clamp_combiner_inputs: b32,
	default_robustness_storage_buffers: Pipeline_Robustness_Buffer_Behavior,
	default_robustness_uniform_buffers: Pipeline_Robustness_Buffer_Behavior,
	default_robustness_vertex_inputs: Pipeline_Robustness_Buffer_Behavior,
	default_robustness_images: Pipeline_Robustness_Image_Behavior,
	copy_src_layout_count: u32,
	copy_src_layouts: [^]Image_Layout,
	copy_dst_layout_count: u32,
	copy_dst_layouts: [^]Image_Layout,
	optimal_tiling_layout_uuid: [UUID_SIZE]u8,
	identical_memory_type_requirements: b32,
}

Device_Queue_Global_Priority_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	global_priority: Queue_Global_Priority,
}

Physical_Device_Global_Priority_Query_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	global_priority_query: b32,
}

Queue_Family_Global_Priority_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	priority_count: u32,
	priorities: [MAX_GLOBAL_PRIORITY_SIZE]Queue_Global_Priority,
}

Physical_Device_Shader_Subgroup_Rotate_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_subgroup_rotate: b32,
	shader_subgroup_rotate_clustered: b32,
}

Physical_Device_Shader_Float_Controls_2Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_float_controls2: b32,
}

Physical_Device_Shader_Expect_Assume_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_expect_assume: b32,
}

Physical_Device_Line_Rasterization_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	rectangular_lines: b32,
	bresenham_lines: b32,
	smooth_lines: b32,
	stippled_rectangular_lines: b32,
	stippled_bresenham_lines: b32,
	stippled_smooth_lines: b32,
}

Physical_Device_Line_Rasterization_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	line_sub_pixel_precision_bits: u32,
}

Pipeline_Rasterization_Line_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	line_rasterization_mode: Line_Rasterization_Mode,
	stippled_line_enable: b32,
	line_stipple_factor: u32,
	line_stipple_pattern: u16,
}

Physical_Device_Vertex_Attribute_Divisor_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_vertex_attrib_divisor: u32,
	supports_non_zero_first_instance: b32,
}

Vertex_Input_Binding_Divisor_Description :: struct  {
	binding: u32,
	divisor: u32,
}

Pipeline_Vertex_Input_Divisor_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	vertex_binding_divisor_count: u32,
	vertex_binding_divisors: [^]Vertex_Input_Binding_Divisor_Description,
}

Physical_Device_Vertex_Attribute_Divisor_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	vertex_attribute_instance_rate_divisor: b32,
	vertex_attribute_instance_rate_zero_divisor: b32,
}

Physical_Device_Index_Type_Uint_8Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	index_type_uint8: b32,
}

Memory_Map_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Memory_Map_Flags,
	memory: Device_Memory,
	offset: Device_Size,
	size: Device_Size,
}

Memory_Unmap_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Memory_Unmap_Flags,
	memory: Device_Memory,
}

Physical_Device_Maintenance_5Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	maintenance5: b32,
}

Physical_Device_Maintenance_5Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	early_fragment_multisample_coverage_after_sample_counting: b32,
	early_fragment_sample_mask_test_before_sample_counting: b32,
	depth_stencil_swizzle_one_support: b32,
	polygon_mode_point_size: b32,
	non_strict_single_pixel_wide_lines_use_parallelogram: b32,
	non_strict_wide_lines_use_parallelogram: b32,
}

Rendering_Area_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	view_mask: u32,
	color_attachment_count: u32,
	color_attachment_formats: [^]Format,
	depth_attachment_format: Format,
	stencil_attachment_format: Format,
}

Image_Subresource_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_subresource: Image_Subresource,
}

Device_Image_Subresource_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	create_info: ^Image_Create_Info,
	subresource: ^Image_Subresource_2,
}

Subresource_Layout_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	subresource_layout: Subresource_Layout,
}

Pipeline_Create_Flags_2Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Create_Flags_2,
}

Buffer_Usage_Flags_2Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	usage: Buffer_Usage_Flags_2,
}

Physical_Device_Push_Descriptor_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_push_descriptors: u32,
}

Physical_Device_Dynamic_Rendering_Local_Read_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	dynamic_rendering_local_read: b32,
}

Rendering_Attachment_Location_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	color_attachment_count: u32,
	color_attachment_locations: [^]u32,
}

Rendering_Input_Attachment_Index_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	color_attachment_count: u32,
	color_attachment_input_indices: [^]u32,
	depth_input_attachment_index: ^u32,
	stencil_input_attachment_index: ^u32,
}

Physical_Device_Maintenance_6Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	maintenance6: b32,
}

Physical_Device_Maintenance_6Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	block_texel_view_compatible_multiple_layers: b32,
	max_combined_image_sampler_descriptor_count: u32,
	fragment_shading_rate_clamp_combiner_inputs: b32,
}

Bind_Memory_Status :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	result: ^Result,
}

Bind_Descriptor_Sets_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stage_flags: Shader_Stage_Flags,
	layout: Pipeline_Layout,
	first_set: u32,
	descriptor_set_count: u32,
	descriptor_sets: [^]Descriptor_Set,
	dynamic_offset_count: u32,
	dynamic_offsets: [^]u32,
}

Push_Constants_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	layout: Pipeline_Layout,
	stage_flags: Shader_Stage_Flags,
	offset: u32,
	size: u32,
	values: rawptr,
}

Push_Descriptor_Set_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stage_flags: Shader_Stage_Flags,
	layout: Pipeline_Layout,
	set: u32,
	descriptor_write_count: u32,
	descriptor_writes: [^]Write_Descriptor_Set,
}

Push_Descriptor_Set_With_Template_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	descriptor_update_template: Descriptor_Update_Template,
	layout: Pipeline_Layout,
	set: u32,
	data: rawptr,
}

Physical_Device_Pipeline_Protected_Access_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_protected_access: b32,
}

Physical_Device_Pipeline_Robustness_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_robustness: b32,
}

Physical_Device_Pipeline_Robustness_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	default_robustness_storage_buffers: Pipeline_Robustness_Buffer_Behavior,
	default_robustness_uniform_buffers: Pipeline_Robustness_Buffer_Behavior,
	default_robustness_vertex_inputs: Pipeline_Robustness_Buffer_Behavior,
	default_robustness_images: Pipeline_Robustness_Image_Behavior,
}

Pipeline_Robustness_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	storage_buffers: Pipeline_Robustness_Buffer_Behavior,
	uniform_buffers: Pipeline_Robustness_Buffer_Behavior,
	vertex_inputs: Pipeline_Robustness_Buffer_Behavior,
	images: Pipeline_Robustness_Image_Behavior,
}

Physical_Device_Host_Image_Copy_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	host_image_copy: b32,
}

Physical_Device_Host_Image_Copy_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	copy_src_layout_count: u32,
	copy_src_layouts: [^]Image_Layout,
	copy_dst_layout_count: u32,
	copy_dst_layouts: [^]Image_Layout,
	optimal_tiling_layout_uuid: [UUID_SIZE]u8,
	identical_memory_type_requirements: b32,
}

Memory_To_Image_Copy :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	host_pointer: rawptr,
	memory_row_length: u32,
	memory_image_height: u32,
	image_subresource: Image_Subresource_Layers,
	image_offset: Offset_3D,
	image_extent: Extent_3D,
}

Image_To_Memory_Copy :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	host_pointer: [^]u8,
	memory_row_length: u32,
	memory_image_height: u32,
	image_subresource: Image_Subresource_Layers,
	image_offset: Offset_3D,
	image_extent: Extent_3D,
}

Copy_Memory_To_Image_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Host_Image_Copy_Flags,
	dst_image: Image,
	dst_image_layout: Image_Layout,
	region_count: u32,
	regions: [^]Memory_To_Image_Copy,
}

Copy_Image_To_Memory_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Host_Image_Copy_Flags,
	src_image: Image,
	src_image_layout: Image_Layout,
	region_count: u32,
	regions: [^]Image_To_Memory_Copy,
}

Copy_Image_To_Image_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Host_Image_Copy_Flags,
	src_image: Image,
	src_image_layout: Image_Layout,
	dst_image: Image,
	dst_image_layout: Image_Layout,
	region_count: u32,
	regions: [^]Image_Copy_2,
}

Host_Image_Layout_Transition_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
	old_layout: Image_Layout,
	new_layout: Image_Layout,
	subresource_range: Image_Subresource_Range,
}

Subresource_Host_Memcpy_Size :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	size: Device_Size,
}

Host_Image_Copy_Device_Performance_Query :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	optimal_device_access: b32,
	identical_memory_layout: b32,
}

Surface_Capabilities :: struct  {
	min_image_count: u32,
	max_image_count: u32,
	current_extent: Extent_2D,
	min_image_extent: Extent_2D,
	max_image_extent: Extent_2D,
	max_image_array_layers: u32,
	supported_transforms: Surface_Transform_Flags,
	current_transform: Surface_Transform_Flags,
	supported_composite_alpha: Composite_Alpha_Flags,
	supported_usage_flags: Image_Usage_Flags,
}

Surface_Format :: struct  {
	format: Format,
	color_space: Color_Space,
}

Swapchain_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Swapchain_Create_Flags,
	surface: Surface,
	min_image_count: u32,
	image_format: Format,
	image_color_space: Color_Space,
	image_extent: Extent_2D,
	image_array_layers: u32,
	image_usage: Image_Usage_Flags,
	image_sharing_mode: Sharing_Mode,
	queue_family_index_count: u32,
	queue_family_indices: [^]u32,
	pre_transform: Surface_Transform_Flags,
	composite_alpha: Composite_Alpha_Flags,
	present_mode: Present_Mode,
	clipped: b32,
	old_swapchain: Swapchain,
}

Present_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	wait_semaphore_count: u32,
	wait_semaphores: [^]Semaphore,
	swapchain_count: u32,
	swapchains: [^]Swapchain,
	image_indices: ^u32,
	results: ^Result,
}

Image_Swapchain_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain: Swapchain,
}

Bind_Image_Memory_Swapchain_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain: Swapchain,
	image_index: u32,
}

Acquire_Next_Image_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain: Swapchain,
	timeout: u64,
	semaphore: Semaphore,
	fence: Fence,
	device_mask: u32,
}

Device_Group_Present_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_mask: [MAX_DEVICE_GROUP_SIZE]u32,
	modes: Device_Group_Present_Mode_Flags,
}

Device_Group_Present_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain_count: u32,
	device_masks: [^]u32,
	mode: Device_Group_Present_Mode_Flags,
}

Device_Group_Swapchain_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	modes: Device_Group_Present_Mode_Flags,
}

Display_Mode_Parameters :: struct  {
	visible_region: Extent_2D,
	refresh_rate: u32,
}

Display_Mode_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Display_Mode_Create_Flags,
	parameters: Display_Mode_Parameters,
}

Display_Mode_Properties :: struct  {
	display_mode: Display_Mode,
	parameters: Display_Mode_Parameters,
}

Display_Plane_Capabilities :: struct  {
	supported_alpha: Display_Plane_Alpha_Flags,
	min_src_position: Offset_2D,
	max_src_position: Offset_2D,
	min_src_extent: Extent_2D,
	max_src_extent: Extent_2D,
	min_dst_position: Offset_2D,
	max_dst_position: Offset_2D,
	min_dst_extent: Extent_2D,
	max_dst_extent: Extent_2D,
}

Display_Plane_Properties :: struct  {
	current_display: Display,
	current_stack_index: u32,
}

Display_Properties :: struct  {
	display: Display,
	display_name: cstring,
	physical_dimensions: Extent_2D,
	physical_resolution: Extent_2D,
	supported_transforms: Surface_Transform_Flags,
	plane_reorder_possible: b32,
	persistent_content: b32,
}

Display_Surface_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Display_Surface_Create_Flags,
	display_mode: Display_Mode,
	plane_index: u32,
	plane_stack_index: u32,
	transform: Surface_Transform_Flags,
	global_alpha: f32,
	alpha_mode: Display_Plane_Alpha_Flags,
	image_extent: Extent_2D,
}

Display_Present_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_rect: Rect_2D,
	dst_rect: Rect_2D,
	persistent: b32,
}

Queue_Family_Query_Result_Status_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	query_result_status_support: b32,
}

Queue_Family_Video_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	video_codec_operations: Video_Codec_Operation_Flags,
}

Video_Profile_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	video_codec_operation: Video_Codec_Operation_Flags,
	chroma_subsampling: Video_Chroma_Subsampling_Flags,
	luma_bit_depth: Video_Component_Bit_Depth_Flags,
	chroma_bit_depth: Video_Component_Bit_Depth_Flags,
}

Video_Profile_List_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	profile_count: u32,
	profiles: [^]Video_Profile_Info,
}

Video_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Video_Capability_Flags,
	min_bitstream_buffer_offset_alignment: Device_Size,
	min_bitstream_buffer_size_alignment: Device_Size,
	picture_access_granularity: Extent_2D,
	min_coded_extent: Extent_2D,
	max_coded_extent: Extent_2D,
	max_dpb_slots: u32,
	max_active_reference_pictures: u32,
	std_header_version: Extension_Properties,
}

Physical_Device_Video_Format_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image_usage: Image_Usage_Flags,
}

Video_Format_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	format: Format,
	component_mapping: Component_Mapping,
	image_create_flags: Image_Create_Flags,
	image_type: Image_Type,
	image_tiling: Image_Tiling,
	image_usage_flags: Image_Usage_Flags,
}

Video_Picture_Resource_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	coded_offset: Offset_2D,
	coded_extent: Extent_2D,
	base_array_layer: u32,
	image_view_binding: Image_View,
}

Video_Reference_Slot_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	slot_index: i32,
	picture_resource: ^Video_Picture_Resource_Info,
}

Video_Session_Memory_Requirements :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_bind_index: u32,
	memory_requirements: Memory_Requirements,
}

Bind_Video_Session_Memory_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	memory_bind_index: u32,
	memory: Device_Memory,
	memory_offset: Device_Size,
	memory_size: Device_Size,
}

Video_Session_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	queue_family_index: u32,
	flags: Video_Session_Create_Flags,
	video_profile: ^Video_Profile_Info,
	picture_format: Format,
	max_coded_extent: Extent_2D,
	reference_picture_format: Format,
	max_dpb_slots: u32,
	max_active_reference_pictures: u32,
	std_header_version: ^Extension_Properties,
}

Video_Session_Parameters_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Session_Parameters_Create_Flags,
	video_session_parameters_template: Video_Session_Parameters,
	video_session: Video_Session,
}

Video_Session_Parameters_Update_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	update_sequence_count: u32,
}

Video_Begin_Coding_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Begin_Coding_Flags,
	video_session: Video_Session,
	video_session_parameters: Video_Session_Parameters,
	reference_slot_count: u32,
	reference_slots: [^]Video_Reference_Slot_Info,
}

Video_End_Coding_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_End_Coding_Flags,
}

Video_Coding_Control_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Coding_Control_Flags,
}

Video_Decode_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Video_Decode_Capability_Flags,
}

Video_Decode_Usage_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	video_usage_hints: Video_Decode_Usage_Flags,
}

Video_Decode_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Decode_Flags,
	src_buffer: Buffer,
	src_buffer_offset: Device_Size,
	src_buffer_range: Device_Size,
	dst_picture_resource: Video_Picture_Resource_Info,
	setup_reference_slot: ^Video_Reference_Slot_Info,
	reference_slot_count: u32,
	reference_slots: [^]Video_Reference_Slot_Info,
}

Video_Encode_H264Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Video_Encode_H264Capability_Flags,
	max_level_idc: Video_H264Level_Idc,
	max_slice_count: u32,
	max_ppicture_l0_reference_count: u32,
	max_bpicture_l0_reference_count: u32,
	max_l1_reference_count: u32,
	max_temporal_layer_count: u32,
	expect_dyadic_temporal_layer_pattern: b32,
	min_qp: i32,
	max_qp: i32,
	prefers_gop_remaining_frames: b32,
	requires_gop_remaining_frames: b32,
	std_syntax_flags: Video_Encode_H264Std_Flags,
}

Video_Encode_H264Qp :: struct  {
	qp_i: i32,
	qp_p: i32,
	qp_b: i32,
}

Video_Encode_H264Quality_Level_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	preferred_rate_control_flags: Video_Encode_H264Rate_Control_Flags,
	preferred_gop_frame_count: u32,
	preferred_idr_period: u32,
	preferred_consecutive_bframe_count: u32,
	preferred_temporal_layer_count: u32,
	preferred_constant_qp: Video_Encode_H264Qp,
	preferred_max_l0_reference_count: u32,
	preferred_max_l1_reference_count: u32,
	preferred_std_entropy_coding_mode_flag: b32,
}

Video_Encode_H264Session_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_max_level_idc: b32,
	max_level_idc: Video_H264Level_Idc,
}

Video_Encode_H264Session_Parameters_Add_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_spscount: u32,
	std_spss: [^]Video_H264Sequence_Parameter_Set,
	std_ppscount: u32,
	std_ppss: [^]Video_H264Picture_Parameter_Set,
}

Video_Encode_H264Session_Parameters_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	max_std_spscount: u32,
	max_std_ppscount: u32,
	parameters_add_info: ^Video_Encode_H264Session_Parameters_Add_Info,
}

Video_Encode_H264Session_Parameters_Get_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	write_std_sps: b32,
	write_std_pps: b32,
	std_spsid: u32,
	std_ppsid: u32,
}

Video_Encode_H264Session_Parameters_Feedback_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	has_std_spsoverrides: b32,
	has_std_ppsoverrides: b32,
}

Video_Encode_H264Nalu_Slice_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	constant_qp: i32,
	std_slice_header: ^Video_Encode_H264Slice_Header,
}

Video_Encode_H264Picture_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	nalu_slice_entry_count: u32,
	nalu_slice_entries: [^]Video_Encode_H264Nalu_Slice_Info,
	std_picture_info: ^Video_Encode_H264Picture_Info,
	generate_prefix_nalu: b32,
}

Video_Encode_H264Dpb_Slot_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_reference_info: ^Video_Encode_H264Reference_Info,
}

Video_Encode_H264Profile_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_profile_idc: Video_H264Profile_Idc,
}

Video_Encode_H264Rate_Control_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Encode_H264Rate_Control_Flags,
	gop_frame_count: u32,
	idr_period: u32,
	consecutive_bframe_count: u32,
	temporal_layer_count: u32,
}

Video_Encode_H264Frame_Size :: struct  {
	frame_isize: u32,
	frame_psize: u32,
	frame_bsize: u32,
}

Video_Encode_H264Rate_Control_Layer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_min_qp: b32,
	min_qp: Video_Encode_H264Qp,
	use_max_qp: b32,
	max_qp: Video_Encode_H264Qp,
	use_max_frame_size: b32,
	max_frame_size: Video_Encode_H264Frame_Size,
}

Video_Encode_H264Gop_Remaining_Frame_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_gop_remaining_frames: b32,
	gop_remaining_i: u32,
	gop_remaining_p: u32,
	gop_remaining_b: u32,
}

Video_Encode_H265Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Video_Encode_H265Capability_Flags,
	max_level_idc: Video_H265Level_Idc,
	max_slice_segment_count: u32,
	max_tiles: Extent_2D,
	ctb_sizes: Video_Encode_H265Ctb_Size_Flags,
	transform_block_sizes: Video_Encode_H265Transform_Block_Size_Flags,
	max_ppicture_l0_reference_count: u32,
	max_bpicture_l0_reference_count: u32,
	max_l1_reference_count: u32,
	max_sub_layer_count: u32,
	expect_dyadic_temporal_sub_layer_pattern: b32,
	min_qp: i32,
	max_qp: i32,
	prefers_gop_remaining_frames: b32,
	requires_gop_remaining_frames: b32,
	std_syntax_flags: Video_Encode_H265Std_Flags,
}

Video_Encode_H265Session_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_max_level_idc: b32,
	max_level_idc: Video_H265Level_Idc,
}

Video_Encode_H265Qp :: struct  {
	qp_i: i32,
	qp_p: i32,
	qp_b: i32,
}

Video_Encode_H265Quality_Level_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	preferred_rate_control_flags: Video_Encode_H265Rate_Control_Flags,
	preferred_gop_frame_count: u32,
	preferred_idr_period: u32,
	preferred_consecutive_bframe_count: u32,
	preferred_sub_layer_count: u32,
	preferred_constant_qp: Video_Encode_H265Qp,
	preferred_max_l0_reference_count: u32,
	preferred_max_l1_reference_count: u32,
}

Video_Encode_H265Session_Parameters_Add_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_vpscount: u32,
	std_vpss: [^]Video_H265Video_Parameter_Set,
	std_spscount: u32,
	std_spss: [^]Video_H265Sequence_Parameter_Set,
	std_ppscount: u32,
	std_ppss: [^]Video_H265Picture_Parameter_Set,
}

Video_Encode_H265Session_Parameters_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	max_std_vpscount: u32,
	max_std_spscount: u32,
	max_std_ppscount: u32,
	parameters_add_info: ^Video_Encode_H265Session_Parameters_Add_Info,
}

Video_Encode_H265Session_Parameters_Get_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	write_std_vps: b32,
	write_std_sps: b32,
	write_std_pps: b32,
	std_vpsid: u32,
	std_spsid: u32,
	std_ppsid: u32,
}

Video_Encode_H265Session_Parameters_Feedback_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	has_std_vpsoverrides: b32,
	has_std_spsoverrides: b32,
	has_std_ppsoverrides: b32,
}

Video_Encode_H265Nalu_Slice_Segment_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	constant_qp: i32,
	std_slice_segment_header: ^Video_Encode_H265Slice_Segment_Header,
}

Video_Encode_H265Picture_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	nalu_slice_segment_entry_count: u32,
	nalu_slice_segment_entries: [^]Video_Encode_H265Nalu_Slice_Segment_Info,
	std_picture_info: ^Video_Encode_H265Picture_Info,
}

Video_Encode_H265Dpb_Slot_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_reference_info: ^Video_Encode_H265Reference_Info,
}

Video_Encode_H265Profile_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_profile_idc: Video_H265Profile_Idc,
}

Video_Encode_H265Rate_Control_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Encode_H265Rate_Control_Flags,
	gop_frame_count: u32,
	idr_period: u32,
	consecutive_bframe_count: u32,
	sub_layer_count: u32,
}

Video_Encode_H265Frame_Size :: struct  {
	frame_isize: u32,
	frame_psize: u32,
	frame_bsize: u32,
}

Video_Encode_H265Rate_Control_Layer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_min_qp: b32,
	min_qp: Video_Encode_H265Qp,
	use_max_qp: b32,
	max_qp: Video_Encode_H265Qp,
	use_max_frame_size: b32,
	max_frame_size: Video_Encode_H265Frame_Size,
}

Video_Encode_H265Gop_Remaining_Frame_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_gop_remaining_frames: b32,
	gop_remaining_i: u32,
	gop_remaining_p: u32,
	gop_remaining_b: u32,
}

Video_Decode_H264Profile_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_profile_idc: Video_H264Profile_Idc,
	picture_layout: Video_Decode_H264Picture_Layout_Flags,
}

Video_Decode_H264Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_level_idc: Video_H264Level_Idc,
	field_offset_granularity: Offset_2D,
}

Video_Decode_H264Session_Parameters_Add_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_spscount: u32,
	std_spss: [^]Video_H264Sequence_Parameter_Set,
	std_ppscount: u32,
	std_ppss: [^]Video_H264Picture_Parameter_Set,
}

Video_Decode_H264Session_Parameters_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	max_std_spscount: u32,
	max_std_ppscount: u32,
	parameters_add_info: ^Video_Decode_H264Session_Parameters_Add_Info,
}

Video_Decode_H264Picture_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_picture_info: ^Video_Decode_H264Picture_Info,
	slice_count: u32,
	slice_offsets: [^]u32,
}

Video_Decode_H264Dpb_Slot_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_reference_info: ^Video_Decode_H264Reference_Info,
}

Import_Memory_Fd_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_type: External_Memory_Handle_Type_Flags,
	fd: c.int,
}

Memory_Fd_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_type_bits: u32,
}

Memory_Get_Fd_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	memory: Device_Memory,
	handle_type: External_Memory_Handle_Type_Flags,
}

Import_Semaphore_Fd_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	semaphore: Semaphore,
	flags: Semaphore_Import_Flags,
	handle_type: External_Semaphore_Handle_Type_Flags,
	fd: c.int,
}

Semaphore_Get_Fd_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	semaphore: Semaphore,
	handle_type: External_Semaphore_Handle_Type_Flags,
}

Rect_Layer :: struct  {
	offset: Offset_2D,
	extent: Extent_2D,
	layer: u32,
}

Present_Region :: struct  {
	rectangle_count: u32,
	rectangles: [^]Rect_Layer,
}

Present_Regions :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain_count: u32,
	regions: [^]Present_Region,
}

Shared_Present_Surface_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shared_present_supported_usage_flags: Image_Usage_Flags,
}

Import_Fence_Fd_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	fence: Fence,
	flags: Fence_Import_Flags,
	handle_type: External_Fence_Handle_Type_Flags,
	fd: c.int,
}

Fence_Get_Fd_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	fence: Fence,
	handle_type: External_Fence_Handle_Type_Flags,
}

Physical_Device_Performance_Query_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	performance_counter_query_pools: b32,
	performance_counter_multiple_query_pools: b32,
}

Physical_Device_Performance_Query_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	allow_command_buffer_query_copies: b32,
}

Performance_Counter :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	unit: Performance_Counter_Unit,
	scope: Performance_Counter_Scope,
	storage: Performance_Counter_Storage,
	uuid: [UUID_SIZE]u8,
}

Performance_Counter_Description :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Performance_Counter_Description_Flags,
	name: [MAX_DESCRIPTION_SIZE]byte,
	category: [MAX_DESCRIPTION_SIZE]byte,
	description: [MAX_DESCRIPTION_SIZE]byte,
}

Query_Pool_Performance_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	queue_family_index: u32,
	counter_index_count: u32,
	counter_indices: [^]u32,
}

Performance_Counter_Result :: struct #raw_union {
	int32: i32,
	int64: i64,
	uint32: u32,
	uint64: u64,
	float32: f32,
	float64: f64,
}

Acquire_Profiling_Lock_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Acquire_Profiling_Lock_Flags,
	timeout: u64,
}

Performance_Query_Submit_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	counter_pass_index: u32,
}

Physical_Device_Surface_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	surface: Surface,
}

Surface_Capabilities_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	surface_capabilities: Surface_Capabilities,
}

Surface_Format_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	surface_format: Surface_Format,
}

Display_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	display_properties: Display_Properties,
}

Display_Plane_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	display_plane_properties: Display_Plane_Properties,
}

Display_Mode_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	display_mode_properties: Display_Mode_Properties,
}

Display_Plane_Info_2 :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	mode: Display_Mode,
	plane_index: u32,
}

Display_Plane_Capabilities_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	capabilities: Display_Plane_Capabilities,
}

Physical_Device_Shader_Clock_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_subgroup_clock: b32,
	shader_device_clock: b32,
}

Video_Decode_H265Profile_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_profile_idc: Video_H265Profile_Idc,
}

Video_Decode_H265Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_level_idc: Video_H265Level_Idc,
}

Video_Decode_H265Session_Parameters_Add_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_vpscount: u32,
	std_vpss: [^]Video_H265Video_Parameter_Set,
	std_spscount: u32,
	std_spss: [^]Video_H265Sequence_Parameter_Set,
	std_ppscount: u32,
	std_ppss: [^]Video_H265Picture_Parameter_Set,
}

Video_Decode_H265Session_Parameters_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	max_std_vpscount: u32,
	max_std_spscount: u32,
	max_std_ppscount: u32,
	parameters_add_info: ^Video_Decode_H265Session_Parameters_Add_Info,
}

Video_Decode_H265Picture_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_picture_info: ^Video_Decode_H265Picture_Info,
	slice_segment_count: u32,
	slice_segment_offsets: [^]u32,
}

Video_Decode_H265Dpb_Slot_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_reference_info: ^Video_Decode_H265Reference_Info,
}

Fragment_Shading_Rate_Attachment_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	fragment_shading_rate_attachment: ^Attachment_Reference_2,
	shading_rate_attachment_texel_size: Extent_2D,
}

Pipeline_Fragment_Shading_Rate_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	fragment_size: Extent_2D,
	combiner_ops: [2]Fragment_Shading_Rate_Combiner_Op,
}

Physical_Device_Fragment_Shading_Rate_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_fragment_shading_rate: b32,
	primitive_fragment_shading_rate: b32,
	attachment_fragment_shading_rate: b32,
}

Physical_Device_Fragment_Shading_Rate_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_fragment_shading_rate_attachment_texel_size: Extent_2D,
	max_fragment_shading_rate_attachment_texel_size: Extent_2D,
	max_fragment_shading_rate_attachment_texel_size_aspect_ratio: u32,
	primitive_fragment_shading_rate_with_multiple_viewports: b32,
	layered_shading_rate_attachments: b32,
	fragment_shading_rate_non_trivial_combiner_ops: b32,
	max_fragment_size: Extent_2D,
	max_fragment_size_aspect_ratio: u32,
	max_fragment_shading_rate_coverage_samples: u32,
	max_fragment_shading_rate_rasterization_samples: Sample_Count_Flags,
	fragment_shading_rate_with_shader_depth_stencil_writes: b32,
	fragment_shading_rate_with_sample_mask: b32,
	fragment_shading_rate_with_shader_sample_mask: b32,
	fragment_shading_rate_with_conservative_rasterization: b32,
	fragment_shading_rate_with_fragment_shader_interlock: b32,
	fragment_shading_rate_with_custom_sample_locations: b32,
	fragment_shading_rate_strict_multiply_combiner: b32,
}

Physical_Device_Fragment_Shading_Rate :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	sample_counts: Sample_Count_Flags,
	fragment_size: Extent_2D,
}

Rendering_Fragment_Shading_Rate_Attachment_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image_view: Image_View,
	image_layout: Image_Layout,
	shading_rate_attachment_texel_size: Extent_2D,
}

Physical_Device_Shader_Quad_Control_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_quad_control: b32,
}

Surface_Protected_Capabilities :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	supports_protected: b32,
}

Physical_Device_Present_Wait_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_wait: b32,
}

Physical_Device_Pipeline_Executable_Properties_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_executable_info: b32,
}

Pipeline_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	pipeline: Pipeline,
}

Pipeline_Executable_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	stages: Shader_Stage_Flags,
	name: [MAX_DESCRIPTION_SIZE]byte,
	description: [MAX_DESCRIPTION_SIZE]byte,
	subgroup_size: u32,
}

Pipeline_Executable_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	pipeline: Pipeline,
	executable_index: u32,
}

Pipeline_Executable_Statistic_Value :: struct #raw_union {
	b32: b32,
	i64: i64,
	u64: u64,
	f64: f64,
}

Pipeline_Executable_Statistic :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	name: [MAX_DESCRIPTION_SIZE]byte,
	description: [MAX_DESCRIPTION_SIZE]byte,
	format: Pipeline_Executable_Statistic_Format,
	value: Pipeline_Executable_Statistic_Value,
}

Pipeline_Executable_Internal_Representation :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	name: [MAX_DESCRIPTION_SIZE]byte,
	description: [MAX_DESCRIPTION_SIZE]byte,
	is_text: b32,
	data_size: int,
	data: [^]u8,
}

Pipeline_Library_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	library_count: u32,
	libraries: [^]Pipeline,
}

Present_Id :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain_count: u32,
	present_ids: [^]u64,
}

Physical_Device_Present_Id_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_id: b32,
}

Video_Encode_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Encode_Flags,
	dst_buffer: Buffer,
	dst_buffer_offset: Device_Size,
	dst_buffer_range: Device_Size,
	src_picture_resource: Video_Picture_Resource_Info,
	setup_reference_slot: ^Video_Reference_Slot_Info,
	reference_slot_count: u32,
	reference_slots: [^]Video_Reference_Slot_Info,
	preceding_externally_encoded_bytes: u32,
}

Video_Encode_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Video_Encode_Capability_Flags,
	rate_control_modes: Video_Encode_Rate_Control_Mode_Flags,
	max_rate_control_layers: u32,
	max_bitrate: u64,
	max_quality_levels: u32,
	encode_input_picture_granularity: Extent_2D,
	supported_encode_feedback_flags: Video_Encode_Feedback_Flags,
}

Query_Pool_Video_Encode_Feedback_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	encode_feedback_flags: Video_Encode_Feedback_Flags,
}

Video_Encode_Usage_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	video_usage_hints: Video_Encode_Usage_Flags,
	video_content_hints: Video_Encode_Content_Flags,
	tuning_mode: Video_Encode_Tuning_Mode,
}

Video_Encode_Rate_Control_Layer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	average_bitrate: u64,
	max_bitrate: u64,
	frame_rate_numerator: u32,
	frame_rate_denominator: u32,
}

Video_Encode_Rate_Control_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Encode_Rate_Control_Flags,
	rate_control_mode: Video_Encode_Rate_Control_Mode_Flags,
	layer_count: u32,
	layers: [^]Video_Encode_Rate_Control_Layer_Info,
	virtual_buffer_size_in_ms: u32,
	initial_virtual_buffer_size_in_ms: u32,
}

Physical_Device_Video_Encode_Quality_Level_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	video_profile: ^Video_Profile_Info,
	quality_level: u32,
}

Video_Encode_Quality_Level_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	preferred_rate_control_mode: Video_Encode_Rate_Control_Mode_Flags,
	preferred_rate_control_layer_count: u32,
}

Video_Encode_Quality_Level_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	quality_level: u32,
}

Video_Encode_Session_Parameters_Get_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	video_session_parameters: Video_Session_Parameters,
}

Video_Encode_Session_Parameters_Feedback_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	has_overrides: b32,
}

Physical_Device_Fragment_Shader_Barycentric_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	fragment_shader_barycentric: b32,
}

Physical_Device_Fragment_Shader_Barycentric_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	tri_strip_vertex_order_independent_of_provoking_vertex: b32,
}

Physical_Device_Shader_Subgroup_Uniform_Control_Flow_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_subgroup_uniform_control_flow: b32,
}

Physical_Device_Workgroup_Memory_Explicit_Layout_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	workgroup_memory_explicit_layout: b32,
	workgroup_memory_explicit_layout_scalar_block_layout: b32,
	workgroup_memory_explicit_layout8_bit_access: b32,
	workgroup_memory_explicit_layout16_bit_access: b32,
}

Physical_Device_Ray_Tracing_Maintenance_1Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ray_tracing_maintenance1: b32,
	ray_tracing_pipeline_trace_rays_indirect2: b32,
}

Trace_Rays_Indirect_Command_2 :: struct  {
	raygen_shader_record_address: Device_Address,
	raygen_shader_record_size: Device_Size,
	miss_shader_binding_table_address: Device_Address,
	miss_shader_binding_table_size: Device_Size,
	miss_shader_binding_table_stride: Device_Size,
	hit_shader_binding_table_address: Device_Address,
	hit_shader_binding_table_size: Device_Size,
	hit_shader_binding_table_stride: Device_Size,
	callable_shader_binding_table_address: Device_Address,
	callable_shader_binding_table_size: Device_Size,
	callable_shader_binding_table_stride: Device_Size,
	width: u32,
	height: u32,
	depth: u32,
}

Physical_Device_Shader_Maximal_Reconvergence_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_maximal_reconvergence: b32,
}

Physical_Device_Ray_Tracing_Position_Fetch_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ray_tracing_position_fetch: b32,
}

Physical_Device_Pipeline_Binary_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_binaries: b32,
}

Physical_Device_Pipeline_Binary_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_binary_internal_cache: b32,
	pipeline_binary_internal_cache_control: b32,
	pipeline_binary_prefers_internal_cache: b32,
	pipeline_binary_precompiled_internal_cache: b32,
	pipeline_binary_compressed_data: b32,
}

Device_Pipeline_Binary_Internal_Cache_Control :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	disable_internal_cache: b32,
}

Pipeline_Binary_Key :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	key_size: u32,
	key: [MAX_PIPELINE_BINARY_KEY_SIZE_KHR]u8,
}

Pipeline_Binary_Data :: struct  {
	data_size: int,
	data: [^]u8,
}

Pipeline_Binary_Keys_And_Data :: struct  {
	binary_count: u32,
	pipeline_binary_keys: [^]Pipeline_Binary_Key,
	pipeline_binary_data: ^Pipeline_Binary_Data,
}

Pipeline_Create_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
}

Pipeline_Binary_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	keys_and_data_info: ^Pipeline_Binary_Keys_And_Data,
	pipeline: Pipeline,
	pipeline_create_info: ^Pipeline_Create_Info,
}

Pipeline_Binary_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	binary_count: u32,
	pipeline_binaries: [^]Pipeline_Binary,
}

Release_Captured_Pipeline_Data_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline: Pipeline,
}

Pipeline_Binary_Data_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_binary: Pipeline_Binary,
}

Pipeline_Binary_Handles_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	pipeline_binary_count: u32,
	pipeline_binaries: [^]Pipeline_Binary,
}

Cooperative_Matrix_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	msize: u32,
	nsize: u32,
	ksize: u32,
	atype: Component_Type,
	btype: Component_Type,
	ctype: Component_Type,
	result_type: Component_Type,
	saturating_accumulation: b32,
	scope: Scope,
}

Physical_Device_Cooperative_Matrix_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	cooperative_mat: b32,
	cooperative_mat_robust_buffer_access: b32,
}

Physical_Device_Cooperative_Matrix_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	cooperative_mat_supported_stages: Shader_Stage_Flags,
}

Physical_Device_Compute_Shader_Derivatives_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	compute_derivative_group_quads: b32,
	compute_derivative_group_linear: b32,
}

Physical_Device_Compute_Shader_Derivatives_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	mesh_and_task_shader_derivatives: b32,
}

Video_Decode_Av1_Profile_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_profile: Video_Av1_Profile,
	film_grain_support: b32,
}

Video_Decode_Av1_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_level: Video_Av1_Level,
}

Video_Decode_Av1_Session_Parameters_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_sequence_header: ^Video_Av1_Sequence_Header,
}

Video_Decode_Av1_Picture_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_picture_info: ^Video_Decode_Av1_Picture_Info,
	reference_name_slot_indices: [MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR]i32,
	frame_header_offset: u32,
	tile_count: u32,
	tile_offsets: [^]u32,
	tile_sizes: ^u32,
}

Video_Decode_Av1_Dpb_Slot_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_reference_info: ^Video_Decode_Av1_Reference_Info,
}

Physical_Device_Video_Encode_Av1_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	video_encode_av1: b32,
}

Video_Encode_Av1_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Video_Encode_Av1_Capability_Flags,
	max_level: Video_Av1_Level,
	coded_picture_alignment: Extent_2D,
	max_tiles: Extent_2D,
	min_tile_size: Extent_2D,
	max_tile_size: Extent_2D,
	superblock_sizes: Video_Encode_Av1_Superblock_Size_Flags,
	max_single_reference_count: u32,
	single_reference_name_mask: u32,
	max_unidirectional_compound_reference_count: u32,
	max_unidirectional_compound_group1_reference_count: u32,
	unidirectional_compound_reference_name_mask: u32,
	max_bidirectional_compound_reference_count: u32,
	max_bidirectional_compound_group1_reference_count: u32,
	max_bidirectional_compound_group2_reference_count: u32,
	bidirectional_compound_reference_name_mask: u32,
	max_temporal_layer_count: u32,
	max_spatial_layer_count: u32,
	max_operating_points: u32,
	min_qindex: u32,
	max_qindex: u32,
	prefers_gop_remaining_frames: b32,
	requires_gop_remaining_frames: b32,
	std_syntax_flags: Video_Encode_Av1_Std_Flags,
}

Video_Encode_Av1_Qindex :: struct  {
	intra_qindex: u32,
	predictive_qindex: u32,
	bipredictive_qindex: u32,
}

Video_Encode_Av1_Quality_Level_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	preferred_rate_control_flags: Video_Encode_Av1_Rate_Control_Flags,
	preferred_gop_frame_count: u32,
	preferred_key_frame_period: u32,
	preferred_consecutive_bipredictive_frame_count: u32,
	preferred_temporal_layer_count: u32,
	preferred_constant_qindex: Video_Encode_Av1_Qindex,
	preferred_max_single_reference_count: u32,
	preferred_single_reference_name_mask: u32,
	preferred_max_unidirectional_compound_reference_count: u32,
	preferred_max_unidirectional_compound_group1_reference_count: u32,
	preferred_unidirectional_compound_reference_name_mask: u32,
	preferred_max_bidirectional_compound_reference_count: u32,
	preferred_max_bidirectional_compound_group1_reference_count: u32,
	preferred_max_bidirectional_compound_group2_reference_count: u32,
	preferred_bidirectional_compound_reference_name_mask: u32,
}

Video_Encode_Av1_Session_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_max_level: b32,
	max_level: Video_Av1_Level,
}

Video_Encode_Av1_Session_Parameters_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_sequence_header: ^Video_Av1_Sequence_Header,
	std_decoder_model_info: ^Video_Encode_Av1_Decoder_Model_Info,
	std_operating_point_count: u32,
	std_operating_points: [^]Video_Encode_Av1_Operating_Point_Info,
}

Video_Encode_Av1_Picture_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	prediction_mode: Video_Encode_Av1_Prediction_Mode,
	rate_control_group: Video_Encode_Av1_Rate_Control_Group,
	constant_qindex: u32,
	std_picture_info: ^Video_Encode_Av1_Picture_Info,
	reference_name_slot_indices: [MAX_VIDEO_AV1_REFERENCES_PER_FRAME_KHR]i32,
	primary_reference_cdf_only: b32,
	generate_obu_extension_header: b32,
}

Video_Encode_Av1_Dpb_Slot_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_reference_info: ^Video_Encode_Av1_Reference_Info,
}

Video_Encode_Av1_Profile_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	std_profile: Video_Av1_Profile,
}

Video_Encode_Av1_Frame_Size :: struct  {
	intra_frame_size: u32,
	predictive_frame_size: u32,
	bipredictive_frame_size: u32,
}

Video_Encode_Av1_Gop_Remaining_Frame_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_gop_remaining_frames: b32,
	gop_remaining_intra: u32,
	gop_remaining_predictive: u32,
	gop_remaining_bipredictive: u32,
}

Video_Encode_Av1_Rate_Control_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Video_Encode_Av1_Rate_Control_Flags,
	gop_frame_count: u32,
	key_frame_period: u32,
	consecutive_bipredictive_frame_count: u32,
	temporal_layer_count: u32,
}

Video_Encode_Av1_Rate_Control_Layer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use_min_qindex: b32,
	min_qindex: Video_Encode_Av1_Qindex,
	use_max_qindex: b32,
	max_qindex: Video_Encode_Av1_Qindex,
	use_max_frame_size: b32,
	max_frame_size: Video_Encode_Av1_Frame_Size,
}

Physical_Device_Video_Maintenance_1Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	video_maintenance1: b32,
}

Video_Inline_Query_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	query_pool: Query_Pool,
	first_query: u32,
	query_count: u32,
}

Calibrated_Timestamp_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	time_domain: Time_Domain,
}

Set_Descriptor_Buffer_Offsets_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stage_flags: Shader_Stage_Flags,
	layout: Pipeline_Layout,
	first_set: u32,
	set_count: u32,
	buffer_indices: [^]u32,
	offsets: ^Device_Size,
}

Bind_Descriptor_Buffer_Embedded_Samplers_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stage_flags: Shader_Stage_Flags,
	layout: Pipeline_Layout,
	set: u32,
}

Video_Encode_Quantization_Map_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_quantization_map_extent: Extent_2D,
}

Video_Format_Quantization_Map_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	quantization_map_texel_size: Extent_2D,
}

Video_Encode_Quantization_Map_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	quantization_map: Image_View,
	quantization_map_extent: Extent_2D,
}

Video_Encode_Quantization_Map_Session_Parameters_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	quantization_map_texel_size: Extent_2D,
}

Physical_Device_Video_Encode_Quantization_Map_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	video_encode_quantization_map: b32,
}

Video_Encode_H264Quantization_Map_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_qp_delta: i32,
	max_qp_delta: i32,
}

Video_Encode_H265Quantization_Map_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_qp_delta: i32,
	max_qp_delta: i32,
}

Video_Format_H265Quantization_Map_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	compatible_ctb_sizes: Video_Encode_H265Ctb_Size_Flags,
}

Video_Encode_Av1_Quantization_Map_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_qindex_delta: i32,
	max_qindex_delta: i32,
}

Video_Format_Av1_Quantization_Map_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	compatible_superblock_sizes: Video_Encode_Av1_Superblock_Size_Flags,
}

Physical_Device_Shader_Relaxed_Extended_Instruction_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_relaxed_extended_instruction: b32,
}

Physical_Device_Maintenance_7Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	maintenance7: b32,
}

Physical_Device_Maintenance_7Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	robust_fragment_shading_rate_attachment_access: b32,
	separate_depth_stencil_attachment_access: b32,
	max_descriptor_set_total_uniform_buffers_dynamic: u32,
	max_descriptor_set_total_storage_buffers_dynamic: u32,
	max_descriptor_set_total_buffers_dynamic: u32,
	max_descriptor_set_update_after_bind_total_uniform_buffers_dynamic: u32,
	max_descriptor_set_update_after_bind_total_storage_buffers_dynamic: u32,
	max_descriptor_set_update_after_bind_total_buffers_dynamic: u32,
}

Physical_Device_Layered_Api_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	vendor_id: u32,
	device_id: u32,
	layered_api: Physical_Device_Layered_Api,
	device_name: [MAX_PHYSICAL_DEVICE_NAME_SIZE]byte,
}

Physical_Device_Layered_Api_Properties_List :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	layered_api_count: u32,
	layered_apis: [^]Physical_Device_Layered_Api_Properties,
}

Physical_Device_Layered_Api_Vulkan_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	properties: Physical_Device_Properties_2,
}

Debug_Report_Callback_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Debug_Report_Flags,
	callback: Proc_Debug_Report_Callback,
	user_data: [^]u8,
}

Pipeline_Rasterization_State_Rasterization_Order :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	rasterization_order: Rasterization_Order,
}

Debug_Marker_Object_Name_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	object_type: Debug_Report_Object_Type,
	object: u64,
	object_name: cstring,
}

Debug_Marker_Object_Tag_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	object_type: Debug_Report_Object_Type,
	object: u64,
	tag_name: u64,
	tag_size: int,
	tag: rawptr,
}

Debug_Marker_Marker_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	marker_name: cstring,
	color: [4]f32,
}

Dedicated_Allocation_Image_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	dedicated_allocation: b32,
}

Dedicated_Allocation_Buffer_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	dedicated_allocation: b32,
}

Dedicated_Allocation_Memory_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
	buffer: Buffer,
}

Physical_Device_Transform_Feedback_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	transform_feedback: b32,
	geometry_streams: b32,
}

Physical_Device_Transform_Feedback_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_transform_feedback_streams: u32,
	max_transform_feedback_buffers: u32,
	max_transform_feedback_buffer_size: Device_Size,
	max_transform_feedback_stream_data_size: u32,
	max_transform_feedback_buffer_data_size: u32,
	max_transform_feedback_buffer_data_stride: u32,
	transform_feedback_queries: b32,
	transform_feedback_streams_lines_triangles: b32,
	transform_feedback_rasterization_stream_select: b32,
	transform_feedback_draw: b32,
}

Pipeline_Rasterization_State_Stream_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Rasterization_State_Stream_Create_Flags,
	rasterization_stream: u32,
}

Cu_Module_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	data_size: int,
	data: rawptr,
}

Cu_Module_Texturing_Mode_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	use64bit_texturing: b32,
}

Cu_Function_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	module: Cu_Module,
	name: cstring,
}

Cu_Launch_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	function: Cu_Function,
	grid_dim_x: u32,
	grid_dim_y: u32,
	grid_dim_z: u32,
	block_dim_x: u32,
	block_dim_y: u32,
	block_dim_z: u32,
	shared_mem_bytes: u32,
	param_count: int,
	params: [^]rawptr,
	extra_count: int,
	extras: [^]rawptr,
}

Image_View_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image_view: Image_View,
	descriptor_type: Descriptor_Type,
	sampler: Sampler,
}

Image_View_Address_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	device_address: Device_Address,
	size: Device_Size,
}

Texture_Lodgather_Format_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	supports_texture_gather_lodbias_amd: b32,
}

Shader_Resource_Usage :: struct  {
	num_used_vgprs: u32,
	num_used_sgprs: u32,
	lds_size_per_local_work_group: u32,
	lds_usage_size_in_bytes: int,
	scratch_mem_usage_in_bytes: int,
}

Shader_Statistics_Info :: struct  {
	shader_stage_mask: Shader_Stage_Flags,
	resource_usage: Shader_Resource_Usage,
	num_physical_vgprs: u32,
	num_physical_sgprs: u32,
	num_available_vgprs: u32,
	num_available_sgprs: u32,
	compute_work_group_size: [3]u32,
}

Physical_Device_Corner_Sampled_Image_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	corner_sampled_image: b32,
}

Validation_Flags :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	disabled_validation_check_count: u32,
	disabled_validation_checks: [^]Validation_Check,
}

Image_View_Astcdecode_Mode :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	decode_mode: Format,
}

Physical_Device_Astcdecode_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	decode_mode_shared_exponent: b32,
}

Conditional_Rendering_Begin_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	buffer: Buffer,
	offset: Device_Size,
	flags: Conditional_Rendering_Flags,
}

Physical_Device_Conditional_Rendering_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	conditional_rendering: b32,
	inherited_conditional_rendering: b32,
}

Command_Buffer_Inheritance_Conditional_Rendering_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	conditional_rendering_enable: b32,
}

Viewport_Wscaling :: struct  {
	xcoeff: f32,
	ycoeff: f32,
}

Pipeline_Viewport_Wscaling_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	viewport_wscaling_enable: b32,
	viewport_count: u32,
	viewport_wscalings: [^]Viewport_Wscaling,
}

Display_Power_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	power_state: Display_Power_State,
}

Device_Event_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	device_event: Device_Event_Type,
}

Display_Event_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	display_event: Display_Event_Type,
}

Swapchain_Counter_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	surface_counters: Surface_Counter_Flags,
}

Refresh_Cycle_Duration :: struct  {
	refresh_duration: u64,
}

Past_Presentation_Timing :: struct  {
	present_id: u32,
	desired_present_time: u64,
	actual_present_time: u64,
	earliest_present_time: u64,
	present_margin: u64,
}

Present_Time :: struct  {
	present_id: u32,
	desired_present_time: u64,
}

Present_Times_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain_count: u32,
	times: [^]Present_Time,
}

Physical_Device_Multiview_Per_View_Attributes_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	per_view_position_all_components: b32,
}

Multiview_Per_View_Attributes_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	per_view_attributes: b32,
	per_view_attributes_position_xonly: b32,
}

Viewport_Swizzle :: struct  {
	x: Viewport_Coordinate_Swizzle,
	y: Viewport_Coordinate_Swizzle,
	z: Viewport_Coordinate_Swizzle,
	w: Viewport_Coordinate_Swizzle,
}

Pipeline_Viewport_Swizzle_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Viewport_Swizzle_State_Create_Flags,
	viewport_count: u32,
	viewport_swizzles: [^]Viewport_Swizzle,
}

Physical_Device_Discard_Rectangle_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_discard_rectangles: u32,
}

Pipeline_Discard_Rectangle_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Discard_Rectangle_State_Create_Flags,
	discard_rectangle_mode: Discard_Rectangle_Mode,
	discard_rectangle_count: u32,
	discard_rectangles: [^]Rect_2D,
}

Physical_Device_Conservative_Rasterization_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	primitive_overestimation_size: f32,
	max_extra_primitive_overestimation_size: f32,
	extra_primitive_overestimation_size_granularity: f32,
	primitive_underestimation: b32,
	conservative_point_and_line_rasterization: b32,
	degenerate_triangles_rasterized: b32,
	degenerate_lines_rasterized: b32,
	fully_covered_fragment_shader_input_variable: b32,
	conservative_rasterization_post_depth_coverage: b32,
}

Pipeline_Rasterization_Conservative_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Rasterization_Conservative_State_Create_Flags,
	conservative_rasterization_mode: Conservative_Rasterization_Mode,
	extra_primitive_overestimation_size: f32,
}

Physical_Device_Depth_Clip_Enable_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	depth_clip_enable: b32,
}

Pipeline_Rasterization_Depth_Clip_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Rasterization_Depth_Clip_State_Create_Flags,
	depth_clip_enable: b32,
}

Xycolor :: struct  {
	x: f32,
	y: f32,
}

Hdr_Metadata :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	display_primary_red: Xycolor,
	display_primary_green: Xycolor,
	display_primary_blue: Xycolor,
	white_point: Xycolor,
	max_luminance: f32,
	min_luminance: f32,
	max_content_light_level: f32,
	max_frame_average_light_level: f32,
}

Physical_Device_Relaxed_Line_Rasterization_Features_Img :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	relaxed_line_rasterization: b32,
}

Debug_Utils_Label :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	label_name: cstring,
	color: [4]f32,
}

Debug_Utils_Object_Name_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	object_type: Object_Type,
	object_handle: u64,
	object_name: cstring,
}

Debug_Utils_Messenger_Callback_Data :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Debug_Utils_Messenger_Callback_Data_Flags,
	message_id_name: cstring,
	message_id_number: i32,
	message: cstring,
	queue_label_count: u32,
	queue_labels: [^]Debug_Utils_Label,
	cmd_buf_label_count: u32,
	cmd_buf_labels: [^]Debug_Utils_Label,
	object_count: u32,
	objects: [^]Debug_Utils_Object_Name_Info,
}

Debug_Utils_Messenger_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Debug_Utils_Messenger_Create_Flags,
	message_severity: Debug_Utils_Message_Severity_Flags,
	message_type: Debug_Utils_Message_Type_Flags,
	user_callback: Proc_Debug_Utils_Messenger_Callback,
	user_data: [^]u8,
}

Debug_Utils_Object_Tag_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	object_type: Object_Type,
	object_handle: u64,
	tag_name: u64,
	tag_size: int,
	tag: rawptr,
}

Attachment_Sample_Count_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	color_attachment_count: u32,
	color_attachment_samples: [^]Sample_Count_Flags,
	depth_stencil_attachment_samples: Sample_Count_Flags,
}

Sample_Location :: struct  {
	x: f32,
	y: f32,
}

Sample_Locations_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	sample_locations_per_pixel: Sample_Count_Flags,
	sample_location_grid_size: Extent_2D,
	sample_locations_count: u32,
	sample_locations: [^]Sample_Location,
}

Attachment_Sample_Locations :: struct  {
	attachment_index: u32,
	sample_locations_info: Sample_Locations_Info,
}

Subpass_Sample_Locations :: struct  {
	subpass_index: u32,
	sample_locations_info: Sample_Locations_Info,
}

Render_Pass_Sample_Locations_Begin_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	attachment_initial_sample_locations_count: u32,
	attachment_initial_sample_locations: [^]Attachment_Sample_Locations,
	post_subpass_sample_locations_count: u32,
	post_subpass_sample_locations: [^]Subpass_Sample_Locations,
}

Pipeline_Sample_Locations_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	sample_locations_enable: b32,
	sample_locations_info: Sample_Locations_Info,
}

Physical_Device_Sample_Locations_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	sample_location_sample_counts: Sample_Count_Flags,
	max_sample_location_grid_size: Extent_2D,
	sample_location_coordinate_range: [2]f32,
	sample_location_sub_pixel_bits: u32,
	variable_sample_locations: b32,
}

Multisample_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_sample_location_grid_size: Extent_2D,
}

Physical_Device_Blend_Operation_Advanced_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	advanced_blend_coherent_operations: b32,
}

Physical_Device_Blend_Operation_Advanced_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	advanced_blend_max_color_attachments: u32,
	advanced_blend_independent_blend: b32,
	advanced_blend_non_premultiplied_src_color: b32,
	advanced_blend_non_premultiplied_dst_color: b32,
	advanced_blend_correlated_overlap: b32,
	advanced_blend_all_operations: b32,
}

Pipeline_Color_Blend_Advanced_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src_premultiplied: b32,
	dst_premultiplied: b32,
	blend_overlap: Blend_Overlap,
}

Pipeline_Coverage_To_Color_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Coverage_To_Color_State_Create_Flags,
	coverage_to_color_enable: b32,
	coverage_to_color_location: u32,
}

Pipeline_Coverage_Modulation_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Coverage_Modulation_State_Create_Flags,
	coverage_modulation_mode: Coverage_Modulation_Mode,
	coverage_modulation_table_enable: b32,
	coverage_modulation_table_count: u32,
	coverage_modulation_table: ^f32,
}

Physical_Device_Shader_Smbuiltins_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_smcount: u32,
	shader_warps_per_sm: u32,
}

Physical_Device_Shader_Smbuiltins_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_smbuiltins: b32,
}

Drm_Format_Modifier_Properties :: struct  {
	drm_format_modifier: u64,
	drm_format_modifier_plane_count: u32,
	drm_format_modifier_tiling_features: Format_Feature_Flags,
}

Drm_Format_Modifier_Properties_List :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	drm_format_modifier_count: u32,
	drm_format_modifier_properties: [^]Drm_Format_Modifier_Properties,
}

Physical_Device_Image_Drm_Format_Modifier_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	drm_format_modifier: u64,
	sharing_mode: Sharing_Mode,
	queue_family_index_count: u32,
	queue_family_indices: [^]u32,
}

Image_Drm_Format_Modifier_List_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	drm_format_modifier_count: u32,
	drm_format_modifiers: [^]u64,
}

Image_Drm_Format_Modifier_Explicit_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	drm_format_modifier: u64,
	drm_format_modifier_plane_count: u32,
	plane_layouts: [^]Subresource_Layout,
}

Image_Drm_Format_Modifier_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	drm_format_modifier: u64,
}

Drm_Format_Modifier_Properties_2 :: struct  {
	drm_format_modifier: u64,
	drm_format_modifier_plane_count: u32,
	drm_format_modifier_tiling_features: Format_Feature_Flags_2,
}

Drm_Format_Modifier_Properties_List_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	drm_format_modifier_count: u32,
	drm_format_modifier_properties: [^]Drm_Format_Modifier_Properties_2,
}

Validation_Cache_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Validation_Cache_Create_Flags,
	initial_data_size: int,
	initial_data: rawptr,
}

Shader_Module_Validation_Cache_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	validation_cache: Validation_Cache,
}

Shading_Rate_Palette :: struct  {
	shading_rate_palette_entry_count: u32,
	shading_rate_palette_entries: [^]Shading_Rate_Palette_Entry,
}

Pipeline_Viewport_Shading_Rate_Image_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	shading_rate_image_enable: b32,
	viewport_count: u32,
	shading_rate_palettes: [^]Shading_Rate_Palette,
}

Physical_Device_Shading_Rate_Image_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shading_rate_image: b32,
	shading_rate_coarse_sample_order: b32,
}

Physical_Device_Shading_Rate_Image_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shading_rate_texel_size: Extent_2D,
	shading_rate_palette_size: u32,
	shading_rate_max_coarse_samples: u32,
}

Coarse_Sample_Location :: struct  {
	pixel_x: u32,
	pixel_y: u32,
	sample: u32,
}

Coarse_Sample_Order_Custom :: struct  {
	shading_rate: Shading_Rate_Palette_Entry,
	sample_count: u32,
	sample_location_count: u32,
	sample_locations: [^]Coarse_Sample_Location,
}

Pipeline_Viewport_Coarse_Sample_Order_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	sample_order_type: Coarse_Sample_Order_Type,
	custom_sample_order_count: u32,
	custom_sample_orders: [^]Coarse_Sample_Order_Custom,
}

Ray_Tracing_Shader_Group_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Ray_Tracing_Shader_Group_Type,
	general_shader: u32,
	closest_hit_shader: u32,
	any_hit_shader: u32,
	intersection_shader: u32,
}

Ray_Tracing_Pipeline_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Create_Flags,
	stage_count: u32,
	stages: [^]Pipeline_Shader_Stage_Create_Info,
	group_count: u32,
	groups: [^]Ray_Tracing_Shader_Group_Create_Info,
	max_recursion_depth: u32,
	layout: Pipeline_Layout,
	base_pipeline_handle: Pipeline,
	base_pipeline_index: i32,
}

Geometry_Triangles :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	vertex_data: Buffer,
	vertex_offset: Device_Size,
	vertex_count: u32,
	vertex_stride: Device_Size,
	vertex_format: Format,
	index_data: Buffer,
	index_offset: Device_Size,
	index_count: u32,
	index_type: Index_Type,
	transform_data: Buffer,
	transform_offset: Device_Size,
}

Geometry_Aabb :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	aabb_data: Buffer,
	num_aabbs: u32,
	stride: u32,
	offset: Device_Size,
}

Geometry_Data :: struct  {
	triangles: Geometry_Triangles,
	aabbs: Geometry_Aabb,
}

Geometry :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	geometry_type: Geometry_Type,
	geometry: Geometry_Data,
	flags: Geometry_Flags,
}

Acceleration_Structure_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Acceleration_Structure_Type,
	flags: Build_Acceleration_Structure_Flags,
	instance_count: u32,
	geometry_count: u32,
	geometries: [^]Geometry,
}

Acceleration_Structure_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	compacted_size: Device_Size,
	info: Acceleration_Structure_Info,
}

Bind_Acceleration_Structure_Memory_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	acceleration_structure: Acceleration_Structure,
	memory: Device_Memory,
	memory_offset: Device_Size,
	device_index_count: u32,
	device_indices: [^]u32,
}

Write_Descriptor_Set_Acceleration_Structure :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	acceleration_structure_count: u32,
	acceleration_structures: [^]Acceleration_Structure,
}

Acceleration_Structure_Memory_Requirements_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Acceleration_Structure_Memory_Requirements_Type,
	acceleration_structure: Acceleration_Structure,
}

Physical_Device_Ray_Tracing_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_group_handle_size: u32,
	max_recursion_depth: u32,
	max_shader_group_stride: u32,
	shader_group_base_alignment: u32,
	max_geometry_count: u64,
	max_instance_count: u64,
	max_triangle_count: u64,
	max_descriptor_set_acceleration_structures: u32,
}

Transform_Matrix :: struct  {
}

Aabb_Positions :: struct  {
	min_x: f32,
	min_y: f32,
	min_z: f32,
	max_x: f32,
	max_y: f32,
	max_z: f32,
}

Acceleration_Structure_Instance :: u64
Physical_Device_Representative_Fragment_Test_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	representative_fragment_test: b32,
}

Pipeline_Representative_Fragment_Test_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	representative_fragment_test_enable: b32,
}

Physical_Device_Image_View_Image_Format_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_view_type: Image_View_Type,
}

Filter_Cubic_Image_View_Image_Format_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	filter_cubic: b32,
	filter_cubic_minmax: b32,
}

Import_Memory_Host_Pointer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_type: External_Memory_Handle_Type_Flags,
	host_pointer: [^]u8,
}

Memory_Host_Pointer_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_type_bits: u32,
}

Physical_Device_External_Memory_Host_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_imported_host_pointer_alignment: Device_Size,
}

Pipeline_Compiler_Control_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	compiler_control_flags: Pipeline_Compiler_Control_Flags,
}

Physical_Device_Shader_Core_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_engine_count: u32,
	shader_arrays_per_engine_count: u32,
	compute_units_per_shader_array: u32,
	simd_per_compute_unit: u32,
	wavefronts_per_simd: u32,
	wavefront_size: u32,
	sgprs_per_simd: u32,
	min_sgpr_allocation: u32,
	max_sgpr_allocation: u32,
	sgpr_allocation_granularity: u32,
	vgprs_per_simd: u32,
	min_vgpr_allocation: u32,
	max_vgpr_allocation: u32,
	vgpr_allocation_granularity: u32,
}

Device_Memory_Overallocation_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	overallocation_behavior: Memory_Overallocation_Behavior,
}

Physical_Device_Mesh_Shader_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	task_shader: b32,
	mesh_shader: b32,
}

Physical_Device_Mesh_Shader_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_draw_mesh_tasks_count: u32,
	max_task_work_group_invocations: u32,
	max_task_work_group_size: [3]u32,
	max_task_total_memory_size: u32,
	max_task_output_count: u32,
	max_mesh_work_group_invocations: u32,
	max_mesh_work_group_size: [3]u32,
	max_mesh_total_memory_size: u32,
	max_mesh_output_vertices: u32,
	max_mesh_output_primitives: u32,
	max_mesh_multiview_view_count: u32,
	mesh_output_per_vertex_granularity: u32,
	mesh_output_per_primitive_granularity: u32,
}

Draw_Mesh_Tasks_Indirect_Command :: struct  {
	task_count: u32,
	first_task: u32,
}

Physical_Device_Shader_Image_Footprint_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_footprint: b32,
}

Pipeline_Viewport_Exclusive_Scissor_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	exclusive_scissor_count: u32,
	exclusive_scissors: [^]Rect_2D,
}

Physical_Device_Exclusive_Scissor_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	exclusive_scissor: b32,
}

Queue_Family_Checkpoint_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	checkpoint_execution_stage_mask: Pipeline_Stage_Flags,
}

Checkpoint_Data :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	stage: Pipeline_Stage_Flags,
	checkpoint_marker: [^]u8,
}

Queue_Family_Checkpoint_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	checkpoint_execution_stage_mask: Pipeline_Stage_Flags_2,
}

Checkpoint_Data_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	stage: Pipeline_Stage_Flags_2,
	checkpoint_marker: [^]u8,
}

Physical_Device_Shader_Integer_Functions_2Features_Intel :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_integer_functions2: b32,
}

Performance_Value_Data_Intel :: struct #raw_union {
	value32: u32,
	value64: u64,
	value_float: f32,
	value_bool: b32,
	value_string: cstring,
}

Performance_Value_Intel :: struct  {
	type: Performance_Value_Type_Intel,
	data: Performance_Value_Data_Intel,
}

Initialize_Performance_Api_Info_Intel :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	user_data: [^]u8,
}

Query_Pool_Performance_Query_Create_Info_Intel :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	performance_counters_sampling: Query_Pool_Sampling_Mode_Intel,
}

Performance_Marker_Info_Intel :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	marker: u64,
}

Performance_Stream_Marker_Info_Intel :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	marker: u32,
}

Performance_Override_Info_Intel :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Performance_Override_Type_Intel,
	enable: b32,
	parameter: u64,
}

Performance_Configuration_Acquire_Info_Intel :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Performance_Configuration_Type_Intel,
}

Physical_Device_Pcibus_Info_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pci_domain: u32,
	pci_bus: u32,
	pci_device: u32,
	pci_function: u32,
}

Display_Native_Hdr_Surface_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	local_dimming_support: b32,
}

Swapchain_Display_Native_Hdr_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	local_dimming_enable: b32,
}

Physical_Device_Fragment_Density_Map_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	fragment_density_map: b32,
	fragment_density_map_dynamic: b32,
	fragment_density_map_non_subsampled_images: b32,
}

Physical_Device_Fragment_Density_Map_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_fragment_density_texel_size: Extent_2D,
	max_fragment_density_texel_size: Extent_2D,
	fragment_density_invocations: b32,
}

Render_Pass_Fragment_Density_Map_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	fragment_density_map_attachment: Attachment_Reference,
}

Rendering_Fragment_Density_Map_Attachment_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image_view: Image_View,
	image_layout: Image_Layout,
}

Physical_Device_Shader_Core_Properties_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_core_features: Shader_Core_Properties_Flags,
	active_compute_unit_count: u32,
}

Physical_Device_Coherent_Memory_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	device_coherent_memory: b32,
}

Physical_Device_Shader_Image_Atomic_Int_64Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_image_int64_atomics: b32,
	sparse_image_int64_atomics: b32,
}

Physical_Device_Memory_Budget_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	heap_budget: [MAX_MEMORY_HEAPS]Device_Size,
	heap_usage: [MAX_MEMORY_HEAPS]Device_Size,
}

Physical_Device_Memory_Priority_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_priority: b32,
}

Memory_Priority_Allocate_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	priority: f32,
}

Physical_Device_Dedicated_Allocation_Image_Aliasing_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	dedicated_allocation_image_aliasing: b32,
}

Buffer_Device_Address_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	device_address: Device_Address,
}

Validation_Features :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	enabled_validation_feature_count: u32,
	enabled_validation_features: [^]Validation_Feature_Enable,
	disabled_validation_feature_count: u32,
	disabled_validation_features: [^]Validation_Feature_Disable,
}

Physical_Device_Coverage_Reduction_Mode_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	coverage_reduction_mode: b32,
}

Pipeline_Coverage_Reduction_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Pipeline_Coverage_Reduction_State_Create_Flags,
	coverage_reduction_mode: Coverage_Reduction_Mode,
}

Framebuffer_Mixed_Samples_Combination :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	coverage_reduction_mode: Coverage_Reduction_Mode,
	rasterization_samples: Sample_Count_Flags,
	depth_stencil_samples: Sample_Count_Flags,
	color_samples: Sample_Count_Flags,
}

Physical_Device_Fragment_Shader_Interlock_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	fragment_shader_sample_interlock: b32,
	fragment_shader_pixel_interlock: b32,
	fragment_shader_shading_rate_interlock: b32,
}

Physical_Device_Ycbcr_Image_Arrays_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ycbcr_image_arrays: b32,
}

Physical_Device_Provoking_Vertex_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	provoking_vertex_last: b32,
	transform_feedback_preserves_provoking_vertex: b32,
}

Physical_Device_Provoking_Vertex_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	provoking_vertex_mode_per_pipeline: b32,
	transform_feedback_preserves_triangle_fan_provoking_vertex: b32,
}

Pipeline_Rasterization_Provoking_Vertex_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	provoking_vertex_mode: Provoking_Vertex_Mode,
}

Headless_Surface_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Headless_Surface_Create_Flags,
}

Physical_Device_Shader_Atomic_Float_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_buffer_float32_atomics: b32,
	shader_buffer_float32_atomic_add: b32,
	shader_buffer_float64_atomics: b32,
	shader_buffer_float64_atomic_add: b32,
	shader_shared_float32_atomics: b32,
	shader_shared_float32_atomic_add: b32,
	shader_shared_float64_atomics: b32,
	shader_shared_float64_atomic_add: b32,
	shader_image_float32_atomics: b32,
	shader_image_float32_atomic_add: b32,
	sparse_image_float32_atomics: b32,
	sparse_image_float32_atomic_add: b32,
}

Physical_Device_Extended_Dynamic_State_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	extended_dynamic_state: b32,
}

Physical_Device_Map_Memory_Placed_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_map_placed: b32,
	memory_map_range_placed: b32,
	memory_unmap_reserve: b32,
}

Physical_Device_Map_Memory_Placed_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_placed_memory_map_alignment: Device_Size,
}

Memory_Map_Placed_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	placed_address: [^]u8,
}

Physical_Device_Shader_Atomic_Float_2Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_buffer_float16_atomics: b32,
	shader_buffer_float16_atomic_add: b32,
	shader_buffer_float16_atomic_min_max: b32,
	shader_buffer_float32_atomic_min_max: b32,
	shader_buffer_float64_atomic_min_max: b32,
	shader_shared_float16_atomics: b32,
	shader_shared_float16_atomic_add: b32,
	shader_shared_float16_atomic_min_max: b32,
	shader_shared_float32_atomic_min_max: b32,
	shader_shared_float64_atomic_min_max: b32,
	shader_image_float32_atomic_min_max: b32,
	sparse_image_float32_atomic_min_max: b32,
}

Surface_Present_Mode :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_mode: Present_Mode,
}

Surface_Present_Scaling_Capabilities :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	supported_present_scaling: Present_Scaling_Flags,
	supported_present_gravity_x: Present_Gravity_Flags,
	supported_present_gravity_y: Present_Gravity_Flags,
	min_scaled_image_extent: Extent_2D,
	max_scaled_image_extent: Extent_2D,
}

Surface_Present_Mode_Compatibility :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_mode_count: u32,
	present_modes: [^]Present_Mode,
}

Physical_Device_Swapchain_Maintenance_1Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	swapchain_maintenance1: b32,
}

Swapchain_Present_Fence_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain_count: u32,
	fences: [^]Fence,
}

Swapchain_Present_Modes_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	present_mode_count: u32,
	present_modes: [^]Present_Mode,
}

Swapchain_Present_Mode_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain_count: u32,
	present_modes: [^]Present_Mode,
}

Swapchain_Present_Scaling_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	scaling_behavior: Present_Scaling_Flags,
	present_gravity_x: Present_Gravity_Flags,
	present_gravity_y: Present_Gravity_Flags,
}

Release_Swapchain_Images_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	swapchain: Swapchain,
	image_index_count: u32,
	image_indices: [^]u32,
}

Physical_Device_Device_Generated_Commands_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_graphics_shader_group_count: u32,
	max_indirect_sequence_count: u32,
	max_indirect_commands_token_count: u32,
	max_indirect_commands_stream_count: u32,
	max_indirect_commands_token_offset: u32,
	max_indirect_commands_stream_stride: u32,
	min_sequences_count_buffer_offset_alignment: u32,
	min_sequences_index_buffer_offset_alignment: u32,
	min_indirect_commands_buffer_offset_alignment: u32,
}

Physical_Device_Device_Generated_Commands_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	device_generated_commands: b32,
}

Graphics_Shader_Group_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stage_count: u32,
	stages: [^]Pipeline_Shader_Stage_Create_Info,
	vertex_input_state: ^Pipeline_Vertex_Input_State_Create_Info,
	tessellation_state: ^Pipeline_Tessellation_State_Create_Info,
}

Graphics_Pipeline_Shader_Groups_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	group_count: u32,
	groups: [^]Graphics_Shader_Group_Create_Info,
	pipeline_count: u32,
	pipelines: [^]Pipeline,
}

Bind_Shader_Group_Indirect_Command :: struct  {
	group_index: u32,
}

Bind_Index_Buffer_Indirect_Command :: struct  {
	buffer_address: Device_Address,
	size: u32,
	index_type: Index_Type,
}

Bind_Vertex_Buffer_Indirect_Command :: struct  {
	buffer_address: Device_Address,
	size: u32,
	stride: u32,
}

Set_State_Flags_Indirect_Command :: struct  {
	data: u32,
}

Indirect_Commands_Stream :: struct  {
	buffer: Buffer,
	offset: Device_Size,
}

Indirect_Commands_Layout_Token :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	token_type: Indirect_Commands_Token_Type,
	stream: u32,
	offset: u32,
	vertex_binding_unit: u32,
	vertex_dynamic_stride: b32,
	pushconstant_pipeline_layout: Pipeline_Layout,
	pushconstant_shader_stage_flags: Shader_Stage_Flags,
	pushconstant_offset: u32,
	pushconstant_size: u32,
	indirect_state_flags: Indirect_State_Flags,
	index_type_count: u32,
	index_types: [^]Index_Type,
	index_type_values: ^u32,
}

Indirect_Commands_Layout_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Indirect_Commands_Layout_Usage_Flags,
	pipeline_bind_point: Pipeline_Bind_Point,
	token_count: u32,
	tokens: [^]Indirect_Commands_Layout_Token,
	stream_count: u32,
	stream_strides: [^]u32,
}

Generated_Commands_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	pipeline_bind_point: Pipeline_Bind_Point,
	pipeline: Pipeline,
	indirect_commands_layout: Indirect_Commands_Layout,
	stream_count: u32,
	streams: [^]Indirect_Commands_Stream,
	sequences_count: u32,
	preprocess_buffer: Buffer,
	preprocess_offset: Device_Size,
	preprocess_size: Device_Size,
	sequences_count_buffer: Buffer,
	sequences_count_offset: Device_Size,
	sequences_index_buffer: Buffer,
	sequences_index_offset: Device_Size,
}

Generated_Commands_Memory_Requirements_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	pipeline_bind_point: Pipeline_Bind_Point,
	pipeline: Pipeline,
	indirect_commands_layout: Indirect_Commands_Layout,
	max_sequences_count: u32,
}

Physical_Device_Inherited_Viewport_Scissor_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	inherited_viewport_scissor_2d: b32,
}

Command_Buffer_Inheritance_Viewport_Scissor_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	viewport_scissor_2d: b32,
	viewport_depth_count: u32,
	viewport_depths: [^]Viewport,
}

Physical_Device_Texel_Buffer_Alignment_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	texel_buffer_alignment: b32,
}

Render_Pass_Transform_Begin_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	transform: Surface_Transform_Flags,
}

Command_Buffer_Inheritance_Render_Pass_Transform_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	transform: Surface_Transform_Flags,
	render_area: Rect_2D,
}

Physical_Device_Depth_Bias_Control_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	depth_bias_control: b32,
	least_representable_value_force_unorm_representation: b32,
	float_representation: b32,
	depth_bias_exact: b32,
}

Depth_Bias_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	depth_bias_constant_factor: f32,
	depth_bias_clamp: f32,
	depth_bias_slope_factor: f32,
}

Depth_Bias_Representation_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	depth_bias_representation: Depth_Bias_Representation,
	depth_bias_exact: b32,
}

Physical_Device_Device_Memory_Report_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	device_memory_report: b32,
}

Device_Memory_Report_Callback_Data :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Device_Memory_Report_Flags,
	type: Device_Memory_Report_Event_Type,
	memory_object_id: u64,
	size: Device_Size,
	object_type: Object_Type,
	object_handle: u64,
	heap_index: u32,
}

Device_Device_Memory_Report_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Device_Memory_Report_Flags,
	user_callback: Proc_Device_Memory_Report_Callback,
	user_data: [^]u8,
}

Physical_Device_Robustness_2Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	robust_buffer_access2: b32,
	robust_image_access2: b32,
	null_descriptor: b32,
}

Physical_Device_Robustness_2Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	robust_storage_buffer_access_size_alignment: Device_Size,
	robust_uniform_buffer_access_size_alignment: Device_Size,
}

Sampler_Custom_Border_Color_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	custom_border_color: Clear_Color_Value,
	format: Format,
}

Physical_Device_Custom_Border_Color_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_custom_border_color_samplers: u32,
}

Physical_Device_Custom_Border_Color_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	custom_border_colors: b32,
	custom_border_color_without_format: b32,
}

Physical_Device_Present_Barrier_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_barrier: b32,
}

Surface_Capabilities_Present_Barrier :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_barrier_supported: b32,
}

Swapchain_Present_Barrier_Create_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_barrier_enable: b32,
}

Physical_Device_Diagnostics_Config_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	diagnostics_config: b32,
}

Device_Diagnostics_Config_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Device_Diagnostics_Config_Flags,
}

Cuda_Module_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	data_size: int,
	data: rawptr,
}

Cuda_Function_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	module: Cuda_Module,
	name: cstring,
}

Cuda_Launch_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	function: Cuda_Function,
	grid_dim_x: u32,
	grid_dim_y: u32,
	grid_dim_z: u32,
	block_dim_x: u32,
	block_dim_y: u32,
	block_dim_z: u32,
	shared_mem_bytes: u32,
	param_count: int,
	params: [^]rawptr,
	extra_count: int,
	extras: [^]rawptr,
}

Physical_Device_Cuda_Kernel_Launch_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	cuda_kernel_launch_features: b32,
}

Physical_Device_Cuda_Kernel_Launch_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	compute_capability_minor: u32,
	compute_capability_major: u32,
}

Query_Low_Latency_Support :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	queried_low_latency_data: [^]u8,
}

Physical_Device_Descriptor_Buffer_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	combined_image_sampler_descriptor_single_array: b32,
	bufferless_push_descriptors: b32,
	allow_sampler_image_view_post_submit_creation: b32,
	descriptor_buffer_offset_alignment: Device_Size,
	max_descriptor_buffer_bindings: u32,
	max_resource_descriptor_buffer_bindings: u32,
	max_sampler_descriptor_buffer_bindings: u32,
	max_embedded_immutable_sampler_bindings: u32,
	max_embedded_immutable_samplers: u32,
	buffer_capture_replay_descriptor_data_size: int,
	image_capture_replay_descriptor_data_size: int,
	image_view_capture_replay_descriptor_data_size: int,
	sampler_capture_replay_descriptor_data_size: int,
	acceleration_structure_capture_replay_descriptor_data_size: int,
	sampler_descriptor_size: int,
	combined_image_sampler_descriptor_size: int,
	sampled_image_descriptor_size: int,
	storage_image_descriptor_size: int,
	uniform_texel_buffer_descriptor_size: int,
	robust_uniform_texel_buffer_descriptor_size: int,
	storage_texel_buffer_descriptor_size: int,
	robust_storage_texel_buffer_descriptor_size: int,
	uniform_buffer_descriptor_size: int,
	robust_uniform_buffer_descriptor_size: int,
	storage_buffer_descriptor_size: int,
	robust_storage_buffer_descriptor_size: int,
	input_attachment_descriptor_size: int,
	acceleration_structure_descriptor_size: int,
	max_sampler_descriptor_buffer_range: Device_Size,
	max_resource_descriptor_buffer_range: Device_Size,
	sampler_descriptor_buffer_address_space_size: Device_Size,
	resource_descriptor_buffer_address_space_size: Device_Size,
	descriptor_buffer_address_space_size: Device_Size,
}

Physical_Device_Descriptor_Buffer_Density_Map_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	combined_image_sampler_density_map_descriptor_size: int,
}

Physical_Device_Descriptor_Buffer_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	descriptor_buffer: b32,
	descriptor_buffer_capture_replay: b32,
	descriptor_buffer_image_layout_ignored: b32,
	descriptor_buffer_push_descriptors: b32,
}

Descriptor_Address_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	address: Device_Address,
	range: Device_Size,
	format: Format,
}

Descriptor_Buffer_Binding_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	address: Device_Address,
	usage: Buffer_Usage_Flags,
}

Descriptor_Buffer_Binding_Push_Descriptor_Buffer_Handle :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	buffer: Buffer,
}

Descriptor_Data :: struct #raw_union {
	sampler: ^Sampler,
	combined_image_sampler: ^Descriptor_Image_Info,
	input_attachment_image: ^Descriptor_Image_Info,
	sampled_image: ^Descriptor_Image_Info,
	storage_image: ^Descriptor_Image_Info,
	uniform_texel_buffer: ^Descriptor_Address_Info,
	storage_texel_buffer: ^Descriptor_Address_Info,
	uniform_buffer: ^Descriptor_Address_Info,
	storage_buffer: ^Descriptor_Address_Info,
	acceleration_structure: Device_Address,
}

Descriptor_Get_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Descriptor_Type,
	data: Descriptor_Data,
}

Buffer_Capture_Descriptor_Data_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	buffer: Buffer,
}

Image_Capture_Descriptor_Data_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
}

Image_View_Capture_Descriptor_Data_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image_view: Image_View,
}

Sampler_Capture_Descriptor_Data_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	sampler: Sampler,
}

Opaque_Capture_Descriptor_Data_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	opaque_capture_descriptor_data: rawptr,
}

Acceleration_Structure_Capture_Descriptor_Data_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	acceleration_structure: Acceleration_Structure,
	acceleration_structure_nv: Acceleration_Structure,
}

Physical_Device_Graphics_Pipeline_Library_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	graphics_pipeline_library: b32,
}

Physical_Device_Graphics_Pipeline_Library_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	graphics_pipeline_library_fast_linking: b32,
	graphics_pipeline_library_independent_interpolation_decoration: b32,
}

Graphics_Pipeline_Library_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Graphics_Pipeline_Library_Flags,
}

Physical_Device_Shader_Early_And_Late_Fragment_Tests_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_early_and_late_fragment_tests: b32,
}

Physical_Device_Fragment_Shading_Rate_Enums_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	fragment_shading_rate_enums: b32,
	supersample_fragment_shading_rates: b32,
	no_invocation_fragment_shading_rates: b32,
}

Physical_Device_Fragment_Shading_Rate_Enums_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_fragment_shading_rate_invocation_count: Sample_Count_Flags,
}

Pipeline_Fragment_Shading_Rate_Enum_State_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	shading_rate_type: Fragment_Shading_Rate_Type,
	shading_rate: Fragment_Shading_Rate,
	combiner_ops: [2]Fragment_Shading_Rate_Combiner_Op,
}

Device_Or_Host_Address_Const :: struct #raw_union {
	device_address: Device_Address,
	host_address: rawptr,
}

Acceleration_Structure_Geometry_Motion_Triangles_Data :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	vertex_data: Device_Or_Host_Address_Const,
}

Acceleration_Structure_Motion_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	max_instances: u32,
	flags: Acceleration_Structure_Motion_Info_Flags,
}

Acceleration_Structure_Matrix_Motion_Instance :: u64
Srtdata :: struct  {
	sx: f32,
	a: f32,
	b: f32,
	pvx: f32,
	sy: f32,
	c: f32,
	pvy: f32,
	sz: f32,
	pvz: f32,
	qx: f32,
	qy: f32,
	qz: f32,
	qw: f32,
	tx: f32,
	ty: f32,
	tz: f32,
}

Acceleration_Structure_Srtmotion_Instance :: u64
Acceleration_Structure_Motion_Instance_Data :: struct #raw_union {
	static_instance: Acceleration_Structure_Instance,
	mat_motion_instance: Acceleration_Structure_Matrix_Motion_Instance,
	srt_motion_instance: Acceleration_Structure_Srtmotion_Instance,
}

Acceleration_Structure_Motion_Instance :: struct  {
	type: Acceleration_Structure_Motion_Instance_Type,
	flags: Acceleration_Structure_Motion_Instance_Flags,
	data: Acceleration_Structure_Motion_Instance_Data,
}

Physical_Device_Ray_Tracing_Motion_Blur_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ray_tracing_motion_blur: b32,
	ray_tracing_motion_blur_pipeline_trace_rays_indirect: b32,
}

Physical_Device_Ycbcr_2Plane_444Formats_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ycbcr2plane444_formats: b32,
}

Physical_Device_Fragment_Density_Map_2Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	fragment_density_map_deferred: b32,
}

Physical_Device_Fragment_Density_Map_2Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	subsampled_loads: b32,
	subsampled_coarse_reconstruction_early_access: b32,
	max_subsampled_array_layers: u32,
	max_descriptor_set_subsampled_samplers: u32,
}

Copy_Command_Transform_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	transform: Surface_Transform_Flags,
}

Physical_Device_Image_Compression_Control_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_compression_control: b32,
}

Image_Compression_Control :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Image_Compression_Flags,
	compression_control_plane_count: u32,
	fixed_rate_flags: [^]Image_Compression_Fixed_Rate_Flags,
}

Image_Compression_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_compression_flags: Image_Compression_Flags,
	image_compression_fixed_rate_flags: Image_Compression_Fixed_Rate_Flags,
}

Physical_Device_Attachment_Feedback_Loop_Layout_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	attachment_feedback_loop_layout: b32,
}

Physical_Device_4444Formats_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	format_a4_r4_g4_b4: b32,
	format_a4_b4_g4_r4: b32,
}

Physical_Device_Fault_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	device_fault: b32,
	device_fault_vendor_binary: b32,
}

Device_Fault_Counts :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	address_info_count: u32,
	vendor_info_count: u32,
	vendor_binary_size: Device_Size,
}

Device_Fault_Address_Info :: struct  {
	address_type: Device_Fault_Address_Type,
	reported_address: Device_Address,
	address_precision: Device_Size,
}

Device_Fault_Vendor_Info :: struct  {
	description: [MAX_DESCRIPTION_SIZE]byte,
	vendor_fault_code: u64,
	vendor_fault_data: u64,
}

Device_Fault_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	description: [MAX_DESCRIPTION_SIZE]byte,
	address_infos: ^Device_Fault_Address_Info,
	vendor_infos: ^Device_Fault_Vendor_Info,
	vendor_binary_data: [^]u8,
}

Device_Fault_Vendor_Binary_Header_Version_One :: struct  {
	header_size: u32,
	header_version: Device_Fault_Vendor_Binary_Header_Version,
	vendor_id: u32,
	device_id: u32,
	driver_version: u32,
	pipeline_cache_uuid: [UUID_SIZE]u8,
	application_name_offset: u32,
	application_version: u32,
	engine_name_offset: u32,
	engine_version: u32,
	api_version: u32,
}

Physical_Device_Rasterization_Order_Attachment_Access_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	rasterization_order_color_attachment_access: b32,
	rasterization_order_depth_attachment_access: b32,
	rasterization_order_stencil_attachment_access: b32,
}

Physical_Device_Rgba10X6Formats_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	format_rgba10x6_without_ycb_cr_sampler: b32,
}

Physical_Device_Mutable_Descriptor_Type_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	mutable_descriptor_type: b32,
}

Mutable_Descriptor_Type_List :: struct  {
	descriptor_type_count: u32,
	descriptor_types: [^]Descriptor_Type,
}

Mutable_Descriptor_Type_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	mutable_descriptor_type_list_count: u32,
	mutable_descriptor_type_lists: [^]Mutable_Descriptor_Type_List,
}

Physical_Device_Vertex_Input_Dynamic_State_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	vertex_input_dynamic_state: b32,
}

Vertex_Input_Binding_Description_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	binding: u32,
	stride: u32,
	input_rate: Vertex_Input_Rate,
	divisor: u32,
}

Vertex_Input_Attribute_Description_2 :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	location: u32,
	binding: u32,
	format: Format,
	offset: u32,
}

Physical_Device_Drm_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	has_primary: b32,
	has_render: b32,
	primary_major: i64,
	primary_minor: i64,
	render_major: i64,
	render_minor: i64,
}

Physical_Device_Address_Binding_Report_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	report_address_binding: b32,
}

Device_Address_Binding_Callback_Data :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Device_Address_Binding_Flags,
	base_address: Device_Address,
	size: Device_Size,
	binding_type: Device_Address_Binding_Type,
}

Physical_Device_Depth_Clip_Control_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	depth_clip_control: b32,
}

Pipeline_Viewport_Depth_Clip_Control_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	negative_one_to_one: b32,
}

Physical_Device_Primitive_Topology_List_Restart_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	primitive_topology_list_restart: b32,
	primitive_topology_patch_list_restart: b32,
}

Physical_Device_Present_Mode_Fifo_Latest_Ready_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	present_mode_fifo_latest_ready: b32,
}

Subpass_Shading_Pipeline_Create_Info_Huawei :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	render_pass: Render_Pass,
	subpass: u32,
}

Physical_Device_Subpass_Shading_Features_Huawei :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	subpass_shading: b32,
}

Physical_Device_Subpass_Shading_Properties_Huawei :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_subpass_shading_workgroup_size_aspect_ratio: u32,
}

Physical_Device_Invocation_Mask_Features_Huawei :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	invocation_mask: b32,
}

Memory_Get_Remote_Address_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	memory: Device_Memory,
	handle_type: External_Memory_Handle_Type_Flags,
}

Physical_Device_External_Memory_Rdmafeatures :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	external_memory_rdma: b32,
}

Pipeline_Properties_Identifier :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_identifier: [UUID_SIZE]u8,
}

Physical_Device_Pipeline_Properties_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_properties_identifier: b32,
}

Physical_Device_Frame_Boundary_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	frame_boundary: b32,
}

Frame_Boundary :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Frame_Boundary_Flags,
	frame_id: u64,
	image_count: u32,
	images: [^]Image,
	buffer_count: u32,
	buffers: [^]Buffer,
	tag_name: u64,
	tag_size: int,
	tag: rawptr,
}

Physical_Device_Multisampled_Render_To_Single_Sampled_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	multisampled_render_to_single_sampled: b32,
}

Subpass_Resolve_Performance_Query :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	optimal: b32,
}

Multisampled_Render_To_Single_Sampled_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	multisampled_render_to_single_sampled_enable: b32,
	rasterization_samples: Sample_Count_Flags,
}

Physical_Device_Extended_Dynamic_State_2Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	extended_dynamic_state2: b32,
	extended_dynamic_state2_logic_op: b32,
	extended_dynamic_state2_patch_control_points: b32,
}

Physical_Device_Color_Write_Enable_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	color_write_enable: b32,
}

Pipeline_Color_Write_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	attachment_count: u32,
	color_write_enables: [^]b32,
}

Physical_Device_Primitives_Generated_Query_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	primitives_generated_query: b32,
	primitives_generated_query_with_rasterizer_discard: b32,
	primitives_generated_query_with_non_zero_streams: b32,
}

Physical_Device_Image_View_Min_Lod_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	min_lod: b32,
}

Image_View_Min_Lod_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	min_lod: f32,
}

Physical_Device_Multi_Draw_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	multi_draw: b32,
}

Physical_Device_Multi_Draw_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_multi_draw_count: u32,
}

Multi_Draw_Info :: struct  {
	first_vertex: u32,
	vertex_count: u32,
}

Multi_Draw_Indexed_Info :: struct  {
	first_index: u32,
	index_count: u32,
	vertex_offset: i32,
}

Physical_Device_Image_2Dview_Of_3Dfeatures :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image2_dview_of_3d: b32,
	sampler2_dview_of_3d: b32,
}

Physical_Device_Shader_Tile_Image_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_tile_image_color_read_access: b32,
	shader_tile_image_depth_read_access: b32,
	shader_tile_image_stencil_read_access: b32,
}

Physical_Device_Shader_Tile_Image_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_tile_image_coherent_read_accelerated: b32,
	shader_tile_image_read_sample_from_pixel_rate_invocation: b32,
	shader_tile_image_read_from_helper_invocation: b32,
}

Micromap_Usage :: struct  {
	count: u32,
	subdivision_level: u32,
	format: u32,
}

Device_Or_Host_Address :: struct #raw_union {
	device_address: Device_Address,
	host_address: [^]u8,
}

Micromap_Build_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Micromap_Type,
	flags: Build_Micromap_Flags,
	mode: Build_Micromap_Mode,
	dst_micromap: Micromap,
	usage_counts_count: u32,
	usage_counts: [^]Micromap_Usage,
	p_usage_counts: ^[^]Micromap_Usage,
	data: Device_Or_Host_Address_Const,
	scratch_data: Device_Or_Host_Address,
	triangle_array: Device_Or_Host_Address_Const,
	triangle_array_stride: Device_Size,
}

Micromap_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	create_flags: Micromap_Create_Flags,
	buffer: Buffer,
	offset: Device_Size,
	size: Device_Size,
	type: Micromap_Type,
	device_address: Device_Address,
}

Physical_Device_Opacity_Micromap_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	micromap: b32,
	micromap_capture_replay: b32,
	micromap_host_commands: b32,
}

Physical_Device_Opacity_Micromap_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_opacity2_state_subdivision_level: u32,
	max_opacity4_state_subdivision_level: u32,
}

Micromap_Version_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	version_data: ^u8,
}

Copy_Micromap_To_Memory_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src: Micromap,
	dst: Device_Or_Host_Address,
	mode: Copy_Micromap_Mode,
}

Copy_Memory_To_Micromap_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src: Device_Or_Host_Address_Const,
	dst: Micromap,
	mode: Copy_Micromap_Mode,
}

Copy_Micromap_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src: Micromap,
	dst: Micromap,
	mode: Copy_Micromap_Mode,
}

Micromap_Build_Sizes_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	micromap_size: Device_Size,
	build_scratch_size: Device_Size,
	discardable: b32,
}

Acceleration_Structure_Triangles_Opacity_Micromap :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	index_type: Index_Type,
	index_buffer: Device_Or_Host_Address_Const,
	index_stride: Device_Size,
	base_triangle: u32,
	usage_counts_count: u32,
	usage_counts: [^]Micromap_Usage,
	p_usage_counts: ^[^]Micromap_Usage,
	micromap: Micromap,
}

Micromap_Triangle :: struct  {
	data_offset: u32,
	subdivision_level: u16,
	format: u16,
}

Physical_Device_Cluster_Culling_Shader_Features_Huawei :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	clusterculling_shader: b32,
	multiview_cluster_culling_shader: b32,
}

Physical_Device_Cluster_Culling_Shader_Properties_Huawei :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_work_group_count: [3]u32,
	max_work_group_size: [3]u32,
	max_output_cluster_count: u32,
	indirect_buffer_offset_alignment: Device_Size,
}

Physical_Device_Cluster_Culling_Shader_Vrs_Features_Huawei :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	cluster_shading_rate: b32,
}

Physical_Device_Border_Color_Swizzle_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	border_color_swizzle: b32,
	border_color_swizzle_from_image: b32,
}

Sampler_Border_Color_Component_Mapping_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	components: Component_Mapping,
	srgb: b32,
}

Physical_Device_Pageable_Device_Local_Memory_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pageable_device_local_memory: b32,
}

Physical_Device_Shader_Core_Properties_Arm :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pixel_rate: u32,
	texel_rate: u32,
	fma_rate: u32,
}

Device_Queue_Shader_Core_Control_Create_Info_Arm :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_core_count: u32,
}

Physical_Device_Scheduling_Controls_Features_Arm :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	scheduling_controls: b32,
}

Physical_Device_Scheduling_Controls_Properties_Arm :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	scheduling_controls_flags: Physical_Device_Scheduling_Controls_Flags_Arm,
}

Physical_Device_Image_Sliced_View_Of_3Dfeatures :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_sliced_view_of_3d: b32,
}

Image_View_Sliced_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	slice_offset: u32,
	slice_count: u32,
}

Physical_Device_Descriptor_Set_Host_Mapping_Features_Valve :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	descriptor_set_host_mapping: b32,
}

Descriptor_Set_Binding_Reference_Valve :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	descriptor_set_layout: Descriptor_Set_Layout,
	binding: u32,
}

Descriptor_Set_Layout_Host_Mapping_Info_Valve :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	descriptor_offset: int,
	descriptor_size: u32,
}

Physical_Device_Depth_Clamp_Zero_One_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	depth_clamp_zero_one: b32,
}

Physical_Device_Non_Seamless_Cube_Map_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	non_seamless_cube_map: b32,
}

Physical_Device_Render_Pass_Striped_Features_Arm :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	render_pass_striped: b32,
}

Physical_Device_Render_Pass_Striped_Properties_Arm :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	render_pass_stripe_granularity: Extent_2D,
	max_render_pass_stripes: u32,
}

Render_Pass_Stripe_Info_Arm :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stripe_area: Rect_2D,
}

Render_Pass_Stripe_Begin_Info_Arm :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stripe_info_count: u32,
	stripe_infos: [^]Render_Pass_Stripe_Info_Arm,
}

Render_Pass_Stripe_Submit_Info_Arm :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stripe_semaphore_info_count: u32,
	stripe_semaphore_infos: [^]Semaphore_Submit_Info,
}

Physical_Device_Fragment_Density_Map_Offset_Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	fragment_density_map_offset: b32,
}

Physical_Device_Fragment_Density_Map_Offset_Properties_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	fragment_density_offset_granularity: Extent_2D,
}

Subpass_Fragment_Density_Map_Offset_End_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	fragment_density_offset_count: u32,
	fragment_density_offsets: [^]Offset_2D,
}

Copy_Memory_Indirect_Command :: struct  {
	src_address: Device_Address,
	dst_address: Device_Address,
	size: Device_Size,
}

Copy_Memory_To_Image_Indirect_Command :: struct  {
	src_address: Device_Address,
	buffer_row_length: u32,
	buffer_image_height: u32,
	image_subresource: Image_Subresource_Layers,
	image_offset: Offset_3D,
	image_extent: Extent_3D,
}

Physical_Device_Copy_Memory_Indirect_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	indirect_copy: b32,
}

Physical_Device_Copy_Memory_Indirect_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	supported_queues: Queue_Flags,
}

Decompress_Memory_Region :: struct  {
	src_address: Device_Address,
	dst_address: Device_Address,
	compressed_size: Device_Size,
	decompressed_size: Device_Size,
	decompression_method: Memory_Decompression_Method_Flags,
}

Physical_Device_Memory_Decompression_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_decompression: b32,
}

Physical_Device_Memory_Decompression_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	decompression_methods: Memory_Decompression_Method_Flags,
	max_decompression_indirect_count: u64,
}

Physical_Device_Device_Generated_Commands_Compute_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	device_generated_compute: b32,
	device_generated_compute_pipelines: b32,
	device_generated_compute_capture_replay: b32,
}

Compute_Pipeline_Indirect_Buffer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	device_address: Device_Address,
	size: Device_Size,
	pipeline_device_address_capture_replay: Device_Address,
}

Pipeline_Indirect_Device_Address_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	pipeline_bind_point: Pipeline_Bind_Point,
	pipeline: Pipeline,
}

Bind_Pipeline_Indirect_Command :: struct  {
	pipeline_address: Device_Address,
}

Physical_Device_Linear_Color_Attachment_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	linear_color_attachment: b32,
}

Physical_Device_Image_Compression_Control_Swapchain_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_compression_control_swapchain: b32,
}

Image_View_Sample_Weight_Create_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	filter_center: Offset_2D,
	filter_size: Extent_2D,
	num_phases: u32,
}

Physical_Device_Image_Processing_Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	texture_sample_weighted: b32,
	texture_box_filter: b32,
	texture_block_match: b32,
}

Physical_Device_Image_Processing_Properties_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_weight_filter_phases: u32,
	max_weight_filter_dimension: Extent_2D,
	max_block_match_region: Extent_2D,
	max_box_filter_block_size: Extent_2D,
}

Physical_Device_Nested_Command_Buffer_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	nested_command_buffer: b32,
	nested_command_buffer_rendering: b32,
	nested_command_buffer_simultaneous_use: b32,
}

Physical_Device_Nested_Command_Buffer_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_command_buffer_nesting_level: u32,
}

External_Memory_Acquire_Unmodified :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	acquire_unmodified_memory: b32,
}

Physical_Device_Extended_Dynamic_State_3Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	extended_dynamic_state3_tessellation_domain_origin: b32,
	extended_dynamic_state3_depth_clamp_enable: b32,
	extended_dynamic_state3_polygon_mode: b32,
	extended_dynamic_state3_rasterization_samples: b32,
	extended_dynamic_state3_sample_mask: b32,
	extended_dynamic_state3_alpha_to_coverage_enable: b32,
	extended_dynamic_state3_alpha_to_one_enable: b32,
	extended_dynamic_state3_logic_op_enable: b32,
	extended_dynamic_state3_color_blend_enable: b32,
	extended_dynamic_state3_color_blend_equation: b32,
	extended_dynamic_state3_color_write_mask: b32,
	extended_dynamic_state3_rasterization_stream: b32,
	extended_dynamic_state3_conservative_rasterization_mode: b32,
	extended_dynamic_state3_extra_primitive_overestimation_size: b32,
	extended_dynamic_state3_depth_clip_enable: b32,
	extended_dynamic_state3_sample_locations_enable: b32,
	extended_dynamic_state3_color_blend_advanced: b32,
	extended_dynamic_state3_provoking_vertex_mode: b32,
	extended_dynamic_state3_line_rasterization_mode: b32,
	extended_dynamic_state3_line_stipple_enable: b32,
	extended_dynamic_state3_depth_clip_negative_one_to_one: b32,
	extended_dynamic_state3_viewport_wscaling_enable: b32,
	extended_dynamic_state3_viewport_swizzle: b32,
	extended_dynamic_state3_coverage_to_color_enable: b32,
	extended_dynamic_state3_coverage_to_color_location: b32,
	extended_dynamic_state3_coverage_modulation_mode: b32,
	extended_dynamic_state3_coverage_modulation_table_enable: b32,
	extended_dynamic_state3_coverage_modulation_table: b32,
	extended_dynamic_state3_coverage_reduction_mode: b32,
	extended_dynamic_state3_representative_fragment_test_enable: b32,
	extended_dynamic_state3_shading_rate_image_enable: b32,
}

Physical_Device_Extended_Dynamic_State_3Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	dynamic_primitive_topology_unrestricted: b32,
}

Color_Blend_Equation :: struct  {
	src_color_blend_factor: Blend_Factor,
	dst_color_blend_factor: Blend_Factor,
	color_blend_op: Blend_Op,
	src_alpha_blend_factor: Blend_Factor,
	dst_alpha_blend_factor: Blend_Factor,
	alpha_blend_op: Blend_Op,
}

Color_Blend_Advanced :: struct  {
	advanced_blend_op: Blend_Op,
	src_premultiplied: b32,
	dst_premultiplied: b32,
	blend_overlap: Blend_Overlap,
	clamp_results: b32,
}

Physical_Device_Subpass_Merge_Feedback_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	subpass_merge_feedback: b32,
}

Render_Pass_Creation_Control :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	disallow_merging: b32,
}

Render_Pass_Creation_Feedback_Info :: struct  {
	post_merge_subpass_count: u32,
}

Render_Pass_Creation_Feedback_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	render_pass_feedback: ^Render_Pass_Creation_Feedback_Info,
}

Render_Pass_Subpass_Feedback_Info :: struct  {
	subpass_merge_status: Subpass_Merge_Status,
	description: [MAX_DESCRIPTION_SIZE]byte,
	post_merge_index: u32,
}

Render_Pass_Subpass_Feedback_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	subpass_feedback: ^Render_Pass_Subpass_Feedback_Info,
}

Direct_Driver_Loading_Info_Lunarg :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Direct_Driver_Loading_Flags_Lunarg,
	get_instance_proc_addr: Proc_Get_Instance_Proc_Addr_Lunarg,
}

Direct_Driver_Loading_List_Lunarg :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	mode: Direct_Driver_Loading_Mode_Lunarg,
	driver_count: u32,
	drivers: [^]Direct_Driver_Loading_Info_Lunarg,
}

Physical_Device_Shader_Module_Identifier_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_module_identifier: b32,
}

Physical_Device_Shader_Module_Identifier_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_module_identifier_algorithm_uuid: [UUID_SIZE]u8,
}

Pipeline_Shader_Stage_Module_Identifier_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	identifier_size: u32,
	identifier: ^u8,
}

Shader_Module_Identifier :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	identifier_size: u32,
	identifier: [MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT]u8,
}

Physical_Device_Optical_Flow_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	optical_flow: b32,
}

Physical_Device_Optical_Flow_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	supported_output_grid_sizes: Optical_Flow_Grid_Size_Flags,
	supported_hint_grid_sizes: Optical_Flow_Grid_Size_Flags,
	hint_supported: b32,
	cost_supported: b32,
	bidirectional_flow_supported: b32,
	global_flow_supported: b32,
	min_width: u32,
	min_height: u32,
	max_width: u32,
	max_height: u32,
	max_num_regions_of_interest: u32,
}

Optical_Flow_Image_Format_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	usage: Optical_Flow_Usage_Flags,
}

Optical_Flow_Image_Format_Properties :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	format: Format,
}

Optical_Flow_Session_Create_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	width: u32,
	height: u32,
	image_format: Format,
	flow_vector_format: Format,
	cost_format: Format,
	output_grid_size: Optical_Flow_Grid_Size_Flags,
	hint_grid_size: Optical_Flow_Grid_Size_Flags,
	performance_level: Optical_Flow_Performance_Level,
	flags: Optical_Flow_Session_Create_Flags,
}

Optical_Flow_Session_Create_Private_Data_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	id: u32,
	size: u32,
	private_data: rawptr,
}

Optical_Flow_Execute_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	flags: Optical_Flow_Execute_Flags,
	region_count: u32,
	regions: [^]Rect_2D,
}

Physical_Device_Legacy_Dithering_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	legacy_dithering: b32,
}

Physical_Device_Anti_Lag_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	anti_lag: b32,
}

Anti_Lag_Presentation_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	stage: Anti_Lag_Stage,
	frame_index: u64,
}

Anti_Lag_Data :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	mode: Anti_Lag_Mode,
	max_fps: u32,
	presentation_info: ^Anti_Lag_Presentation_Info,
}

Physical_Device_Shader_Object_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_object: b32,
}

Physical_Device_Shader_Object_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_binary_uuid: [UUID_SIZE]u8,
	shader_binary_version: u32,
}

Shader_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Shader_Create_Flags,
	stage: Shader_Stage_Flags,
	next_stage: Shader_Stage_Flags,
	code_type: Shader_Code_Type,
	code_size: int,
	code: rawptr,
	name: cstring,
	set_layout_count: u32,
	set_layouts: [^]Descriptor_Set_Layout,
	push_constant_range_count: u32,
	push_constant_ranges: [^]Push_Constant_Range,
	specialization_info: ^Specialization_Info,
}

Depth_Clamp_Range :: struct  {
	min_depth_clamp: f32,
	max_depth_clamp: f32,
}

Physical_Device_Tile_Properties_Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	tile_properties: b32,
}

Tile_Properties_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	tile_size: Extent_3D,
	apron_size: Extent_2D,
	origin: Offset_2D,
}

Physical_Device_Amigo_Profiling_Features_Sec :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	amigo_profiling: b32,
}

Amigo_Profiling_Submit_Info_Sec :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	first_draw_timestamp: u64,
	swap_buffer_timestamp: u64,
}

Physical_Device_Multiview_Per_View_Viewports_Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	multiview_per_view_viewports: b32,
}

Physical_Device_Ray_Tracing_Invocation_Reorder_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ray_tracing_invocation_reorder_reordering_hint: Ray_Tracing_Invocation_Reorder_Mode,
}

Physical_Device_Ray_Tracing_Invocation_Reorder_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ray_tracing_invocation_reorder: b32,
}

Physical_Device_Extended_Sparse_Address_Space_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	extended_sparse_address_space: b32,
}

Physical_Device_Extended_Sparse_Address_Space_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	extended_sparse_address_space_size: Device_Size,
	extended_sparse_image_usage_flags: Image_Usage_Flags,
	extended_sparse_buffer_usage_flags: Buffer_Usage_Flags,
}

Physical_Device_Legacy_Vertex_Attributes_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	legacy_vertex_attributes: b32,
}

Physical_Device_Legacy_Vertex_Attributes_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	native_unaligned_performance: b32,
}

Layer_Setting :: struct  {
	layer_name: cstring,
	setting_name: cstring,
	type: Layer_Setting_Type,
	value_count: u32,
	values: rawptr,
}

Layer_Settings_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	setting_count: u32,
	settings: [^]Layer_Setting,
}

Physical_Device_Shader_Core_Builtins_Features_Arm :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_core_builtins: b32,
}

Physical_Device_Shader_Core_Builtins_Properties_Arm :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_core_mask: u64,
	shader_core_count: u32,
	shader_warps_per_core: u32,
}

Physical_Device_Pipeline_Library_Group_Handles_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline_library_group_handles: b32,
}

Physical_Device_Dynamic_Rendering_Unused_Attachments_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	dynamic_rendering_unused_attachments: b32,
}

Latency_Sleep_Mode_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	low_latency_mode: b32,
	low_latency_boost: b32,
	minimum_interval_us: u32,
}

Latency_Sleep_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	signal_semaphore: Semaphore,
	value: u64,
}

Set_Latency_Marker_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	present_id: u64,
	marker: Latency_Marker,
}

Latency_Timings_Frame_Report :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	present_id: u64,
	input_sample_time_us: u64,
	sim_start_time_us: u64,
	sim_end_time_us: u64,
	render_submit_start_time_us: u64,
	render_submit_end_time_us: u64,
	present_start_time_us: u64,
	present_end_time_us: u64,
	driver_start_time_us: u64,
	driver_end_time_us: u64,
	os_render_queue_start_time_us: u64,
	os_render_queue_end_time_us: u64,
	gpu_render_start_time_us: u64,
	gpu_render_end_time_us: u64,
}

Get_Latency_Marker_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	timing_count: u32,
	timings: [^]Latency_Timings_Frame_Report,
}

Latency_Submission_Present_Id :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	present_id: u64,
}

Swapchain_Latency_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	latency_mode_enable: b32,
}

Out_Of_Band_Queue_Type_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	queue_type: Out_Of_Band_Queue_Type,
}

Latency_Surface_Capabilities :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	present_mode_count: u32,
	present_modes: [^]Present_Mode,
}

Physical_Device_Multiview_Per_View_Render_Areas_Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	multiview_per_view_render_areas: b32,
}

Multiview_Per_View_Render_Areas_Render_Pass_Begin_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	per_view_render_area_count: u32,
	per_view_render_areas: [^]Rect_2D,
}

Physical_Device_Per_Stage_Descriptor_Set_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	per_stage_descriptor_set: b32,
	dynamic_pipeline_layout: b32,
}

Physical_Device_Image_Processing_2Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	texture_block_match2: b32,
}

Physical_Device_Image_Processing_2Properties_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_block_match_window: Extent_2D,
}

Sampler_Block_Match_Window_Create_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	window_extent: Extent_2D,
	window_compare_mode: Block_Match_Window_Compare_Mode_Qcom,
}

Physical_Device_Cubic_Weights_Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	selectable_cubic_weights: b32,
}

Sampler_Cubic_Weights_Create_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	cubic_weights: Cubic_Filter_Weights_Qcom,
}

Blit_Image_Cubic_Weights_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	cubic_weights: Cubic_Filter_Weights_Qcom,
}

Physical_Device_Ycbcr_Degamma_Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ycbcr_degamma: b32,
}

Sampler_Ycbcr_Conversion_Ycbcr_Degamma_Create_Info_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	enable_ydegamma: b32,
	enable_cb_cr_degamma: b32,
}

Physical_Device_Cubic_Clamp_Features_Qcom :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	cubic_range_clamp: b32,
}

Physical_Device_Attachment_Feedback_Loop_Dynamic_State_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	attachment_feedback_loop_dynamic_state: b32,
}

Physical_Device_Layered_Driver_Properties_Msft :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	underlying_api: Layered_Driver_Underlying_Api_Msft,
}

Physical_Device_Descriptor_Pool_Overallocation_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	descriptor_pool_overallocation: b32,
}

Display_Surface_Stereo_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	stereo_type: Display_Surface_Stereo_Type,
}

Display_Mode_Stereo_Properties :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	hdmi3_dsupported: b32,
}

Physical_Device_Raw_Access_Chains_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_raw_access_chains: b32,
}

Physical_Device_Command_Buffer_Inheritance_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	command_buffer_inheritance: b32,
}

Physical_Device_Shader_Atomic_Float_16Vector_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_float16_vector_atomics: b32,
}

Physical_Device_Shader_Replicated_Composites_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_replicated_composites: b32,
}

Physical_Device_Ray_Tracing_Validation_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ray_tracing_validation: b32,
}

Indirect_Execution_Set_Pipeline_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	initial_pipeline: Pipeline,
	max_pipeline_count: u32,
}

Indirect_Execution_Set_Shader_Layout_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	set_layout_count: u32,
	set_layouts: [^]Descriptor_Set_Layout,
}

Indirect_Execution_Set_Shader_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	shader_count: u32,
	initial_shaders: [^]Shader,
	set_layout_infos: ^Indirect_Execution_Set_Shader_Layout_Info,
	max_shader_count: u32,
	push_constant_range_count: u32,
	push_constant_ranges: [^]Push_Constant_Range,
}

Indirect_Execution_Set_Info :: struct #raw_union {
	pipeline_info: ^Indirect_Execution_Set_Pipeline_Info,
	shader_info: ^Indirect_Execution_Set_Shader_Info,
}

Indirect_Execution_Set_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Indirect_Execution_Set_Info_Type,
	info: Indirect_Execution_Set_Info,
}

Write_Indirect_Execution_Set_Pipeline :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	index: u32,
	pipeline: Pipeline,
}

Indirect_Commands_Push_Constant_Token :: struct  {
	update_range: Push_Constant_Range,
}

Indirect_Commands_Vertex_Buffer_Token :: struct  {
	vertex_binding_unit: u32,
}

Indirect_Commands_Index_Buffer_Token :: struct  {
	mode: Indirect_Commands_Input_Mode_Flags,
}

Indirect_Commands_Execution_Set_Token :: struct  {
	type: Indirect_Execution_Set_Info_Type,
	shader_stages: Shader_Stage_Flags,
}

Indirect_Commands_Token_Data :: struct #raw_union {
	push_constant: ^Indirect_Commands_Push_Constant_Token,
	vertex_buffer: ^Indirect_Commands_Vertex_Buffer_Token,
	index_buffer: ^Indirect_Commands_Index_Buffer_Token,
	execution_set: ^Indirect_Commands_Execution_Set_Token,
}

Draw_Indirect_Count_Indirect_Command :: struct  {
	buffer_address: Device_Address,
	stride: u32,
	command_count: u32,
}

Generated_Commands_Pipeline_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	pipeline: Pipeline,
}

Generated_Commands_Shader_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_count: u32,
	shaders: [^]Shader,
}

Write_Indirect_Execution_Set_Shader :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	index: u32,
	shader: Shader,
}

Physical_Device_Image_Alignment_Control_Features_Mesa :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	image_alignment_control: b32,
}

Physical_Device_Image_Alignment_Control_Properties_Mesa :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	supported_image_alignment_mask: u32,
}

Image_Alignment_Control_Create_Info_Mesa :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	maximum_requested_alignment: u32,
}

Physical_Device_Depth_Clamp_Control_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	depth_clamp_control: b32,
}

Pipeline_Viewport_Depth_Clamp_Control_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	depth_clamp_mode: Depth_Clamp_Mode,
	depth_clamp_range: ^Depth_Clamp_Range,
}

Physical_Device_Hdr_Vivid_Features_Huawei :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	hdr_vivid: b32,
}

Hdr_Vivid_Dynamic_Metadata_Huawei :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	dynamic_metadata_size: int,
	dynamic_metadata: rawptr,
}

Cooperative_Matrix_Flexible_Dimensions_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	mgranularity: u32,
	ngranularity: u32,
	kgranularity: u32,
	atype: Component_Type,
	btype: Component_Type,
	ctype: Component_Type,
	result_type: Component_Type,
	saturating_accumulation: b32,
	scope: Scope,
	workgroup_invocations: u32,
}

Physical_Device_Cooperative_Matrix_2Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	cooperative_mat_workgroup_scope: b32,
	cooperative_mat_flexible_dimensions: b32,
	cooperative_mat_reductions: b32,
	cooperative_mat_conversions: b32,
	cooperative_mat_per_element_operations: b32,
	cooperative_mat_tensor_addressing: b32,
	cooperative_mat_block_loads: b32,
}

Physical_Device_Cooperative_Matrix_2Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	cooperative_mat_workgroup_scope_max_workgroup_size: u32,
	cooperative_mat_flexible_dimensions_max_dimension: u32,
	cooperative_mat_workgroup_scope_reserved_shared_memory: u32,
}

Physical_Device_Vertex_Attribute_Robustness_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	vertex_attribute_robustness: b32,
}

Acceleration_Structure_Build_Range_Info :: struct  {
	primitive_count: u32,
	primitive_offset: u32,
	first_vertex: u32,
	transform_offset: u32,
}

Acceleration_Structure_Geometry_Triangles_Data :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	vertex_format: Format,
	vertex_data: Device_Or_Host_Address_Const,
	vertex_stride: Device_Size,
	max_vertex: u32,
	index_type: Index_Type,
	index_data: Device_Or_Host_Address_Const,
	transform_data: Device_Or_Host_Address_Const,
}

Acceleration_Structure_Geometry_Aabbs_Data :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	data: Device_Or_Host_Address_Const,
	stride: Device_Size,
}

Acceleration_Structure_Geometry_Instances_Data :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	array_of_pointers: b32,
	data: Device_Or_Host_Address_Const,
}

Acceleration_Structure_Geometry_Data :: struct #raw_union {
	triangles: Acceleration_Structure_Geometry_Triangles_Data,
	aabbs: Acceleration_Structure_Geometry_Aabbs_Data,
	instances: Acceleration_Structure_Geometry_Instances_Data,
}

Acceleration_Structure_Geometry :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	geometry_type: Geometry_Type,
	geometry: Acceleration_Structure_Geometry_Data,
	flags: Geometry_Flags,
}

Acceleration_Structure_Build_Geometry_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	type: Acceleration_Structure_Type,
	flags: Build_Acceleration_Structure_Flags,
	mode: Build_Acceleration_Structure_Mode,
	src_acceleration_structure: Acceleration_Structure,
	dst_acceleration_structure: Acceleration_Structure,
	geometry_count: u32,
	geometries: [^]Acceleration_Structure_Geometry,
	p_geometries: ^[^]Acceleration_Structure_Geometry,
	scratch_data: Device_Or_Host_Address,
}

Physical_Device_Acceleration_Structure_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	acceleration_structure: b32,
	acceleration_structure_capture_replay: b32,
	acceleration_structure_indirect_build: b32,
	acceleration_structure_host_commands: b32,
	descriptor_binding_acceleration_structure_update_after_bind: b32,
}

Physical_Device_Acceleration_Structure_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	max_geometry_count: u64,
	max_instance_count: u64,
	max_primitive_count: u64,
	max_per_stage_descriptor_acceleration_structures: u32,
	max_per_stage_descriptor_update_after_bind_acceleration_structures: u32,
	max_descriptor_set_acceleration_structures: u32,
	max_descriptor_set_update_after_bind_acceleration_structures: u32,
	min_acceleration_structure_scratch_offset_alignment: u32,
}

Acceleration_Structure_Device_Address_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	acceleration_structure: Acceleration_Structure,
}

Acceleration_Structure_Version_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	version_data: ^u8,
}

Copy_Acceleration_Structure_To_Memory_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src: Acceleration_Structure,
	dst: Device_Or_Host_Address,
	mode: Copy_Acceleration_Structure_Mode,
}

Copy_Memory_To_Acceleration_Structure_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src: Device_Or_Host_Address_Const,
	dst: Acceleration_Structure,
	mode: Copy_Acceleration_Structure_Mode,
}

Copy_Acceleration_Structure_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	src: Acceleration_Structure,
	dst: Acceleration_Structure,
	mode: Copy_Acceleration_Structure_Mode,
}

Acceleration_Structure_Build_Sizes_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	acceleration_structure_size: Device_Size,
	update_scratch_size: Device_Size,
	build_scratch_size: Device_Size,
}

Ray_Tracing_Pipeline_Interface_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	max_pipeline_ray_payload_size: u32,
	max_pipeline_ray_hit_attribute_size: u32,
}

Physical_Device_Ray_Tracing_Pipeline_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ray_tracing_pipeline: b32,
	ray_tracing_pipeline_shader_group_handle_capture_replay: b32,
	ray_tracing_pipeline_shader_group_handle_capture_replay_mixed: b32,
	ray_tracing_pipeline_trace_rays_indirect: b32,
	ray_traversal_primitive_culling: b32,
}

Physical_Device_Ray_Tracing_Pipeline_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	shader_group_handle_size: u32,
	max_ray_recursion_depth: u32,
	max_shader_group_stride: u32,
	shader_group_base_alignment: u32,
	shader_group_handle_capture_replay_size: u32,
	max_ray_dispatch_invocation_count: u32,
	shader_group_handle_alignment: u32,
	max_ray_hit_attribute_size: u32,
}

Strided_Device_Address_Region :: struct  {
	device_address: Device_Address,
	stride: Device_Size,
	size: Device_Size,
}

Trace_Rays_Indirect_Command :: struct  {
	width: u32,
	height: u32,
	depth: u32,
}

Physical_Device_Ray_Query_Features :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	ray_query: b32,
}

Win32_Surface_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Win32_Surface_Create_Flags,
	hinstance: HINSTANCE,
	hwnd: HWND,
}

Import_Memory_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	handle_type: External_Memory_Handle_Type_Flags,
	handle: HANDLE,
	name: LPCWSTR,
}

Export_Memory_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	attributes: ^SECURITY_ATTRIBUTES,
	dw_access: DWORD,
	name: LPCWSTR,
}

Memory_Win32_Handle_Properties :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	memory_type_bits: u32,
}

Memory_Get_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	memory: Device_Memory,
	handle_type: External_Memory_Handle_Type_Flags,
}

Win32_Keyed_Mutex_Acquire_Release_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	acquire_count: u32,
	acquire_syncs: [^]Device_Memory,
	acquire_keys: ^u64,
	acquire_timeouts: ^u32,
	release_count: u32,
	release_syncs: [^]Device_Memory,
	release_keys: ^u64,
}

Import_Semaphore_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	semaphore: Semaphore,
	flags: Semaphore_Import_Flags,
	handle_type: External_Semaphore_Handle_Type_Flags,
	handle: HANDLE,
	name: LPCWSTR,
}

Export_Semaphore_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	attributes: ^SECURITY_ATTRIBUTES,
	dw_access: DWORD,
	name: LPCWSTR,
}

D3D12Fence_Submit_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	wait_semaphore_values_count: u32,
	wait_semaphore_values: [^]u64,
	signal_semaphore_values_count: u32,
	signal_semaphore_values: [^]u64,
}

Semaphore_Get_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	semaphore: Semaphore,
	handle_type: External_Semaphore_Handle_Type_Flags,
}

Import_Fence_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	fence: Fence,
	flags: Fence_Import_Flags,
	handle_type: External_Fence_Handle_Type_Flags,
	handle: HANDLE,
	name: LPCWSTR,
}

Export_Fence_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	attributes: ^SECURITY_ATTRIBUTES,
	dw_access: DWORD,
	name: LPCWSTR,
}

Fence_Get_Win32_Handle_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	fence: Fence,
	handle_type: External_Fence_Handle_Type_Flags,
}

Surface_Full_Screen_Exclusive_Info :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	full_screen_exclusive: Full_Screen_Exclusive,
}

Surface_Capabilities_Full_Screen_Exclusive :: struct  {
	s_type: Structure_Type,
	next: [^]u8,
	full_screen_exclusive_supported: b32,
}

Surface_Full_Screen_Exclusive_Win32_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	hmonitor: HMONITOR,
}

Metal_Surface_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Metal_Surface_Create_Flags,
	layer: ^Cametal_Layer,
}

Export_Metal_Object_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	export_object_type: Export_Metal_Object_Type_Flags,
}

Export_Metal_Objects_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
}

Export_Metal_Device_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	mtl_device: Mtldevice_Id,
}

Export_Metal_Command_Queue_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	queue: Queue,
	mtl_command_queue: Mtlcommandqueue_Id,
}

Export_Metal_Buffer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	memory: Device_Memory,
	mtl_buffer: Mtlbuffer_Id,
}

Import_Metal_Buffer_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	mtl_buffer: Mtlbuffer_Id,
}

Export_Metal_Texture_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
	image_view: Image_View,
	buffer_view: Buffer_View,
	plane: Image_Aspect_Flags,
	mtl_texture: Mtltexture_Id,
}

Import_Metal_Texture_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	plane: Image_Aspect_Flags,
	mtl_texture: Mtltexture_Id,
}

Export_Metal_Iosurface_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	image: Image,
	io_surface: Iosurface_Ref,
}

Import_Metal_Iosurface_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	io_surface: Iosurface_Ref,
}

Export_Metal_Shared_Event_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	semaphore: Semaphore,
	event: Event,
	mtl_shared_event: Mtlsharedevent_Id,
}

Import_Metal_Shared_Event_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	mtl_shared_event: Mtlsharedevent_Id,
}

Macos_Surface_Create_Info_Mvk :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Macos_Surface_Create_Flags_Mvk,
	view: rawptr,
}

Ios_Surface_Create_Info_Mvk :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Ios_Surface_Create_Flags_Mvk,
	view: rawptr,
}

Wayland_Surface_Create_Info :: struct  {
	s_type: Structure_Type,
	next: rawptr,
	flags: Wayland_Surface_Create_Flags,
	display: ^wl_display,
	surface: ^wl_surface,
}

Video_Av1_Color_Config_Flags :: u64
Video_Av1_Color_Config :: struct  {
	flags: Video_Av1_Color_Config_Flags,
	bit_depth: u8,
	subsampling_x: u8,
	subsampling_y: u8,
	reserved1: u8,
	color_primaries: Video_Av1_Color_Primaries,
	transfer_characteristics: Video_Av1_Transfer_Characteristics,
	mat_coefficients: Video_Av1_Matrix_Coefficients,
	chroma_sample_position: Video_Av1_Chroma_Sample_Position,
}

Video_Av1_Timing_Info_Flags :: u64
Video_Av1_Timing_Info :: struct  {
	flags: Video_Av1_Timing_Info_Flags,
	num_units_in_display_tick: u32,
	time_scale: u32,
	num_ticks_per_picture_minus_1: u32,
}

Video_Av1_Loop_Filter_Flags :: u64
Video_Av1_Loop_Filter :: struct  {
	flags: Video_Av1_Loop_Filter_Flags,
	loop_filter_level: [VIDEO_AV1_MAX_LOOP_FILTER_STRENGTHS]u8,
	loop_filter_sharpness: u8,
	update_ref_delta: u8,
	loop_filter_ref_deltas: [VIDEO_AV1_TOTAL_REFS_PER_FRAME]i8,
	update_mode_delta: u8,
	loop_filter_mode_deltas: [VIDEO_AV1_LOOP_FILTER_ADJUSTMENTS]i8,
}

Video_Av1_Quantization_Flags :: u64
Video_Av1_Quantization :: struct  {
	flags: Video_Av1_Quantization_Flags,
	base_q_idx: u8,
	delta_qydc: i8,
	delta_qudc: i8,
	delta_quac: i8,
	delta_qvdc: i8,
	delta_qvac: i8,
	qm_y: u8,
	qm_u: u8,
	qm_v: u8,
}

Video_Av1_Segmentation :: struct  {
	feature_enabled: [VIDEO_AV1_MAX_SEGMENTS]u8,
}

Video_Av1_Tile_Info_Flags :: u64
Video_Av1_Tile_Info :: struct  {
	flags: Video_Av1_Tile_Info_Flags,
	tile_cols: u8,
	tile_rows: u8,
	context_update_tile_id: u16,
	tile_size_bytes_minus_1: u8,
	reserved1: [7]u8,
	mi_col_starts: ^u16,
	mi_row_starts: ^u16,
	width_in_sbs_minus1: ^u16,
	height_in_sbs_minus1: ^u16,
}

Video_Av1_Cdef :: struct  {
	cdef_damping_minus_3: u8,
	cdef_bits: u8,
	cdef_y_pri_strength: [VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS]u8,
	cdef_y_sec_strength: [VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS]u8,
	cdef_uv_pri_strength: [VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS]u8,
	cdef_uv_sec_strength: [VIDEO_AV1_MAX_CDEF_FILTER_STRENGTHS]u8,
}

Video_Av1_Loop_Restoration :: struct  {
	frame_restoration_type: [VIDEO_AV1_MAX_NUM_PLANES]Video_Av1_Frame_Restoration_Type,
	loop_restoration_size: [VIDEO_AV1_MAX_NUM_PLANES]u16,
}

Video_Av1_Global_Motion :: struct  {
	gm_type: [VIDEO_AV1_NUM_REF_FRAMES]u8,
}

Video_Av1_Film_Grain_Flags :: u64
Video_Av1_Film_Grain :: struct  {
	flags: Video_Av1_Film_Grain_Flags,
	grain_scaling_minus_8: u8,
	ar_coeff_lag: u8,
	ar_coeff_shift_minus_6: u8,
	grain_scale_shift: u8,
	grain_seed: u16,
	film_grain_params_ref_idx: u8,
	num_y_points: u8,
	point_y_value: [VIDEO_AV1_MAX_NUM_Y_POINTS]u8,
	point_y_scaling: [VIDEO_AV1_MAX_NUM_Y_POINTS]u8,
	num_cb_points: u8,
	point_cb_value: [VIDEO_AV1_MAX_NUM_CB_POINTS]u8,
	point_cb_scaling: [VIDEO_AV1_MAX_NUM_CB_POINTS]u8,
	num_cr_points: u8,
	point_cr_value: [VIDEO_AV1_MAX_NUM_CR_POINTS]u8,
	point_cr_scaling: [VIDEO_AV1_MAX_NUM_CR_POINTS]u8,
	ar_coeffs_y_plus_128: [VIDEO_AV1_MAX_NUM_POS_LUMA]i8,
	ar_coeffs_cb_plus_128: [VIDEO_AV1_MAX_NUM_POS_CHROMA]i8,
	ar_coeffs_cr_plus_128: [VIDEO_AV1_MAX_NUM_POS_CHROMA]i8,
	cb_mult: u8,
	cb_luma_mult: u8,
	cb_offset: u16,
	cr_mult: u8,
	cr_luma_mult: u8,
	cr_offset: u16,
}

Video_Av1_Sequence_Header_Flags :: u64
Video_Av1_Sequence_Header :: struct  {
	flags: Video_Av1_Sequence_Header_Flags,
	seq_profile: Video_Av1_Profile,
	frame_width_bits_minus_1: u8,
	frame_height_bits_minus_1: u8,
	max_frame_width_minus_1: u16,
	max_frame_height_minus_1: u16,
	delta_frame_id_length_minus_2: u8,
	additional_frame_id_length_minus_1: u8,
	order_hint_bits_minus_1: u8,
	seq_force_integer_mv: u8,
	seq_force_screen_content_tools: u8,
	reserved1: [5]u8,
	color_config: ^Video_Av1_Color_Config,
	timing_info: ^Video_Av1_Timing_Info,
}

Video_H264Sps_Vui_Flags :: u64
Video_H264Hrd_Parameters :: struct  {
	cpb_cnt_minus1: u8,
	bit_rate_scale: u8,
	cpb_size_scale: u8,
	reserved1: u8,
	bit_rate_value_minus1: [VIDEO_H264_CPB_CNT_LIST_SIZE]u32,
	cpb_size_value_minus1: [VIDEO_H264_CPB_CNT_LIST_SIZE]u32,
	cbr_flag: [VIDEO_H264_CPB_CNT_LIST_SIZE]u8,
	initial_cpb_removal_delay_length_minus1: u32,
	cpb_removal_delay_length_minus1: u32,
	dpb_output_delay_length_minus1: u32,
	time_offset_length: u32,
}

Video_H264Sequence_Parameter_Set_Vui :: struct  {
	flags: Video_H264Sps_Vui_Flags,
	aspect_ratio_idc: Video_H264Aspect_Ratio_Idc,
	sar_width: u16,
	sar_height: u16,
	video_format: u8,
	colour_primaries: u8,
	transfer_characteristics: u8,
	mat_coefficients: u8,
	num_units_in_tick: u32,
	time_scale: u32,
	max_num_reorder_frames: u8,
	max_dec_frame_buffering: u8,
	chroma_sample_loc_type_top_field: u8,
	chroma_sample_loc_type_bottom_field: u8,
	reserved1: u32,
	hrd_parameters: ^Video_H264Hrd_Parameters,
}

Video_H264Sps_Flags :: u64
Video_H264Scaling_Lists :: struct  {
	scaling_list_present_mask: u16,
	use_default_scaling_mat_mask: u16,
}

Video_H264Sequence_Parameter_Set :: struct  {
	flags: Video_H264Sps_Flags,
	profile_idc: Video_H264Profile_Idc,
	level_idc: Video_H264Level_Idc,
	chroma_format_idc: Video_H264Chroma_Format_Idc,
	seq_parameter_set_id: u8,
	bit_depth_luma_minus8: u8,
	bit_depth_chroma_minus8: u8,
	log2_max_frame_num_minus4: u8,
	pic_order_cnt_type: Video_H264Poc_Type,
	offset_for_non_ref_pic: i32,
	offset_for_top_to_bottom_field: i32,
	log2_max_pic_order_cnt_lsb_minus4: u8,
	num_ref_frames_in_pic_order_cnt_cycle: u8,
	max_num_ref_frames: u8,
	reserved1: u8,
	pic_width_in_mbs_minus1: u32,
	pic_height_in_map_units_minus1: u32,
	frame_crop_left_offset: u32,
	frame_crop_right_offset: u32,
	frame_crop_top_offset: u32,
	frame_crop_bottom_offset: u32,
	reserved2: u32,
	offset_for_ref_frame: ^i32,
	scaling_lists: ^Video_H264Scaling_Lists,
	sequence_parameter_set_vui: ^Video_H264Sequence_Parameter_Set_Vui,
}

Video_H264Pps_Flags :: u64
Video_H264Picture_Parameter_Set :: struct  {
	flags: Video_H264Pps_Flags,
	seq_parameter_set_id: u8,
	pic_parameter_set_id: u8,
	num_ref_idx_l0_default_active_minus1: u8,
	num_ref_idx_l1_default_active_minus1: u8,
	weighted_bipred_idc: Video_H264Weighted_Bipred_Idc,
	pic_init_qp_minus26: i8,
	pic_init_qs_minus26: i8,
	chroma_qp_index_offset: i8,
	second_chroma_qp_index_offset: i8,
	scaling_lists: ^Video_H264Scaling_Lists,
}

Video_H265Dec_Pic_Buf_Mgr :: struct  {
	max_latency_increase_plus1: [VIDEO_H265_SUBLAYERS_LIST_SIZE]u32,
	max_dec_pic_buffering_minus1: [VIDEO_H265_SUBLAYERS_LIST_SIZE]u8,
	max_num_reorder_pics: [VIDEO_H265_SUBLAYERS_LIST_SIZE]u8,
}

Video_H265Sub_Layer_Hrd_Parameters :: struct  {
	bit_rate_value_minus1: [VIDEO_H265_CPB_CNT_LIST_SIZE]u32,
	cpb_size_value_minus1: [VIDEO_H265_CPB_CNT_LIST_SIZE]u32,
	cpb_size_du_value_minus1: [VIDEO_H265_CPB_CNT_LIST_SIZE]u32,
	bit_rate_du_value_minus1: [VIDEO_H265_CPB_CNT_LIST_SIZE]u32,
	cbr_flag: u32,
}

Video_H265Hrd_Flags :: u64
Video_H265Hrd_Parameters :: struct  {
	flags: Video_H265Hrd_Flags,
	tick_divisor_minus2: u8,
	du_cpb_removal_delay_increment_length_minus1: u8,
	dpb_output_delay_du_length_minus1: u8,
	bit_rate_scale: u8,
	cpb_size_scale: u8,
	cpb_size_du_scale: u8,
	initial_cpb_removal_delay_length_minus1: u8,
	au_cpb_removal_delay_length_minus1: u8,
	dpb_output_delay_length_minus1: u8,
	cpb_cnt_minus1: [VIDEO_H265_SUBLAYERS_LIST_SIZE]u8,
	elemental_duration_in_tc_minus1: [VIDEO_H265_SUBLAYERS_LIST_SIZE]u16,
	reserved: [3]u16,
	sub_layer_hrd_parameters_nal: ^Video_H265Sub_Layer_Hrd_Parameters,
	sub_layer_hrd_parameters_vcl: ^Video_H265Sub_Layer_Hrd_Parameters,
}

Video_H265Vps_Flags :: u64
Video_H265Profile_Tier_Level_Flags :: u64
Video_H265Profile_Tier_Level :: struct  {
	flags: Video_H265Profile_Tier_Level_Flags,
	general_profile_idc: Video_H265Profile_Idc,
	general_level_idc: Video_H265Level_Idc,
}

Video_H265Video_Parameter_Set :: struct  {
	flags: Video_H265Vps_Flags,
	vps_video_parameter_set_id: u8,
	vps_max_sub_layers_minus1: u8,
	reserved1: u8,
	reserved2: u8,
	vps_num_units_in_tick: u32,
	vps_time_scale: u32,
	vps_num_ticks_poc_diff_one_minus1: u32,
	reserved3: u32,
	dec_pic_buf_mgr: ^Video_H265Dec_Pic_Buf_Mgr,
	hrd_parameters: ^Video_H265Hrd_Parameters,
	profile_tier_level: ^Video_H265Profile_Tier_Level,
}

Video_H265Scaling_Lists :: struct  {
	scaling_list_dccoef16x16: [VIDEO_H265_SCALING_LIST_16X16_NUM_LISTS]u8,
	scaling_list_dccoef32x32: [VIDEO_H265_SCALING_LIST_32X32_NUM_LISTS]u8,
}

Video_H265Sps_Vui_Flags :: u64
Video_H265Sequence_Parameter_Set_Vui :: struct  {
	flags: Video_H265Sps_Vui_Flags,
	aspect_ratio_idc: Video_H265Aspect_Ratio_Idc,
	sar_width: u16,
	sar_height: u16,
	video_format: u8,
	colour_primaries: u8,
	transfer_characteristics: u8,
	mat_coeffs: u8,
	chroma_sample_loc_type_top_field: u8,
	chroma_sample_loc_type_bottom_field: u8,
	reserved1: u8,
	reserved2: u8,
	def_disp_win_left_offset: u16,
	def_disp_win_right_offset: u16,
	def_disp_win_top_offset: u16,
	def_disp_win_bottom_offset: u16,
	vui_num_units_in_tick: u32,
	vui_time_scale: u32,
	vui_num_ticks_poc_diff_one_minus1: u32,
	min_spatial_segmentation_idc: u16,
	reserved3: u16,
	max_bytes_per_pic_denom: u8,
	max_bits_per_min_cu_denom: u8,
	log2_max_mv_length_horizontal: u8,
	log2_max_mv_length_vertical: u8,
	hrd_parameters: ^Video_H265Hrd_Parameters,
}

Video_H265Predictor_Palette_Entries :: struct  {
}

Video_H265Sps_Flags :: u64
Video_H265Short_Term_Ref_Pic_Set_Flags :: u64
Video_H265Short_Term_Ref_Pic_Set :: struct  {
	flags: Video_H265Short_Term_Ref_Pic_Set_Flags,
	delta_idx_minus1: u32,
	use_delta_flag: u16,
	abs_delta_rps_minus1: u16,
	used_by_curr_pic_flag: u16,
	used_by_curr_pic_s0_flag: u16,
	used_by_curr_pic_s1_flag: u16,
	reserved1: u16,
	reserved2: u8,
	reserved3: u8,
	num_negative_pics: u8,
	num_positive_pics: u8,
	delta_poc_s0_minus1: [VIDEO_H265_MAX_DPB_SIZE]u16,
	delta_poc_s1_minus1: [VIDEO_H265_MAX_DPB_SIZE]u16,
}

Video_H265Long_Term_Ref_Pics_Sps :: struct  {
	used_by_curr_pic_lt_sps_flag: u32,
	lt_ref_pic_poc_lsb_sps: [VIDEO_H265_MAX_LONG_TERM_REF_PICS_SPS]u32,
}

Video_H265Sequence_Parameter_Set :: struct  {
	flags: Video_H265Sps_Flags,
	chroma_format_idc: Video_H265Chroma_Format_Idc,
	pic_width_in_luma_samples: u32,
	pic_height_in_luma_samples: u32,
	sps_video_parameter_set_id: u8,
	sps_max_sub_layers_minus1: u8,
	sps_seq_parameter_set_id: u8,
	bit_depth_luma_minus8: u8,
	bit_depth_chroma_minus8: u8,
	log2_max_pic_order_cnt_lsb_minus4: u8,
	log2_min_luma_coding_block_size_minus3: u8,
	log2_diff_max_min_luma_coding_block_size: u8,
	log2_min_luma_transform_block_size_minus2: u8,
	log2_diff_max_min_luma_transform_block_size: u8,
	max_transform_hierarchy_depth_inter: u8,
	max_transform_hierarchy_depth_intra: u8,
	num_short_term_ref_pic_sets: u8,
	num_long_term_ref_pics_sps: u8,
	pcm_sample_bit_depth_luma_minus1: u8,
	pcm_sample_bit_depth_chroma_minus1: u8,
	log2_min_pcm_luma_coding_block_size_minus3: u8,
	log2_diff_max_min_pcm_luma_coding_block_size: u8,
	reserved1: u8,
	reserved2: u8,
	palette_max_size: u8,
	delta_palette_max_predictor_size: u8,
	motion_vector_resolution_control_idc: u8,
	sps_num_palette_predictor_initializers_minus1: u8,
	conf_win_left_offset: u32,
	conf_win_right_offset: u32,
	conf_win_top_offset: u32,
	conf_win_bottom_offset: u32,
	profile_tier_level: ^Video_H265Profile_Tier_Level,
	dec_pic_buf_mgr: ^Video_H265Dec_Pic_Buf_Mgr,
	scaling_lists: ^Video_H265Scaling_Lists,
	short_term_ref_pic_set: ^Video_H265Short_Term_Ref_Pic_Set,
	long_term_ref_pics_sps: ^Video_H265Long_Term_Ref_Pics_Sps,
	sequence_parameter_set_vui: ^Video_H265Sequence_Parameter_Set_Vui,
	predictor_palette_entries: ^Video_H265Predictor_Palette_Entries,
}

Video_H265Pps_Flags :: u64
Video_H265Picture_Parameter_Set :: struct  {
	flags: Video_H265Pps_Flags,
	pps_pic_parameter_set_id: u8,
	pps_seq_parameter_set_id: u8,
	sps_video_parameter_set_id: u8,
	num_extra_slice_header_bits: u8,
	num_ref_idx_l0_default_active_minus1: u8,
	num_ref_idx_l1_default_active_minus1: u8,
	init_qp_minus26: i8,
	diff_cu_qp_delta_depth: u8,
	pps_cb_qp_offset: i8,
	pps_cr_qp_offset: i8,
	pps_beta_offset_div2: i8,
	pps_tc_offset_div2: i8,
	log2_parallel_merge_level_minus2: u8,
	log2_max_transform_skip_block_size_minus2: u8,
	diff_cu_chroma_qp_offset_depth: u8,
	chroma_qp_offset_list_len_minus1: u8,
	cb_qp_offset_list: [VIDEO_H265_CHROMA_QP_OFFSET_LIST_SIZE]i8,
	cr_qp_offset_list: [VIDEO_H265_CHROMA_QP_OFFSET_LIST_SIZE]i8,
	log2_sao_offset_scale_luma: u8,
	log2_sao_offset_scale_chroma: u8,
	pps_act_y_qp_offset_plus5: i8,
	pps_act_cb_qp_offset_plus5: i8,
	pps_act_cr_qp_offset_plus3: i8,
	pps_num_palette_predictor_initializers: u8,
	luma_bit_depth_entry_minus8: u8,
	chroma_bit_depth_entry_minus8: u8,
	num_tile_columns_minus1: u8,
	num_tile_rows_minus1: u8,
	reserved1: u8,
	reserved2: u8,
	column_width_minus1: [VIDEO_H265_CHROMA_QP_OFFSET_TILE_COLS_LIST_SIZE]u16,
	row_height_minus1: [VIDEO_H265_CHROMA_QP_OFFSET_TILE_ROWS_LIST_SIZE]u16,
	reserved3: u32,
	scaling_lists: ^Video_H265Scaling_Lists,
	predictor_palette_entries: ^Video_H265Predictor_Palette_Entries,
}

Video_Decode_Av1_Picture_Info_Flags :: u64
Video_Decode_Av1_Reference_Info_Flags :: u64
Video_Decode_Av1_Reference_Info :: struct  {
	flags: Video_Decode_Av1_Reference_Info_Flags,
	frame_type: u8,
	ref_frame_sign_bias: u8,
	order_hint: u8,
	saved_order_hints: [VIDEO_AV1_NUM_REF_FRAMES]u8,
}

Video_Decode_H264Picture_Info_Flags :: u64
Video_Decode_H264Reference_Info_Flags :: u64
Video_Decode_H264Reference_Info :: struct  {
	flags: Video_Decode_H264Reference_Info_Flags,
	frame_num: u16,
	reserved: u16,
	pic_order_cnt: [VIDEO_DECODE_H264_FIELD_ORDER_COUNT_LIST_SIZE]i32,
}

Video_Decode_H265Picture_Info_Flags :: u64
Video_Decode_H265Reference_Info_Flags :: u64
Video_Decode_H265Reference_Info :: struct  {
	flags: Video_Decode_H265Reference_Info_Flags,
	pic_order_cnt_val: i32,
}

Video_Encode_Av1_Decoder_Model_Info :: struct  {
	buffer_delay_length_minus_1: u8,
	buffer_removal_time_length_minus_1: u8,
	frame_presentation_time_length_minus_1: u8,
	reserved1: u8,
	num_units_in_decoding_tick: u32,
}

Video_Encode_Av1_Extension_Header :: struct  {
	temporal_id: u8,
	spatial_id: u8,
}

Video_Encode_Av1_Operating_Point_Info_Flags :: u64
Video_Encode_Av1_Operating_Point_Info :: struct  {
	flags: Video_Encode_Av1_Operating_Point_Info_Flags,
	operating_point_idc: u16,
	seq_level_idx: u8,
	seq_tier: u8,
	decoder_buffer_delay: u32,
	encoder_buffer_delay: u32,
	initial_display_delay_minus_1: u8,
}

Video_Encode_Av1_Picture_Info_Flags :: u64
Video_Encode_Av1_Reference_Info_Flags :: u64
Video_Encode_Av1_Reference_Info :: struct  {
	flags: Video_Encode_Av1_Reference_Info_Flags,
	ref_frame_id: u32,
	frame_type: Video_Av1_Frame_Type,
	order_hint: u8,
	reserved1: [3]u8,
	extension_header: ^Video_Encode_Av1_Extension_Header,
}

Video_Encode_H264Weight_Table_Flags :: struct  {
	luma_weight_l0_flag: u32,
	chroma_weight_l0_flag: u32,
	luma_weight_l1_flag: u32,
	chroma_weight_l1_flag: u32,
}

Video_Encode_H264Weight_Table :: struct  {
	flags: Video_Encode_H264Weight_Table_Flags,
	luma_log2_weight_denom: u8,
	chroma_log2_weight_denom: u8,
	luma_weight_l0: [VIDEO_H264_MAX_NUM_LIST_REF]i8,
	luma_offset_l0: [VIDEO_H264_MAX_NUM_LIST_REF]i8,
	luma_weight_l1: [VIDEO_H264_MAX_NUM_LIST_REF]i8,
	luma_offset_l1: [VIDEO_H264_MAX_NUM_LIST_REF]i8,
}

Video_Encode_H264Slice_Header_Flags :: u64
Video_Encode_H264Picture_Info_Flags :: u64
Video_Encode_H264Reference_Info_Flags :: u64
Video_Encode_H264Reference_Lists_Info_Flags :: u64
Video_Encode_H264Ref_List_Mod_Entry :: struct  {
	modification_of_pic_nums_idc: Video_H264Modification_Of_Pic_Nums_Idc,
	abs_diff_pic_num_minus1: u16,
	long_term_pic_num: u16,
}

Video_Encode_H264Ref_Pic_Marking_Entry :: struct  {
	memory_management_control_operation: Video_H264Mem_Mgmt_Control_Op,
	difference_of_pic_nums_minus1: u16,
	long_term_pic_num: u16,
	long_term_frame_idx: u16,
	max_long_term_frame_idx_plus1: u16,
}

Video_Encode_H264Reference_Lists_Info :: struct  {
	flags: Video_Encode_H264Reference_Lists_Info_Flags,
	num_ref_idx_l0_active_minus1: u8,
	num_ref_idx_l1_active_minus1: u8,
	ref_pic_list0: [VIDEO_H264_MAX_NUM_LIST_REF]u8,
	ref_pic_list1: [VIDEO_H264_MAX_NUM_LIST_REF]u8,
	ref_list0_mod_op_count: u8,
	ref_list1_mod_op_count: u8,
	ref_pic_marking_op_count: u8,
	reserved1: [7]u8,
	ref_list0_mod_operations: ^Video_Encode_H264Ref_List_Mod_Entry,
	ref_list1_mod_operations: ^Video_Encode_H264Ref_List_Mod_Entry,
	ref_pic_marking_operations: ^Video_Encode_H264Ref_Pic_Marking_Entry,
}

Video_Encode_H264Reference_Info :: struct  {
	flags: Video_Encode_H264Reference_Info_Flags,
	primary_pic_type: Video_H264Picture_Type,
	frame_num: u32,
	pic_order_cnt: i32,
	long_term_pic_num: u16,
	long_term_frame_idx: u16,
	temporal_id: u8,
}

Video_Encode_H264Slice_Header :: struct  {
	flags: Video_Encode_H264Slice_Header_Flags,
	first_mb_in_slice: u32,
	slice_type: Video_H264Slice_Type,
	slice_alpha_c0_offset_div2: i8,
	slice_beta_offset_div2: i8,
	slice_qp_delta: i8,
	reserved1: u8,
	cabac_init_idc: Video_H264Cabac_Init_Idc,
	disable_deblocking_filter_idc: Video_H264Disable_Deblocking_Filter_Idc,
	weight_table: ^Video_Encode_H264Weight_Table,
}

Video_Encode_H265Weight_Table_Flags :: struct  {
	luma_weight_l0_flag: u16,
	chroma_weight_l0_flag: u16,
	luma_weight_l1_flag: u16,
	chroma_weight_l1_flag: u16,
}

Video_Encode_H265Weight_Table :: struct  {
	flags: Video_Encode_H265Weight_Table_Flags,
	luma_log2_weight_denom: u8,
	delta_chroma_log2_weight_denom: i8,
	delta_luma_weight_l0: [VIDEO_H265_MAX_NUM_LIST_REF]i8,
	luma_offset_l0: [VIDEO_H265_MAX_NUM_LIST_REF]i8,
	delta_luma_weight_l1: [VIDEO_H265_MAX_NUM_LIST_REF]i8,
	luma_offset_l1: [VIDEO_H265_MAX_NUM_LIST_REF]i8,
}

Video_Encode_H265Slice_Segment_Header_Flags :: u64
Video_Encode_H265Slice_Segment_Header :: struct  {
	flags: Video_Encode_H265Slice_Segment_Header_Flags,
	slice_type: Video_H265Slice_Type,
	slice_segment_address: u32,
	collocated_ref_idx: u8,
	max_num_merge_cand: u8,
	slice_cb_qp_offset: i8,
	slice_cr_qp_offset: i8,
	slice_beta_offset_div2: i8,
	slice_tc_offset_div2: i8,
	slice_act_y_qp_offset: i8,
	slice_act_cb_qp_offset: i8,
	slice_act_cr_qp_offset: i8,
	slice_qp_delta: i8,
	reserved1: u16,
	weight_table: ^Video_Encode_H265Weight_Table,
}

Video_Encode_H265Reference_Lists_Info_Flags :: u64
Video_Encode_H265Reference_Lists_Info :: struct  {
	flags: Video_Encode_H265Reference_Lists_Info_Flags,
	num_ref_idx_l0_active_minus1: u8,
	num_ref_idx_l1_active_minus1: u8,
	ref_pic_list0: [VIDEO_H265_MAX_NUM_LIST_REF]u8,
	ref_pic_list1: [VIDEO_H265_MAX_NUM_LIST_REF]u8,
	list_entry_l0: [VIDEO_H265_MAX_NUM_LIST_REF]u8,
	list_entry_l1: [VIDEO_H265_MAX_NUM_LIST_REF]u8,
}

Video_Encode_H265Picture_Info_Flags :: u64
Video_Encode_H265Long_Term_Ref_Pics :: struct  {
	num_long_term_sps: u8,
	num_long_term_pics: u8,
	lt_idx_sps: [VIDEO_H265_MAX_LONG_TERM_REF_PICS_SPS]u8,
	poc_lsb_lt: [VIDEO_H265_MAX_LONG_TERM_PICS]u8,
	used_by_curr_pic_lt_flag: u16,
	delta_poc_msb_present_flag: [VIDEO_H265_MAX_DELTA_POC]u8,
	delta_poc_msb_cycle_lt: [VIDEO_H265_MAX_DELTA_POC]u8,
}

Video_Encode_H265Reference_Info_Flags :: u64
Video_Encode_H265Reference_Info :: struct  {
	flags: Video_Encode_H265Reference_Info_Flags,
	pic_type: Video_H265Picture_Type,
	pic_order_cnt_val: i32,
	temporal_id: u8,
}


wl_surface   :: struct {} // Opaque struct defined by Wayland
wl_display   :: struct {} // Opaque struct defined by Wayland
Iosurface_Ref :: struct {} // Opaque struct defined by Apple’s CoreGraphics framework
// Aliases
Bool_32 :: u32
Physical_Device_Variable_Pointer_Features :: Physical_Device_Variable_Pointers_Features
Physical_Device_Shader_Draw_Parameter_Features :: Physical_Device_Shader_Draw_Parameters_Features
Physical_Device_Float_16Int_8Features :: Physical_Device_Shader_Float_16Int_8Features
Query_Pool_Create_Info_Intel :: Query_Pool_Performance_Query_Create_Info_Intel
Physical_Device_Buffer_Address_Features :: Physical_Device_Buffer_Device_Address_Features
Physical_Device_Rasterization_Order_Attachment_Access_Features_Arm :: Physical_Device_Rasterization_Order_Attachment_Access_Features
Physical_Device_Mutable_Descriptor_Type_Features_Valve :: Physical_Device_Mutable_Descriptor_Type_Features
Mutable_Descriptor_Type_List_Valve :: Mutable_Descriptor_Type_List
Mutable_Descriptor_Type_Create_Info_Valve :: Mutable_Descriptor_Type_Create_Info
Remote_Address :: [^]u8
Shader_Required_Subgroup_Size_Create_Info :: Pipeline_Shader_Stage_Required_Subgroup_Size_Create_Info


