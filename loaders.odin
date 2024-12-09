//
// Vulkan wrapper generated from "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/master/include/vulkan/vulkan_core.h"
//
package idiomatic_odin_vulkan_bindings

// Loader Procedures
raw_create_instance                        : Proc_Create_Instance
debug_utils_messenger_callback             : Proc_Debug_Utils_Messenger_Callback
device_memory_report_callback              : Proc_Device_Memory_Report_Callback
raw_enumerate_instance_extension_properties: Proc_Enumerate_Instance_Extension_Properties
raw_enumerate_instance_layer_properties    : Proc_Enumerate_Instance_Layer_Properties
enumerate_instance_version                 : Proc_Enumerate_Instance_Version

// Misc Procedures
allocation_function             : Proc_Allocation_Function
raw_debug_report_callback       : Proc_Debug_Report_Callback
free_function                   : Proc_Free_Function
get_instance_proc_addr          : Proc_Get_Instance_Proc_Addr
internal_allocation_notification: Proc_Internal_Allocation_Notification
internal_free_notification      : Proc_Internal_Free_Notification
reallocation_function           : Proc_Reallocation_Function
void_function                   : Proc_Void_Function

// Instance Procedures
acquire_drm_display                                                     : Proc_Acquire_Drm_Display
acquire_winrt_display                                                   : Proc_Acquire_Winrt_Display
raw_create_debug_report_callback                                        : Proc_Create_Debug_Report_Callback
raw_create_debug_utils_messenger                                        : Proc_Create_Debug_Utils_Messenger
raw_create_device                                                       : Proc_Create_Device
raw_create_display_mode                                                 : Proc_Create_Display_Mode
raw_create_display_plane_surface                                        : Proc_Create_Display_Plane_Surface
raw_create_headless_surface                                             : Proc_Create_Headless_Surface
raw_create_iossurface_mvk                                               : Proc_Create_Ios_Surface_Mvk
raw_create_mac_ossurface_mvk                                            : Proc_Create_Macos_Surface_Mvk
raw_create_metal_surface                                                : Proc_Create_Metal_Surface
raw_create_wayland_surface                                              : Proc_Create_Wayland_Surface
raw_create_win32_surface                                                : Proc_Create_Win32_Surface
raw_debug_report_message                                                : Proc_Debug_Report_Message
raw_destroy_debug_report_callback                                       : Proc_Destroy_Debug_Report_Callback
raw_destroy_debug_utils_messenger                                       : Proc_Destroy_Debug_Utils_Messenger
raw_destroy_instance                                                    : Proc_Destroy_Instance
raw_destroy_surface                                                     : Proc_Destroy_Surface
raw_enumerate_device_extension_properties                               : Proc_Enumerate_Device_Extension_Properties
raw_enumerate_device_layer_properties                                   : Proc_Enumerate_Device_Layer_Properties
raw_enumerate_physical_device_groups                                    : Proc_Enumerate_Physical_Device_Groups
enumerate_physical_device_queue_family_performance_query_counters       : Proc_Enumerate_Physical_Device_Queue_Family_Performance_Query_Counters
raw_enumerate_physical_devices                                          : Proc_Enumerate_Physical_Devices
get_device_proc_addr                                                    : Proc_Get_Device_Proc_Addr
raw_get_display_mode_properties                                         : Proc_Get_Display_Mode_Properties
raw_get_display_mode_properties2                                        : Proc_Get_Display_Mode_Properties_2
raw_get_display_plane_capabilities                                      : Proc_Get_Display_Plane_Capabilities
raw_get_display_plane_capabilities2                                     : Proc_Get_Display_Plane_Capabilities_2
raw_get_display_plane_supported_displays                                : Proc_Get_Display_Plane_Supported_Displays
raw_get_drm_display                                                     : Proc_Get_Drm_Display
get_instance_proc_addr_lunarg                                           : Proc_Get_Instance_Proc_Addr_Lunarg
raw_get_physical_device_calibrateable_time_domains                      : Proc_Get_Physical_Device_Calibrateable_Time_Domains
raw_get_physical_device_cooperative_mat_flexible_dimensions_properties  : Proc_Get_Physical_Device_Cooperative_Matrix_Flexible_Dimensions_Properties
raw_get_physical_device_cooperative_mat_properties                      : Proc_Get_Physical_Device_Cooperative_Matrix_Properties
raw_get_physical_device_display_plane_properties                        : Proc_Get_Physical_Device_Display_Plane_Properties
raw_get_physical_device_display_plane_properties2                       : Proc_Get_Physical_Device_Display_Plane_Properties_2
raw_get_physical_device_display_properties                              : Proc_Get_Physical_Device_Display_Properties
raw_get_physical_device_display_properties2                             : Proc_Get_Physical_Device_Display_Properties_2
raw_get_physical_device_external_buffer_properties                      : Proc_Get_Physical_Device_External_Buffer_Properties
raw_get_physical_device_external_fence_properties                       : Proc_Get_Physical_Device_External_Fence_Properties
raw_get_physical_device_external_image_format_properties                : Proc_Get_Physical_Device_External_Image_Format_Properties
raw_get_physical_device_external_semaphore_properties                   : Proc_Get_Physical_Device_External_Semaphore_Properties
raw_get_physical_device_features                                        : Proc_Get_Physical_Device_Features
raw_get_physical_device_features2                                       : Proc_Get_Physical_Device_Features_2
raw_get_physical_device_format_properties                               : Proc_Get_Physical_Device_Format_Properties
raw_get_physical_device_format_properties2                              : Proc_Get_Physical_Device_Format_Properties_2
raw_get_physical_device_fragment_shading_rates                          : Proc_Get_Physical_Device_Fragment_Shading_Rates
raw_get_physical_device_image_format_properties                         : Proc_Get_Physical_Device_Image_Format_Properties
raw_get_physical_device_image_format_properties2                        : Proc_Get_Physical_Device_Image_Format_Properties_2
raw_get_physical_device_memory_properties                               : Proc_Get_Physical_Device_Memory_Properties
raw_get_physical_device_memory_properties2                              : Proc_Get_Physical_Device_Memory_Properties_2
raw_get_physical_device_multisample_properties                          : Proc_Get_Physical_Device_Multisample_Properties
raw_get_physical_device_optical_flow_image_formats                      : Proc_Get_Physical_Device_Optical_Flow_Image_Formats
raw_get_physical_device_present_rectangles                              : Proc_Get_Physical_Device_Present_Rectangles
raw_get_physical_device_properties                                      : Proc_Get_Physical_Device_Properties
raw_get_physical_device_properties2                                     : Proc_Get_Physical_Device_Properties_2
raw_get_physical_device_queue_family_performance_query_passes           : Proc_Get_Physical_Device_Queue_Family_Performance_Query_Passes
raw_get_physical_device_queue_family_properties                         : Proc_Get_Physical_Device_Queue_Family_Properties
raw_get_physical_device_queue_family_properties2                        : Proc_Get_Physical_Device_Queue_Family_Properties_2
raw_get_physical_device_sparse_image_format_properties                  : Proc_Get_Physical_Device_Sparse_Image_Format_Properties
raw_get_physical_device_sparse_image_format_properties2                 : Proc_Get_Physical_Device_Sparse_Image_Format_Properties_2
raw_get_physical_device_supported_framebuffer_mixed_samples_combinations: Proc_Get_Physical_Device_Supported_Framebuffer_Mixed_Samples_Combinations
raw_get_physical_device_surface_capabilities                            : Proc_Get_Physical_Device_Surface_Capabilities
raw_get_physical_device_surface_capabilities2                           : Proc_Get_Physical_Device_Surface_Capabilities_2
raw_get_physical_device_surface_formats                                 : Proc_Get_Physical_Device_Surface_Formats
raw_get_physical_device_surface_formats2                                : Proc_Get_Physical_Device_Surface_Formats_2
raw_get_physical_device_surface_present_modes                           : Proc_Get_Physical_Device_Surface_Present_Modes
raw_get_physical_device_surface_present_modes2                          : Proc_Get_Physical_Device_Surface_Present_Modes_2
raw_get_physical_device_surface_support                                 : Proc_Get_Physical_Device_Surface_Support
raw_get_physical_device_tool_properties                                 : Proc_Get_Physical_Device_Tool_Properties
raw_get_physical_device_video_capabilities                              : Proc_Get_Physical_Device_Video_Capabilities
raw_get_physical_device_video_encode_quality_level_properties           : Proc_Get_Physical_Device_Video_Encode_Quality_Level_Properties
raw_get_physical_device_video_format_properties                         : Proc_Get_Physical_Device_Video_Format_Properties
raw_get_physical_device_wayland_presentation_support                    : Proc_Get_Physical_Device_Wayland_Presentation_Support
get_physical_device_win32_presentation_support                          : Proc_Get_Physical_Device_Win32_Presentation_Support
raw_get_winrt_display                                                   : Proc_Get_Winrt_Display
release_display                                                         : Proc_Release_Display
submit_debug_utils_message                                              : Proc_Submit_Debug_Utils_Message

// Device Procedures
raw_acquire_full_screen_exclusive_mode                       : Proc_Acquire_Full_Screen_Exclusive_Mode
raw_acquire_next_image                                       : Proc_Acquire_Next_Image
raw_acquire_next_image2                                      : Proc_Acquire_Next_Image_2
raw_acquire_performance_configuration_intel                  : Proc_Acquire_Performance_Configuration_Intel
raw_acquire_profiling_lock                                   : Proc_Acquire_Profiling_Lock
raw_allocate_command_buffers                                 : Proc_Allocate_Command_Buffers
raw_allocate_descriptor_sets                                 : Proc_Allocate_Descriptor_Sets
raw_allocate_memory                                          : Proc_Allocate_Memory
raw_anti_lag_update                                          : Proc_Anti_Lag_Update
raw_begin_command_buffer                                     : Proc_Begin_Command_Buffer
raw_bind_acceleration_structure_memory                       : Proc_Bind_Acceleration_Structure_Memory
raw_bind_buffer_memory                                       : Proc_Bind_Buffer_Memory
raw_bind_buffer_memory2                                      : Proc_Bind_Buffer_Memory_2
raw_bind_image_memory                                        : Proc_Bind_Image_Memory
raw_bind_image_memory2                                       : Proc_Bind_Image_Memory_2
raw_bind_optical_flow_session_image                          : Proc_Bind_Optical_Flow_Session_Image
raw_bind_video_session_memory                                : Proc_Bind_Video_Session_Memory
raw_build_acceleration_structures                            : Proc_Build_Acceleration_Structures
raw_build_micromaps                                          : Proc_Build_Micromaps
raw_cmd_begin_conditional_rendering                          : Proc_Cmd_Begin_Conditional_Rendering
raw_cmd_begin_debug_utils_label                              : Proc_Cmd_Begin_Debug_Utils_Label
raw_cmd_begin_query                                          : Proc_Cmd_Begin_Query
raw_cmd_begin_query_indexed                                  : Proc_Cmd_Begin_Query_Indexed
raw_cmd_begin_render_pass                                    : Proc_Cmd_Begin_Render_Pass
raw_cmd_begin_render_pass2                                   : Proc_Cmd_Begin_Render_Pass_2
cmd_begin_rendering                                          : Proc_Cmd_Begin_Rendering
raw_cmd_begin_transform_feedback                             : Proc_Cmd_Begin_Transform_Feedback
raw_cmd_begin_video_coding                                   : Proc_Cmd_Begin_Video_Coding
cmd_bind_descriptor_buffer_embedded_samplers                 : Proc_Cmd_Bind_Descriptor_Buffer_Embedded_Samplers
raw_cmd_bind_descriptor_buffer_embedded_samplers2            : Proc_Cmd_Bind_Descriptor_Buffer_Embedded_Samplers_2
cmd_bind_descriptor_buffers                                  : Proc_Cmd_Bind_Descriptor_Buffers
raw_cmd_bind_descriptor_sets                                 : Proc_Cmd_Bind_Descriptor_Sets
cmd_bind_descriptor_sets2                                    : Proc_Cmd_Bind_Descriptor_Sets_2
cmd_bind_index_buffer                                        : Proc_Cmd_Bind_Index_Buffer
cmd_bind_index_buffer2                                       : Proc_Cmd_Bind_Index_Buffer_2
cmd_bind_invocation_mask_huawei                              : Proc_Cmd_Bind_Invocation_Mask_Huawei
cmd_bind_pipeline                                            : Proc_Cmd_Bind_Pipeline
cmd_bind_pipeline_shader_group                               : Proc_Cmd_Bind_Pipeline_Shader_Group
raw_cmd_bind_shaders                                         : Proc_Cmd_Bind_Shaders
cmd_bind_shading_rate_image                                  : Proc_Cmd_Bind_Shading_Rate_Image
cmd_bind_transform_feedback_buffers                          : Proc_Cmd_Bind_Transform_Feedback_Buffers
cmd_bind_vertex_buffers                                      : Proc_Cmd_Bind_Vertex_Buffers
cmd_bind_vertex_buffers2                                     : Proc_Cmd_Bind_Vertex_Buffers_2
raw_cmd_blit_image                                           : Proc_Cmd_Blit_Image
cmd_blit_image2                                              : Proc_Cmd_Blit_Image_2
raw_cmd_build_acceleration_structure                         : Proc_Cmd_Build_Acceleration_Structure
raw_cmd_build_acceleration_structures                        : Proc_Cmd_Build_Acceleration_Structures
raw_cmd_build_acceleration_structures_indirect               : Proc_Cmd_Build_Acceleration_Structures_Indirect
raw_cmd_build_micromaps                                      : Proc_Cmd_Build_Micromaps
raw_cmd_clear_attachments                                    : Proc_Cmd_Clear_Attachments
raw_cmd_clear_color_image                                    : Proc_Cmd_Clear_Color_Image
raw_cmd_clear_depth_stencil_image                            : Proc_Cmd_Clear_Depth_Stencil_Image
raw_cmd_control_video_coding                                 : Proc_Cmd_Control_Video_Coding
cmd_copy_acceleration_structure                              : Proc_Cmd_Copy_Acceleration_Structure
raw_cmd_copy_acceleration_structure_to_memory                : Proc_Cmd_Copy_Acceleration_Structure_To_Memory
raw_cmd_copy_buffer                                          : Proc_Cmd_Copy_Buffer
cmd_copy_buffer2                                             : Proc_Cmd_Copy_Buffer_2
raw_cmd_copy_buffer_to_image                                 : Proc_Cmd_Copy_Buffer_To_Image
cmd_copy_buffer_to_image2                                    : Proc_Cmd_Copy_Buffer_To_Image_2
raw_cmd_copy_image                                           : Proc_Cmd_Copy_Image
cmd_copy_image2                                              : Proc_Cmd_Copy_Image_2
raw_cmd_copy_image_to_buffer                                 : Proc_Cmd_Copy_Image_To_Buffer
cmd_copy_image_to_buffer2                                    : Proc_Cmd_Copy_Image_To_Buffer_2
cmd_copy_memory_indirect                                     : Proc_Cmd_Copy_Memory_Indirect
raw_cmd_copy_memory_to_acceleration_structure                : Proc_Cmd_Copy_Memory_To_Acceleration_Structure
cmd_copy_memory_to_image_indirect                            : Proc_Cmd_Copy_Memory_To_Image_Indirect
raw_cmd_copy_memory_to_micromap                              : Proc_Cmd_Copy_Memory_To_Micromap
raw_cmd_copy_micromap                                        : Proc_Cmd_Copy_Micromap
raw_cmd_copy_micromap_to_memory                              : Proc_Cmd_Copy_Micromap_To_Memory
raw_cmd_copy_query_pool_results                              : Proc_Cmd_Copy_Query_Pool_Results
cmd_cu_launch_kernel                                         : Proc_Cmd_Cu_Launch_Kernel
cmd_cuda_launch_kernel                                       : Proc_Cmd_Cuda_Launch_Kernel
raw_cmd_debug_marker_begin                                   : Proc_Cmd_Debug_Marker_Begin
cmd_debug_marker_end                                         : Proc_Cmd_Debug_Marker_End
raw_cmd_debug_marker_insert                                  : Proc_Cmd_Debug_Marker_Insert
cmd_decode_video                                             : Proc_Cmd_Decode_Video
cmd_decompress_memory                                        : Proc_Cmd_Decompress_Memory
cmd_decompress_memory_indirect_count                         : Proc_Cmd_Decompress_Memory_Indirect_Count
cmd_dispatch                                                 : Proc_Cmd_Dispatch
cmd_dispatch_base                                            : Proc_Cmd_Dispatch_Base
cmd_dispatch_indirect                                        : Proc_Cmd_Dispatch_Indirect
cmd_draw                                                     : Proc_Cmd_Draw
cmd_draw_cluster_huawei                                      : Proc_Cmd_Draw_Cluster_Huawei
cmd_draw_cluster_indirect_huawei                             : Proc_Cmd_Draw_Cluster_Indirect_Huawei
cmd_draw_indexed                                             : Proc_Cmd_Draw_Indexed
cmd_draw_indexed_indirect                                    : Proc_Cmd_Draw_Indexed_Indirect
raw_cmd_draw_indexed_indirect_count                          : Proc_Cmd_Draw_Indexed_Indirect_Count
cmd_draw_indirect                                            : Proc_Cmd_Draw_Indirect
raw_cmd_draw_indirect_byte_count                             : Proc_Cmd_Draw_Indirect_Byte_Count
raw_cmd_draw_indirect_count                                  : Proc_Cmd_Draw_Indirect_Count
cmd_draw_mesh_tasks                                          : Proc_Cmd_Draw_Mesh_Tasks
cmd_draw_mesh_tasks_indirect                                 : Proc_Cmd_Draw_Mesh_Tasks_Indirect
raw_cmd_draw_mesh_tasks_indirect_count                       : Proc_Cmd_Draw_Mesh_Tasks_Indirect_Count
raw_cmd_draw_multi                                           : Proc_Cmd_Draw_Multi
raw_cmd_draw_multi_indexed                                   : Proc_Cmd_Draw_Multi_Indexed
cmd_encode_video                                             : Proc_Cmd_Encode_Video
cmd_end_conditional_rendering                                : Proc_Cmd_End_Conditional_Rendering
cmd_end_debug_utils_label                                    : Proc_Cmd_End_Debug_Utils_Label
cmd_end_query                                                : Proc_Cmd_End_Query
cmd_end_query_indexed                                        : Proc_Cmd_End_Query_Indexed
cmd_end_render_pass                                          : Proc_Cmd_End_Render_Pass
raw_cmd_end_render_pass2                                     : Proc_Cmd_End_Render_Pass_2
cmd_end_rendering                                            : Proc_Cmd_End_Rendering
raw_cmd_end_transform_feedback                               : Proc_Cmd_End_Transform_Feedback
raw_cmd_end_video_coding                                     : Proc_Cmd_End_Video_Coding
raw_cmd_execute_commands                                     : Proc_Cmd_Execute_Commands
cmd_execute_generated_commands                               : Proc_Cmd_Execute_Generated_Commands
raw_cmd_fill_buffer                                          : Proc_Cmd_Fill_Buffer
raw_cmd_insert_debug_utils_label                             : Proc_Cmd_Insert_Debug_Utils_Label
cmd_next_subpass                                             : Proc_Cmd_Next_Subpass
raw_cmd_next_subpass2                                        : Proc_Cmd_Next_Subpass_2
raw_cmd_optical_flow_execute                                 : Proc_Cmd_Optical_Flow_Execute
raw_cmd_pipeline_barrier                                     : Proc_Cmd_Pipeline_Barrier
raw_cmd_pipeline_barrier2                                    : Proc_Cmd_Pipeline_Barrier_2
cmd_preprocess_generated_commands                            : Proc_Cmd_Preprocess_Generated_Commands
raw_cmd_push_constants                                       : Proc_Cmd_Push_Constants
cmd_push_constants2                                          : Proc_Cmd_Push_Constants_2
raw_cmd_push_descriptor_set                                  : Proc_Cmd_Push_Descriptor_Set
raw_cmd_push_descriptor_set2                                 : Proc_Cmd_Push_Descriptor_Set_2
cmd_push_descriptor_set_with_template                        : Proc_Cmd_Push_Descriptor_Set_With_Template
raw_cmd_push_descriptor_set_with_template2                   : Proc_Cmd_Push_Descriptor_Set_With_Template_2
cmd_reset_event                                              : Proc_Cmd_Reset_Event
cmd_reset_event2                                             : Proc_Cmd_Reset_Event_2
cmd_reset_query_pool                                         : Proc_Cmd_Reset_Query_Pool
raw_cmd_resolve_image                                        : Proc_Cmd_Resolve_Image
cmd_resolve_image2                                           : Proc_Cmd_Resolve_Image_2
cmd_set_alpha_to_coverage_enable                             : Proc_Cmd_Set_Alpha_To_Coverage_Enable
cmd_set_alpha_to_one_enable                                  : Proc_Cmd_Set_Alpha_To_One_Enable
cmd_set_attachment_feedback_loop_enable                      : Proc_Cmd_Set_Attachment_Feedback_Loop_Enable
cmd_set_blend_constants                                      : Proc_Cmd_Set_Blend_Constants
cmd_set_checkpoint                                           : Proc_Cmd_Set_Checkpoint
raw_cmd_set_coarse_sample_order                              : Proc_Cmd_Set_Coarse_Sample_Order
cmd_set_color_blend_advanced                                 : Proc_Cmd_Set_Color_Blend_Advanced
cmd_set_color_blend_enable                                   : Proc_Cmd_Set_Color_Blend_Enable
cmd_set_color_blend_equation                                 : Proc_Cmd_Set_Color_Blend_Equation
cmd_set_color_write_mask                                     : Proc_Cmd_Set_Color_Write_Mask
cmd_set_conservative_rasterization_mode                      : Proc_Cmd_Set_Conservative_Rasterization_Mode
cmd_set_coverage_modulation_mode                             : Proc_Cmd_Set_Coverage_Modulation_Mode
cmd_set_coverage_modulation_table                            : Proc_Cmd_Set_Coverage_Modulation_Table
cmd_set_coverage_modulation_table_enable                     : Proc_Cmd_Set_Coverage_Modulation_Table_Enable
cmd_set_coverage_reduction_mode                              : Proc_Cmd_Set_Coverage_Reduction_Mode
cmd_set_coverage_to_color_enable                             : Proc_Cmd_Set_Coverage_To_Color_Enable
cmd_set_coverage_to_color_location                           : Proc_Cmd_Set_Coverage_To_Color_Location
cmd_set_cull_mode                                            : Proc_Cmd_Set_Cull_Mode
cmd_set_depth_bias                                           : Proc_Cmd_Set_Depth_Bias
raw_cmd_set_depth_bias2                                      : Proc_Cmd_Set_Depth_Bias_2
cmd_set_depth_bias_enable                                    : Proc_Cmd_Set_Depth_Bias_Enable
cmd_set_depth_bounds                                         : Proc_Cmd_Set_Depth_Bounds
cmd_set_depth_bounds_test_enable                             : Proc_Cmd_Set_Depth_Bounds_Test_Enable
cmd_set_depth_clamp_enable                                   : Proc_Cmd_Set_Depth_Clamp_Enable
raw_cmd_set_depth_clamp_range                                : Proc_Cmd_Set_Depth_Clamp_Range
cmd_set_depth_clip_enable                                    : Proc_Cmd_Set_Depth_Clip_Enable
cmd_set_depth_clip_negative_one_to_one                       : Proc_Cmd_Set_Depth_Clip_Negative_One_To_One
cmd_set_depth_compare_op                                     : Proc_Cmd_Set_Depth_Compare_Op
cmd_set_depth_test_enable                                    : Proc_Cmd_Set_Depth_Test_Enable
cmd_set_depth_write_enable                                   : Proc_Cmd_Set_Depth_Write_Enable
cmd_set_descriptor_buffer_offsets                            : Proc_Cmd_Set_Descriptor_Buffer_Offsets
cmd_set_descriptor_buffer_offsets2                           : Proc_Cmd_Set_Descriptor_Buffer_Offsets_2
cmd_set_device_mask                                          : Proc_Cmd_Set_Device_Mask
raw_cmd_set_discard_rectangle                                : Proc_Cmd_Set_Discard_Rectangle
cmd_set_discard_rectangle_enable                             : Proc_Cmd_Set_Discard_Rectangle_Enable
cmd_set_discard_rectangle_mode                               : Proc_Cmd_Set_Discard_Rectangle_Mode
cmd_set_event                                                : Proc_Cmd_Set_Event
raw_cmd_set_event2                                           : Proc_Cmd_Set_Event_2
raw_cmd_set_exclusive_scissor                                : Proc_Cmd_Set_Exclusive_Scissor
cmd_set_exclusive_scissor_enable                             : Proc_Cmd_Set_Exclusive_Scissor_Enable
cmd_set_extra_primitive_overestimation_size                  : Proc_Cmd_Set_Extra_Primitive_Overestimation_Size
raw_cmd_set_fragment_shading_rate                            : Proc_Cmd_Set_Fragment_Shading_Rate
cmd_set_fragment_shading_rate_enum                           : Proc_Cmd_Set_Fragment_Shading_Rate_Enum
cmd_set_front_face                                           : Proc_Cmd_Set_Front_Face
cmd_set_line_rasterization_mode                              : Proc_Cmd_Set_Line_Rasterization_Mode
cmd_set_line_stipple                                         : Proc_Cmd_Set_Line_Stipple
cmd_set_line_stipple_enable                                  : Proc_Cmd_Set_Line_Stipple_Enable
cmd_set_line_width                                           : Proc_Cmd_Set_Line_Width
cmd_set_logic_op                                             : Proc_Cmd_Set_Logic_Op
cmd_set_logic_op_enable                                      : Proc_Cmd_Set_Logic_Op_Enable
cmd_set_patch_control_points                                 : Proc_Cmd_Set_Patch_Control_Points
raw_cmd_set_performance_marker_intel                         : Proc_Cmd_Set_Performance_Marker_Intel
cmd_set_performance_override_intel                           : Proc_Cmd_Set_Performance_Override_Intel
raw_cmd_set_performance_stream_marker_intel                  : Proc_Cmd_Set_Performance_Stream_Marker_Intel
cmd_set_polygon_mode                                         : Proc_Cmd_Set_Polygon_Mode
cmd_set_primitive_restart_enable                             : Proc_Cmd_Set_Primitive_Restart_Enable
cmd_set_primitive_topology                                   : Proc_Cmd_Set_Primitive_Topology
cmd_set_provoking_vertex_mode                                : Proc_Cmd_Set_Provoking_Vertex_Mode
cmd_set_rasterization_samples                                : Proc_Cmd_Set_Rasterization_Samples
cmd_set_rasterization_stream                                 : Proc_Cmd_Set_Rasterization_Stream
cmd_set_rasterizer_discard_enable                            : Proc_Cmd_Set_Rasterizer_Discard_Enable
cmd_set_ray_tracing_pipeline_stack_size                      : Proc_Cmd_Set_Ray_Tracing_Pipeline_Stack_Size
raw_cmd_set_rendering_attachment_locations                   : Proc_Cmd_Set_Rendering_Attachment_Locations
raw_cmd_set_rendering_input_attachment_indices               : Proc_Cmd_Set_Rendering_Input_Attachment_Indices
cmd_set_representative_fragment_test_enable                  : Proc_Cmd_Set_Representative_Fragment_Test_Enable
raw_cmd_set_sample_locations                                 : Proc_Cmd_Set_Sample_Locations
cmd_set_sample_locations_enable                              : Proc_Cmd_Set_Sample_Locations_Enable
cmd_set_sample_mask                                          : Proc_Cmd_Set_Sample_Mask
raw_cmd_set_scissor                                          : Proc_Cmd_Set_Scissor
raw_cmd_set_scissor_with_count                               : Proc_Cmd_Set_Scissor_With_Count
cmd_set_shading_rate_image_enable                            : Proc_Cmd_Set_Shading_Rate_Image_Enable
cmd_set_stencil_compare_mask                                 : Proc_Cmd_Set_Stencil_Compare_Mask
cmd_set_stencil_op                                           : Proc_Cmd_Set_Stencil_Op
cmd_set_stencil_reference                                    : Proc_Cmd_Set_Stencil_Reference
cmd_set_stencil_test_enable                                  : Proc_Cmd_Set_Stencil_Test_Enable
cmd_set_stencil_write_mask                                   : Proc_Cmd_Set_Stencil_Write_Mask
cmd_set_tessellation_domain_origin                           : Proc_Cmd_Set_Tessellation_Domain_Origin
raw_cmd_set_vertex_input                                     : Proc_Cmd_Set_Vertex_Input
raw_cmd_set_viewport                                         : Proc_Cmd_Set_Viewport
cmd_set_viewport_shading_rate_palette                        : Proc_Cmd_Set_Viewport_Shading_Rate_Palette
cmd_set_viewport_swizzle                                     : Proc_Cmd_Set_Viewport_Swizzle
raw_cmd_set_viewport_with_count                              : Proc_Cmd_Set_Viewport_With_Count
cmd_set_viewport_wscaling                                    : Proc_Cmd_Set_Viewport_Wscaling
cmd_set_viewport_wscaling_enable                             : Proc_Cmd_Set_Viewport_Wscaling_Enable
cmd_subpass_shading_huawei                                   : Proc_Cmd_Subpass_Shading_Huawei
raw_cmd_trace_rays                                           : Proc_Cmd_Trace_Rays
cmd_trace_rays_indirect                                      : Proc_Cmd_Trace_Rays_Indirect
cmd_trace_rays_indirect2                                     : Proc_Cmd_Trace_Rays_Indirect_2
raw_cmd_update_buffer                                        : Proc_Cmd_Update_Buffer
cmd_update_pipeline_indirect_buffer                          : Proc_Cmd_Update_Pipeline_Indirect_Buffer
raw_cmd_wait_events                                          : Proc_Cmd_Wait_Events
raw_cmd_wait_events2                                         : Proc_Cmd_Wait_Events_2
raw_cmd_write_acceleration_structures_properties             : Proc_Cmd_Write_Acceleration_Structures_Properties
raw_cmd_write_buffer_marker                                  : Proc_Cmd_Write_Buffer_Marker
raw_cmd_write_buffer_marker2                                 : Proc_Cmd_Write_Buffer_Marker_2
raw_cmd_write_micromaps_properties                           : Proc_Cmd_Write_Micromaps_Properties
cmd_write_timestamp                                          : Proc_Cmd_Write_Timestamp
cmd_write_timestamp2                                         : Proc_Cmd_Write_Timestamp_2
raw_compile_deferred                                         : Proc_Compile_Deferred
raw_copy_acceleration_structure                              : Proc_Copy_Acceleration_Structure
raw_copy_acceleration_structure_to_memory                    : Proc_Copy_Acceleration_Structure_To_Memory
raw_copy_image_to_image                                      : Proc_Copy_Image_To_Image
raw_copy_image_to_memory                                     : Proc_Copy_Image_To_Memory
raw_copy_memory_to_acceleration_structure                    : Proc_Copy_Memory_To_Acceleration_Structure
raw_copy_memory_to_image                                     : Proc_Copy_Memory_To_Image
raw_copy_memory_to_micromap                                  : Proc_Copy_Memory_To_Micromap
raw_copy_micromap                                            : Proc_Copy_Micromap
raw_copy_micromap_to_memory                                  : Proc_Copy_Micromap_To_Memory
raw_create_acceleration_structure                            : Proc_Create_Acceleration_Structure
raw_create_buffer                                            : Proc_Create_Buffer
raw_create_buffer_view                                       : Proc_Create_Buffer_View
raw_create_command_pool                                      : Proc_Create_Command_Pool
raw_create_compute_pipelines                                 : Proc_Create_Compute_Pipelines
raw_create_cu_function                                       : Proc_Create_Cu_Function
raw_create_cu_module                                         : Proc_Create_Cu_Module
raw_create_cuda_function                                     : Proc_Create_Cuda_Function
raw_create_cuda_module                                       : Proc_Create_Cuda_Module
raw_create_deferred_operation                                : Proc_Create_Deferred_Operation
raw_create_descriptor_pool                                   : Proc_Create_Descriptor_Pool
raw_create_descriptor_set_layout                             : Proc_Create_Descriptor_Set_Layout
raw_create_descriptor_update_template                        : Proc_Create_Descriptor_Update_Template
raw_create_event                                             : Proc_Create_Event
raw_create_fence                                             : Proc_Create_Fence
raw_create_framebuffer                                       : Proc_Create_Framebuffer
raw_create_graphics_pipelines                                : Proc_Create_Graphics_Pipelines
raw_create_image                                             : Proc_Create_Image
raw_create_image_view                                        : Proc_Create_Image_View
raw_create_indirect_commands_layout                          : Proc_Create_Indirect_Commands_Layout
raw_create_indirect_execution_set                            : Proc_Create_Indirect_Execution_Set
raw_create_micromap                                          : Proc_Create_Micromap
raw_create_optical_flow_session                              : Proc_Create_Optical_Flow_Session
raw_create_pipeline_binaries                                 : Proc_Create_Pipeline_Binaries
raw_create_pipeline_cache                                    : Proc_Create_Pipeline_Cache
raw_create_pipeline_layout                                   : Proc_Create_Pipeline_Layout
raw_create_private_data_slot                                 : Proc_Create_Private_Data_Slot
raw_create_query_pool                                        : Proc_Create_Query_Pool
raw_create_ray_tracing_pipelines                             : Proc_Create_Ray_Tracing_Pipelines
raw_create_render_pass                                       : Proc_Create_Render_Pass
raw_create_render_pass2                                      : Proc_Create_Render_Pass_2
raw_create_sampler                                           : Proc_Create_Sampler
raw_create_sampler_ycbcr_conversion                          : Proc_Create_Sampler_Ycbcr_Conversion
raw_create_semaphore                                         : Proc_Create_Semaphore
raw_create_shader_module                                     : Proc_Create_Shader_Module
raw_create_shaders                                           : Proc_Create_Shaders
raw_create_shared_swapchains                                 : Proc_Create_Shared_Swapchains
raw_create_swapchain                                         : Proc_Create_Swapchain
raw_create_validation_cache                                  : Proc_Create_Validation_Cache
raw_create_video_session                                     : Proc_Create_Video_Session
raw_create_video_session_parameters                          : Proc_Create_Video_Session_Parameters
raw_debug_marker_set_object_name                             : Proc_Debug_Marker_Set_Object_Name
raw_debug_marker_set_object_tag                              : Proc_Debug_Marker_Set_Object_Tag
raw_deferred_operation_join                                  : Proc_Deferred_Operation_Join
raw_destroy_acceleration_structure                           : Proc_Destroy_Acceleration_Structure
raw_destroy_buffer                                           : Proc_Destroy_Buffer
raw_destroy_buffer_view                                      : Proc_Destroy_Buffer_View
raw_destroy_command_pool                                     : Proc_Destroy_Command_Pool
raw_destroy_cu_function                                      : Proc_Destroy_Cu_Function
raw_destroy_cu_module                                        : Proc_Destroy_Cu_Module
raw_destroy_cuda_function                                    : Proc_Destroy_Cuda_Function
raw_destroy_cuda_module                                      : Proc_Destroy_Cuda_Module
raw_destroy_deferred_operation                               : Proc_Destroy_Deferred_Operation
raw_destroy_descriptor_pool                                  : Proc_Destroy_Descriptor_Pool
raw_destroy_descriptor_set_layout                            : Proc_Destroy_Descriptor_Set_Layout
raw_destroy_descriptor_update_template                       : Proc_Destroy_Descriptor_Update_Template
raw_destroy_device                                           : Proc_Destroy_Device
raw_destroy_event                                            : Proc_Destroy_Event
raw_destroy_fence                                            : Proc_Destroy_Fence
raw_destroy_framebuffer                                      : Proc_Destroy_Framebuffer
raw_destroy_image                                            : Proc_Destroy_Image
raw_destroy_image_view                                       : Proc_Destroy_Image_View
raw_destroy_indirect_commands_layout                         : Proc_Destroy_Indirect_Commands_Layout
raw_destroy_indirect_execution_set                           : Proc_Destroy_Indirect_Execution_Set
raw_destroy_micromap                                         : Proc_Destroy_Micromap
raw_destroy_optical_flow_session                             : Proc_Destroy_Optical_Flow_Session
raw_destroy_pipeline                                         : Proc_Destroy_Pipeline
raw_destroy_pipeline_binary                                  : Proc_Destroy_Pipeline_Binary
raw_destroy_pipeline_cache                                   : Proc_Destroy_Pipeline_Cache
raw_destroy_pipeline_layout                                  : Proc_Destroy_Pipeline_Layout
raw_destroy_private_data_slot                                : Proc_Destroy_Private_Data_Slot
raw_destroy_query_pool                                       : Proc_Destroy_Query_Pool
raw_destroy_render_pass                                      : Proc_Destroy_Render_Pass
raw_destroy_sampler                                          : Proc_Destroy_Sampler
raw_destroy_sampler_ycbcr_conversion                         : Proc_Destroy_Sampler_Ycbcr_Conversion
raw_destroy_semaphore                                        : Proc_Destroy_Semaphore
raw_destroy_shader                                           : Proc_Destroy_Shader
raw_destroy_shader_module                                    : Proc_Destroy_Shader_Module
raw_destroy_swapchain                                        : Proc_Destroy_Swapchain
raw_destroy_validation_cache                                 : Proc_Destroy_Validation_Cache
raw_destroy_video_session                                    : Proc_Destroy_Video_Session
raw_destroy_video_session_parameters                         : Proc_Destroy_Video_Session_Parameters
raw_device_wait_idle                                         : Proc_Device_Wait_Idle
raw_display_power_control                                    : Proc_Display_Power_Control
end_command_buffer                                           : Proc_End_Command_Buffer
raw_export_metal_objects                                     : Proc_Export_Metal_Objects
raw_flush_mapped_memory_ranges                               : Proc_Flush_Mapped_Memory_Ranges
raw_free_command_buffers                                     : Proc_Free_Command_Buffers
raw_free_descriptor_sets                                     : Proc_Free_Descriptor_Sets
raw_free_memory                                              : Proc_Free_Memory
raw_get_acceleration_structure_build_sizes                   : Proc_Get_Acceleration_Structure_Build_Sizes
raw_get_acceleration_structure_device_address                : Proc_Get_Acceleration_Structure_Device_Address
raw_get_acceleration_structure_handle                        : Proc_Get_Acceleration_Structure_Handle
raw_get_acceleration_structure_memory_requirements           : Proc_Get_Acceleration_Structure_Memory_Requirements
raw_get_acceleration_structure_opaque_capture_descriptor_data: Proc_Get_Acceleration_Structure_Opaque_Capture_Descriptor_Data
raw_get_buffer_device_address                                : Proc_Get_Buffer_Device_Address
raw_get_buffer_memory_requirements                           : Proc_Get_Buffer_Memory_Requirements
raw_get_buffer_memory_requirements2                          : Proc_Get_Buffer_Memory_Requirements_2
raw_get_buffer_opaque_capture_address                        : Proc_Get_Buffer_Opaque_Capture_Address
raw_get_buffer_opaque_capture_descriptor_data                : Proc_Get_Buffer_Opaque_Capture_Descriptor_Data
raw_get_calibrated_timestamps                                : Proc_Get_Calibrated_Timestamps
raw_get_cuda_module_cache                                    : Proc_Get_Cuda_Module_Cache
raw_get_deferred_operation_max_concurrency                   : Proc_Get_Deferred_Operation_Max_Concurrency
raw_get_deferred_operation_result                            : Proc_Get_Deferred_Operation_Result
raw_get_descriptor                                           : Proc_Get_Descriptor
raw_get_descriptor_set_host_mapping_valve                    : Proc_Get_Descriptor_Set_Host_Mapping_Valve
raw_get_descriptor_set_layout_binding_offset                 : Proc_Get_Descriptor_Set_Layout_Binding_Offset
raw_get_descriptor_set_layout_host_mapping_info_valve        : Proc_Get_Descriptor_Set_Layout_Host_Mapping_Info_Valve
raw_get_descriptor_set_layout_size                           : Proc_Get_Descriptor_Set_Layout_Size
raw_get_descriptor_set_layout_support                        : Proc_Get_Descriptor_Set_Layout_Support
raw_get_device_acceleration_structure_compatibility          : Proc_Get_Device_Acceleration_Structure_Compatibility
raw_get_device_buffer_memory_requirements                    : Proc_Get_Device_Buffer_Memory_Requirements
raw_get_device_fault_info                                    : Proc_Get_Device_Fault_Info
raw_get_device_group_peer_memory_features                    : Proc_Get_Device_Group_Peer_Memory_Features
raw_get_device_group_present_capabilities                    : Proc_Get_Device_Group_Present_Capabilities
raw_get_device_group_surface_present_modes                   : Proc_Get_Device_Group_Surface_Present_Modes
raw_get_device_group_surface_present_modes2                  : Proc_Get_Device_Group_Surface_Present_Modes_2
raw_get_device_image_memory_requirements                     : Proc_Get_Device_Image_Memory_Requirements
raw_get_device_image_sparse_memory_requirements              : Proc_Get_Device_Image_Sparse_Memory_Requirements
raw_get_device_image_subresource_layout                      : Proc_Get_Device_Image_Subresource_Layout
raw_get_device_memory_commitment                             : Proc_Get_Device_Memory_Commitment
raw_get_device_memory_opaque_capture_address                 : Proc_Get_Device_Memory_Opaque_Capture_Address
raw_get_device_micromap_compatibility                        : Proc_Get_Device_Micromap_Compatibility
raw_get_device_queue                                         : Proc_Get_Device_Queue
raw_get_device_queue2                                        : Proc_Get_Device_Queue_2
raw_get_device_subpass_shading_max_workgroup_size_huawei     : Proc_Get_Device_Subpass_Shading_Max_Workgroup_Size_Huawei
raw_get_dynamic_rendering_tile_properties_qcom               : Proc_Get_Dynamic_Rendering_Tile_Properties_Qcom
raw_get_encoded_video_session_parameters                     : Proc_Get_Encoded_Video_Session_Parameters
raw_get_event_status                                         : Proc_Get_Event_Status
raw_get_fence_fd                                             : Proc_Get_Fence_Fd
raw_get_fence_status                                         : Proc_Get_Fence_Status
raw_get_fence_win32_handle                                   : Proc_Get_Fence_Win32_Handle
raw_get_framebuffer_tile_properties_qcom                     : Proc_Get_Framebuffer_Tile_Properties_Qcom
raw_get_generated_commands_memory_requirements               : Proc_Get_Generated_Commands_Memory_Requirements
raw_get_image_drm_format_modifier_properties                 : Proc_Get_Image_Drm_Format_Modifier_Properties
raw_get_image_memory_requirements                            : Proc_Get_Image_Memory_Requirements
raw_get_image_memory_requirements2                           : Proc_Get_Image_Memory_Requirements_2
raw_get_image_opaque_capture_descriptor_data                 : Proc_Get_Image_Opaque_Capture_Descriptor_Data
raw_get_image_sparse_memory_requirements                     : Proc_Get_Image_Sparse_Memory_Requirements
raw_get_image_sparse_memory_requirements2                    : Proc_Get_Image_Sparse_Memory_Requirements_2
raw_get_image_subresource_layout                             : Proc_Get_Image_Subresource_Layout
raw_get_image_subresource_layout2                            : Proc_Get_Image_Subresource_Layout_2
raw_get_image_view_address                                   : Proc_Get_Image_View_Address
raw_get_image_view_handle                                    : Proc_Get_Image_View_Handle
raw_get_image_view_handle64                                  : Proc_Get_Image_View_Handle_64
raw_get_image_view_opaque_capture_descriptor_data            : Proc_Get_Image_View_Opaque_Capture_Descriptor_Data
raw_get_latency_timings                                      : Proc_Get_Latency_Timings
raw_get_memory_fd                                            : Proc_Get_Memory_Fd
raw_get_memory_fd_properties                                 : Proc_Get_Memory_Fd_Properties
raw_get_memory_host_pointer_properties                       : Proc_Get_Memory_Host_Pointer_Properties
raw_get_memory_remote_address                                : Proc_Get_Memory_Remote_Address
raw_get_memory_win32_handle                                  : Proc_Get_Memory_Win32_Handle
raw_get_memory_win32_handle_properties                       : Proc_Get_Memory_Win32_Handle_Properties
raw_get_micromap_build_sizes                                 : Proc_Get_Micromap_Build_Sizes
raw_get_past_presentation_timing                             : Proc_Get_Past_Presentation_Timing
raw_get_performance_parameter_intel                          : Proc_Get_Performance_Parameter_Intel
raw_get_pipeline_binary_data                                 : Proc_Get_Pipeline_Binary_Data
raw_get_pipeline_cache_data                                  : Proc_Get_Pipeline_Cache_Data
raw_get_pipeline_executable_internal_representations         : Proc_Get_Pipeline_Executable_Internal_Representations
raw_get_pipeline_executable_properties                       : Proc_Get_Pipeline_Executable_Properties
raw_get_pipeline_executable_statistics                       : Proc_Get_Pipeline_Executable_Statistics
raw_get_pipeline_indirect_device_address                     : Proc_Get_Pipeline_Indirect_Device_Address
raw_get_pipeline_indirect_memory_requirements                : Proc_Get_Pipeline_Indirect_Memory_Requirements
raw_get_pipeline_key                                         : Proc_Get_Pipeline_Key
raw_get_pipeline_properties                                  : Proc_Get_Pipeline_Properties
raw_get_private_data                                         : Proc_Get_Private_Data
raw_get_query_pool_results                                   : Proc_Get_Query_Pool_Results
raw_get_queue_checkpoint_data                                : Proc_Get_Queue_Checkpoint_Data
raw_get_queue_checkpoint_data2                               : Proc_Get_Queue_Checkpoint_Data_2
raw_get_ray_tracing_capture_replay_shader_group_handles      : Proc_Get_Ray_Tracing_Capture_Replay_Shader_Group_Handles
raw_get_ray_tracing_shader_group_handles                     : Proc_Get_Ray_Tracing_Shader_Group_Handles
raw_get_ray_tracing_shader_group_stack_size                  : Proc_Get_Ray_Tracing_Shader_Group_Stack_Size
raw_get_refresh_cycle_duration                               : Proc_Get_Refresh_Cycle_Duration
raw_get_render_area_granularity                              : Proc_Get_Render_Area_Granularity
raw_get_rendering_area_granularity                           : Proc_Get_Rendering_Area_Granularity
raw_get_sampler_opaque_capture_descriptor_data               : Proc_Get_Sampler_Opaque_Capture_Descriptor_Data
raw_get_semaphore_counter_value                              : Proc_Get_Semaphore_Counter_Value
raw_get_semaphore_fd                                         : Proc_Get_Semaphore_Fd
raw_get_semaphore_win32_handle                               : Proc_Get_Semaphore_Win32_Handle
raw_get_shader_binary_data                                   : Proc_Get_Shader_Binary_Data
raw_get_shader_info                                          : Proc_Get_Shader_Info
raw_get_shader_module_create_info_identifier                 : Proc_Get_Shader_Module_Create_Info_Identifier
raw_get_shader_module_identifier                             : Proc_Get_Shader_Module_Identifier
raw_get_swapchain_counter                                    : Proc_Get_Swapchain_Counter
raw_get_swapchain_images                                     : Proc_Get_Swapchain_Images
raw_get_swapchain_status                                     : Proc_Get_Swapchain_Status
raw_get_validation_cache_data                                : Proc_Get_Validation_Cache_Data
raw_get_video_session_memory_requirements                    : Proc_Get_Video_Session_Memory_Requirements
raw_import_fence_fd                                          : Proc_Import_Fence_Fd
raw_import_fence_win32_handle                                : Proc_Import_Fence_Win32_Handle
raw_import_semaphore_fd                                      : Proc_Import_Semaphore_Fd
raw_import_semaphore_win32_handle                            : Proc_Import_Semaphore_Win32_Handle
raw_initialize_performance_api_intel                         : Proc_Initialize_Performance_Api_Intel
raw_invalidate_mapped_memory_ranges                          : Proc_Invalidate_Mapped_Memory_Ranges
raw_latency_sleep                                            : Proc_Latency_Sleep
raw_map_memory                                               : Proc_Map_Memory
raw_map_memory2                                              : Proc_Map_Memory_2
raw_merge_pipeline_caches                                    : Proc_Merge_Pipeline_Caches
raw_merge_validation_caches                                  : Proc_Merge_Validation_Caches
raw_queue_begin_debug_utils_label                            : Proc_Queue_Begin_Debug_Utils_Label
queue_bind_sparse                                            : Proc_Queue_Bind_Sparse
queue_end_debug_utils_label                                  : Proc_Queue_End_Debug_Utils_Label
raw_queue_insert_debug_utils_label                           : Proc_Queue_Insert_Debug_Utils_Label
raw_queue_notify_out_of_band                                 : Proc_Queue_Notify_Out_Of_Band
raw_queue_present                                            : Proc_Queue_Present
queue_set_performance_configuration_intel                    : Proc_Queue_Set_Performance_Configuration_Intel
raw_queue_submit                                             : Proc_Queue_Submit
raw_queue_submit2                                            : Proc_Queue_Submit_2
queue_wait_idle                                              : Proc_Queue_Wait_Idle
raw_register_device_event                                    : Proc_Register_Device_Event
raw_register_display_event                                   : Proc_Register_Display_Event
raw_release_captured_pipeline_data                           : Proc_Release_Captured_Pipeline_Data
raw_release_full_screen_exclusive_mode                       : Proc_Release_Full_Screen_Exclusive_Mode
raw_release_performance_configuration_intel                  : Proc_Release_Performance_Configuration_Intel
raw_release_profiling_lock                                   : Proc_Release_Profiling_Lock
raw_release_swapchain_images                                 : Proc_Release_Swapchain_Images
raw_reset_command_buffer                                     : Proc_Reset_Command_Buffer
raw_reset_command_pool                                       : Proc_Reset_Command_Pool
raw_reset_descriptor_pool                                    : Proc_Reset_Descriptor_Pool
raw_reset_event                                              : Proc_Reset_Event
raw_reset_fences                                             : Proc_Reset_Fences
raw_reset_query_pool                                         : Proc_Reset_Query_Pool
raw_set_debug_utils_object_name                              : Proc_Set_Debug_Utils_Object_Name
raw_set_debug_utils_object_tag                               : Proc_Set_Debug_Utils_Object_Tag
raw_set_device_memory_priority                               : Proc_Set_Device_Memory_Priority
raw_set_event                                                : Proc_Set_Event
raw_set_hdr_metadata                                         : Proc_Set_Hdr_Metadata
raw_set_latency_marker                                       : Proc_Set_Latency_Marker
raw_set_latency_sleep_mode                                   : Proc_Set_Latency_Sleep_Mode
raw_set_local_dimming                                        : Proc_Set_Local_Dimming
raw_set_private_data                                         : Proc_Set_Private_Data
raw_signal_semaphore                                         : Proc_Signal_Semaphore
raw_transition_image_layout                                  : Proc_Transition_Image_Layout
raw_trim_command_pool                                        : Proc_Trim_Command_Pool
raw_uninitialize_performance_api_intel                       : Proc_Uninitialize_Performance_Api_Intel
raw_unmap_memory                                             : Proc_Unmap_Memory
raw_unmap_memory2                                            : Proc_Unmap_Memory_2
raw_update_descriptor_set_with_template                      : Proc_Update_Descriptor_Set_With_Template
raw_update_descriptor_sets                                   : Proc_Update_Descriptor_Sets
raw_update_indirect_execution_set_pipeline                   : Proc_Update_Indirect_Execution_Set_Pipeline
raw_update_indirect_execution_set_shader                     : Proc_Update_Indirect_Execution_Set_Shader
raw_update_video_session_parameters                          : Proc_Update_Video_Session_Parameters
raw_wait_for_fences                                          : Proc_Wait_For_Fences
raw_wait_for_present                                         : Proc_Wait_For_Present
raw_wait_semaphores                                          : Proc_Wait_Semaphores
raw_write_acceleration_structures_properties                 : Proc_Write_Acceleration_Structures_Properties
raw_write_micromaps_properties                               : Proc_Write_Micromaps_Properties

load_proc_addresses_custom :: proc(set_proc_address: Set_Proc_Address_Type) {
	// Loader Procedures
	set_proc_address(&raw_create_instance, "vkCreateInstance")
	set_proc_address(&debug_utils_messenger_callback, "vkDebugUtilsMessengerCallbackEXT")
	set_proc_address(&device_memory_report_callback, "vkDeviceMemoryReportCallbackEXT")
	set_proc_address(&raw_enumerate_instance_extension_properties, "vkEnumerateInstanceExtensionProperties")
	set_proc_address(&raw_enumerate_instance_layer_properties, "vkEnumerateInstanceLayerProperties")
	set_proc_address(&enumerate_instance_version, "vkEnumerateInstanceVersion")

	// Misc Procedures
	set_proc_address(&allocation_function, "vkAllocationFunction")
	set_proc_address(&raw_debug_report_callback, "vkDebugReportCallbackEXT")
	set_proc_address(&free_function, "vkFreeFunction")
	set_proc_address(&get_instance_proc_addr, "vkGetInstanceProcAddr")
	set_proc_address(&internal_allocation_notification, "vkInternalAllocationNotification")
	set_proc_address(&internal_free_notification, "vkInternalFreeNotification")
	set_proc_address(&reallocation_function, "vkReallocationFunction")
	set_proc_address(&void_function, "vkVoidFunction")

	// Instance Procedures
	set_proc_address(&acquire_drm_display, "vkAcquireDrmDisplayEXT")
	set_proc_address(&acquire_winrt_display, "vkAcquireWinrtDisplayNV")
	set_proc_address(&raw_create_debug_report_callback, "vkCreateDebugReportCallbackEXT")
	set_proc_address(&raw_create_debug_utils_messenger, "vkCreateDebugUtilsMessengerEXT")
	set_proc_address(&raw_create_device, "vkCreateDevice")
	set_proc_address(&raw_create_display_mode, "vkCreateDisplayModeKHR")
	set_proc_address(&raw_create_display_plane_surface, "vkCreateDisplayPlaneSurfaceKHR")
	set_proc_address(&raw_create_headless_surface, "vkCreateHeadlessSurfaceEXT")
	set_proc_address(&raw_create_iossurface_mvk, "vkCreateIOSSurfaceMVK")
	set_proc_address(&raw_create_mac_ossurface_mvk, "vkCreateMacOSSurfaceMVK")
	set_proc_address(&raw_create_metal_surface, "vkCreateMetalSurfaceEXT")
	set_proc_address(&raw_create_wayland_surface, "vkCreateWaylandSurfaceKHR")
	set_proc_address(&raw_create_win32_surface, "vkCreateWin32SurfaceKHR")
	set_proc_address(&raw_debug_report_message, "vkDebugReportMessageEXT")
	set_proc_address(&raw_destroy_debug_report_callback, "vkDestroyDebugReportCallbackEXT")
	set_proc_address(&raw_destroy_debug_utils_messenger, "vkDestroyDebugUtilsMessengerEXT")
	set_proc_address(&raw_destroy_instance, "vkDestroyInstance")
	set_proc_address(&raw_destroy_surface, "vkDestroySurfaceKHR")
	set_proc_address(&raw_enumerate_device_extension_properties, "vkEnumerateDeviceExtensionProperties")
	set_proc_address(&raw_enumerate_device_layer_properties, "vkEnumerateDeviceLayerProperties")
	set_proc_address(&raw_enumerate_physical_device_groups, "vkEnumeratePhysicalDeviceGroups")
	set_proc_address(&enumerate_physical_device_queue_family_performance_query_counters, "vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR")
	set_proc_address(&raw_enumerate_physical_devices, "vkEnumeratePhysicalDevices")
	set_proc_address(&get_device_proc_addr, "vkGetDeviceProcAddr")
	set_proc_address(&raw_get_display_mode_properties, "vkGetDisplayModePropertiesKHR")
	set_proc_address(&raw_get_display_mode_properties2, "vkGetDisplayModeProperties2KHR")
	set_proc_address(&raw_get_display_plane_capabilities, "vkGetDisplayPlaneCapabilitiesKHR")
	set_proc_address(&raw_get_display_plane_capabilities2, "vkGetDisplayPlaneCapabilities2KHR")
	set_proc_address(&raw_get_display_plane_supported_displays, "vkGetDisplayPlaneSupportedDisplaysKHR")
	set_proc_address(&raw_get_drm_display, "vkGetDrmDisplayEXT")
	set_proc_address(&get_instance_proc_addr_lunarg, "vkGetInstanceProcAddrLUNARG")
	set_proc_address(&raw_get_physical_device_calibrateable_time_domains, "vkGetPhysicalDeviceCalibrateableTimeDomainsKHR")
	set_proc_address(&raw_get_physical_device_cooperative_mat_flexible_dimensions_properties, "vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV")
	set_proc_address(&raw_get_physical_device_cooperative_mat_properties, "vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR")
	set_proc_address(&raw_get_physical_device_display_plane_properties, "vkGetPhysicalDeviceDisplayPlanePropertiesKHR")
	set_proc_address(&raw_get_physical_device_display_plane_properties2, "vkGetPhysicalDeviceDisplayPlaneProperties2KHR")
	set_proc_address(&raw_get_physical_device_display_properties, "vkGetPhysicalDeviceDisplayPropertiesKHR")
	set_proc_address(&raw_get_physical_device_display_properties2, "vkGetPhysicalDeviceDisplayProperties2KHR")
	set_proc_address(&raw_get_physical_device_external_buffer_properties, "vkGetPhysicalDeviceExternalBufferProperties")
	set_proc_address(&raw_get_physical_device_external_fence_properties, "vkGetPhysicalDeviceExternalFenceProperties")
	set_proc_address(&raw_get_physical_device_external_image_format_properties, "vkGetPhysicalDeviceExternalImageFormatPropertiesNV")
	set_proc_address(&raw_get_physical_device_external_semaphore_properties, "vkGetPhysicalDeviceExternalSemaphoreProperties")
	set_proc_address(&raw_get_physical_device_features, "vkGetPhysicalDeviceFeatures")
	set_proc_address(&raw_get_physical_device_features2, "vkGetPhysicalDeviceFeatures2")
	set_proc_address(&raw_get_physical_device_format_properties, "vkGetPhysicalDeviceFormatProperties")
	set_proc_address(&raw_get_physical_device_format_properties2, "vkGetPhysicalDeviceFormatProperties2")
	set_proc_address(&raw_get_physical_device_fragment_shading_rates, "vkGetPhysicalDeviceFragmentShadingRatesKHR")
	set_proc_address(&raw_get_physical_device_image_format_properties, "vkGetPhysicalDeviceImageFormatProperties")
	set_proc_address(&raw_get_physical_device_image_format_properties2, "vkGetPhysicalDeviceImageFormatProperties2")
	set_proc_address(&raw_get_physical_device_memory_properties, "vkGetPhysicalDeviceMemoryProperties")
	set_proc_address(&raw_get_physical_device_memory_properties2, "vkGetPhysicalDeviceMemoryProperties2")
	set_proc_address(&raw_get_physical_device_multisample_properties, "vkGetPhysicalDeviceMultisamplePropertiesEXT")
	set_proc_address(&raw_get_physical_device_optical_flow_image_formats, "vkGetPhysicalDeviceOpticalFlowImageFormatsNV")
	set_proc_address(&raw_get_physical_device_present_rectangles, "vkGetPhysicalDevicePresentRectanglesKHR")
	set_proc_address(&raw_get_physical_device_properties, "vkGetPhysicalDeviceProperties")
	set_proc_address(&raw_get_physical_device_properties2, "vkGetPhysicalDeviceProperties2")
	set_proc_address(&raw_get_physical_device_queue_family_performance_query_passes, "vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR")
	set_proc_address(&raw_get_physical_device_queue_family_properties, "vkGetPhysicalDeviceQueueFamilyProperties")
	set_proc_address(&raw_get_physical_device_queue_family_properties2, "vkGetPhysicalDeviceQueueFamilyProperties2")
	set_proc_address(&raw_get_physical_device_sparse_image_format_properties, "vkGetPhysicalDeviceSparseImageFormatProperties")
	set_proc_address(&raw_get_physical_device_sparse_image_format_properties2, "vkGetPhysicalDeviceSparseImageFormatProperties2")
	set_proc_address(&raw_get_physical_device_supported_framebuffer_mixed_samples_combinations, "vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV")
	set_proc_address(&raw_get_physical_device_surface_capabilities, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR")
	set_proc_address(&raw_get_physical_device_surface_capabilities2, "vkGetPhysicalDeviceSurfaceCapabilities2KHR")
	set_proc_address(&raw_get_physical_device_surface_formats, "vkGetPhysicalDeviceSurfaceFormatsKHR")
	set_proc_address(&raw_get_physical_device_surface_formats2, "vkGetPhysicalDeviceSurfaceFormats2KHR")
	set_proc_address(&raw_get_physical_device_surface_present_modes, "vkGetPhysicalDeviceSurfacePresentModesKHR")
	set_proc_address(&raw_get_physical_device_surface_present_modes2, "vkGetPhysicalDeviceSurfacePresentModes2EXT")
	set_proc_address(&raw_get_physical_device_surface_support, "vkGetPhysicalDeviceSurfaceSupportKHR")
	set_proc_address(&raw_get_physical_device_tool_properties, "vkGetPhysicalDeviceToolProperties")
	set_proc_address(&raw_get_physical_device_video_capabilities, "vkGetPhysicalDeviceVideoCapabilitiesKHR")
	set_proc_address(&raw_get_physical_device_video_encode_quality_level_properties, "vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR")
	set_proc_address(&raw_get_physical_device_video_format_properties, "vkGetPhysicalDeviceVideoFormatPropertiesKHR")
	set_proc_address(&raw_get_physical_device_wayland_presentation_support, "vkGetPhysicalDeviceWaylandPresentationSupportKHR")
	set_proc_address(&get_physical_device_win32_presentation_support, "vkGetPhysicalDeviceWin32PresentationSupportKHR")
	set_proc_address(&raw_get_winrt_display, "vkGetWinrtDisplayNV")
	set_proc_address(&release_display, "vkReleaseDisplayEXT")
	set_proc_address(&submit_debug_utils_message, "vkSubmitDebugUtilsMessageEXT")

	// Device Procedures
	set_proc_address(&raw_acquire_full_screen_exclusive_mode, "vkAcquireFullScreenExclusiveModeEXT")
	set_proc_address(&raw_acquire_next_image, "vkAcquireNextImageKHR")
	set_proc_address(&raw_acquire_next_image2, "vkAcquireNextImage2KHR")
	set_proc_address(&raw_acquire_performance_configuration_intel, "vkAcquirePerformanceConfigurationINTEL")
	set_proc_address(&raw_acquire_profiling_lock, "vkAcquireProfilingLockKHR")
	set_proc_address(&raw_allocate_command_buffers, "vkAllocateCommandBuffers")
	set_proc_address(&raw_allocate_descriptor_sets, "vkAllocateDescriptorSets")
	set_proc_address(&raw_allocate_memory, "vkAllocateMemory")
	set_proc_address(&raw_anti_lag_update, "vkAntiLagUpdateAMD")
	set_proc_address(&raw_begin_command_buffer, "vkBeginCommandBuffer")
	set_proc_address(&raw_bind_acceleration_structure_memory, "vkBindAccelerationStructureMemoryNV")
	set_proc_address(&raw_bind_buffer_memory, "vkBindBufferMemory")
	set_proc_address(&raw_bind_buffer_memory2, "vkBindBufferMemory2")
	set_proc_address(&raw_bind_image_memory, "vkBindImageMemory")
	set_proc_address(&raw_bind_image_memory2, "vkBindImageMemory2")
	set_proc_address(&raw_bind_optical_flow_session_image, "vkBindOpticalFlowSessionImageNV")
	set_proc_address(&raw_bind_video_session_memory, "vkBindVideoSessionMemoryKHR")
	set_proc_address(&raw_build_acceleration_structures, "vkBuildAccelerationStructuresKHR")
	set_proc_address(&raw_build_micromaps, "vkBuildMicromapsEXT")
	set_proc_address(&raw_cmd_begin_conditional_rendering, "vkCmdBeginConditionalRenderingEXT")
	set_proc_address(&raw_cmd_begin_debug_utils_label, "vkCmdBeginDebugUtilsLabelEXT")
	set_proc_address(&raw_cmd_begin_query, "vkCmdBeginQuery")
	set_proc_address(&raw_cmd_begin_query_indexed, "vkCmdBeginQueryIndexedEXT")
	set_proc_address(&raw_cmd_begin_render_pass, "vkCmdBeginRenderPass")
	set_proc_address(&raw_cmd_begin_render_pass2, "vkCmdBeginRenderPass2")
	set_proc_address(&cmd_begin_rendering, "vkCmdBeginRendering")
	set_proc_address(&raw_cmd_begin_transform_feedback, "vkCmdBeginTransformFeedbackEXT")
	set_proc_address(&raw_cmd_begin_video_coding, "vkCmdBeginVideoCodingKHR")
	set_proc_address(&cmd_bind_descriptor_buffer_embedded_samplers, "vkCmdBindDescriptorBufferEmbeddedSamplersEXT")
	set_proc_address(&raw_cmd_bind_descriptor_buffer_embedded_samplers2, "vkCmdBindDescriptorBufferEmbeddedSamplers2EXT")
	set_proc_address(&cmd_bind_descriptor_buffers, "vkCmdBindDescriptorBuffersEXT")
	set_proc_address(&raw_cmd_bind_descriptor_sets, "vkCmdBindDescriptorSets")
	set_proc_address(&cmd_bind_descriptor_sets2, "vkCmdBindDescriptorSets2")
	set_proc_address(&cmd_bind_index_buffer, "vkCmdBindIndexBuffer")
	set_proc_address(&cmd_bind_index_buffer2, "vkCmdBindIndexBuffer2")
	set_proc_address(&cmd_bind_invocation_mask_huawei, "vkCmdBindInvocationMaskHUAWEI")
	set_proc_address(&cmd_bind_pipeline, "vkCmdBindPipeline")
	set_proc_address(&cmd_bind_pipeline_shader_group, "vkCmdBindPipelineShaderGroupNV")
	set_proc_address(&raw_cmd_bind_shaders, "vkCmdBindShadersEXT")
	set_proc_address(&cmd_bind_shading_rate_image, "vkCmdBindShadingRateImageNV")
	set_proc_address(&cmd_bind_transform_feedback_buffers, "vkCmdBindTransformFeedbackBuffersEXT")
	set_proc_address(&cmd_bind_vertex_buffers, "vkCmdBindVertexBuffers")
	set_proc_address(&cmd_bind_vertex_buffers2, "vkCmdBindVertexBuffers2")
	set_proc_address(&raw_cmd_blit_image, "vkCmdBlitImage")
	set_proc_address(&cmd_blit_image2, "vkCmdBlitImage2")
	set_proc_address(&raw_cmd_build_acceleration_structure, "vkCmdBuildAccelerationStructureNV")
	set_proc_address(&raw_cmd_build_acceleration_structures, "vkCmdBuildAccelerationStructuresKHR")
	set_proc_address(&raw_cmd_build_acceleration_structures_indirect, "vkCmdBuildAccelerationStructuresIndirectKHR")
	set_proc_address(&raw_cmd_build_micromaps, "vkCmdBuildMicromapsEXT")
	set_proc_address(&raw_cmd_clear_attachments, "vkCmdClearAttachments")
	set_proc_address(&raw_cmd_clear_color_image, "vkCmdClearColorImage")
	set_proc_address(&raw_cmd_clear_depth_stencil_image, "vkCmdClearDepthStencilImage")
	set_proc_address(&raw_cmd_control_video_coding, "vkCmdControlVideoCodingKHR")
	set_proc_address(&cmd_copy_acceleration_structure, "vkCmdCopyAccelerationStructureNV")
	set_proc_address(&raw_cmd_copy_acceleration_structure_to_memory, "vkCmdCopyAccelerationStructureToMemoryKHR")
	set_proc_address(&raw_cmd_copy_buffer, "vkCmdCopyBuffer")
	set_proc_address(&cmd_copy_buffer2, "vkCmdCopyBuffer2")
	set_proc_address(&raw_cmd_copy_buffer_to_image, "vkCmdCopyBufferToImage")
	set_proc_address(&cmd_copy_buffer_to_image2, "vkCmdCopyBufferToImage2")
	set_proc_address(&raw_cmd_copy_image, "vkCmdCopyImage")
	set_proc_address(&cmd_copy_image2, "vkCmdCopyImage2")
	set_proc_address(&raw_cmd_copy_image_to_buffer, "vkCmdCopyImageToBuffer")
	set_proc_address(&cmd_copy_image_to_buffer2, "vkCmdCopyImageToBuffer2")
	set_proc_address(&cmd_copy_memory_indirect, "vkCmdCopyMemoryIndirectNV")
	set_proc_address(&raw_cmd_copy_memory_to_acceleration_structure, "vkCmdCopyMemoryToAccelerationStructureKHR")
	set_proc_address(&cmd_copy_memory_to_image_indirect, "vkCmdCopyMemoryToImageIndirectNV")
	set_proc_address(&raw_cmd_copy_memory_to_micromap, "vkCmdCopyMemoryToMicromapEXT")
	set_proc_address(&raw_cmd_copy_micromap, "vkCmdCopyMicromapEXT")
	set_proc_address(&raw_cmd_copy_micromap_to_memory, "vkCmdCopyMicromapToMemoryEXT")
	set_proc_address(&raw_cmd_copy_query_pool_results, "vkCmdCopyQueryPoolResults")
	set_proc_address(&cmd_cu_launch_kernel, "vkCmdCuLaunchKernelNVX")
	set_proc_address(&cmd_cuda_launch_kernel, "vkCmdCudaLaunchKernelNV")
	set_proc_address(&raw_cmd_debug_marker_begin, "vkCmdDebugMarkerBeginEXT")
	set_proc_address(&cmd_debug_marker_end, "vkCmdDebugMarkerEndEXT")
	set_proc_address(&raw_cmd_debug_marker_insert, "vkCmdDebugMarkerInsertEXT")
	set_proc_address(&cmd_decode_video, "vkCmdDecodeVideoKHR")
	set_proc_address(&cmd_decompress_memory, "vkCmdDecompressMemoryNV")
	set_proc_address(&cmd_decompress_memory_indirect_count, "vkCmdDecompressMemoryIndirectCountNV")
	set_proc_address(&cmd_dispatch, "vkCmdDispatch")
	set_proc_address(&cmd_dispatch_base, "vkCmdDispatchBase")
	set_proc_address(&cmd_dispatch_indirect, "vkCmdDispatchIndirect")
	set_proc_address(&cmd_draw, "vkCmdDraw")
	set_proc_address(&cmd_draw_cluster_huawei, "vkCmdDrawClusterHUAWEI")
	set_proc_address(&cmd_draw_cluster_indirect_huawei, "vkCmdDrawClusterIndirectHUAWEI")
	set_proc_address(&cmd_draw_indexed, "vkCmdDrawIndexed")
	set_proc_address(&cmd_draw_indexed_indirect, "vkCmdDrawIndexedIndirect")
	set_proc_address(&raw_cmd_draw_indexed_indirect_count, "vkCmdDrawIndexedIndirectCount")
	set_proc_address(&cmd_draw_indirect, "vkCmdDrawIndirect")
	set_proc_address(&raw_cmd_draw_indirect_byte_count, "vkCmdDrawIndirectByteCountEXT")
	set_proc_address(&raw_cmd_draw_indirect_count, "vkCmdDrawIndirectCount")
	set_proc_address(&cmd_draw_mesh_tasks, "vkCmdDrawMeshTasksNV")
	set_proc_address(&cmd_draw_mesh_tasks_indirect, "vkCmdDrawMeshTasksIndirectNV")
	set_proc_address(&raw_cmd_draw_mesh_tasks_indirect_count, "vkCmdDrawMeshTasksIndirectCountNV")
	set_proc_address(&raw_cmd_draw_multi, "vkCmdDrawMultiEXT")
	set_proc_address(&raw_cmd_draw_multi_indexed, "vkCmdDrawMultiIndexedEXT")
	set_proc_address(&cmd_encode_video, "vkCmdEncodeVideoKHR")
	set_proc_address(&cmd_end_conditional_rendering, "vkCmdEndConditionalRenderingEXT")
	set_proc_address(&cmd_end_debug_utils_label, "vkCmdEndDebugUtilsLabelEXT")
	set_proc_address(&cmd_end_query, "vkCmdEndQuery")
	set_proc_address(&cmd_end_query_indexed, "vkCmdEndQueryIndexedEXT")
	set_proc_address(&cmd_end_render_pass, "vkCmdEndRenderPass")
	set_proc_address(&raw_cmd_end_render_pass2, "vkCmdEndRenderPass2")
	set_proc_address(&cmd_end_rendering, "vkCmdEndRendering")
	set_proc_address(&raw_cmd_end_transform_feedback, "vkCmdEndTransformFeedbackEXT")
	set_proc_address(&raw_cmd_end_video_coding, "vkCmdEndVideoCodingKHR")
	set_proc_address(&raw_cmd_execute_commands, "vkCmdExecuteCommands")
	set_proc_address(&cmd_execute_generated_commands, "vkCmdExecuteGeneratedCommandsNV")
	set_proc_address(&raw_cmd_fill_buffer, "vkCmdFillBuffer")
	set_proc_address(&raw_cmd_insert_debug_utils_label, "vkCmdInsertDebugUtilsLabelEXT")
	set_proc_address(&cmd_next_subpass, "vkCmdNextSubpass")
	set_proc_address(&raw_cmd_next_subpass2, "vkCmdNextSubpass2")
	set_proc_address(&raw_cmd_optical_flow_execute, "vkCmdOpticalFlowExecuteNV")
	set_proc_address(&raw_cmd_pipeline_barrier, "vkCmdPipelineBarrier")
	set_proc_address(&raw_cmd_pipeline_barrier2, "vkCmdPipelineBarrier2")
	set_proc_address(&cmd_preprocess_generated_commands, "vkCmdPreprocessGeneratedCommandsNV")
	set_proc_address(&raw_cmd_push_constants, "vkCmdPushConstants")
	set_proc_address(&cmd_push_constants2, "vkCmdPushConstants2")
	set_proc_address(&raw_cmd_push_descriptor_set, "vkCmdPushDescriptorSet")
	set_proc_address(&raw_cmd_push_descriptor_set2, "vkCmdPushDescriptorSet2")
	set_proc_address(&cmd_push_descriptor_set_with_template, "vkCmdPushDescriptorSetWithTemplate")
	set_proc_address(&raw_cmd_push_descriptor_set_with_template2, "vkCmdPushDescriptorSetWithTemplate2")
	set_proc_address(&cmd_reset_event, "vkCmdResetEvent")
	set_proc_address(&cmd_reset_event2, "vkCmdResetEvent2")
	set_proc_address(&cmd_reset_query_pool, "vkCmdResetQueryPool")
	set_proc_address(&raw_cmd_resolve_image, "vkCmdResolveImage")
	set_proc_address(&cmd_resolve_image2, "vkCmdResolveImage2")
	set_proc_address(&cmd_set_alpha_to_coverage_enable, "vkCmdSetAlphaToCoverageEnableEXT")
	set_proc_address(&cmd_set_alpha_to_one_enable, "vkCmdSetAlphaToOneEnableEXT")
	set_proc_address(&cmd_set_attachment_feedback_loop_enable, "vkCmdSetAttachmentFeedbackLoopEnableEXT")
	set_proc_address(&cmd_set_blend_constants, "vkCmdSetBlendConstants")
	set_proc_address(&cmd_set_checkpoint, "vkCmdSetCheckpointNV")
	set_proc_address(&raw_cmd_set_coarse_sample_order, "vkCmdSetCoarseSampleOrderNV")
	set_proc_address(&cmd_set_color_blend_advanced, "vkCmdSetColorBlendAdvancedEXT")
	set_proc_address(&cmd_set_color_blend_enable, "vkCmdSetColorBlendEnableEXT")
	set_proc_address(&cmd_set_color_blend_equation, "vkCmdSetColorBlendEquationEXT")
	set_proc_address(&cmd_set_color_write_mask, "vkCmdSetColorWriteMaskEXT")
	set_proc_address(&cmd_set_conservative_rasterization_mode, "vkCmdSetConservativeRasterizationModeEXT")
	set_proc_address(&cmd_set_coverage_modulation_mode, "vkCmdSetCoverageModulationModeNV")
	set_proc_address(&cmd_set_coverage_modulation_table, "vkCmdSetCoverageModulationTableNV")
	set_proc_address(&cmd_set_coverage_modulation_table_enable, "vkCmdSetCoverageModulationTableEnableNV")
	set_proc_address(&cmd_set_coverage_reduction_mode, "vkCmdSetCoverageReductionModeNV")
	set_proc_address(&cmd_set_coverage_to_color_enable, "vkCmdSetCoverageToColorEnableNV")
	set_proc_address(&cmd_set_coverage_to_color_location, "vkCmdSetCoverageToColorLocationNV")
	set_proc_address(&cmd_set_cull_mode, "vkCmdSetCullMode")
	set_proc_address(&cmd_set_depth_bias, "vkCmdSetDepthBias")
	set_proc_address(&raw_cmd_set_depth_bias2, "vkCmdSetDepthBias2EXT")
	set_proc_address(&cmd_set_depth_bias_enable, "vkCmdSetDepthBiasEnable")
	set_proc_address(&cmd_set_depth_bounds, "vkCmdSetDepthBounds")
	set_proc_address(&cmd_set_depth_bounds_test_enable, "vkCmdSetDepthBoundsTestEnable")
	set_proc_address(&cmd_set_depth_clamp_enable, "vkCmdSetDepthClampEnableEXT")
	set_proc_address(&raw_cmd_set_depth_clamp_range, "vkCmdSetDepthClampRangeEXT")
	set_proc_address(&cmd_set_depth_clip_enable, "vkCmdSetDepthClipEnableEXT")
	set_proc_address(&cmd_set_depth_clip_negative_one_to_one, "vkCmdSetDepthClipNegativeOneToOneEXT")
	set_proc_address(&cmd_set_depth_compare_op, "vkCmdSetDepthCompareOp")
	set_proc_address(&cmd_set_depth_test_enable, "vkCmdSetDepthTestEnable")
	set_proc_address(&cmd_set_depth_write_enable, "vkCmdSetDepthWriteEnable")
	set_proc_address(&cmd_set_descriptor_buffer_offsets, "vkCmdSetDescriptorBufferOffsetsEXT")
	set_proc_address(&cmd_set_descriptor_buffer_offsets2, "vkCmdSetDescriptorBufferOffsets2EXT")
	set_proc_address(&cmd_set_device_mask, "vkCmdSetDeviceMask")
	set_proc_address(&raw_cmd_set_discard_rectangle, "vkCmdSetDiscardRectangleEXT")
	set_proc_address(&cmd_set_discard_rectangle_enable, "vkCmdSetDiscardRectangleEnableEXT")
	set_proc_address(&cmd_set_discard_rectangle_mode, "vkCmdSetDiscardRectangleModeEXT")
	set_proc_address(&cmd_set_event, "vkCmdSetEvent")
	set_proc_address(&raw_cmd_set_event2, "vkCmdSetEvent2")
	set_proc_address(&raw_cmd_set_exclusive_scissor, "vkCmdSetExclusiveScissorNV")
	set_proc_address(&cmd_set_exclusive_scissor_enable, "vkCmdSetExclusiveScissorEnableNV")
	set_proc_address(&cmd_set_extra_primitive_overestimation_size, "vkCmdSetExtraPrimitiveOverestimationSizeEXT")
	set_proc_address(&raw_cmd_set_fragment_shading_rate, "vkCmdSetFragmentShadingRateKHR")
	set_proc_address(&cmd_set_fragment_shading_rate_enum, "vkCmdSetFragmentShadingRateEnumNV")
	set_proc_address(&cmd_set_front_face, "vkCmdSetFrontFace")
	set_proc_address(&cmd_set_line_rasterization_mode, "vkCmdSetLineRasterizationModeEXT")
	set_proc_address(&cmd_set_line_stipple, "vkCmdSetLineStipple")
	set_proc_address(&cmd_set_line_stipple_enable, "vkCmdSetLineStippleEnableEXT")
	set_proc_address(&cmd_set_line_width, "vkCmdSetLineWidth")
	set_proc_address(&cmd_set_logic_op, "vkCmdSetLogicOpEXT")
	set_proc_address(&cmd_set_logic_op_enable, "vkCmdSetLogicOpEnableEXT")
	set_proc_address(&cmd_set_patch_control_points, "vkCmdSetPatchControlPointsEXT")
	set_proc_address(&raw_cmd_set_performance_marker_intel, "vkCmdSetPerformanceMarkerINTEL")
	set_proc_address(&cmd_set_performance_override_intel, "vkCmdSetPerformanceOverrideINTEL")
	set_proc_address(&raw_cmd_set_performance_stream_marker_intel, "vkCmdSetPerformanceStreamMarkerINTEL")
	set_proc_address(&cmd_set_polygon_mode, "vkCmdSetPolygonModeEXT")
	set_proc_address(&cmd_set_primitive_restart_enable, "vkCmdSetPrimitiveRestartEnable")
	set_proc_address(&cmd_set_primitive_topology, "vkCmdSetPrimitiveTopology")
	set_proc_address(&cmd_set_provoking_vertex_mode, "vkCmdSetProvokingVertexModeEXT")
	set_proc_address(&cmd_set_rasterization_samples, "vkCmdSetRasterizationSamplesEXT")
	set_proc_address(&cmd_set_rasterization_stream, "vkCmdSetRasterizationStreamEXT")
	set_proc_address(&cmd_set_rasterizer_discard_enable, "vkCmdSetRasterizerDiscardEnable")
	set_proc_address(&cmd_set_ray_tracing_pipeline_stack_size, "vkCmdSetRayTracingPipelineStackSizeKHR")
	set_proc_address(&raw_cmd_set_rendering_attachment_locations, "vkCmdSetRenderingAttachmentLocations")
	set_proc_address(&raw_cmd_set_rendering_input_attachment_indices, "vkCmdSetRenderingInputAttachmentIndices")
	set_proc_address(&cmd_set_representative_fragment_test_enable, "vkCmdSetRepresentativeFragmentTestEnableNV")
	set_proc_address(&raw_cmd_set_sample_locations, "vkCmdSetSampleLocationsEXT")
	set_proc_address(&cmd_set_sample_locations_enable, "vkCmdSetSampleLocationsEnableEXT")
	set_proc_address(&cmd_set_sample_mask, "vkCmdSetSampleMaskEXT")
	set_proc_address(&raw_cmd_set_scissor, "vkCmdSetScissor")
	set_proc_address(&raw_cmd_set_scissor_with_count, "vkCmdSetScissorWithCount")
	set_proc_address(&cmd_set_shading_rate_image_enable, "vkCmdSetShadingRateImageEnableNV")
	set_proc_address(&cmd_set_stencil_compare_mask, "vkCmdSetStencilCompareMask")
	set_proc_address(&cmd_set_stencil_op, "vkCmdSetStencilOp")
	set_proc_address(&cmd_set_stencil_reference, "vkCmdSetStencilReference")
	set_proc_address(&cmd_set_stencil_test_enable, "vkCmdSetStencilTestEnable")
	set_proc_address(&cmd_set_stencil_write_mask, "vkCmdSetStencilWriteMask")
	set_proc_address(&cmd_set_tessellation_domain_origin, "vkCmdSetTessellationDomainOriginEXT")
	set_proc_address(&raw_cmd_set_vertex_input, "vkCmdSetVertexInputEXT")
	set_proc_address(&raw_cmd_set_viewport, "vkCmdSetViewport")
	set_proc_address(&cmd_set_viewport_shading_rate_palette, "vkCmdSetViewportShadingRatePaletteNV")
	set_proc_address(&cmd_set_viewport_swizzle, "vkCmdSetViewportSwizzleNV")
	set_proc_address(&raw_cmd_set_viewport_with_count, "vkCmdSetViewportWithCount")
	set_proc_address(&cmd_set_viewport_wscaling, "vkCmdSetViewportWScalingNV")
	set_proc_address(&cmd_set_viewport_wscaling_enable, "vkCmdSetViewportWScalingEnableNV")
	set_proc_address(&cmd_subpass_shading_huawei, "vkCmdSubpassShadingHUAWEI")
	set_proc_address(&raw_cmd_trace_rays, "vkCmdTraceRaysNV")
	set_proc_address(&cmd_trace_rays_indirect, "vkCmdTraceRaysIndirectKHR")
	set_proc_address(&cmd_trace_rays_indirect2, "vkCmdTraceRaysIndirect2KHR")
	set_proc_address(&raw_cmd_update_buffer, "vkCmdUpdateBuffer")
	set_proc_address(&cmd_update_pipeline_indirect_buffer, "vkCmdUpdatePipelineIndirectBufferNV")
	set_proc_address(&raw_cmd_wait_events, "vkCmdWaitEvents")
	set_proc_address(&raw_cmd_wait_events2, "vkCmdWaitEvents2")
	set_proc_address(&raw_cmd_write_acceleration_structures_properties, "vkCmdWriteAccelerationStructuresPropertiesNV")
	set_proc_address(&raw_cmd_write_buffer_marker, "vkCmdWriteBufferMarkerAMD")
	set_proc_address(&raw_cmd_write_buffer_marker2, "vkCmdWriteBufferMarker2AMD")
	set_proc_address(&raw_cmd_write_micromaps_properties, "vkCmdWriteMicromapsPropertiesEXT")
	set_proc_address(&cmd_write_timestamp, "vkCmdWriteTimestamp")
	set_proc_address(&cmd_write_timestamp2, "vkCmdWriteTimestamp2")
	set_proc_address(&raw_compile_deferred, "vkCompileDeferredNV")
	set_proc_address(&raw_copy_acceleration_structure, "vkCopyAccelerationStructureKHR")
	set_proc_address(&raw_copy_acceleration_structure_to_memory, "vkCopyAccelerationStructureToMemoryKHR")
	set_proc_address(&raw_copy_image_to_image, "vkCopyImageToImage")
	set_proc_address(&raw_copy_image_to_memory, "vkCopyImageToMemory")
	set_proc_address(&raw_copy_memory_to_acceleration_structure, "vkCopyMemoryToAccelerationStructureKHR")
	set_proc_address(&raw_copy_memory_to_image, "vkCopyMemoryToImage")
	set_proc_address(&raw_copy_memory_to_micromap, "vkCopyMemoryToMicromapEXT")
	set_proc_address(&raw_copy_micromap, "vkCopyMicromapEXT")
	set_proc_address(&raw_copy_micromap_to_memory, "vkCopyMicromapToMemoryEXT")
	set_proc_address(&raw_create_acceleration_structure, "vkCreateAccelerationStructureNV")
	set_proc_address(&raw_create_buffer, "vkCreateBuffer")
	set_proc_address(&raw_create_buffer_view, "vkCreateBufferView")
	set_proc_address(&raw_create_command_pool, "vkCreateCommandPool")
	set_proc_address(&raw_create_compute_pipelines, "vkCreateComputePipelines")
	set_proc_address(&raw_create_cu_function, "vkCreateCuFunctionNVX")
	set_proc_address(&raw_create_cu_module, "vkCreateCuModuleNVX")
	set_proc_address(&raw_create_cuda_function, "vkCreateCudaFunctionNV")
	set_proc_address(&raw_create_cuda_module, "vkCreateCudaModuleNV")
	set_proc_address(&raw_create_deferred_operation, "vkCreateDeferredOperationKHR")
	set_proc_address(&raw_create_descriptor_pool, "vkCreateDescriptorPool")
	set_proc_address(&raw_create_descriptor_set_layout, "vkCreateDescriptorSetLayout")
	set_proc_address(&raw_create_descriptor_update_template, "vkCreateDescriptorUpdateTemplate")
	set_proc_address(&raw_create_event, "vkCreateEvent")
	set_proc_address(&raw_create_fence, "vkCreateFence")
	set_proc_address(&raw_create_framebuffer, "vkCreateFramebuffer")
	set_proc_address(&raw_create_graphics_pipelines, "vkCreateGraphicsPipelines")
	set_proc_address(&raw_create_image, "vkCreateImage")
	set_proc_address(&raw_create_image_view, "vkCreateImageView")
	set_proc_address(&raw_create_indirect_commands_layout, "vkCreateIndirectCommandsLayoutNV")
	set_proc_address(&raw_create_indirect_execution_set, "vkCreateIndirectExecutionSetEXT")
	set_proc_address(&raw_create_micromap, "vkCreateMicromapEXT")
	set_proc_address(&raw_create_optical_flow_session, "vkCreateOpticalFlowSessionNV")
	set_proc_address(&raw_create_pipeline_binaries, "vkCreatePipelineBinariesKHR")
	set_proc_address(&raw_create_pipeline_cache, "vkCreatePipelineCache")
	set_proc_address(&raw_create_pipeline_layout, "vkCreatePipelineLayout")
	set_proc_address(&raw_create_private_data_slot, "vkCreatePrivateDataSlot")
	set_proc_address(&raw_create_query_pool, "vkCreateQueryPool")
	set_proc_address(&raw_create_ray_tracing_pipelines, "vkCreateRayTracingPipelinesNV")
	set_proc_address(&raw_create_render_pass, "vkCreateRenderPass")
	set_proc_address(&raw_create_render_pass2, "vkCreateRenderPass2")
	set_proc_address(&raw_create_sampler, "vkCreateSampler")
	set_proc_address(&raw_create_sampler_ycbcr_conversion, "vkCreateSamplerYcbcrConversion")
	set_proc_address(&raw_create_semaphore, "vkCreateSemaphore")
	set_proc_address(&raw_create_shader_module, "vkCreateShaderModule")
	set_proc_address(&raw_create_shaders, "vkCreateShadersEXT")
	set_proc_address(&raw_create_shared_swapchains, "vkCreateSharedSwapchainsKHR")
	set_proc_address(&raw_create_swapchain, "vkCreateSwapchainKHR")
	set_proc_address(&raw_create_validation_cache, "vkCreateValidationCacheEXT")
	set_proc_address(&raw_create_video_session, "vkCreateVideoSessionKHR")
	set_proc_address(&raw_create_video_session_parameters, "vkCreateVideoSessionParametersKHR")
	set_proc_address(&raw_debug_marker_set_object_name, "vkDebugMarkerSetObjectNameEXT")
	set_proc_address(&raw_debug_marker_set_object_tag, "vkDebugMarkerSetObjectTagEXT")
	set_proc_address(&raw_deferred_operation_join, "vkDeferredOperationJoinKHR")
	set_proc_address(&raw_destroy_acceleration_structure, "vkDestroyAccelerationStructureNV")
	set_proc_address(&raw_destroy_buffer, "vkDestroyBuffer")
	set_proc_address(&raw_destroy_buffer_view, "vkDestroyBufferView")
	set_proc_address(&raw_destroy_command_pool, "vkDestroyCommandPool")
	set_proc_address(&raw_destroy_cu_function, "vkDestroyCuFunctionNVX")
	set_proc_address(&raw_destroy_cu_module, "vkDestroyCuModuleNVX")
	set_proc_address(&raw_destroy_cuda_function, "vkDestroyCudaFunctionNV")
	set_proc_address(&raw_destroy_cuda_module, "vkDestroyCudaModuleNV")
	set_proc_address(&raw_destroy_deferred_operation, "vkDestroyDeferredOperationKHR")
	set_proc_address(&raw_destroy_descriptor_pool, "vkDestroyDescriptorPool")
	set_proc_address(&raw_destroy_descriptor_set_layout, "vkDestroyDescriptorSetLayout")
	set_proc_address(&raw_destroy_descriptor_update_template, "vkDestroyDescriptorUpdateTemplate")
	set_proc_address(&raw_destroy_device, "vkDestroyDevice")
	set_proc_address(&raw_destroy_event, "vkDestroyEvent")
	set_proc_address(&raw_destroy_fence, "vkDestroyFence")
	set_proc_address(&raw_destroy_framebuffer, "vkDestroyFramebuffer")
	set_proc_address(&raw_destroy_image, "vkDestroyImage")
	set_proc_address(&raw_destroy_image_view, "vkDestroyImageView")
	set_proc_address(&raw_destroy_indirect_commands_layout, "vkDestroyIndirectCommandsLayoutNV")
	set_proc_address(&raw_destroy_indirect_execution_set, "vkDestroyIndirectExecutionSetEXT")
	set_proc_address(&raw_destroy_micromap, "vkDestroyMicromapEXT")
	set_proc_address(&raw_destroy_optical_flow_session, "vkDestroyOpticalFlowSessionNV")
	set_proc_address(&raw_destroy_pipeline, "vkDestroyPipeline")
	set_proc_address(&raw_destroy_pipeline_binary, "vkDestroyPipelineBinaryKHR")
	set_proc_address(&raw_destroy_pipeline_cache, "vkDestroyPipelineCache")
	set_proc_address(&raw_destroy_pipeline_layout, "vkDestroyPipelineLayout")
	set_proc_address(&raw_destroy_private_data_slot, "vkDestroyPrivateDataSlot")
	set_proc_address(&raw_destroy_query_pool, "vkDestroyQueryPool")
	set_proc_address(&raw_destroy_render_pass, "vkDestroyRenderPass")
	set_proc_address(&raw_destroy_sampler, "vkDestroySampler")
	set_proc_address(&raw_destroy_sampler_ycbcr_conversion, "vkDestroySamplerYcbcrConversion")
	set_proc_address(&raw_destroy_semaphore, "vkDestroySemaphore")
	set_proc_address(&raw_destroy_shader, "vkDestroyShaderEXT")
	set_proc_address(&raw_destroy_shader_module, "vkDestroyShaderModule")
	set_proc_address(&raw_destroy_swapchain, "vkDestroySwapchainKHR")
	set_proc_address(&raw_destroy_validation_cache, "vkDestroyValidationCacheEXT")
	set_proc_address(&raw_destroy_video_session, "vkDestroyVideoSessionKHR")
	set_proc_address(&raw_destroy_video_session_parameters, "vkDestroyVideoSessionParametersKHR")
	set_proc_address(&raw_device_wait_idle, "vkDeviceWaitIdle")
	set_proc_address(&raw_display_power_control, "vkDisplayPowerControlEXT")
	set_proc_address(&end_command_buffer, "vkEndCommandBuffer")
	set_proc_address(&raw_export_metal_objects, "vkExportMetalObjectsEXT")
	set_proc_address(&raw_flush_mapped_memory_ranges, "vkFlushMappedMemoryRanges")
	set_proc_address(&raw_free_command_buffers, "vkFreeCommandBuffers")
	set_proc_address(&raw_free_descriptor_sets, "vkFreeDescriptorSets")
	set_proc_address(&raw_free_memory, "vkFreeMemory")
	set_proc_address(&raw_get_acceleration_structure_build_sizes, "vkGetAccelerationStructureBuildSizesKHR")
	set_proc_address(&raw_get_acceleration_structure_device_address, "vkGetAccelerationStructureDeviceAddressKHR")
	set_proc_address(&raw_get_acceleration_structure_handle, "vkGetAccelerationStructureHandleNV")
	set_proc_address(&raw_get_acceleration_structure_memory_requirements, "vkGetAccelerationStructureMemoryRequirementsNV")
	set_proc_address(&raw_get_acceleration_structure_opaque_capture_descriptor_data, "vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT")
	set_proc_address(&raw_get_buffer_device_address, "vkGetBufferDeviceAddress")
	set_proc_address(&raw_get_buffer_memory_requirements, "vkGetBufferMemoryRequirements")
	set_proc_address(&raw_get_buffer_memory_requirements2, "vkGetBufferMemoryRequirements2")
	set_proc_address(&raw_get_buffer_opaque_capture_address, "vkGetBufferOpaqueCaptureAddress")
	set_proc_address(&raw_get_buffer_opaque_capture_descriptor_data, "vkGetBufferOpaqueCaptureDescriptorDataEXT")
	set_proc_address(&raw_get_calibrated_timestamps, "vkGetCalibratedTimestampsKHR")
	set_proc_address(&raw_get_cuda_module_cache, "vkGetCudaModuleCacheNV")
	set_proc_address(&raw_get_deferred_operation_max_concurrency, "vkGetDeferredOperationMaxConcurrencyKHR")
	set_proc_address(&raw_get_deferred_operation_result, "vkGetDeferredOperationResultKHR")
	set_proc_address(&raw_get_descriptor, "vkGetDescriptorEXT")
	set_proc_address(&raw_get_descriptor_set_host_mapping_valve, "vkGetDescriptorSetHostMappingVALVE")
	set_proc_address(&raw_get_descriptor_set_layout_binding_offset, "vkGetDescriptorSetLayoutBindingOffsetEXT")
	set_proc_address(&raw_get_descriptor_set_layout_host_mapping_info_valve, "vkGetDescriptorSetLayoutHostMappingInfoVALVE")
	set_proc_address(&raw_get_descriptor_set_layout_size, "vkGetDescriptorSetLayoutSizeEXT")
	set_proc_address(&raw_get_descriptor_set_layout_support, "vkGetDescriptorSetLayoutSupport")
	set_proc_address(&raw_get_device_acceleration_structure_compatibility, "vkGetDeviceAccelerationStructureCompatibilityKHR")
	set_proc_address(&raw_get_device_buffer_memory_requirements, "vkGetDeviceBufferMemoryRequirements")
	set_proc_address(&raw_get_device_fault_info, "vkGetDeviceFaultInfoEXT")
	set_proc_address(&raw_get_device_group_peer_memory_features, "vkGetDeviceGroupPeerMemoryFeatures")
	set_proc_address(&raw_get_device_group_present_capabilities, "vkGetDeviceGroupPresentCapabilitiesKHR")
	set_proc_address(&raw_get_device_group_surface_present_modes, "vkGetDeviceGroupSurfacePresentModesKHR")
	set_proc_address(&raw_get_device_group_surface_present_modes2, "vkGetDeviceGroupSurfacePresentModes2EXT")
	set_proc_address(&raw_get_device_image_memory_requirements, "vkGetDeviceImageMemoryRequirements")
	set_proc_address(&raw_get_device_image_sparse_memory_requirements, "vkGetDeviceImageSparseMemoryRequirements")
	set_proc_address(&raw_get_device_image_subresource_layout, "vkGetDeviceImageSubresourceLayout")
	set_proc_address(&raw_get_device_memory_commitment, "vkGetDeviceMemoryCommitment")
	set_proc_address(&raw_get_device_memory_opaque_capture_address, "vkGetDeviceMemoryOpaqueCaptureAddress")
	set_proc_address(&raw_get_device_micromap_compatibility, "vkGetDeviceMicromapCompatibilityEXT")
	set_proc_address(&raw_get_device_queue, "vkGetDeviceQueue")
	set_proc_address(&raw_get_device_queue2, "vkGetDeviceQueue2")
	set_proc_address(&raw_get_device_subpass_shading_max_workgroup_size_huawei, "vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI")
	set_proc_address(&raw_get_dynamic_rendering_tile_properties_qcom, "vkGetDynamicRenderingTilePropertiesQCOM")
	set_proc_address(&raw_get_encoded_video_session_parameters, "vkGetEncodedVideoSessionParametersKHR")
	set_proc_address(&raw_get_event_status, "vkGetEventStatus")
	set_proc_address(&raw_get_fence_fd, "vkGetFenceFdKHR")
	set_proc_address(&raw_get_fence_status, "vkGetFenceStatus")
	set_proc_address(&raw_get_fence_win32_handle, "vkGetFenceWin32HandleKHR")
	set_proc_address(&raw_get_framebuffer_tile_properties_qcom, "vkGetFramebufferTilePropertiesQCOM")
	set_proc_address(&raw_get_generated_commands_memory_requirements, "vkGetGeneratedCommandsMemoryRequirementsNV")
	set_proc_address(&raw_get_image_drm_format_modifier_properties, "vkGetImageDrmFormatModifierPropertiesEXT")
	set_proc_address(&raw_get_image_memory_requirements, "vkGetImageMemoryRequirements")
	set_proc_address(&raw_get_image_memory_requirements2, "vkGetImageMemoryRequirements2")
	set_proc_address(&raw_get_image_opaque_capture_descriptor_data, "vkGetImageOpaqueCaptureDescriptorDataEXT")
	set_proc_address(&raw_get_image_sparse_memory_requirements, "vkGetImageSparseMemoryRequirements")
	set_proc_address(&raw_get_image_sparse_memory_requirements2, "vkGetImageSparseMemoryRequirements2")
	set_proc_address(&raw_get_image_subresource_layout, "vkGetImageSubresourceLayout")
	set_proc_address(&raw_get_image_subresource_layout2, "vkGetImageSubresourceLayout2")
	set_proc_address(&raw_get_image_view_address, "vkGetImageViewAddressNVX")
	set_proc_address(&raw_get_image_view_handle, "vkGetImageViewHandleNVX")
	set_proc_address(&raw_get_image_view_handle64, "vkGetImageViewHandle64NVX")
	set_proc_address(&raw_get_image_view_opaque_capture_descriptor_data, "vkGetImageViewOpaqueCaptureDescriptorDataEXT")
	set_proc_address(&raw_get_latency_timings, "vkGetLatencyTimingsNV")
	set_proc_address(&raw_get_memory_fd, "vkGetMemoryFdKHR")
	set_proc_address(&raw_get_memory_fd_properties, "vkGetMemoryFdPropertiesKHR")
	set_proc_address(&raw_get_memory_host_pointer_properties, "vkGetMemoryHostPointerPropertiesEXT")
	set_proc_address(&raw_get_memory_remote_address, "vkGetMemoryRemoteAddressNV")
	set_proc_address(&raw_get_memory_win32_handle, "vkGetMemoryWin32HandleKHR")
	set_proc_address(&raw_get_memory_win32_handle_properties, "vkGetMemoryWin32HandlePropertiesKHR")
	set_proc_address(&raw_get_micromap_build_sizes, "vkGetMicromapBuildSizesEXT")
	set_proc_address(&raw_get_past_presentation_timing, "vkGetPastPresentationTimingGOOGLE")
	set_proc_address(&raw_get_performance_parameter_intel, "vkGetPerformanceParameterINTEL")
	set_proc_address(&raw_get_pipeline_binary_data, "vkGetPipelineBinaryDataKHR")
	set_proc_address(&raw_get_pipeline_cache_data, "vkGetPipelineCacheData")
	set_proc_address(&raw_get_pipeline_executable_internal_representations, "vkGetPipelineExecutableInternalRepresentationsKHR")
	set_proc_address(&raw_get_pipeline_executable_properties, "vkGetPipelineExecutablePropertiesKHR")
	set_proc_address(&raw_get_pipeline_executable_statistics, "vkGetPipelineExecutableStatisticsKHR")
	set_proc_address(&raw_get_pipeline_indirect_device_address, "vkGetPipelineIndirectDeviceAddressNV")
	set_proc_address(&raw_get_pipeline_indirect_memory_requirements, "vkGetPipelineIndirectMemoryRequirementsNV")
	set_proc_address(&raw_get_pipeline_key, "vkGetPipelineKeyKHR")
	set_proc_address(&raw_get_pipeline_properties, "vkGetPipelinePropertiesEXT")
	set_proc_address(&raw_get_private_data, "vkGetPrivateData")
	set_proc_address(&raw_get_query_pool_results, "vkGetQueryPoolResults")
	set_proc_address(&raw_get_queue_checkpoint_data, "vkGetQueueCheckpointDataNV")
	set_proc_address(&raw_get_queue_checkpoint_data2, "vkGetQueueCheckpointData2NV")
	set_proc_address(&raw_get_ray_tracing_capture_replay_shader_group_handles, "vkGetRayTracingCaptureReplayShaderGroupHandlesKHR")
	set_proc_address(&raw_get_ray_tracing_shader_group_handles, "vkGetRayTracingShaderGroupHandlesKHR")
	set_proc_address(&raw_get_ray_tracing_shader_group_stack_size, "vkGetRayTracingShaderGroupStackSizeKHR")
	set_proc_address(&raw_get_refresh_cycle_duration, "vkGetRefreshCycleDurationGOOGLE")
	set_proc_address(&raw_get_render_area_granularity, "vkGetRenderAreaGranularity")
	set_proc_address(&raw_get_rendering_area_granularity, "vkGetRenderingAreaGranularity")
	set_proc_address(&raw_get_sampler_opaque_capture_descriptor_data, "vkGetSamplerOpaqueCaptureDescriptorDataEXT")
	set_proc_address(&raw_get_semaphore_counter_value, "vkGetSemaphoreCounterValue")
	set_proc_address(&raw_get_semaphore_fd, "vkGetSemaphoreFdKHR")
	set_proc_address(&raw_get_semaphore_win32_handle, "vkGetSemaphoreWin32HandleKHR")
	set_proc_address(&raw_get_shader_binary_data, "vkGetShaderBinaryDataEXT")
	set_proc_address(&raw_get_shader_info, "vkGetShaderInfoAMD")
	set_proc_address(&raw_get_shader_module_create_info_identifier, "vkGetShaderModuleCreateInfoIdentifierEXT")
	set_proc_address(&raw_get_shader_module_identifier, "vkGetShaderModuleIdentifierEXT")
	set_proc_address(&raw_get_swapchain_counter, "vkGetSwapchainCounterEXT")
	set_proc_address(&raw_get_swapchain_images, "vkGetSwapchainImagesKHR")
	set_proc_address(&raw_get_swapchain_status, "vkGetSwapchainStatusKHR")
	set_proc_address(&raw_get_validation_cache_data, "vkGetValidationCacheDataEXT")
	set_proc_address(&raw_get_video_session_memory_requirements, "vkGetVideoSessionMemoryRequirementsKHR")
	set_proc_address(&raw_import_fence_fd, "vkImportFenceFdKHR")
	set_proc_address(&raw_import_fence_win32_handle, "vkImportFenceWin32HandleKHR")
	set_proc_address(&raw_import_semaphore_fd, "vkImportSemaphoreFdKHR")
	set_proc_address(&raw_import_semaphore_win32_handle, "vkImportSemaphoreWin32HandleKHR")
	set_proc_address(&raw_initialize_performance_api_intel, "vkInitializePerformanceApiINTEL")
	set_proc_address(&raw_invalidate_mapped_memory_ranges, "vkInvalidateMappedMemoryRanges")
	set_proc_address(&raw_latency_sleep, "vkLatencySleepNV")
	set_proc_address(&raw_map_memory, "vkMapMemory")
	set_proc_address(&raw_map_memory2, "vkMapMemory2")
	set_proc_address(&raw_merge_pipeline_caches, "vkMergePipelineCaches")
	set_proc_address(&raw_merge_validation_caches, "vkMergeValidationCachesEXT")
	set_proc_address(&raw_queue_begin_debug_utils_label, "vkQueueBeginDebugUtilsLabelEXT")
	set_proc_address(&queue_bind_sparse, "vkQueueBindSparse")
	set_proc_address(&queue_end_debug_utils_label, "vkQueueEndDebugUtilsLabelEXT")
	set_proc_address(&raw_queue_insert_debug_utils_label, "vkQueueInsertDebugUtilsLabelEXT")
	set_proc_address(&raw_queue_notify_out_of_band, "vkQueueNotifyOutOfBandNV")
	set_proc_address(&raw_queue_present, "vkQueuePresentKHR")
	set_proc_address(&queue_set_performance_configuration_intel, "vkQueueSetPerformanceConfigurationINTEL")
	set_proc_address(&raw_queue_submit, "vkQueueSubmit")
	set_proc_address(&raw_queue_submit2, "vkQueueSubmit2")
	set_proc_address(&queue_wait_idle, "vkQueueWaitIdle")
	set_proc_address(&raw_register_device_event, "vkRegisterDeviceEventEXT")
	set_proc_address(&raw_register_display_event, "vkRegisterDisplayEventEXT")
	set_proc_address(&raw_release_captured_pipeline_data, "vkReleaseCapturedPipelineDataKHR")
	set_proc_address(&raw_release_full_screen_exclusive_mode, "vkReleaseFullScreenExclusiveModeEXT")
	set_proc_address(&raw_release_performance_configuration_intel, "vkReleasePerformanceConfigurationINTEL")
	set_proc_address(&raw_release_profiling_lock, "vkReleaseProfilingLockKHR")
	set_proc_address(&raw_release_swapchain_images, "vkReleaseSwapchainImagesEXT")
	set_proc_address(&raw_reset_command_buffer, "vkResetCommandBuffer")
	set_proc_address(&raw_reset_command_pool, "vkResetCommandPool")
	set_proc_address(&raw_reset_descriptor_pool, "vkResetDescriptorPool")
	set_proc_address(&raw_reset_event, "vkResetEvent")
	set_proc_address(&raw_reset_fences, "vkResetFences")
	set_proc_address(&raw_reset_query_pool, "vkResetQueryPool")
	set_proc_address(&raw_set_debug_utils_object_name, "vkSetDebugUtilsObjectNameEXT")
	set_proc_address(&raw_set_debug_utils_object_tag, "vkSetDebugUtilsObjectTagEXT")
	set_proc_address(&raw_set_device_memory_priority, "vkSetDeviceMemoryPriorityEXT")
	set_proc_address(&raw_set_event, "vkSetEvent")
	set_proc_address(&raw_set_hdr_metadata, "vkSetHdrMetadataEXT")
	set_proc_address(&raw_set_latency_marker, "vkSetLatencyMarkerNV")
	set_proc_address(&raw_set_latency_sleep_mode, "vkSetLatencySleepModeNV")
	set_proc_address(&raw_set_local_dimming, "vkSetLocalDimmingAMD")
	set_proc_address(&raw_set_private_data, "vkSetPrivateData")
	set_proc_address(&raw_signal_semaphore, "vkSignalSemaphore")
	set_proc_address(&raw_transition_image_layout, "vkTransitionImageLayout")
	set_proc_address(&raw_trim_command_pool, "vkTrimCommandPool")
	set_proc_address(&raw_uninitialize_performance_api_intel, "vkUninitializePerformanceApiINTEL")
	set_proc_address(&raw_unmap_memory, "vkUnmapMemory")
	set_proc_address(&raw_unmap_memory2, "vkUnmapMemory2")
	set_proc_address(&raw_update_descriptor_set_with_template, "vkUpdateDescriptorSetWithTemplate")
	set_proc_address(&raw_update_descriptor_sets, "vkUpdateDescriptorSets")
	set_proc_address(&raw_update_indirect_execution_set_pipeline, "vkUpdateIndirectExecutionSetPipelineEXT")
	set_proc_address(&raw_update_indirect_execution_set_shader, "vkUpdateIndirectExecutionSetShaderEXT")
	set_proc_address(&raw_update_video_session_parameters, "vkUpdateVideoSessionParametersKHR")
	set_proc_address(&raw_wait_for_fences, "vkWaitForFences")
	set_proc_address(&raw_wait_for_present, "vkWaitForPresentKHR")
	set_proc_address(&raw_wait_semaphores, "vkWaitSemaphores")
	set_proc_address(&raw_write_acceleration_structures_properties, "vkWriteAccelerationStructuresPropertiesKHR")
	set_proc_address(&raw_write_micromaps_properties, "vkWriteMicromapsPropertiesEXT")

}

load_proc_addresses_device :: proc(device: Device) {
	raw_acquire_full_screen_exclusive_mode = auto_cast get_device_proc_addr(device, "vkAcquireFullScreenExclusiveModeEXT")
	raw_acquire_next_image = auto_cast get_device_proc_addr(device, "vkAcquireNextImageKHR")
	raw_acquire_next_image2 = auto_cast get_device_proc_addr(device, "vkAcquireNextImage2KHR")
	raw_acquire_performance_configuration_intel = auto_cast get_device_proc_addr(device, "vkAcquirePerformanceConfigurationINTEL")
	raw_acquire_profiling_lock = auto_cast get_device_proc_addr(device, "vkAcquireProfilingLockKHR")
	raw_allocate_command_buffers = auto_cast get_device_proc_addr(device, "vkAllocateCommandBuffers")
	raw_allocate_descriptor_sets = auto_cast get_device_proc_addr(device, "vkAllocateDescriptorSets")
	raw_allocate_memory = auto_cast get_device_proc_addr(device, "vkAllocateMemory")
	raw_anti_lag_update = auto_cast get_device_proc_addr(device, "vkAntiLagUpdateAMD")
	raw_begin_command_buffer = auto_cast get_device_proc_addr(device, "vkBeginCommandBuffer")
	raw_bind_acceleration_structure_memory = auto_cast get_device_proc_addr(device, "vkBindAccelerationStructureMemoryNV")
	raw_bind_buffer_memory = auto_cast get_device_proc_addr(device, "vkBindBufferMemory")
	raw_bind_buffer_memory2 = auto_cast get_device_proc_addr(device, "vkBindBufferMemory2")
	raw_bind_image_memory = auto_cast get_device_proc_addr(device, "vkBindImageMemory")
	raw_bind_image_memory2 = auto_cast get_device_proc_addr(device, "vkBindImageMemory2")
	raw_bind_optical_flow_session_image = auto_cast get_device_proc_addr(device, "vkBindOpticalFlowSessionImageNV")
	raw_bind_video_session_memory = auto_cast get_device_proc_addr(device, "vkBindVideoSessionMemoryKHR")
	raw_build_acceleration_structures = auto_cast get_device_proc_addr(device, "vkBuildAccelerationStructuresKHR")
	raw_build_micromaps = auto_cast get_device_proc_addr(device, "vkBuildMicromapsEXT")
	raw_cmd_begin_conditional_rendering = auto_cast get_device_proc_addr(device, "vkCmdBeginConditionalRenderingEXT")
	raw_cmd_begin_debug_utils_label = auto_cast get_device_proc_addr(device, "vkCmdBeginDebugUtilsLabelEXT")
	raw_cmd_begin_query = auto_cast get_device_proc_addr(device, "vkCmdBeginQuery")
	raw_cmd_begin_query_indexed = auto_cast get_device_proc_addr(device, "vkCmdBeginQueryIndexedEXT")
	raw_cmd_begin_render_pass = auto_cast get_device_proc_addr(device, "vkCmdBeginRenderPass")
	raw_cmd_begin_render_pass2 = auto_cast get_device_proc_addr(device, "vkCmdBeginRenderPass2")
	cmd_begin_rendering = auto_cast get_device_proc_addr(device, "vkCmdBeginRendering")
	raw_cmd_begin_transform_feedback = auto_cast get_device_proc_addr(device, "vkCmdBeginTransformFeedbackEXT")
	raw_cmd_begin_video_coding = auto_cast get_device_proc_addr(device, "vkCmdBeginVideoCodingKHR")
	cmd_bind_descriptor_buffer_embedded_samplers = auto_cast get_device_proc_addr(device, "vkCmdBindDescriptorBufferEmbeddedSamplersEXT")
	raw_cmd_bind_descriptor_buffer_embedded_samplers2 = auto_cast get_device_proc_addr(device, "vkCmdBindDescriptorBufferEmbeddedSamplers2EXT")
	cmd_bind_descriptor_buffers = auto_cast get_device_proc_addr(device, "vkCmdBindDescriptorBuffersEXT")
	raw_cmd_bind_descriptor_sets = auto_cast get_device_proc_addr(device, "vkCmdBindDescriptorSets")
	cmd_bind_descriptor_sets2 = auto_cast get_device_proc_addr(device, "vkCmdBindDescriptorSets2")
	cmd_bind_index_buffer = auto_cast get_device_proc_addr(device, "vkCmdBindIndexBuffer")
	cmd_bind_index_buffer2 = auto_cast get_device_proc_addr(device, "vkCmdBindIndexBuffer2")
	cmd_bind_invocation_mask_huawei = auto_cast get_device_proc_addr(device, "vkCmdBindInvocationMaskHUAWEI")
	cmd_bind_pipeline = auto_cast get_device_proc_addr(device, "vkCmdBindPipeline")
	cmd_bind_pipeline_shader_group = auto_cast get_device_proc_addr(device, "vkCmdBindPipelineShaderGroupNV")
	raw_cmd_bind_shaders = auto_cast get_device_proc_addr(device, "vkCmdBindShadersEXT")
	cmd_bind_shading_rate_image = auto_cast get_device_proc_addr(device, "vkCmdBindShadingRateImageNV")
	cmd_bind_transform_feedback_buffers = auto_cast get_device_proc_addr(device, "vkCmdBindTransformFeedbackBuffersEXT")
	cmd_bind_vertex_buffers = auto_cast get_device_proc_addr(device, "vkCmdBindVertexBuffers")
	cmd_bind_vertex_buffers2 = auto_cast get_device_proc_addr(device, "vkCmdBindVertexBuffers2")
	raw_cmd_blit_image = auto_cast get_device_proc_addr(device, "vkCmdBlitImage")
	cmd_blit_image2 = auto_cast get_device_proc_addr(device, "vkCmdBlitImage2")
	raw_cmd_build_acceleration_structure = auto_cast get_device_proc_addr(device, "vkCmdBuildAccelerationStructureNV")
	raw_cmd_build_acceleration_structures = auto_cast get_device_proc_addr(device, "vkCmdBuildAccelerationStructuresKHR")
	raw_cmd_build_acceleration_structures_indirect = auto_cast get_device_proc_addr(device, "vkCmdBuildAccelerationStructuresIndirectKHR")
	raw_cmd_build_micromaps = auto_cast get_device_proc_addr(device, "vkCmdBuildMicromapsEXT")
	raw_cmd_clear_attachments = auto_cast get_device_proc_addr(device, "vkCmdClearAttachments")
	raw_cmd_clear_color_image = auto_cast get_device_proc_addr(device, "vkCmdClearColorImage")
	raw_cmd_clear_depth_stencil_image = auto_cast get_device_proc_addr(device, "vkCmdClearDepthStencilImage")
	raw_cmd_control_video_coding = auto_cast get_device_proc_addr(device, "vkCmdControlVideoCodingKHR")
	cmd_copy_acceleration_structure = auto_cast get_device_proc_addr(device, "vkCmdCopyAccelerationStructureNV")
	raw_cmd_copy_acceleration_structure_to_memory = auto_cast get_device_proc_addr(device, "vkCmdCopyAccelerationStructureToMemoryKHR")
	raw_cmd_copy_buffer = auto_cast get_device_proc_addr(device, "vkCmdCopyBuffer")
	cmd_copy_buffer2 = auto_cast get_device_proc_addr(device, "vkCmdCopyBuffer2")
	raw_cmd_copy_buffer_to_image = auto_cast get_device_proc_addr(device, "vkCmdCopyBufferToImage")
	cmd_copy_buffer_to_image2 = auto_cast get_device_proc_addr(device, "vkCmdCopyBufferToImage2")
	raw_cmd_copy_image = auto_cast get_device_proc_addr(device, "vkCmdCopyImage")
	cmd_copy_image2 = auto_cast get_device_proc_addr(device, "vkCmdCopyImage2")
	raw_cmd_copy_image_to_buffer = auto_cast get_device_proc_addr(device, "vkCmdCopyImageToBuffer")
	cmd_copy_image_to_buffer2 = auto_cast get_device_proc_addr(device, "vkCmdCopyImageToBuffer2")
	cmd_copy_memory_indirect = auto_cast get_device_proc_addr(device, "vkCmdCopyMemoryIndirectNV")
	raw_cmd_copy_memory_to_acceleration_structure = auto_cast get_device_proc_addr(device, "vkCmdCopyMemoryToAccelerationStructureKHR")
	cmd_copy_memory_to_image_indirect = auto_cast get_device_proc_addr(device, "vkCmdCopyMemoryToImageIndirectNV")
	raw_cmd_copy_memory_to_micromap = auto_cast get_device_proc_addr(device, "vkCmdCopyMemoryToMicromapEXT")
	raw_cmd_copy_micromap = auto_cast get_device_proc_addr(device, "vkCmdCopyMicromapEXT")
	raw_cmd_copy_micromap_to_memory = auto_cast get_device_proc_addr(device, "vkCmdCopyMicromapToMemoryEXT")
	raw_cmd_copy_query_pool_results = auto_cast get_device_proc_addr(device, "vkCmdCopyQueryPoolResults")
	cmd_cu_launch_kernel = auto_cast get_device_proc_addr(device, "vkCmdCuLaunchKernelNVX")
	cmd_cuda_launch_kernel = auto_cast get_device_proc_addr(device, "vkCmdCudaLaunchKernelNV")
	raw_cmd_debug_marker_begin = auto_cast get_device_proc_addr(device, "vkCmdDebugMarkerBeginEXT")
	cmd_debug_marker_end = auto_cast get_device_proc_addr(device, "vkCmdDebugMarkerEndEXT")
	raw_cmd_debug_marker_insert = auto_cast get_device_proc_addr(device, "vkCmdDebugMarkerInsertEXT")
	cmd_decode_video = auto_cast get_device_proc_addr(device, "vkCmdDecodeVideoKHR")
	cmd_decompress_memory = auto_cast get_device_proc_addr(device, "vkCmdDecompressMemoryNV")
	cmd_decompress_memory_indirect_count = auto_cast get_device_proc_addr(device, "vkCmdDecompressMemoryIndirectCountNV")
	cmd_dispatch = auto_cast get_device_proc_addr(device, "vkCmdDispatch")
	cmd_dispatch_base = auto_cast get_device_proc_addr(device, "vkCmdDispatchBase")
	cmd_dispatch_indirect = auto_cast get_device_proc_addr(device, "vkCmdDispatchIndirect")
	cmd_draw = auto_cast get_device_proc_addr(device, "vkCmdDraw")
	cmd_draw_cluster_huawei = auto_cast get_device_proc_addr(device, "vkCmdDrawClusterHUAWEI")
	cmd_draw_cluster_indirect_huawei = auto_cast get_device_proc_addr(device, "vkCmdDrawClusterIndirectHUAWEI")
	cmd_draw_indexed = auto_cast get_device_proc_addr(device, "vkCmdDrawIndexed")
	cmd_draw_indexed_indirect = auto_cast get_device_proc_addr(device, "vkCmdDrawIndexedIndirect")
	raw_cmd_draw_indexed_indirect_count = auto_cast get_device_proc_addr(device, "vkCmdDrawIndexedIndirectCount")
	cmd_draw_indirect = auto_cast get_device_proc_addr(device, "vkCmdDrawIndirect")
	raw_cmd_draw_indirect_byte_count = auto_cast get_device_proc_addr(device, "vkCmdDrawIndirectByteCountEXT")
	raw_cmd_draw_indirect_count = auto_cast get_device_proc_addr(device, "vkCmdDrawIndirectCount")
	cmd_draw_mesh_tasks = auto_cast get_device_proc_addr(device, "vkCmdDrawMeshTasksNV")
	cmd_draw_mesh_tasks_indirect = auto_cast get_device_proc_addr(device, "vkCmdDrawMeshTasksIndirectNV")
	raw_cmd_draw_mesh_tasks_indirect_count = auto_cast get_device_proc_addr(device, "vkCmdDrawMeshTasksIndirectCountNV")
	raw_cmd_draw_multi = auto_cast get_device_proc_addr(device, "vkCmdDrawMultiEXT")
	raw_cmd_draw_multi_indexed = auto_cast get_device_proc_addr(device, "vkCmdDrawMultiIndexedEXT")
	cmd_encode_video = auto_cast get_device_proc_addr(device, "vkCmdEncodeVideoKHR")
	cmd_end_conditional_rendering = auto_cast get_device_proc_addr(device, "vkCmdEndConditionalRenderingEXT")
	cmd_end_debug_utils_label = auto_cast get_device_proc_addr(device, "vkCmdEndDebugUtilsLabelEXT")
	cmd_end_query = auto_cast get_device_proc_addr(device, "vkCmdEndQuery")
	cmd_end_query_indexed = auto_cast get_device_proc_addr(device, "vkCmdEndQueryIndexedEXT")
	cmd_end_render_pass = auto_cast get_device_proc_addr(device, "vkCmdEndRenderPass")
	raw_cmd_end_render_pass2 = auto_cast get_device_proc_addr(device, "vkCmdEndRenderPass2")
	cmd_end_rendering = auto_cast get_device_proc_addr(device, "vkCmdEndRendering")
	raw_cmd_end_transform_feedback = auto_cast get_device_proc_addr(device, "vkCmdEndTransformFeedbackEXT")
	raw_cmd_end_video_coding = auto_cast get_device_proc_addr(device, "vkCmdEndVideoCodingKHR")
	raw_cmd_execute_commands = auto_cast get_device_proc_addr(device, "vkCmdExecuteCommands")
	cmd_execute_generated_commands = auto_cast get_device_proc_addr(device, "vkCmdExecuteGeneratedCommandsNV")
	raw_cmd_fill_buffer = auto_cast get_device_proc_addr(device, "vkCmdFillBuffer")
	raw_cmd_insert_debug_utils_label = auto_cast get_device_proc_addr(device, "vkCmdInsertDebugUtilsLabelEXT")
	cmd_next_subpass = auto_cast get_device_proc_addr(device, "vkCmdNextSubpass")
	raw_cmd_next_subpass2 = auto_cast get_device_proc_addr(device, "vkCmdNextSubpass2")
	raw_cmd_optical_flow_execute = auto_cast get_device_proc_addr(device, "vkCmdOpticalFlowExecuteNV")
	raw_cmd_pipeline_barrier = auto_cast get_device_proc_addr(device, "vkCmdPipelineBarrier")
	raw_cmd_pipeline_barrier2 = auto_cast get_device_proc_addr(device, "vkCmdPipelineBarrier2")
	cmd_preprocess_generated_commands = auto_cast get_device_proc_addr(device, "vkCmdPreprocessGeneratedCommandsNV")
	raw_cmd_push_constants = auto_cast get_device_proc_addr(device, "vkCmdPushConstants")
	cmd_push_constants2 = auto_cast get_device_proc_addr(device, "vkCmdPushConstants2")
	raw_cmd_push_descriptor_set = auto_cast get_device_proc_addr(device, "vkCmdPushDescriptorSet")
	raw_cmd_push_descriptor_set2 = auto_cast get_device_proc_addr(device, "vkCmdPushDescriptorSet2")
	cmd_push_descriptor_set_with_template = auto_cast get_device_proc_addr(device, "vkCmdPushDescriptorSetWithTemplate")
	raw_cmd_push_descriptor_set_with_template2 = auto_cast get_device_proc_addr(device, "vkCmdPushDescriptorSetWithTemplate2")
	cmd_reset_event = auto_cast get_device_proc_addr(device, "vkCmdResetEvent")
	cmd_reset_event2 = auto_cast get_device_proc_addr(device, "vkCmdResetEvent2")
	cmd_reset_query_pool = auto_cast get_device_proc_addr(device, "vkCmdResetQueryPool")
	raw_cmd_resolve_image = auto_cast get_device_proc_addr(device, "vkCmdResolveImage")
	cmd_resolve_image2 = auto_cast get_device_proc_addr(device, "vkCmdResolveImage2")
	cmd_set_alpha_to_coverage_enable = auto_cast get_device_proc_addr(device, "vkCmdSetAlphaToCoverageEnableEXT")
	cmd_set_alpha_to_one_enable = auto_cast get_device_proc_addr(device, "vkCmdSetAlphaToOneEnableEXT")
	cmd_set_attachment_feedback_loop_enable = auto_cast get_device_proc_addr(device, "vkCmdSetAttachmentFeedbackLoopEnableEXT")
	cmd_set_blend_constants = auto_cast get_device_proc_addr(device, "vkCmdSetBlendConstants")
	cmd_set_checkpoint = auto_cast get_device_proc_addr(device, "vkCmdSetCheckpointNV")
	raw_cmd_set_coarse_sample_order = auto_cast get_device_proc_addr(device, "vkCmdSetCoarseSampleOrderNV")
	cmd_set_color_blend_advanced = auto_cast get_device_proc_addr(device, "vkCmdSetColorBlendAdvancedEXT")
	cmd_set_color_blend_enable = auto_cast get_device_proc_addr(device, "vkCmdSetColorBlendEnableEXT")
	cmd_set_color_blend_equation = auto_cast get_device_proc_addr(device, "vkCmdSetColorBlendEquationEXT")
	cmd_set_color_write_mask = auto_cast get_device_proc_addr(device, "vkCmdSetColorWriteMaskEXT")
	cmd_set_conservative_rasterization_mode = auto_cast get_device_proc_addr(device, "vkCmdSetConservativeRasterizationModeEXT")
	cmd_set_coverage_modulation_mode = auto_cast get_device_proc_addr(device, "vkCmdSetCoverageModulationModeNV")
	cmd_set_coverage_modulation_table = auto_cast get_device_proc_addr(device, "vkCmdSetCoverageModulationTableNV")
	cmd_set_coverage_modulation_table_enable = auto_cast get_device_proc_addr(device, "vkCmdSetCoverageModulationTableEnableNV")
	cmd_set_coverage_reduction_mode = auto_cast get_device_proc_addr(device, "vkCmdSetCoverageReductionModeNV")
	cmd_set_coverage_to_color_enable = auto_cast get_device_proc_addr(device, "vkCmdSetCoverageToColorEnableNV")
	cmd_set_coverage_to_color_location = auto_cast get_device_proc_addr(device, "vkCmdSetCoverageToColorLocationNV")
	cmd_set_cull_mode = auto_cast get_device_proc_addr(device, "vkCmdSetCullMode")
	cmd_set_depth_bias = auto_cast get_device_proc_addr(device, "vkCmdSetDepthBias")
	raw_cmd_set_depth_bias2 = auto_cast get_device_proc_addr(device, "vkCmdSetDepthBias2EXT")
	cmd_set_depth_bias_enable = auto_cast get_device_proc_addr(device, "vkCmdSetDepthBiasEnable")
	cmd_set_depth_bounds = auto_cast get_device_proc_addr(device, "vkCmdSetDepthBounds")
	cmd_set_depth_bounds_test_enable = auto_cast get_device_proc_addr(device, "vkCmdSetDepthBoundsTestEnable")
	cmd_set_depth_clamp_enable = auto_cast get_device_proc_addr(device, "vkCmdSetDepthClampEnableEXT")
	raw_cmd_set_depth_clamp_range = auto_cast get_device_proc_addr(device, "vkCmdSetDepthClampRangeEXT")
	cmd_set_depth_clip_enable = auto_cast get_device_proc_addr(device, "vkCmdSetDepthClipEnableEXT")
	cmd_set_depth_clip_negative_one_to_one = auto_cast get_device_proc_addr(device, "vkCmdSetDepthClipNegativeOneToOneEXT")
	cmd_set_depth_compare_op = auto_cast get_device_proc_addr(device, "vkCmdSetDepthCompareOp")
	cmd_set_depth_test_enable = auto_cast get_device_proc_addr(device, "vkCmdSetDepthTestEnable")
	cmd_set_depth_write_enable = auto_cast get_device_proc_addr(device, "vkCmdSetDepthWriteEnable")
	cmd_set_descriptor_buffer_offsets = auto_cast get_device_proc_addr(device, "vkCmdSetDescriptorBufferOffsetsEXT")
	cmd_set_descriptor_buffer_offsets2 = auto_cast get_device_proc_addr(device, "vkCmdSetDescriptorBufferOffsets2EXT")
	cmd_set_device_mask = auto_cast get_device_proc_addr(device, "vkCmdSetDeviceMask")
	raw_cmd_set_discard_rectangle = auto_cast get_device_proc_addr(device, "vkCmdSetDiscardRectangleEXT")
	cmd_set_discard_rectangle_enable = auto_cast get_device_proc_addr(device, "vkCmdSetDiscardRectangleEnableEXT")
	cmd_set_discard_rectangle_mode = auto_cast get_device_proc_addr(device, "vkCmdSetDiscardRectangleModeEXT")
	cmd_set_event = auto_cast get_device_proc_addr(device, "vkCmdSetEvent")
	raw_cmd_set_event2 = auto_cast get_device_proc_addr(device, "vkCmdSetEvent2")
	raw_cmd_set_exclusive_scissor = auto_cast get_device_proc_addr(device, "vkCmdSetExclusiveScissorNV")
	cmd_set_exclusive_scissor_enable = auto_cast get_device_proc_addr(device, "vkCmdSetExclusiveScissorEnableNV")
	cmd_set_extra_primitive_overestimation_size = auto_cast get_device_proc_addr(device, "vkCmdSetExtraPrimitiveOverestimationSizeEXT")
	raw_cmd_set_fragment_shading_rate = auto_cast get_device_proc_addr(device, "vkCmdSetFragmentShadingRateKHR")
	cmd_set_fragment_shading_rate_enum = auto_cast get_device_proc_addr(device, "vkCmdSetFragmentShadingRateEnumNV")
	cmd_set_front_face = auto_cast get_device_proc_addr(device, "vkCmdSetFrontFace")
	cmd_set_line_rasterization_mode = auto_cast get_device_proc_addr(device, "vkCmdSetLineRasterizationModeEXT")
	cmd_set_line_stipple = auto_cast get_device_proc_addr(device, "vkCmdSetLineStipple")
	cmd_set_line_stipple_enable = auto_cast get_device_proc_addr(device, "vkCmdSetLineStippleEnableEXT")
	cmd_set_line_width = auto_cast get_device_proc_addr(device, "vkCmdSetLineWidth")
	cmd_set_logic_op = auto_cast get_device_proc_addr(device, "vkCmdSetLogicOpEXT")
	cmd_set_logic_op_enable = auto_cast get_device_proc_addr(device, "vkCmdSetLogicOpEnableEXT")
	cmd_set_patch_control_points = auto_cast get_device_proc_addr(device, "vkCmdSetPatchControlPointsEXT")
	raw_cmd_set_performance_marker_intel = auto_cast get_device_proc_addr(device, "vkCmdSetPerformanceMarkerINTEL")
	cmd_set_performance_override_intel = auto_cast get_device_proc_addr(device, "vkCmdSetPerformanceOverrideINTEL")
	raw_cmd_set_performance_stream_marker_intel = auto_cast get_device_proc_addr(device, "vkCmdSetPerformanceStreamMarkerINTEL")
	cmd_set_polygon_mode = auto_cast get_device_proc_addr(device, "vkCmdSetPolygonModeEXT")
	cmd_set_primitive_restart_enable = auto_cast get_device_proc_addr(device, "vkCmdSetPrimitiveRestartEnable")
	cmd_set_primitive_topology = auto_cast get_device_proc_addr(device, "vkCmdSetPrimitiveTopology")
	cmd_set_provoking_vertex_mode = auto_cast get_device_proc_addr(device, "vkCmdSetProvokingVertexModeEXT")
	cmd_set_rasterization_samples = auto_cast get_device_proc_addr(device, "vkCmdSetRasterizationSamplesEXT")
	cmd_set_rasterization_stream = auto_cast get_device_proc_addr(device, "vkCmdSetRasterizationStreamEXT")
	cmd_set_rasterizer_discard_enable = auto_cast get_device_proc_addr(device, "vkCmdSetRasterizerDiscardEnable")
	cmd_set_ray_tracing_pipeline_stack_size = auto_cast get_device_proc_addr(device, "vkCmdSetRayTracingPipelineStackSizeKHR")
	raw_cmd_set_rendering_attachment_locations = auto_cast get_device_proc_addr(device, "vkCmdSetRenderingAttachmentLocations")
	raw_cmd_set_rendering_input_attachment_indices = auto_cast get_device_proc_addr(device, "vkCmdSetRenderingInputAttachmentIndices")
	cmd_set_representative_fragment_test_enable = auto_cast get_device_proc_addr(device, "vkCmdSetRepresentativeFragmentTestEnableNV")
	raw_cmd_set_sample_locations = auto_cast get_device_proc_addr(device, "vkCmdSetSampleLocationsEXT")
	cmd_set_sample_locations_enable = auto_cast get_device_proc_addr(device, "vkCmdSetSampleLocationsEnableEXT")
	cmd_set_sample_mask = auto_cast get_device_proc_addr(device, "vkCmdSetSampleMaskEXT")
	raw_cmd_set_scissor = auto_cast get_device_proc_addr(device, "vkCmdSetScissor")
	raw_cmd_set_scissor_with_count = auto_cast get_device_proc_addr(device, "vkCmdSetScissorWithCount")
	cmd_set_shading_rate_image_enable = auto_cast get_device_proc_addr(device, "vkCmdSetShadingRateImageEnableNV")
	cmd_set_stencil_compare_mask = auto_cast get_device_proc_addr(device, "vkCmdSetStencilCompareMask")
	cmd_set_stencil_op = auto_cast get_device_proc_addr(device, "vkCmdSetStencilOp")
	cmd_set_stencil_reference = auto_cast get_device_proc_addr(device, "vkCmdSetStencilReference")
	cmd_set_stencil_test_enable = auto_cast get_device_proc_addr(device, "vkCmdSetStencilTestEnable")
	cmd_set_stencil_write_mask = auto_cast get_device_proc_addr(device, "vkCmdSetStencilWriteMask")
	cmd_set_tessellation_domain_origin = auto_cast get_device_proc_addr(device, "vkCmdSetTessellationDomainOriginEXT")
	raw_cmd_set_vertex_input = auto_cast get_device_proc_addr(device, "vkCmdSetVertexInputEXT")
	raw_cmd_set_viewport = auto_cast get_device_proc_addr(device, "vkCmdSetViewport")
	cmd_set_viewport_shading_rate_palette = auto_cast get_device_proc_addr(device, "vkCmdSetViewportShadingRatePaletteNV")
	cmd_set_viewport_swizzle = auto_cast get_device_proc_addr(device, "vkCmdSetViewportSwizzleNV")
	raw_cmd_set_viewport_with_count = auto_cast get_device_proc_addr(device, "vkCmdSetViewportWithCount")
	cmd_set_viewport_wscaling = auto_cast get_device_proc_addr(device, "vkCmdSetViewportWScalingNV")
	cmd_set_viewport_wscaling_enable = auto_cast get_device_proc_addr(device, "vkCmdSetViewportWScalingEnableNV")
	cmd_subpass_shading_huawei = auto_cast get_device_proc_addr(device, "vkCmdSubpassShadingHUAWEI")
	raw_cmd_trace_rays = auto_cast get_device_proc_addr(device, "vkCmdTraceRaysNV")
	cmd_trace_rays_indirect = auto_cast get_device_proc_addr(device, "vkCmdTraceRaysIndirectKHR")
	cmd_trace_rays_indirect2 = auto_cast get_device_proc_addr(device, "vkCmdTraceRaysIndirect2KHR")
	raw_cmd_update_buffer = auto_cast get_device_proc_addr(device, "vkCmdUpdateBuffer")
	cmd_update_pipeline_indirect_buffer = auto_cast get_device_proc_addr(device, "vkCmdUpdatePipelineIndirectBufferNV")
	raw_cmd_wait_events = auto_cast get_device_proc_addr(device, "vkCmdWaitEvents")
	raw_cmd_wait_events2 = auto_cast get_device_proc_addr(device, "vkCmdWaitEvents2")
	raw_cmd_write_acceleration_structures_properties = auto_cast get_device_proc_addr(device, "vkCmdWriteAccelerationStructuresPropertiesNV")
	raw_cmd_write_buffer_marker = auto_cast get_device_proc_addr(device, "vkCmdWriteBufferMarkerAMD")
	raw_cmd_write_buffer_marker2 = auto_cast get_device_proc_addr(device, "vkCmdWriteBufferMarker2AMD")
	raw_cmd_write_micromaps_properties = auto_cast get_device_proc_addr(device, "vkCmdWriteMicromapsPropertiesEXT")
	cmd_write_timestamp = auto_cast get_device_proc_addr(device, "vkCmdWriteTimestamp")
	cmd_write_timestamp2 = auto_cast get_device_proc_addr(device, "vkCmdWriteTimestamp2")
	raw_compile_deferred = auto_cast get_device_proc_addr(device, "vkCompileDeferredNV")
	raw_copy_acceleration_structure = auto_cast get_device_proc_addr(device, "vkCopyAccelerationStructureKHR")
	raw_copy_acceleration_structure_to_memory = auto_cast get_device_proc_addr(device, "vkCopyAccelerationStructureToMemoryKHR")
	raw_copy_image_to_image = auto_cast get_device_proc_addr(device, "vkCopyImageToImage")
	raw_copy_image_to_memory = auto_cast get_device_proc_addr(device, "vkCopyImageToMemory")
	raw_copy_memory_to_acceleration_structure = auto_cast get_device_proc_addr(device, "vkCopyMemoryToAccelerationStructureKHR")
	raw_copy_memory_to_image = auto_cast get_device_proc_addr(device, "vkCopyMemoryToImage")
	raw_copy_memory_to_micromap = auto_cast get_device_proc_addr(device, "vkCopyMemoryToMicromapEXT")
	raw_copy_micromap = auto_cast get_device_proc_addr(device, "vkCopyMicromapEXT")
	raw_copy_micromap_to_memory = auto_cast get_device_proc_addr(device, "vkCopyMicromapToMemoryEXT")
	raw_create_acceleration_structure = auto_cast get_device_proc_addr(device, "vkCreateAccelerationStructureNV")
	raw_create_buffer = auto_cast get_device_proc_addr(device, "vkCreateBuffer")
	raw_create_buffer_view = auto_cast get_device_proc_addr(device, "vkCreateBufferView")
	raw_create_command_pool = auto_cast get_device_proc_addr(device, "vkCreateCommandPool")
	raw_create_compute_pipelines = auto_cast get_device_proc_addr(device, "vkCreateComputePipelines")
	raw_create_cu_function = auto_cast get_device_proc_addr(device, "vkCreateCuFunctionNVX")
	raw_create_cu_module = auto_cast get_device_proc_addr(device, "vkCreateCuModuleNVX")
	raw_create_cuda_function = auto_cast get_device_proc_addr(device, "vkCreateCudaFunctionNV")
	raw_create_cuda_module = auto_cast get_device_proc_addr(device, "vkCreateCudaModuleNV")
	raw_create_deferred_operation = auto_cast get_device_proc_addr(device, "vkCreateDeferredOperationKHR")
	raw_create_descriptor_pool = auto_cast get_device_proc_addr(device, "vkCreateDescriptorPool")
	raw_create_descriptor_set_layout = auto_cast get_device_proc_addr(device, "vkCreateDescriptorSetLayout")
	raw_create_descriptor_update_template = auto_cast get_device_proc_addr(device, "vkCreateDescriptorUpdateTemplate")
	raw_create_event = auto_cast get_device_proc_addr(device, "vkCreateEvent")
	raw_create_fence = auto_cast get_device_proc_addr(device, "vkCreateFence")
	raw_create_framebuffer = auto_cast get_device_proc_addr(device, "vkCreateFramebuffer")
	raw_create_graphics_pipelines = auto_cast get_device_proc_addr(device, "vkCreateGraphicsPipelines")
	raw_create_image = auto_cast get_device_proc_addr(device, "vkCreateImage")
	raw_create_image_view = auto_cast get_device_proc_addr(device, "vkCreateImageView")
	raw_create_indirect_commands_layout = auto_cast get_device_proc_addr(device, "vkCreateIndirectCommandsLayoutNV")
	raw_create_indirect_execution_set = auto_cast get_device_proc_addr(device, "vkCreateIndirectExecutionSetEXT")
	raw_create_micromap = auto_cast get_device_proc_addr(device, "vkCreateMicromapEXT")
	raw_create_optical_flow_session = auto_cast get_device_proc_addr(device, "vkCreateOpticalFlowSessionNV")
	raw_create_pipeline_binaries = auto_cast get_device_proc_addr(device, "vkCreatePipelineBinariesKHR")
	raw_create_pipeline_cache = auto_cast get_device_proc_addr(device, "vkCreatePipelineCache")
	raw_create_pipeline_layout = auto_cast get_device_proc_addr(device, "vkCreatePipelineLayout")
	raw_create_private_data_slot = auto_cast get_device_proc_addr(device, "vkCreatePrivateDataSlot")
	raw_create_query_pool = auto_cast get_device_proc_addr(device, "vkCreateQueryPool")
	raw_create_ray_tracing_pipelines = auto_cast get_device_proc_addr(device, "vkCreateRayTracingPipelinesNV")
	raw_create_render_pass = auto_cast get_device_proc_addr(device, "vkCreateRenderPass")
	raw_create_render_pass2 = auto_cast get_device_proc_addr(device, "vkCreateRenderPass2")
	raw_create_sampler = auto_cast get_device_proc_addr(device, "vkCreateSampler")
	raw_create_sampler_ycbcr_conversion = auto_cast get_device_proc_addr(device, "vkCreateSamplerYcbcrConversion")
	raw_create_semaphore = auto_cast get_device_proc_addr(device, "vkCreateSemaphore")
	raw_create_shader_module = auto_cast get_device_proc_addr(device, "vkCreateShaderModule")
	raw_create_shaders = auto_cast get_device_proc_addr(device, "vkCreateShadersEXT")
	raw_create_shared_swapchains = auto_cast get_device_proc_addr(device, "vkCreateSharedSwapchainsKHR")
	raw_create_swapchain = auto_cast get_device_proc_addr(device, "vkCreateSwapchainKHR")
	raw_create_validation_cache = auto_cast get_device_proc_addr(device, "vkCreateValidationCacheEXT")
	raw_create_video_session = auto_cast get_device_proc_addr(device, "vkCreateVideoSessionKHR")
	raw_create_video_session_parameters = auto_cast get_device_proc_addr(device, "vkCreateVideoSessionParametersKHR")
	raw_debug_marker_set_object_name = auto_cast get_device_proc_addr(device, "vkDebugMarkerSetObjectNameEXT")
	raw_debug_marker_set_object_tag = auto_cast get_device_proc_addr(device, "vkDebugMarkerSetObjectTagEXT")
	raw_deferred_operation_join = auto_cast get_device_proc_addr(device, "vkDeferredOperationJoinKHR")
	raw_destroy_acceleration_structure = auto_cast get_device_proc_addr(device, "vkDestroyAccelerationStructureNV")
	raw_destroy_buffer = auto_cast get_device_proc_addr(device, "vkDestroyBuffer")
	raw_destroy_buffer_view = auto_cast get_device_proc_addr(device, "vkDestroyBufferView")
	raw_destroy_command_pool = auto_cast get_device_proc_addr(device, "vkDestroyCommandPool")
	raw_destroy_cu_function = auto_cast get_device_proc_addr(device, "vkDestroyCuFunctionNVX")
	raw_destroy_cu_module = auto_cast get_device_proc_addr(device, "vkDestroyCuModuleNVX")
	raw_destroy_cuda_function = auto_cast get_device_proc_addr(device, "vkDestroyCudaFunctionNV")
	raw_destroy_cuda_module = auto_cast get_device_proc_addr(device, "vkDestroyCudaModuleNV")
	raw_destroy_deferred_operation = auto_cast get_device_proc_addr(device, "vkDestroyDeferredOperationKHR")
	raw_destroy_descriptor_pool = auto_cast get_device_proc_addr(device, "vkDestroyDescriptorPool")
	raw_destroy_descriptor_set_layout = auto_cast get_device_proc_addr(device, "vkDestroyDescriptorSetLayout")
	raw_destroy_descriptor_update_template = auto_cast get_device_proc_addr(device, "vkDestroyDescriptorUpdateTemplate")
	raw_destroy_device = auto_cast get_device_proc_addr(device, "vkDestroyDevice")
	raw_destroy_event = auto_cast get_device_proc_addr(device, "vkDestroyEvent")
	raw_destroy_fence = auto_cast get_device_proc_addr(device, "vkDestroyFence")
	raw_destroy_framebuffer = auto_cast get_device_proc_addr(device, "vkDestroyFramebuffer")
	raw_destroy_image = auto_cast get_device_proc_addr(device, "vkDestroyImage")
	raw_destroy_image_view = auto_cast get_device_proc_addr(device, "vkDestroyImageView")
	raw_destroy_indirect_commands_layout = auto_cast get_device_proc_addr(device, "vkDestroyIndirectCommandsLayoutNV")
	raw_destroy_indirect_execution_set = auto_cast get_device_proc_addr(device, "vkDestroyIndirectExecutionSetEXT")
	raw_destroy_micromap = auto_cast get_device_proc_addr(device, "vkDestroyMicromapEXT")
	raw_destroy_optical_flow_session = auto_cast get_device_proc_addr(device, "vkDestroyOpticalFlowSessionNV")
	raw_destroy_pipeline = auto_cast get_device_proc_addr(device, "vkDestroyPipeline")
	raw_destroy_pipeline_binary = auto_cast get_device_proc_addr(device, "vkDestroyPipelineBinaryKHR")
	raw_destroy_pipeline_cache = auto_cast get_device_proc_addr(device, "vkDestroyPipelineCache")
	raw_destroy_pipeline_layout = auto_cast get_device_proc_addr(device, "vkDestroyPipelineLayout")
	raw_destroy_private_data_slot = auto_cast get_device_proc_addr(device, "vkDestroyPrivateDataSlot")
	raw_destroy_query_pool = auto_cast get_device_proc_addr(device, "vkDestroyQueryPool")
	raw_destroy_render_pass = auto_cast get_device_proc_addr(device, "vkDestroyRenderPass")
	raw_destroy_sampler = auto_cast get_device_proc_addr(device, "vkDestroySampler")
	raw_destroy_sampler_ycbcr_conversion = auto_cast get_device_proc_addr(device, "vkDestroySamplerYcbcrConversion")
	raw_destroy_semaphore = auto_cast get_device_proc_addr(device, "vkDestroySemaphore")
	raw_destroy_shader = auto_cast get_device_proc_addr(device, "vkDestroyShaderEXT")
	raw_destroy_shader_module = auto_cast get_device_proc_addr(device, "vkDestroyShaderModule")
	raw_destroy_swapchain = auto_cast get_device_proc_addr(device, "vkDestroySwapchainKHR")
	raw_destroy_validation_cache = auto_cast get_device_proc_addr(device, "vkDestroyValidationCacheEXT")
	raw_destroy_video_session = auto_cast get_device_proc_addr(device, "vkDestroyVideoSessionKHR")
	raw_destroy_video_session_parameters = auto_cast get_device_proc_addr(device, "vkDestroyVideoSessionParametersKHR")
	raw_device_wait_idle = auto_cast get_device_proc_addr(device, "vkDeviceWaitIdle")
	raw_display_power_control = auto_cast get_device_proc_addr(device, "vkDisplayPowerControlEXT")
	end_command_buffer = auto_cast get_device_proc_addr(device, "vkEndCommandBuffer")
	raw_export_metal_objects = auto_cast get_device_proc_addr(device, "vkExportMetalObjectsEXT")
	raw_flush_mapped_memory_ranges = auto_cast get_device_proc_addr(device, "vkFlushMappedMemoryRanges")
	raw_free_command_buffers = auto_cast get_device_proc_addr(device, "vkFreeCommandBuffers")
	raw_free_descriptor_sets = auto_cast get_device_proc_addr(device, "vkFreeDescriptorSets")
	raw_free_memory = auto_cast get_device_proc_addr(device, "vkFreeMemory")
	raw_get_acceleration_structure_build_sizes = auto_cast get_device_proc_addr(device, "vkGetAccelerationStructureBuildSizesKHR")
	raw_get_acceleration_structure_device_address = auto_cast get_device_proc_addr(device, "vkGetAccelerationStructureDeviceAddressKHR")
	raw_get_acceleration_structure_handle = auto_cast get_device_proc_addr(device, "vkGetAccelerationStructureHandleNV")
	raw_get_acceleration_structure_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetAccelerationStructureMemoryRequirementsNV")
	raw_get_acceleration_structure_opaque_capture_descriptor_data = auto_cast get_device_proc_addr(device, "vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT")
	raw_get_buffer_device_address = auto_cast get_device_proc_addr(device, "vkGetBufferDeviceAddress")
	raw_get_buffer_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetBufferMemoryRequirements")
	raw_get_buffer_memory_requirements2 = auto_cast get_device_proc_addr(device, "vkGetBufferMemoryRequirements2")
	raw_get_buffer_opaque_capture_address = auto_cast get_device_proc_addr(device, "vkGetBufferOpaqueCaptureAddress")
	raw_get_buffer_opaque_capture_descriptor_data = auto_cast get_device_proc_addr(device, "vkGetBufferOpaqueCaptureDescriptorDataEXT")
	raw_get_calibrated_timestamps = auto_cast get_device_proc_addr(device, "vkGetCalibratedTimestampsKHR")
	raw_get_cuda_module_cache = auto_cast get_device_proc_addr(device, "vkGetCudaModuleCacheNV")
	raw_get_deferred_operation_max_concurrency = auto_cast get_device_proc_addr(device, "vkGetDeferredOperationMaxConcurrencyKHR")
	raw_get_deferred_operation_result = auto_cast get_device_proc_addr(device, "vkGetDeferredOperationResultKHR")
	raw_get_descriptor = auto_cast get_device_proc_addr(device, "vkGetDescriptorEXT")
	raw_get_descriptor_set_host_mapping_valve = auto_cast get_device_proc_addr(device, "vkGetDescriptorSetHostMappingVALVE")
	raw_get_descriptor_set_layout_binding_offset = auto_cast get_device_proc_addr(device, "vkGetDescriptorSetLayoutBindingOffsetEXT")
	raw_get_descriptor_set_layout_host_mapping_info_valve = auto_cast get_device_proc_addr(device, "vkGetDescriptorSetLayoutHostMappingInfoVALVE")
	raw_get_descriptor_set_layout_size = auto_cast get_device_proc_addr(device, "vkGetDescriptorSetLayoutSizeEXT")
	raw_get_descriptor_set_layout_support = auto_cast get_device_proc_addr(device, "vkGetDescriptorSetLayoutSupport")
	raw_get_device_acceleration_structure_compatibility = auto_cast get_device_proc_addr(device, "vkGetDeviceAccelerationStructureCompatibilityKHR")
	raw_get_device_buffer_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetDeviceBufferMemoryRequirements")
	raw_get_device_fault_info = auto_cast get_device_proc_addr(device, "vkGetDeviceFaultInfoEXT")
	raw_get_device_group_peer_memory_features = auto_cast get_device_proc_addr(device, "vkGetDeviceGroupPeerMemoryFeatures")
	raw_get_device_group_present_capabilities = auto_cast get_device_proc_addr(device, "vkGetDeviceGroupPresentCapabilitiesKHR")
	raw_get_device_group_surface_present_modes = auto_cast get_device_proc_addr(device, "vkGetDeviceGroupSurfacePresentModesKHR")
	raw_get_device_group_surface_present_modes2 = auto_cast get_device_proc_addr(device, "vkGetDeviceGroupSurfacePresentModes2EXT")
	raw_get_device_image_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetDeviceImageMemoryRequirements")
	raw_get_device_image_sparse_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetDeviceImageSparseMemoryRequirements")
	raw_get_device_image_subresource_layout = auto_cast get_device_proc_addr(device, "vkGetDeviceImageSubresourceLayout")
	raw_get_device_memory_commitment = auto_cast get_device_proc_addr(device, "vkGetDeviceMemoryCommitment")
	raw_get_device_memory_opaque_capture_address = auto_cast get_device_proc_addr(device, "vkGetDeviceMemoryOpaqueCaptureAddress")
	raw_get_device_micromap_compatibility = auto_cast get_device_proc_addr(device, "vkGetDeviceMicromapCompatibilityEXT")
	raw_get_device_queue = auto_cast get_device_proc_addr(device, "vkGetDeviceQueue")
	raw_get_device_queue2 = auto_cast get_device_proc_addr(device, "vkGetDeviceQueue2")
	raw_get_device_subpass_shading_max_workgroup_size_huawei = auto_cast get_device_proc_addr(device, "vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI")
	raw_get_dynamic_rendering_tile_properties_qcom = auto_cast get_device_proc_addr(device, "vkGetDynamicRenderingTilePropertiesQCOM")
	raw_get_encoded_video_session_parameters = auto_cast get_device_proc_addr(device, "vkGetEncodedVideoSessionParametersKHR")
	raw_get_event_status = auto_cast get_device_proc_addr(device, "vkGetEventStatus")
	raw_get_fence_fd = auto_cast get_device_proc_addr(device, "vkGetFenceFdKHR")
	raw_get_fence_status = auto_cast get_device_proc_addr(device, "vkGetFenceStatus")
	raw_get_fence_win32_handle = auto_cast get_device_proc_addr(device, "vkGetFenceWin32HandleKHR")
	raw_get_framebuffer_tile_properties_qcom = auto_cast get_device_proc_addr(device, "vkGetFramebufferTilePropertiesQCOM")
	raw_get_generated_commands_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetGeneratedCommandsMemoryRequirementsNV")
	raw_get_image_drm_format_modifier_properties = auto_cast get_device_proc_addr(device, "vkGetImageDrmFormatModifierPropertiesEXT")
	raw_get_image_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetImageMemoryRequirements")
	raw_get_image_memory_requirements2 = auto_cast get_device_proc_addr(device, "vkGetImageMemoryRequirements2")
	raw_get_image_opaque_capture_descriptor_data = auto_cast get_device_proc_addr(device, "vkGetImageOpaqueCaptureDescriptorDataEXT")
	raw_get_image_sparse_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetImageSparseMemoryRequirements")
	raw_get_image_sparse_memory_requirements2 = auto_cast get_device_proc_addr(device, "vkGetImageSparseMemoryRequirements2")
	raw_get_image_subresource_layout = auto_cast get_device_proc_addr(device, "vkGetImageSubresourceLayout")
	raw_get_image_subresource_layout2 = auto_cast get_device_proc_addr(device, "vkGetImageSubresourceLayout2")
	raw_get_image_view_address = auto_cast get_device_proc_addr(device, "vkGetImageViewAddressNVX")
	raw_get_image_view_handle = auto_cast get_device_proc_addr(device, "vkGetImageViewHandleNVX")
	raw_get_image_view_handle64 = auto_cast get_device_proc_addr(device, "vkGetImageViewHandle64NVX")
	raw_get_image_view_opaque_capture_descriptor_data = auto_cast get_device_proc_addr(device, "vkGetImageViewOpaqueCaptureDescriptorDataEXT")
	raw_get_latency_timings = auto_cast get_device_proc_addr(device, "vkGetLatencyTimingsNV")
	raw_get_memory_fd = auto_cast get_device_proc_addr(device, "vkGetMemoryFdKHR")
	raw_get_memory_fd_properties = auto_cast get_device_proc_addr(device, "vkGetMemoryFdPropertiesKHR")
	raw_get_memory_host_pointer_properties = auto_cast get_device_proc_addr(device, "vkGetMemoryHostPointerPropertiesEXT")
	raw_get_memory_remote_address = auto_cast get_device_proc_addr(device, "vkGetMemoryRemoteAddressNV")
	raw_get_memory_win32_handle = auto_cast get_device_proc_addr(device, "vkGetMemoryWin32HandleKHR")
	raw_get_memory_win32_handle_properties = auto_cast get_device_proc_addr(device, "vkGetMemoryWin32HandlePropertiesKHR")
	raw_get_micromap_build_sizes = auto_cast get_device_proc_addr(device, "vkGetMicromapBuildSizesEXT")
	raw_get_past_presentation_timing = auto_cast get_device_proc_addr(device, "vkGetPastPresentationTimingGOOGLE")
	raw_get_performance_parameter_intel = auto_cast get_device_proc_addr(device, "vkGetPerformanceParameterINTEL")
	raw_get_pipeline_binary_data = auto_cast get_device_proc_addr(device, "vkGetPipelineBinaryDataKHR")
	raw_get_pipeline_cache_data = auto_cast get_device_proc_addr(device, "vkGetPipelineCacheData")
	raw_get_pipeline_executable_internal_representations = auto_cast get_device_proc_addr(device, "vkGetPipelineExecutableInternalRepresentationsKHR")
	raw_get_pipeline_executable_properties = auto_cast get_device_proc_addr(device, "vkGetPipelineExecutablePropertiesKHR")
	raw_get_pipeline_executable_statistics = auto_cast get_device_proc_addr(device, "vkGetPipelineExecutableStatisticsKHR")
	raw_get_pipeline_indirect_device_address = auto_cast get_device_proc_addr(device, "vkGetPipelineIndirectDeviceAddressNV")
	raw_get_pipeline_indirect_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetPipelineIndirectMemoryRequirementsNV")
	raw_get_pipeline_key = auto_cast get_device_proc_addr(device, "vkGetPipelineKeyKHR")
	raw_get_pipeline_properties = auto_cast get_device_proc_addr(device, "vkGetPipelinePropertiesEXT")
	raw_get_private_data = auto_cast get_device_proc_addr(device, "vkGetPrivateData")
	raw_get_query_pool_results = auto_cast get_device_proc_addr(device, "vkGetQueryPoolResults")
	raw_get_queue_checkpoint_data = auto_cast get_device_proc_addr(device, "vkGetQueueCheckpointDataNV")
	raw_get_queue_checkpoint_data2 = auto_cast get_device_proc_addr(device, "vkGetQueueCheckpointData2NV")
	raw_get_ray_tracing_capture_replay_shader_group_handles = auto_cast get_device_proc_addr(device, "vkGetRayTracingCaptureReplayShaderGroupHandlesKHR")
	raw_get_ray_tracing_shader_group_handles = auto_cast get_device_proc_addr(device, "vkGetRayTracingShaderGroupHandlesKHR")
	raw_get_ray_tracing_shader_group_stack_size = auto_cast get_device_proc_addr(device, "vkGetRayTracingShaderGroupStackSizeKHR")
	raw_get_refresh_cycle_duration = auto_cast get_device_proc_addr(device, "vkGetRefreshCycleDurationGOOGLE")
	raw_get_render_area_granularity = auto_cast get_device_proc_addr(device, "vkGetRenderAreaGranularity")
	raw_get_rendering_area_granularity = auto_cast get_device_proc_addr(device, "vkGetRenderingAreaGranularity")
	raw_get_sampler_opaque_capture_descriptor_data = auto_cast get_device_proc_addr(device, "vkGetSamplerOpaqueCaptureDescriptorDataEXT")
	raw_get_semaphore_counter_value = auto_cast get_device_proc_addr(device, "vkGetSemaphoreCounterValue")
	raw_get_semaphore_fd = auto_cast get_device_proc_addr(device, "vkGetSemaphoreFdKHR")
	raw_get_semaphore_win32_handle = auto_cast get_device_proc_addr(device, "vkGetSemaphoreWin32HandleKHR")
	raw_get_shader_binary_data = auto_cast get_device_proc_addr(device, "vkGetShaderBinaryDataEXT")
	raw_get_shader_info = auto_cast get_device_proc_addr(device, "vkGetShaderInfoAMD")
	raw_get_shader_module_create_info_identifier = auto_cast get_device_proc_addr(device, "vkGetShaderModuleCreateInfoIdentifierEXT")
	raw_get_shader_module_identifier = auto_cast get_device_proc_addr(device, "vkGetShaderModuleIdentifierEXT")
	raw_get_swapchain_counter = auto_cast get_device_proc_addr(device, "vkGetSwapchainCounterEXT")
	raw_get_swapchain_images = auto_cast get_device_proc_addr(device, "vkGetSwapchainImagesKHR")
	raw_get_swapchain_status = auto_cast get_device_proc_addr(device, "vkGetSwapchainStatusKHR")
	raw_get_validation_cache_data = auto_cast get_device_proc_addr(device, "vkGetValidationCacheDataEXT")
	raw_get_video_session_memory_requirements = auto_cast get_device_proc_addr(device, "vkGetVideoSessionMemoryRequirementsKHR")
	raw_import_fence_fd = auto_cast get_device_proc_addr(device, "vkImportFenceFdKHR")
	raw_import_fence_win32_handle = auto_cast get_device_proc_addr(device, "vkImportFenceWin32HandleKHR")
	raw_import_semaphore_fd = auto_cast get_device_proc_addr(device, "vkImportSemaphoreFdKHR")
	raw_import_semaphore_win32_handle = auto_cast get_device_proc_addr(device, "vkImportSemaphoreWin32HandleKHR")
	raw_initialize_performance_api_intel = auto_cast get_device_proc_addr(device, "vkInitializePerformanceApiINTEL")
	raw_invalidate_mapped_memory_ranges = auto_cast get_device_proc_addr(device, "vkInvalidateMappedMemoryRanges")
	raw_latency_sleep = auto_cast get_device_proc_addr(device, "vkLatencySleepNV")
	raw_map_memory = auto_cast get_device_proc_addr(device, "vkMapMemory")
	raw_map_memory2 = auto_cast get_device_proc_addr(device, "vkMapMemory2")
	raw_merge_pipeline_caches = auto_cast get_device_proc_addr(device, "vkMergePipelineCaches")
	raw_merge_validation_caches = auto_cast get_device_proc_addr(device, "vkMergeValidationCachesEXT")
	raw_queue_begin_debug_utils_label = auto_cast get_device_proc_addr(device, "vkQueueBeginDebugUtilsLabelEXT")
	queue_bind_sparse = auto_cast get_device_proc_addr(device, "vkQueueBindSparse")
	queue_end_debug_utils_label = auto_cast get_device_proc_addr(device, "vkQueueEndDebugUtilsLabelEXT")
	raw_queue_insert_debug_utils_label = auto_cast get_device_proc_addr(device, "vkQueueInsertDebugUtilsLabelEXT")
	raw_queue_notify_out_of_band = auto_cast get_device_proc_addr(device, "vkQueueNotifyOutOfBandNV")
	raw_queue_present = auto_cast get_device_proc_addr(device, "vkQueuePresentKHR")
	queue_set_performance_configuration_intel = auto_cast get_device_proc_addr(device, "vkQueueSetPerformanceConfigurationINTEL")
	raw_queue_submit = auto_cast get_device_proc_addr(device, "vkQueueSubmit")
	raw_queue_submit2 = auto_cast get_device_proc_addr(device, "vkQueueSubmit2")
	queue_wait_idle = auto_cast get_device_proc_addr(device, "vkQueueWaitIdle")
	raw_register_device_event = auto_cast get_device_proc_addr(device, "vkRegisterDeviceEventEXT")
	raw_register_display_event = auto_cast get_device_proc_addr(device, "vkRegisterDisplayEventEXT")
	raw_release_captured_pipeline_data = auto_cast get_device_proc_addr(device, "vkReleaseCapturedPipelineDataKHR")
	raw_release_full_screen_exclusive_mode = auto_cast get_device_proc_addr(device, "vkReleaseFullScreenExclusiveModeEXT")
	raw_release_performance_configuration_intel = auto_cast get_device_proc_addr(device, "vkReleasePerformanceConfigurationINTEL")
	raw_release_profiling_lock = auto_cast get_device_proc_addr(device, "vkReleaseProfilingLockKHR")
	raw_release_swapchain_images = auto_cast get_device_proc_addr(device, "vkReleaseSwapchainImagesEXT")
	raw_reset_command_buffer = auto_cast get_device_proc_addr(device, "vkResetCommandBuffer")
	raw_reset_command_pool = auto_cast get_device_proc_addr(device, "vkResetCommandPool")
	raw_reset_descriptor_pool = auto_cast get_device_proc_addr(device, "vkResetDescriptorPool")
	raw_reset_event = auto_cast get_device_proc_addr(device, "vkResetEvent")
	raw_reset_fences = auto_cast get_device_proc_addr(device, "vkResetFences")
	raw_reset_query_pool = auto_cast get_device_proc_addr(device, "vkResetQueryPool")
	raw_set_debug_utils_object_name = auto_cast get_device_proc_addr(device, "vkSetDebugUtilsObjectNameEXT")
	raw_set_debug_utils_object_tag = auto_cast get_device_proc_addr(device, "vkSetDebugUtilsObjectTagEXT")
	raw_set_device_memory_priority = auto_cast get_device_proc_addr(device, "vkSetDeviceMemoryPriorityEXT")
	raw_set_event = auto_cast get_device_proc_addr(device, "vkSetEvent")
	raw_set_hdr_metadata = auto_cast get_device_proc_addr(device, "vkSetHdrMetadataEXT")
	raw_set_latency_marker = auto_cast get_device_proc_addr(device, "vkSetLatencyMarkerNV")
	raw_set_latency_sleep_mode = auto_cast get_device_proc_addr(device, "vkSetLatencySleepModeNV")
	raw_set_local_dimming = auto_cast get_device_proc_addr(device, "vkSetLocalDimmingAMD")
	raw_set_private_data = auto_cast get_device_proc_addr(device, "vkSetPrivateData")
	raw_signal_semaphore = auto_cast get_device_proc_addr(device, "vkSignalSemaphore")
	raw_transition_image_layout = auto_cast get_device_proc_addr(device, "vkTransitionImageLayout")
	raw_trim_command_pool = auto_cast get_device_proc_addr(device, "vkTrimCommandPool")
	raw_uninitialize_performance_api_intel = auto_cast get_device_proc_addr(device, "vkUninitializePerformanceApiINTEL")
	raw_unmap_memory = auto_cast get_device_proc_addr(device, "vkUnmapMemory")
	raw_unmap_memory2 = auto_cast get_device_proc_addr(device, "vkUnmapMemory2")
	raw_update_descriptor_set_with_template = auto_cast get_device_proc_addr(device, "vkUpdateDescriptorSetWithTemplate")
	raw_update_descriptor_sets = auto_cast get_device_proc_addr(device, "vkUpdateDescriptorSets")
	raw_update_indirect_execution_set_pipeline = auto_cast get_device_proc_addr(device, "vkUpdateIndirectExecutionSetPipelineEXT")
	raw_update_indirect_execution_set_shader = auto_cast get_device_proc_addr(device, "vkUpdateIndirectExecutionSetShaderEXT")
	raw_update_video_session_parameters = auto_cast get_device_proc_addr(device, "vkUpdateVideoSessionParametersKHR")
	raw_wait_for_fences = auto_cast get_device_proc_addr(device, "vkWaitForFences")
	raw_wait_for_present = auto_cast get_device_proc_addr(device, "vkWaitForPresentKHR")
	raw_wait_semaphores = auto_cast get_device_proc_addr(device, "vkWaitSemaphores")
	raw_write_acceleration_structures_properties = auto_cast get_device_proc_addr(device, "vkWriteAccelerationStructuresPropertiesKHR")
	raw_write_micromaps_properties = auto_cast get_device_proc_addr(device, "vkWriteMicromapsPropertiesEXT")
}

load_proc_addresses_instance :: proc(instance: Instance) {
	acquire_drm_display = auto_cast get_instance_proc_addr(instance, "vkAcquireDrmDisplayEXT")
	acquire_winrt_display = auto_cast get_instance_proc_addr(instance, "vkAcquireWinrtDisplayNV")
	raw_create_debug_report_callback = auto_cast get_instance_proc_addr(instance, "vkCreateDebugReportCallbackEXT")
	raw_create_debug_utils_messenger = auto_cast get_instance_proc_addr(instance, "vkCreateDebugUtilsMessengerEXT")
	raw_create_device = auto_cast get_instance_proc_addr(instance, "vkCreateDevice")
	raw_create_display_mode = auto_cast get_instance_proc_addr(instance, "vkCreateDisplayModeKHR")
	raw_create_display_plane_surface = auto_cast get_instance_proc_addr(instance, "vkCreateDisplayPlaneSurfaceKHR")
	raw_create_headless_surface = auto_cast get_instance_proc_addr(instance, "vkCreateHeadlessSurfaceEXT")
	raw_create_iossurface_mvk = auto_cast get_instance_proc_addr(instance, "vkCreateIOSSurfaceMVK")
	raw_create_mac_ossurface_mvk = auto_cast get_instance_proc_addr(instance, "vkCreateMacOSSurfaceMVK")
	raw_create_metal_surface = auto_cast get_instance_proc_addr(instance, "vkCreateMetalSurfaceEXT")
	raw_create_wayland_surface = auto_cast get_instance_proc_addr(instance, "vkCreateWaylandSurfaceKHR")
	raw_create_win32_surface = auto_cast get_instance_proc_addr(instance, "vkCreateWin32SurfaceKHR")
	raw_debug_report_message = auto_cast get_instance_proc_addr(instance, "vkDebugReportMessageEXT")
	raw_destroy_debug_report_callback = auto_cast get_instance_proc_addr(instance, "vkDestroyDebugReportCallbackEXT")
	raw_destroy_debug_utils_messenger = auto_cast get_instance_proc_addr(instance, "vkDestroyDebugUtilsMessengerEXT")
	raw_destroy_instance = auto_cast get_instance_proc_addr(instance, "vkDestroyInstance")
	raw_destroy_surface = auto_cast get_instance_proc_addr(instance, "vkDestroySurfaceKHR")
	raw_enumerate_device_extension_properties = auto_cast get_instance_proc_addr(instance, "vkEnumerateDeviceExtensionProperties")
	raw_enumerate_device_layer_properties = auto_cast get_instance_proc_addr(instance, "vkEnumerateDeviceLayerProperties")
	raw_enumerate_physical_device_groups = auto_cast get_instance_proc_addr(instance, "vkEnumeratePhysicalDeviceGroups")
	enumerate_physical_device_queue_family_performance_query_counters = auto_cast get_instance_proc_addr(instance, "vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR")
	raw_enumerate_physical_devices = auto_cast get_instance_proc_addr(instance, "vkEnumeratePhysicalDevices")
	get_device_proc_addr = auto_cast get_instance_proc_addr(instance, "vkGetDeviceProcAddr")
	raw_get_display_mode_properties = auto_cast get_instance_proc_addr(instance, "vkGetDisplayModePropertiesKHR")
	raw_get_display_mode_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetDisplayModeProperties2KHR")
	raw_get_display_plane_capabilities = auto_cast get_instance_proc_addr(instance, "vkGetDisplayPlaneCapabilitiesKHR")
	raw_get_display_plane_capabilities2 = auto_cast get_instance_proc_addr(instance, "vkGetDisplayPlaneCapabilities2KHR")
	raw_get_display_plane_supported_displays = auto_cast get_instance_proc_addr(instance, "vkGetDisplayPlaneSupportedDisplaysKHR")
	raw_get_drm_display = auto_cast get_instance_proc_addr(instance, "vkGetDrmDisplayEXT")
	get_instance_proc_addr_lunarg = auto_cast get_instance_proc_addr(instance, "vkGetInstanceProcAddrLUNARG")
	raw_get_physical_device_calibrateable_time_domains = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceCalibrateableTimeDomainsKHR")
	raw_get_physical_device_cooperative_mat_flexible_dimensions_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV")
	raw_get_physical_device_cooperative_mat_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR")
	raw_get_physical_device_display_plane_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceDisplayPlanePropertiesKHR")
	raw_get_physical_device_display_plane_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceDisplayPlaneProperties2KHR")
	raw_get_physical_device_display_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceDisplayPropertiesKHR")
	raw_get_physical_device_display_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceDisplayProperties2KHR")
	raw_get_physical_device_external_buffer_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceExternalBufferProperties")
	raw_get_physical_device_external_fence_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceExternalFenceProperties")
	raw_get_physical_device_external_image_format_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceExternalImageFormatPropertiesNV")
	raw_get_physical_device_external_semaphore_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceExternalSemaphoreProperties")
	raw_get_physical_device_features = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceFeatures")
	raw_get_physical_device_features2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceFeatures2")
	raw_get_physical_device_format_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceFormatProperties")
	raw_get_physical_device_format_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceFormatProperties2")
	raw_get_physical_device_fragment_shading_rates = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceFragmentShadingRatesKHR")
	raw_get_physical_device_image_format_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceImageFormatProperties")
	raw_get_physical_device_image_format_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceImageFormatProperties2")
	raw_get_physical_device_memory_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceMemoryProperties")
	raw_get_physical_device_memory_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceMemoryProperties2")
	raw_get_physical_device_multisample_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceMultisamplePropertiesEXT")
	raw_get_physical_device_optical_flow_image_formats = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceOpticalFlowImageFormatsNV")
	raw_get_physical_device_present_rectangles = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDevicePresentRectanglesKHR")
	raw_get_physical_device_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceProperties")
	raw_get_physical_device_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceProperties2")
	raw_get_physical_device_queue_family_performance_query_passes = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR")
	raw_get_physical_device_queue_family_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceQueueFamilyProperties")
	raw_get_physical_device_queue_family_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceQueueFamilyProperties2")
	raw_get_physical_device_sparse_image_format_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSparseImageFormatProperties")
	raw_get_physical_device_sparse_image_format_properties2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSparseImageFormatProperties2")
	raw_get_physical_device_supported_framebuffer_mixed_samples_combinations = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV")
	raw_get_physical_device_surface_capabilities = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR")
	raw_get_physical_device_surface_capabilities2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfaceCapabilities2KHR")
	raw_get_physical_device_surface_formats = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfaceFormatsKHR")
	raw_get_physical_device_surface_formats2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfaceFormats2KHR")
	raw_get_physical_device_surface_present_modes = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfacePresentModesKHR")
	raw_get_physical_device_surface_present_modes2 = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfacePresentModes2EXT")
	raw_get_physical_device_surface_support = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceSurfaceSupportKHR")
	raw_get_physical_device_tool_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceToolProperties")
	raw_get_physical_device_video_capabilities = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceVideoCapabilitiesKHR")
	raw_get_physical_device_video_encode_quality_level_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR")
	raw_get_physical_device_video_format_properties = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceVideoFormatPropertiesKHR")
	raw_get_physical_device_wayland_presentation_support = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceWaylandPresentationSupportKHR")
	get_physical_device_win32_presentation_support = auto_cast get_instance_proc_addr(instance, "vkGetPhysicalDeviceWin32PresentationSupportKHR")
	raw_get_winrt_display = auto_cast get_instance_proc_addr(instance, "vkGetWinrtDisplayNV")
	release_display = auto_cast get_instance_proc_addr(instance, "vkReleaseDisplayEXT")
	submit_debug_utils_message = auto_cast get_instance_proc_addr(instance, "vkSubmitDebugUtilsMessageEXT")

	// Device Procedures (may call into dispatch)
	raw_acquire_full_screen_exclusive_mode = auto_cast get_instance_proc_addr(instance, "vkAcquireFullScreenExclusiveModeEXT")
	raw_acquire_next_image = auto_cast get_instance_proc_addr(instance, "vkAcquireNextImageKHR")
	raw_acquire_next_image2 = auto_cast get_instance_proc_addr(instance, "vkAcquireNextImage2KHR")
	raw_acquire_performance_configuration_intel = auto_cast get_instance_proc_addr(instance, "vkAcquirePerformanceConfigurationINTEL")
	raw_acquire_profiling_lock = auto_cast get_instance_proc_addr(instance, "vkAcquireProfilingLockKHR")
	raw_allocate_command_buffers = auto_cast get_instance_proc_addr(instance, "vkAllocateCommandBuffers")
	raw_allocate_descriptor_sets = auto_cast get_instance_proc_addr(instance, "vkAllocateDescriptorSets")
	raw_allocate_memory = auto_cast get_instance_proc_addr(instance, "vkAllocateMemory")
	raw_anti_lag_update = auto_cast get_instance_proc_addr(instance, "vkAntiLagUpdateAMD")
	raw_begin_command_buffer = auto_cast get_instance_proc_addr(instance, "vkBeginCommandBuffer")
	raw_bind_acceleration_structure_memory = auto_cast get_instance_proc_addr(instance, "vkBindAccelerationStructureMemoryNV")
	raw_bind_buffer_memory = auto_cast get_instance_proc_addr(instance, "vkBindBufferMemory")
	raw_bind_buffer_memory2 = auto_cast get_instance_proc_addr(instance, "vkBindBufferMemory2")
	raw_bind_image_memory = auto_cast get_instance_proc_addr(instance, "vkBindImageMemory")
	raw_bind_image_memory2 = auto_cast get_instance_proc_addr(instance, "vkBindImageMemory2")
	raw_bind_optical_flow_session_image = auto_cast get_instance_proc_addr(instance, "vkBindOpticalFlowSessionImageNV")
	raw_bind_video_session_memory = auto_cast get_instance_proc_addr(instance, "vkBindVideoSessionMemoryKHR")
	raw_build_acceleration_structures = auto_cast get_instance_proc_addr(instance, "vkBuildAccelerationStructuresKHR")
	raw_build_micromaps = auto_cast get_instance_proc_addr(instance, "vkBuildMicromapsEXT")
	raw_cmd_begin_conditional_rendering = auto_cast get_instance_proc_addr(instance, "vkCmdBeginConditionalRenderingEXT")
	raw_cmd_begin_debug_utils_label = auto_cast get_instance_proc_addr(instance, "vkCmdBeginDebugUtilsLabelEXT")
	raw_cmd_begin_query = auto_cast get_instance_proc_addr(instance, "vkCmdBeginQuery")
	raw_cmd_begin_query_indexed = auto_cast get_instance_proc_addr(instance, "vkCmdBeginQueryIndexedEXT")
	raw_cmd_begin_render_pass = auto_cast get_instance_proc_addr(instance, "vkCmdBeginRenderPass")
	raw_cmd_begin_render_pass2 = auto_cast get_instance_proc_addr(instance, "vkCmdBeginRenderPass2")
	cmd_begin_rendering = auto_cast get_instance_proc_addr(instance, "vkCmdBeginRendering")
	raw_cmd_begin_transform_feedback = auto_cast get_instance_proc_addr(instance, "vkCmdBeginTransformFeedbackEXT")
	raw_cmd_begin_video_coding = auto_cast get_instance_proc_addr(instance, "vkCmdBeginVideoCodingKHR")
	cmd_bind_descriptor_buffer_embedded_samplers = auto_cast get_instance_proc_addr(instance, "vkCmdBindDescriptorBufferEmbeddedSamplersEXT")
	raw_cmd_bind_descriptor_buffer_embedded_samplers2 = auto_cast get_instance_proc_addr(instance, "vkCmdBindDescriptorBufferEmbeddedSamplers2EXT")
	cmd_bind_descriptor_buffers = auto_cast get_instance_proc_addr(instance, "vkCmdBindDescriptorBuffersEXT")
	raw_cmd_bind_descriptor_sets = auto_cast get_instance_proc_addr(instance, "vkCmdBindDescriptorSets")
	cmd_bind_descriptor_sets2 = auto_cast get_instance_proc_addr(instance, "vkCmdBindDescriptorSets2")
	cmd_bind_index_buffer = auto_cast get_instance_proc_addr(instance, "vkCmdBindIndexBuffer")
	cmd_bind_index_buffer2 = auto_cast get_instance_proc_addr(instance, "vkCmdBindIndexBuffer2")
	cmd_bind_invocation_mask_huawei = auto_cast get_instance_proc_addr(instance, "vkCmdBindInvocationMaskHUAWEI")
	cmd_bind_pipeline = auto_cast get_instance_proc_addr(instance, "vkCmdBindPipeline")
	cmd_bind_pipeline_shader_group = auto_cast get_instance_proc_addr(instance, "vkCmdBindPipelineShaderGroupNV")
	raw_cmd_bind_shaders = auto_cast get_instance_proc_addr(instance, "vkCmdBindShadersEXT")
	cmd_bind_shading_rate_image = auto_cast get_instance_proc_addr(instance, "vkCmdBindShadingRateImageNV")
	cmd_bind_transform_feedback_buffers = auto_cast get_instance_proc_addr(instance, "vkCmdBindTransformFeedbackBuffersEXT")
	cmd_bind_vertex_buffers = auto_cast get_instance_proc_addr(instance, "vkCmdBindVertexBuffers")
	cmd_bind_vertex_buffers2 = auto_cast get_instance_proc_addr(instance, "vkCmdBindVertexBuffers2")
	raw_cmd_blit_image = auto_cast get_instance_proc_addr(instance, "vkCmdBlitImage")
	cmd_blit_image2 = auto_cast get_instance_proc_addr(instance, "vkCmdBlitImage2")
	raw_cmd_build_acceleration_structure = auto_cast get_instance_proc_addr(instance, "vkCmdBuildAccelerationStructureNV")
	raw_cmd_build_acceleration_structures = auto_cast get_instance_proc_addr(instance, "vkCmdBuildAccelerationStructuresKHR")
	raw_cmd_build_acceleration_structures_indirect = auto_cast get_instance_proc_addr(instance, "vkCmdBuildAccelerationStructuresIndirectKHR")
	raw_cmd_build_micromaps = auto_cast get_instance_proc_addr(instance, "vkCmdBuildMicromapsEXT")
	raw_cmd_clear_attachments = auto_cast get_instance_proc_addr(instance, "vkCmdClearAttachments")
	raw_cmd_clear_color_image = auto_cast get_instance_proc_addr(instance, "vkCmdClearColorImage")
	raw_cmd_clear_depth_stencil_image = auto_cast get_instance_proc_addr(instance, "vkCmdClearDepthStencilImage")
	raw_cmd_control_video_coding = auto_cast get_instance_proc_addr(instance, "vkCmdControlVideoCodingKHR")
	cmd_copy_acceleration_structure = auto_cast get_instance_proc_addr(instance, "vkCmdCopyAccelerationStructureNV")
	raw_cmd_copy_acceleration_structure_to_memory = auto_cast get_instance_proc_addr(instance, "vkCmdCopyAccelerationStructureToMemoryKHR")
	raw_cmd_copy_buffer = auto_cast get_instance_proc_addr(instance, "vkCmdCopyBuffer")
	cmd_copy_buffer2 = auto_cast get_instance_proc_addr(instance, "vkCmdCopyBuffer2")
	raw_cmd_copy_buffer_to_image = auto_cast get_instance_proc_addr(instance, "vkCmdCopyBufferToImage")
	cmd_copy_buffer_to_image2 = auto_cast get_instance_proc_addr(instance, "vkCmdCopyBufferToImage2")
	raw_cmd_copy_image = auto_cast get_instance_proc_addr(instance, "vkCmdCopyImage")
	cmd_copy_image2 = auto_cast get_instance_proc_addr(instance, "vkCmdCopyImage2")
	raw_cmd_copy_image_to_buffer = auto_cast get_instance_proc_addr(instance, "vkCmdCopyImageToBuffer")
	cmd_copy_image_to_buffer2 = auto_cast get_instance_proc_addr(instance, "vkCmdCopyImageToBuffer2")
	cmd_copy_memory_indirect = auto_cast get_instance_proc_addr(instance, "vkCmdCopyMemoryIndirectNV")
	raw_cmd_copy_memory_to_acceleration_structure = auto_cast get_instance_proc_addr(instance, "vkCmdCopyMemoryToAccelerationStructureKHR")
	cmd_copy_memory_to_image_indirect = auto_cast get_instance_proc_addr(instance, "vkCmdCopyMemoryToImageIndirectNV")
	raw_cmd_copy_memory_to_micromap = auto_cast get_instance_proc_addr(instance, "vkCmdCopyMemoryToMicromapEXT")
	raw_cmd_copy_micromap = auto_cast get_instance_proc_addr(instance, "vkCmdCopyMicromapEXT")
	raw_cmd_copy_micromap_to_memory = auto_cast get_instance_proc_addr(instance, "vkCmdCopyMicromapToMemoryEXT")
	raw_cmd_copy_query_pool_results = auto_cast get_instance_proc_addr(instance, "vkCmdCopyQueryPoolResults")
	cmd_cu_launch_kernel = auto_cast get_instance_proc_addr(instance, "vkCmdCuLaunchKernelNVX")
	cmd_cuda_launch_kernel = auto_cast get_instance_proc_addr(instance, "vkCmdCudaLaunchKernelNV")
	raw_cmd_debug_marker_begin = auto_cast get_instance_proc_addr(instance, "vkCmdDebugMarkerBeginEXT")
	cmd_debug_marker_end = auto_cast get_instance_proc_addr(instance, "vkCmdDebugMarkerEndEXT")
	raw_cmd_debug_marker_insert = auto_cast get_instance_proc_addr(instance, "vkCmdDebugMarkerInsertEXT")
	cmd_decode_video = auto_cast get_instance_proc_addr(instance, "vkCmdDecodeVideoKHR")
	cmd_decompress_memory = auto_cast get_instance_proc_addr(instance, "vkCmdDecompressMemoryNV")
	cmd_decompress_memory_indirect_count = auto_cast get_instance_proc_addr(instance, "vkCmdDecompressMemoryIndirectCountNV")
	cmd_dispatch = auto_cast get_instance_proc_addr(instance, "vkCmdDispatch")
	cmd_dispatch_base = auto_cast get_instance_proc_addr(instance, "vkCmdDispatchBase")
	cmd_dispatch_indirect = auto_cast get_instance_proc_addr(instance, "vkCmdDispatchIndirect")
	cmd_draw = auto_cast get_instance_proc_addr(instance, "vkCmdDraw")
	cmd_draw_cluster_huawei = auto_cast get_instance_proc_addr(instance, "vkCmdDrawClusterHUAWEI")
	cmd_draw_cluster_indirect_huawei = auto_cast get_instance_proc_addr(instance, "vkCmdDrawClusterIndirectHUAWEI")
	cmd_draw_indexed = auto_cast get_instance_proc_addr(instance, "vkCmdDrawIndexed")
	cmd_draw_indexed_indirect = auto_cast get_instance_proc_addr(instance, "vkCmdDrawIndexedIndirect")
	raw_cmd_draw_indexed_indirect_count = auto_cast get_instance_proc_addr(instance, "vkCmdDrawIndexedIndirectCount")
	cmd_draw_indirect = auto_cast get_instance_proc_addr(instance, "vkCmdDrawIndirect")
	raw_cmd_draw_indirect_byte_count = auto_cast get_instance_proc_addr(instance, "vkCmdDrawIndirectByteCountEXT")
	raw_cmd_draw_indirect_count = auto_cast get_instance_proc_addr(instance, "vkCmdDrawIndirectCount")
	cmd_draw_mesh_tasks = auto_cast get_instance_proc_addr(instance, "vkCmdDrawMeshTasksNV")
	cmd_draw_mesh_tasks_indirect = auto_cast get_instance_proc_addr(instance, "vkCmdDrawMeshTasksIndirectNV")
	raw_cmd_draw_mesh_tasks_indirect_count = auto_cast get_instance_proc_addr(instance, "vkCmdDrawMeshTasksIndirectCountNV")
	raw_cmd_draw_multi = auto_cast get_instance_proc_addr(instance, "vkCmdDrawMultiEXT")
	raw_cmd_draw_multi_indexed = auto_cast get_instance_proc_addr(instance, "vkCmdDrawMultiIndexedEXT")
	cmd_encode_video = auto_cast get_instance_proc_addr(instance, "vkCmdEncodeVideoKHR")
	cmd_end_conditional_rendering = auto_cast get_instance_proc_addr(instance, "vkCmdEndConditionalRenderingEXT")
	cmd_end_debug_utils_label = auto_cast get_instance_proc_addr(instance, "vkCmdEndDebugUtilsLabelEXT")
	cmd_end_query = auto_cast get_instance_proc_addr(instance, "vkCmdEndQuery")
	cmd_end_query_indexed = auto_cast get_instance_proc_addr(instance, "vkCmdEndQueryIndexedEXT")
	cmd_end_render_pass = auto_cast get_instance_proc_addr(instance, "vkCmdEndRenderPass")
	raw_cmd_end_render_pass2 = auto_cast get_instance_proc_addr(instance, "vkCmdEndRenderPass2")
	cmd_end_rendering = auto_cast get_instance_proc_addr(instance, "vkCmdEndRendering")
	raw_cmd_end_transform_feedback = auto_cast get_instance_proc_addr(instance, "vkCmdEndTransformFeedbackEXT")
	raw_cmd_end_video_coding = auto_cast get_instance_proc_addr(instance, "vkCmdEndVideoCodingKHR")
	raw_cmd_execute_commands = auto_cast get_instance_proc_addr(instance, "vkCmdExecuteCommands")
	cmd_execute_generated_commands = auto_cast get_instance_proc_addr(instance, "vkCmdExecuteGeneratedCommandsNV")
	raw_cmd_fill_buffer = auto_cast get_instance_proc_addr(instance, "vkCmdFillBuffer")
	raw_cmd_insert_debug_utils_label = auto_cast get_instance_proc_addr(instance, "vkCmdInsertDebugUtilsLabelEXT")
	cmd_next_subpass = auto_cast get_instance_proc_addr(instance, "vkCmdNextSubpass")
	raw_cmd_next_subpass2 = auto_cast get_instance_proc_addr(instance, "vkCmdNextSubpass2")
	raw_cmd_optical_flow_execute = auto_cast get_instance_proc_addr(instance, "vkCmdOpticalFlowExecuteNV")
	raw_cmd_pipeline_barrier = auto_cast get_instance_proc_addr(instance, "vkCmdPipelineBarrier")
	raw_cmd_pipeline_barrier2 = auto_cast get_instance_proc_addr(instance, "vkCmdPipelineBarrier2")
	cmd_preprocess_generated_commands = auto_cast get_instance_proc_addr(instance, "vkCmdPreprocessGeneratedCommandsNV")
	raw_cmd_push_constants = auto_cast get_instance_proc_addr(instance, "vkCmdPushConstants")
	cmd_push_constants2 = auto_cast get_instance_proc_addr(instance, "vkCmdPushConstants2")
	raw_cmd_push_descriptor_set = auto_cast get_instance_proc_addr(instance, "vkCmdPushDescriptorSet")
	raw_cmd_push_descriptor_set2 = auto_cast get_instance_proc_addr(instance, "vkCmdPushDescriptorSet2")
	cmd_push_descriptor_set_with_template = auto_cast get_instance_proc_addr(instance, "vkCmdPushDescriptorSetWithTemplate")
	raw_cmd_push_descriptor_set_with_template2 = auto_cast get_instance_proc_addr(instance, "vkCmdPushDescriptorSetWithTemplate2")
	cmd_reset_event = auto_cast get_instance_proc_addr(instance, "vkCmdResetEvent")
	cmd_reset_event2 = auto_cast get_instance_proc_addr(instance, "vkCmdResetEvent2")
	cmd_reset_query_pool = auto_cast get_instance_proc_addr(instance, "vkCmdResetQueryPool")
	raw_cmd_resolve_image = auto_cast get_instance_proc_addr(instance, "vkCmdResolveImage")
	cmd_resolve_image2 = auto_cast get_instance_proc_addr(instance, "vkCmdResolveImage2")
	cmd_set_alpha_to_coverage_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetAlphaToCoverageEnableEXT")
	cmd_set_alpha_to_one_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetAlphaToOneEnableEXT")
	cmd_set_attachment_feedback_loop_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetAttachmentFeedbackLoopEnableEXT")
	cmd_set_blend_constants = auto_cast get_instance_proc_addr(instance, "vkCmdSetBlendConstants")
	cmd_set_checkpoint = auto_cast get_instance_proc_addr(instance, "vkCmdSetCheckpointNV")
	raw_cmd_set_coarse_sample_order = auto_cast get_instance_proc_addr(instance, "vkCmdSetCoarseSampleOrderNV")
	cmd_set_color_blend_advanced = auto_cast get_instance_proc_addr(instance, "vkCmdSetColorBlendAdvancedEXT")
	cmd_set_color_blend_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetColorBlendEnableEXT")
	cmd_set_color_blend_equation = auto_cast get_instance_proc_addr(instance, "vkCmdSetColorBlendEquationEXT")
	cmd_set_color_write_mask = auto_cast get_instance_proc_addr(instance, "vkCmdSetColorWriteMaskEXT")
	cmd_set_conservative_rasterization_mode = auto_cast get_instance_proc_addr(instance, "vkCmdSetConservativeRasterizationModeEXT")
	cmd_set_coverage_modulation_mode = auto_cast get_instance_proc_addr(instance, "vkCmdSetCoverageModulationModeNV")
	cmd_set_coverage_modulation_table = auto_cast get_instance_proc_addr(instance, "vkCmdSetCoverageModulationTableNV")
	cmd_set_coverage_modulation_table_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetCoverageModulationTableEnableNV")
	cmd_set_coverage_reduction_mode = auto_cast get_instance_proc_addr(instance, "vkCmdSetCoverageReductionModeNV")
	cmd_set_coverage_to_color_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetCoverageToColorEnableNV")
	cmd_set_coverage_to_color_location = auto_cast get_instance_proc_addr(instance, "vkCmdSetCoverageToColorLocationNV")
	cmd_set_cull_mode = auto_cast get_instance_proc_addr(instance, "vkCmdSetCullMode")
	cmd_set_depth_bias = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthBias")
	raw_cmd_set_depth_bias2 = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthBias2EXT")
	cmd_set_depth_bias_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthBiasEnable")
	cmd_set_depth_bounds = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthBounds")
	cmd_set_depth_bounds_test_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthBoundsTestEnable")
	cmd_set_depth_clamp_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthClampEnableEXT")
	raw_cmd_set_depth_clamp_range = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthClampRangeEXT")
	cmd_set_depth_clip_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthClipEnableEXT")
	cmd_set_depth_clip_negative_one_to_one = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthClipNegativeOneToOneEXT")
	cmd_set_depth_compare_op = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthCompareOp")
	cmd_set_depth_test_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthTestEnable")
	cmd_set_depth_write_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetDepthWriteEnable")
	cmd_set_descriptor_buffer_offsets = auto_cast get_instance_proc_addr(instance, "vkCmdSetDescriptorBufferOffsetsEXT")
	cmd_set_descriptor_buffer_offsets2 = auto_cast get_instance_proc_addr(instance, "vkCmdSetDescriptorBufferOffsets2EXT")
	cmd_set_device_mask = auto_cast get_instance_proc_addr(instance, "vkCmdSetDeviceMask")
	raw_cmd_set_discard_rectangle = auto_cast get_instance_proc_addr(instance, "vkCmdSetDiscardRectangleEXT")
	cmd_set_discard_rectangle_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetDiscardRectangleEnableEXT")
	cmd_set_discard_rectangle_mode = auto_cast get_instance_proc_addr(instance, "vkCmdSetDiscardRectangleModeEXT")
	cmd_set_event = auto_cast get_instance_proc_addr(instance, "vkCmdSetEvent")
	raw_cmd_set_event2 = auto_cast get_instance_proc_addr(instance, "vkCmdSetEvent2")
	raw_cmd_set_exclusive_scissor = auto_cast get_instance_proc_addr(instance, "vkCmdSetExclusiveScissorNV")
	cmd_set_exclusive_scissor_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetExclusiveScissorEnableNV")
	cmd_set_extra_primitive_overestimation_size = auto_cast get_instance_proc_addr(instance, "vkCmdSetExtraPrimitiveOverestimationSizeEXT")
	raw_cmd_set_fragment_shading_rate = auto_cast get_instance_proc_addr(instance, "vkCmdSetFragmentShadingRateKHR")
	cmd_set_fragment_shading_rate_enum = auto_cast get_instance_proc_addr(instance, "vkCmdSetFragmentShadingRateEnumNV")
	cmd_set_front_face = auto_cast get_instance_proc_addr(instance, "vkCmdSetFrontFace")
	cmd_set_line_rasterization_mode = auto_cast get_instance_proc_addr(instance, "vkCmdSetLineRasterizationModeEXT")
	cmd_set_line_stipple = auto_cast get_instance_proc_addr(instance, "vkCmdSetLineStipple")
	cmd_set_line_stipple_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetLineStippleEnableEXT")
	cmd_set_line_width = auto_cast get_instance_proc_addr(instance, "vkCmdSetLineWidth")
	cmd_set_logic_op = auto_cast get_instance_proc_addr(instance, "vkCmdSetLogicOpEXT")
	cmd_set_logic_op_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetLogicOpEnableEXT")
	cmd_set_patch_control_points = auto_cast get_instance_proc_addr(instance, "vkCmdSetPatchControlPointsEXT")
	raw_cmd_set_performance_marker_intel = auto_cast get_instance_proc_addr(instance, "vkCmdSetPerformanceMarkerINTEL")
	cmd_set_performance_override_intel = auto_cast get_instance_proc_addr(instance, "vkCmdSetPerformanceOverrideINTEL")
	raw_cmd_set_performance_stream_marker_intel = auto_cast get_instance_proc_addr(instance, "vkCmdSetPerformanceStreamMarkerINTEL")
	cmd_set_polygon_mode = auto_cast get_instance_proc_addr(instance, "vkCmdSetPolygonModeEXT")
	cmd_set_primitive_restart_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetPrimitiveRestartEnable")
	cmd_set_primitive_topology = auto_cast get_instance_proc_addr(instance, "vkCmdSetPrimitiveTopology")
	cmd_set_provoking_vertex_mode = auto_cast get_instance_proc_addr(instance, "vkCmdSetProvokingVertexModeEXT")
	cmd_set_rasterization_samples = auto_cast get_instance_proc_addr(instance, "vkCmdSetRasterizationSamplesEXT")
	cmd_set_rasterization_stream = auto_cast get_instance_proc_addr(instance, "vkCmdSetRasterizationStreamEXT")
	cmd_set_rasterizer_discard_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetRasterizerDiscardEnable")
	cmd_set_ray_tracing_pipeline_stack_size = auto_cast get_instance_proc_addr(instance, "vkCmdSetRayTracingPipelineStackSizeKHR")
	raw_cmd_set_rendering_attachment_locations = auto_cast get_instance_proc_addr(instance, "vkCmdSetRenderingAttachmentLocations")
	raw_cmd_set_rendering_input_attachment_indices = auto_cast get_instance_proc_addr(instance, "vkCmdSetRenderingInputAttachmentIndices")
	cmd_set_representative_fragment_test_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetRepresentativeFragmentTestEnableNV")
	raw_cmd_set_sample_locations = auto_cast get_instance_proc_addr(instance, "vkCmdSetSampleLocationsEXT")
	cmd_set_sample_locations_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetSampleLocationsEnableEXT")
	cmd_set_sample_mask = auto_cast get_instance_proc_addr(instance, "vkCmdSetSampleMaskEXT")
	raw_cmd_set_scissor = auto_cast get_instance_proc_addr(instance, "vkCmdSetScissor")
	raw_cmd_set_scissor_with_count = auto_cast get_instance_proc_addr(instance, "vkCmdSetScissorWithCount")
	cmd_set_shading_rate_image_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetShadingRateImageEnableNV")
	cmd_set_stencil_compare_mask = auto_cast get_instance_proc_addr(instance, "vkCmdSetStencilCompareMask")
	cmd_set_stencil_op = auto_cast get_instance_proc_addr(instance, "vkCmdSetStencilOp")
	cmd_set_stencil_reference = auto_cast get_instance_proc_addr(instance, "vkCmdSetStencilReference")
	cmd_set_stencil_test_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetStencilTestEnable")
	cmd_set_stencil_write_mask = auto_cast get_instance_proc_addr(instance, "vkCmdSetStencilWriteMask")
	cmd_set_tessellation_domain_origin = auto_cast get_instance_proc_addr(instance, "vkCmdSetTessellationDomainOriginEXT")
	raw_cmd_set_vertex_input = auto_cast get_instance_proc_addr(instance, "vkCmdSetVertexInputEXT")
	raw_cmd_set_viewport = auto_cast get_instance_proc_addr(instance, "vkCmdSetViewport")
	cmd_set_viewport_shading_rate_palette = auto_cast get_instance_proc_addr(instance, "vkCmdSetViewportShadingRatePaletteNV")
	cmd_set_viewport_swizzle = auto_cast get_instance_proc_addr(instance, "vkCmdSetViewportSwizzleNV")
	raw_cmd_set_viewport_with_count = auto_cast get_instance_proc_addr(instance, "vkCmdSetViewportWithCount")
	cmd_set_viewport_wscaling = auto_cast get_instance_proc_addr(instance, "vkCmdSetViewportWScalingNV")
	cmd_set_viewport_wscaling_enable = auto_cast get_instance_proc_addr(instance, "vkCmdSetViewportWScalingEnableNV")
	cmd_subpass_shading_huawei = auto_cast get_instance_proc_addr(instance, "vkCmdSubpassShadingHUAWEI")
	raw_cmd_trace_rays = auto_cast get_instance_proc_addr(instance, "vkCmdTraceRaysNV")
	cmd_trace_rays_indirect = auto_cast get_instance_proc_addr(instance, "vkCmdTraceRaysIndirectKHR")
	cmd_trace_rays_indirect2 = auto_cast get_instance_proc_addr(instance, "vkCmdTraceRaysIndirect2KHR")
	raw_cmd_update_buffer = auto_cast get_instance_proc_addr(instance, "vkCmdUpdateBuffer")
	cmd_update_pipeline_indirect_buffer = auto_cast get_instance_proc_addr(instance, "vkCmdUpdatePipelineIndirectBufferNV")
	raw_cmd_wait_events = auto_cast get_instance_proc_addr(instance, "vkCmdWaitEvents")
	raw_cmd_wait_events2 = auto_cast get_instance_proc_addr(instance, "vkCmdWaitEvents2")
	raw_cmd_write_acceleration_structures_properties = auto_cast get_instance_proc_addr(instance, "vkCmdWriteAccelerationStructuresPropertiesNV")
	raw_cmd_write_buffer_marker = auto_cast get_instance_proc_addr(instance, "vkCmdWriteBufferMarkerAMD")
	raw_cmd_write_buffer_marker2 = auto_cast get_instance_proc_addr(instance, "vkCmdWriteBufferMarker2AMD")
	raw_cmd_write_micromaps_properties = auto_cast get_instance_proc_addr(instance, "vkCmdWriteMicromapsPropertiesEXT")
	cmd_write_timestamp = auto_cast get_instance_proc_addr(instance, "vkCmdWriteTimestamp")
	cmd_write_timestamp2 = auto_cast get_instance_proc_addr(instance, "vkCmdWriteTimestamp2")
	raw_compile_deferred = auto_cast get_instance_proc_addr(instance, "vkCompileDeferredNV")
	raw_copy_acceleration_structure = auto_cast get_instance_proc_addr(instance, "vkCopyAccelerationStructureKHR")
	raw_copy_acceleration_structure_to_memory = auto_cast get_instance_proc_addr(instance, "vkCopyAccelerationStructureToMemoryKHR")
	raw_copy_image_to_image = auto_cast get_instance_proc_addr(instance, "vkCopyImageToImage")
	raw_copy_image_to_memory = auto_cast get_instance_proc_addr(instance, "vkCopyImageToMemory")
	raw_copy_memory_to_acceleration_structure = auto_cast get_instance_proc_addr(instance, "vkCopyMemoryToAccelerationStructureKHR")
	raw_copy_memory_to_image = auto_cast get_instance_proc_addr(instance, "vkCopyMemoryToImage")
	raw_copy_memory_to_micromap = auto_cast get_instance_proc_addr(instance, "vkCopyMemoryToMicromapEXT")
	raw_copy_micromap = auto_cast get_instance_proc_addr(instance, "vkCopyMicromapEXT")
	raw_copy_micromap_to_memory = auto_cast get_instance_proc_addr(instance, "vkCopyMicromapToMemoryEXT")
	raw_create_acceleration_structure = auto_cast get_instance_proc_addr(instance, "vkCreateAccelerationStructureNV")
	raw_create_buffer = auto_cast get_instance_proc_addr(instance, "vkCreateBuffer")
	raw_create_buffer_view = auto_cast get_instance_proc_addr(instance, "vkCreateBufferView")
	raw_create_command_pool = auto_cast get_instance_proc_addr(instance, "vkCreateCommandPool")
	raw_create_compute_pipelines = auto_cast get_instance_proc_addr(instance, "vkCreateComputePipelines")
	raw_create_cu_function = auto_cast get_instance_proc_addr(instance, "vkCreateCuFunctionNVX")
	raw_create_cu_module = auto_cast get_instance_proc_addr(instance, "vkCreateCuModuleNVX")
	raw_create_cuda_function = auto_cast get_instance_proc_addr(instance, "vkCreateCudaFunctionNV")
	raw_create_cuda_module = auto_cast get_instance_proc_addr(instance, "vkCreateCudaModuleNV")
	raw_create_deferred_operation = auto_cast get_instance_proc_addr(instance, "vkCreateDeferredOperationKHR")
	raw_create_descriptor_pool = auto_cast get_instance_proc_addr(instance, "vkCreateDescriptorPool")
	raw_create_descriptor_set_layout = auto_cast get_instance_proc_addr(instance, "vkCreateDescriptorSetLayout")
	raw_create_descriptor_update_template = auto_cast get_instance_proc_addr(instance, "vkCreateDescriptorUpdateTemplate")
	raw_create_event = auto_cast get_instance_proc_addr(instance, "vkCreateEvent")
	raw_create_fence = auto_cast get_instance_proc_addr(instance, "vkCreateFence")
	raw_create_framebuffer = auto_cast get_instance_proc_addr(instance, "vkCreateFramebuffer")
	raw_create_graphics_pipelines = auto_cast get_instance_proc_addr(instance, "vkCreateGraphicsPipelines")
	raw_create_image = auto_cast get_instance_proc_addr(instance, "vkCreateImage")
	raw_create_image_view = auto_cast get_instance_proc_addr(instance, "vkCreateImageView")
	raw_create_indirect_commands_layout = auto_cast get_instance_proc_addr(instance, "vkCreateIndirectCommandsLayoutNV")
	raw_create_indirect_execution_set = auto_cast get_instance_proc_addr(instance, "vkCreateIndirectExecutionSetEXT")
	raw_create_micromap = auto_cast get_instance_proc_addr(instance, "vkCreateMicromapEXT")
	raw_create_optical_flow_session = auto_cast get_instance_proc_addr(instance, "vkCreateOpticalFlowSessionNV")
	raw_create_pipeline_binaries = auto_cast get_instance_proc_addr(instance, "vkCreatePipelineBinariesKHR")
	raw_create_pipeline_cache = auto_cast get_instance_proc_addr(instance, "vkCreatePipelineCache")
	raw_create_pipeline_layout = auto_cast get_instance_proc_addr(instance, "vkCreatePipelineLayout")
	raw_create_private_data_slot = auto_cast get_instance_proc_addr(instance, "vkCreatePrivateDataSlot")
	raw_create_query_pool = auto_cast get_instance_proc_addr(instance, "vkCreateQueryPool")
	raw_create_ray_tracing_pipelines = auto_cast get_instance_proc_addr(instance, "vkCreateRayTracingPipelinesNV")
	raw_create_render_pass = auto_cast get_instance_proc_addr(instance, "vkCreateRenderPass")
	raw_create_render_pass2 = auto_cast get_instance_proc_addr(instance, "vkCreateRenderPass2")
	raw_create_sampler = auto_cast get_instance_proc_addr(instance, "vkCreateSampler")
	raw_create_sampler_ycbcr_conversion = auto_cast get_instance_proc_addr(instance, "vkCreateSamplerYcbcrConversion")
	raw_create_semaphore = auto_cast get_instance_proc_addr(instance, "vkCreateSemaphore")
	raw_create_shader_module = auto_cast get_instance_proc_addr(instance, "vkCreateShaderModule")
	raw_create_shaders = auto_cast get_instance_proc_addr(instance, "vkCreateShadersEXT")
	raw_create_shared_swapchains = auto_cast get_instance_proc_addr(instance, "vkCreateSharedSwapchainsKHR")
	raw_create_swapchain = auto_cast get_instance_proc_addr(instance, "vkCreateSwapchainKHR")
	raw_create_validation_cache = auto_cast get_instance_proc_addr(instance, "vkCreateValidationCacheEXT")
	raw_create_video_session = auto_cast get_instance_proc_addr(instance, "vkCreateVideoSessionKHR")
	raw_create_video_session_parameters = auto_cast get_instance_proc_addr(instance, "vkCreateVideoSessionParametersKHR")
	raw_debug_marker_set_object_name = auto_cast get_instance_proc_addr(instance, "vkDebugMarkerSetObjectNameEXT")
	raw_debug_marker_set_object_tag = auto_cast get_instance_proc_addr(instance, "vkDebugMarkerSetObjectTagEXT")
	raw_deferred_operation_join = auto_cast get_instance_proc_addr(instance, "vkDeferredOperationJoinKHR")
	raw_destroy_acceleration_structure = auto_cast get_instance_proc_addr(instance, "vkDestroyAccelerationStructureNV")
	raw_destroy_buffer = auto_cast get_instance_proc_addr(instance, "vkDestroyBuffer")
	raw_destroy_buffer_view = auto_cast get_instance_proc_addr(instance, "vkDestroyBufferView")
	raw_destroy_command_pool = auto_cast get_instance_proc_addr(instance, "vkDestroyCommandPool")
	raw_destroy_cu_function = auto_cast get_instance_proc_addr(instance, "vkDestroyCuFunctionNVX")
	raw_destroy_cu_module = auto_cast get_instance_proc_addr(instance, "vkDestroyCuModuleNVX")
	raw_destroy_cuda_function = auto_cast get_instance_proc_addr(instance, "vkDestroyCudaFunctionNV")
	raw_destroy_cuda_module = auto_cast get_instance_proc_addr(instance, "vkDestroyCudaModuleNV")
	raw_destroy_deferred_operation = auto_cast get_instance_proc_addr(instance, "vkDestroyDeferredOperationKHR")
	raw_destroy_descriptor_pool = auto_cast get_instance_proc_addr(instance, "vkDestroyDescriptorPool")
	raw_destroy_descriptor_set_layout = auto_cast get_instance_proc_addr(instance, "vkDestroyDescriptorSetLayout")
	raw_destroy_descriptor_update_template = auto_cast get_instance_proc_addr(instance, "vkDestroyDescriptorUpdateTemplate")
	raw_destroy_device = auto_cast get_instance_proc_addr(instance, "vkDestroyDevice")
	raw_destroy_event = auto_cast get_instance_proc_addr(instance, "vkDestroyEvent")
	raw_destroy_fence = auto_cast get_instance_proc_addr(instance, "vkDestroyFence")
	raw_destroy_framebuffer = auto_cast get_instance_proc_addr(instance, "vkDestroyFramebuffer")
	raw_destroy_image = auto_cast get_instance_proc_addr(instance, "vkDestroyImage")
	raw_destroy_image_view = auto_cast get_instance_proc_addr(instance, "vkDestroyImageView")
	raw_destroy_indirect_commands_layout = auto_cast get_instance_proc_addr(instance, "vkDestroyIndirectCommandsLayoutNV")
	raw_destroy_indirect_execution_set = auto_cast get_instance_proc_addr(instance, "vkDestroyIndirectExecutionSetEXT")
	raw_destroy_micromap = auto_cast get_instance_proc_addr(instance, "vkDestroyMicromapEXT")
	raw_destroy_optical_flow_session = auto_cast get_instance_proc_addr(instance, "vkDestroyOpticalFlowSessionNV")
	raw_destroy_pipeline = auto_cast get_instance_proc_addr(instance, "vkDestroyPipeline")
	raw_destroy_pipeline_binary = auto_cast get_instance_proc_addr(instance, "vkDestroyPipelineBinaryKHR")
	raw_destroy_pipeline_cache = auto_cast get_instance_proc_addr(instance, "vkDestroyPipelineCache")
	raw_destroy_pipeline_layout = auto_cast get_instance_proc_addr(instance, "vkDestroyPipelineLayout")
	raw_destroy_private_data_slot = auto_cast get_instance_proc_addr(instance, "vkDestroyPrivateDataSlot")
	raw_destroy_query_pool = auto_cast get_instance_proc_addr(instance, "vkDestroyQueryPool")
	raw_destroy_render_pass = auto_cast get_instance_proc_addr(instance, "vkDestroyRenderPass")
	raw_destroy_sampler = auto_cast get_instance_proc_addr(instance, "vkDestroySampler")
	raw_destroy_sampler_ycbcr_conversion = auto_cast get_instance_proc_addr(instance, "vkDestroySamplerYcbcrConversion")
	raw_destroy_semaphore = auto_cast get_instance_proc_addr(instance, "vkDestroySemaphore")
	raw_destroy_shader = auto_cast get_instance_proc_addr(instance, "vkDestroyShaderEXT")
	raw_destroy_shader_module = auto_cast get_instance_proc_addr(instance, "vkDestroyShaderModule")
	raw_destroy_swapchain = auto_cast get_instance_proc_addr(instance, "vkDestroySwapchainKHR")
	raw_destroy_validation_cache = auto_cast get_instance_proc_addr(instance, "vkDestroyValidationCacheEXT")
	raw_destroy_video_session = auto_cast get_instance_proc_addr(instance, "vkDestroyVideoSessionKHR")
	raw_destroy_video_session_parameters = auto_cast get_instance_proc_addr(instance, "vkDestroyVideoSessionParametersKHR")
	raw_device_wait_idle = auto_cast get_instance_proc_addr(instance, "vkDeviceWaitIdle")
	raw_display_power_control = auto_cast get_instance_proc_addr(instance, "vkDisplayPowerControlEXT")
	end_command_buffer = auto_cast get_instance_proc_addr(instance, "vkEndCommandBuffer")
	raw_export_metal_objects = auto_cast get_instance_proc_addr(instance, "vkExportMetalObjectsEXT")
	raw_flush_mapped_memory_ranges = auto_cast get_instance_proc_addr(instance, "vkFlushMappedMemoryRanges")
	raw_free_command_buffers = auto_cast get_instance_proc_addr(instance, "vkFreeCommandBuffers")
	raw_free_descriptor_sets = auto_cast get_instance_proc_addr(instance, "vkFreeDescriptorSets")
	raw_free_memory = auto_cast get_instance_proc_addr(instance, "vkFreeMemory")
	raw_get_acceleration_structure_build_sizes = auto_cast get_instance_proc_addr(instance, "vkGetAccelerationStructureBuildSizesKHR")
	raw_get_acceleration_structure_device_address = auto_cast get_instance_proc_addr(instance, "vkGetAccelerationStructureDeviceAddressKHR")
	raw_get_acceleration_structure_handle = auto_cast get_instance_proc_addr(instance, "vkGetAccelerationStructureHandleNV")
	raw_get_acceleration_structure_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetAccelerationStructureMemoryRequirementsNV")
	raw_get_acceleration_structure_opaque_capture_descriptor_data = auto_cast get_instance_proc_addr(instance, "vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT")
	raw_get_buffer_device_address = auto_cast get_instance_proc_addr(instance, "vkGetBufferDeviceAddress")
	raw_get_buffer_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetBufferMemoryRequirements")
	raw_get_buffer_memory_requirements2 = auto_cast get_instance_proc_addr(instance, "vkGetBufferMemoryRequirements2")
	raw_get_buffer_opaque_capture_address = auto_cast get_instance_proc_addr(instance, "vkGetBufferOpaqueCaptureAddress")
	raw_get_buffer_opaque_capture_descriptor_data = auto_cast get_instance_proc_addr(instance, "vkGetBufferOpaqueCaptureDescriptorDataEXT")
	raw_get_calibrated_timestamps = auto_cast get_instance_proc_addr(instance, "vkGetCalibratedTimestampsKHR")
	raw_get_cuda_module_cache = auto_cast get_instance_proc_addr(instance, "vkGetCudaModuleCacheNV")
	raw_get_deferred_operation_max_concurrency = auto_cast get_instance_proc_addr(instance, "vkGetDeferredOperationMaxConcurrencyKHR")
	raw_get_deferred_operation_result = auto_cast get_instance_proc_addr(instance, "vkGetDeferredOperationResultKHR")
	raw_get_descriptor = auto_cast get_instance_proc_addr(instance, "vkGetDescriptorEXT")
	raw_get_descriptor_set_host_mapping_valve = auto_cast get_instance_proc_addr(instance, "vkGetDescriptorSetHostMappingVALVE")
	raw_get_descriptor_set_layout_binding_offset = auto_cast get_instance_proc_addr(instance, "vkGetDescriptorSetLayoutBindingOffsetEXT")
	raw_get_descriptor_set_layout_host_mapping_info_valve = auto_cast get_instance_proc_addr(instance, "vkGetDescriptorSetLayoutHostMappingInfoVALVE")
	raw_get_descriptor_set_layout_size = auto_cast get_instance_proc_addr(instance, "vkGetDescriptorSetLayoutSizeEXT")
	raw_get_descriptor_set_layout_support = auto_cast get_instance_proc_addr(instance, "vkGetDescriptorSetLayoutSupport")
	raw_get_device_acceleration_structure_compatibility = auto_cast get_instance_proc_addr(instance, "vkGetDeviceAccelerationStructureCompatibilityKHR")
	raw_get_device_buffer_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetDeviceBufferMemoryRequirements")
	raw_get_device_fault_info = auto_cast get_instance_proc_addr(instance, "vkGetDeviceFaultInfoEXT")
	raw_get_device_group_peer_memory_features = auto_cast get_instance_proc_addr(instance, "vkGetDeviceGroupPeerMemoryFeatures")
	raw_get_device_group_present_capabilities = auto_cast get_instance_proc_addr(instance, "vkGetDeviceGroupPresentCapabilitiesKHR")
	raw_get_device_group_surface_present_modes = auto_cast get_instance_proc_addr(instance, "vkGetDeviceGroupSurfacePresentModesKHR")
	raw_get_device_group_surface_present_modes2 = auto_cast get_instance_proc_addr(instance, "vkGetDeviceGroupSurfacePresentModes2EXT")
	raw_get_device_image_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetDeviceImageMemoryRequirements")
	raw_get_device_image_sparse_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetDeviceImageSparseMemoryRequirements")
	raw_get_device_image_subresource_layout = auto_cast get_instance_proc_addr(instance, "vkGetDeviceImageSubresourceLayout")
	raw_get_device_memory_commitment = auto_cast get_instance_proc_addr(instance, "vkGetDeviceMemoryCommitment")
	raw_get_device_memory_opaque_capture_address = auto_cast get_instance_proc_addr(instance, "vkGetDeviceMemoryOpaqueCaptureAddress")
	raw_get_device_micromap_compatibility = auto_cast get_instance_proc_addr(instance, "vkGetDeviceMicromapCompatibilityEXT")
	raw_get_device_queue = auto_cast get_instance_proc_addr(instance, "vkGetDeviceQueue")
	raw_get_device_queue2 = auto_cast get_instance_proc_addr(instance, "vkGetDeviceQueue2")
	raw_get_device_subpass_shading_max_workgroup_size_huawei = auto_cast get_instance_proc_addr(instance, "vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI")
	raw_get_dynamic_rendering_tile_properties_qcom = auto_cast get_instance_proc_addr(instance, "vkGetDynamicRenderingTilePropertiesQCOM")
	raw_get_encoded_video_session_parameters = auto_cast get_instance_proc_addr(instance, "vkGetEncodedVideoSessionParametersKHR")
	raw_get_event_status = auto_cast get_instance_proc_addr(instance, "vkGetEventStatus")
	raw_get_fence_fd = auto_cast get_instance_proc_addr(instance, "vkGetFenceFdKHR")
	raw_get_fence_status = auto_cast get_instance_proc_addr(instance, "vkGetFenceStatus")
	raw_get_fence_win32_handle = auto_cast get_instance_proc_addr(instance, "vkGetFenceWin32HandleKHR")
	raw_get_framebuffer_tile_properties_qcom = auto_cast get_instance_proc_addr(instance, "vkGetFramebufferTilePropertiesQCOM")
	raw_get_generated_commands_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetGeneratedCommandsMemoryRequirementsNV")
	raw_get_image_drm_format_modifier_properties = auto_cast get_instance_proc_addr(instance, "vkGetImageDrmFormatModifierPropertiesEXT")
	raw_get_image_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetImageMemoryRequirements")
	raw_get_image_memory_requirements2 = auto_cast get_instance_proc_addr(instance, "vkGetImageMemoryRequirements2")
	raw_get_image_opaque_capture_descriptor_data = auto_cast get_instance_proc_addr(instance, "vkGetImageOpaqueCaptureDescriptorDataEXT")
	raw_get_image_sparse_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetImageSparseMemoryRequirements")
	raw_get_image_sparse_memory_requirements2 = auto_cast get_instance_proc_addr(instance, "vkGetImageSparseMemoryRequirements2")
	raw_get_image_subresource_layout = auto_cast get_instance_proc_addr(instance, "vkGetImageSubresourceLayout")
	raw_get_image_subresource_layout2 = auto_cast get_instance_proc_addr(instance, "vkGetImageSubresourceLayout2")
	raw_get_image_view_address = auto_cast get_instance_proc_addr(instance, "vkGetImageViewAddressNVX")
	raw_get_image_view_handle = auto_cast get_instance_proc_addr(instance, "vkGetImageViewHandleNVX")
	raw_get_image_view_handle64 = auto_cast get_instance_proc_addr(instance, "vkGetImageViewHandle64NVX")
	raw_get_image_view_opaque_capture_descriptor_data = auto_cast get_instance_proc_addr(instance, "vkGetImageViewOpaqueCaptureDescriptorDataEXT")
	raw_get_latency_timings = auto_cast get_instance_proc_addr(instance, "vkGetLatencyTimingsNV")
	raw_get_memory_fd = auto_cast get_instance_proc_addr(instance, "vkGetMemoryFdKHR")
	raw_get_memory_fd_properties = auto_cast get_instance_proc_addr(instance, "vkGetMemoryFdPropertiesKHR")
	raw_get_memory_host_pointer_properties = auto_cast get_instance_proc_addr(instance, "vkGetMemoryHostPointerPropertiesEXT")
	raw_get_memory_remote_address = auto_cast get_instance_proc_addr(instance, "vkGetMemoryRemoteAddressNV")
	raw_get_memory_win32_handle = auto_cast get_instance_proc_addr(instance, "vkGetMemoryWin32HandleKHR")
	raw_get_memory_win32_handle_properties = auto_cast get_instance_proc_addr(instance, "vkGetMemoryWin32HandlePropertiesKHR")
	raw_get_micromap_build_sizes = auto_cast get_instance_proc_addr(instance, "vkGetMicromapBuildSizesEXT")
	raw_get_past_presentation_timing = auto_cast get_instance_proc_addr(instance, "vkGetPastPresentationTimingGOOGLE")
	raw_get_performance_parameter_intel = auto_cast get_instance_proc_addr(instance, "vkGetPerformanceParameterINTEL")
	raw_get_pipeline_binary_data = auto_cast get_instance_proc_addr(instance, "vkGetPipelineBinaryDataKHR")
	raw_get_pipeline_cache_data = auto_cast get_instance_proc_addr(instance, "vkGetPipelineCacheData")
	raw_get_pipeline_executable_internal_representations = auto_cast get_instance_proc_addr(instance, "vkGetPipelineExecutableInternalRepresentationsKHR")
	raw_get_pipeline_executable_properties = auto_cast get_instance_proc_addr(instance, "vkGetPipelineExecutablePropertiesKHR")
	raw_get_pipeline_executable_statistics = auto_cast get_instance_proc_addr(instance, "vkGetPipelineExecutableStatisticsKHR")
	raw_get_pipeline_indirect_device_address = auto_cast get_instance_proc_addr(instance, "vkGetPipelineIndirectDeviceAddressNV")
	raw_get_pipeline_indirect_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetPipelineIndirectMemoryRequirementsNV")
	raw_get_pipeline_key = auto_cast get_instance_proc_addr(instance, "vkGetPipelineKeyKHR")
	raw_get_pipeline_properties = auto_cast get_instance_proc_addr(instance, "vkGetPipelinePropertiesEXT")
	raw_get_private_data = auto_cast get_instance_proc_addr(instance, "vkGetPrivateData")
	raw_get_query_pool_results = auto_cast get_instance_proc_addr(instance, "vkGetQueryPoolResults")
	raw_get_queue_checkpoint_data = auto_cast get_instance_proc_addr(instance, "vkGetQueueCheckpointDataNV")
	raw_get_queue_checkpoint_data2 = auto_cast get_instance_proc_addr(instance, "vkGetQueueCheckpointData2NV")
	raw_get_ray_tracing_capture_replay_shader_group_handles = auto_cast get_instance_proc_addr(instance, "vkGetRayTracingCaptureReplayShaderGroupHandlesKHR")
	raw_get_ray_tracing_shader_group_handles = auto_cast get_instance_proc_addr(instance, "vkGetRayTracingShaderGroupHandlesKHR")
	raw_get_ray_tracing_shader_group_stack_size = auto_cast get_instance_proc_addr(instance, "vkGetRayTracingShaderGroupStackSizeKHR")
	raw_get_refresh_cycle_duration = auto_cast get_instance_proc_addr(instance, "vkGetRefreshCycleDurationGOOGLE")
	raw_get_render_area_granularity = auto_cast get_instance_proc_addr(instance, "vkGetRenderAreaGranularity")
	raw_get_rendering_area_granularity = auto_cast get_instance_proc_addr(instance, "vkGetRenderingAreaGranularity")
	raw_get_sampler_opaque_capture_descriptor_data = auto_cast get_instance_proc_addr(instance, "vkGetSamplerOpaqueCaptureDescriptorDataEXT")
	raw_get_semaphore_counter_value = auto_cast get_instance_proc_addr(instance, "vkGetSemaphoreCounterValue")
	raw_get_semaphore_fd = auto_cast get_instance_proc_addr(instance, "vkGetSemaphoreFdKHR")
	raw_get_semaphore_win32_handle = auto_cast get_instance_proc_addr(instance, "vkGetSemaphoreWin32HandleKHR")
	raw_get_shader_binary_data = auto_cast get_instance_proc_addr(instance, "vkGetShaderBinaryDataEXT")
	raw_get_shader_info = auto_cast get_instance_proc_addr(instance, "vkGetShaderInfoAMD")
	raw_get_shader_module_create_info_identifier = auto_cast get_instance_proc_addr(instance, "vkGetShaderModuleCreateInfoIdentifierEXT")
	raw_get_shader_module_identifier = auto_cast get_instance_proc_addr(instance, "vkGetShaderModuleIdentifierEXT")
	raw_get_swapchain_counter = auto_cast get_instance_proc_addr(instance, "vkGetSwapchainCounterEXT")
	raw_get_swapchain_images = auto_cast get_instance_proc_addr(instance, "vkGetSwapchainImagesKHR")
	raw_get_swapchain_status = auto_cast get_instance_proc_addr(instance, "vkGetSwapchainStatusKHR")
	raw_get_validation_cache_data = auto_cast get_instance_proc_addr(instance, "vkGetValidationCacheDataEXT")
	raw_get_video_session_memory_requirements = auto_cast get_instance_proc_addr(instance, "vkGetVideoSessionMemoryRequirementsKHR")
	raw_import_fence_fd = auto_cast get_instance_proc_addr(instance, "vkImportFenceFdKHR")
	raw_import_fence_win32_handle = auto_cast get_instance_proc_addr(instance, "vkImportFenceWin32HandleKHR")
	raw_import_semaphore_fd = auto_cast get_instance_proc_addr(instance, "vkImportSemaphoreFdKHR")
	raw_import_semaphore_win32_handle = auto_cast get_instance_proc_addr(instance, "vkImportSemaphoreWin32HandleKHR")
	raw_initialize_performance_api_intel = auto_cast get_instance_proc_addr(instance, "vkInitializePerformanceApiINTEL")
	raw_invalidate_mapped_memory_ranges = auto_cast get_instance_proc_addr(instance, "vkInvalidateMappedMemoryRanges")
	raw_latency_sleep = auto_cast get_instance_proc_addr(instance, "vkLatencySleepNV")
	raw_map_memory = auto_cast get_instance_proc_addr(instance, "vkMapMemory")
	raw_map_memory2 = auto_cast get_instance_proc_addr(instance, "vkMapMemory2")
	raw_merge_pipeline_caches = auto_cast get_instance_proc_addr(instance, "vkMergePipelineCaches")
	raw_merge_validation_caches = auto_cast get_instance_proc_addr(instance, "vkMergeValidationCachesEXT")
	raw_queue_begin_debug_utils_label = auto_cast get_instance_proc_addr(instance, "vkQueueBeginDebugUtilsLabelEXT")
	queue_bind_sparse = auto_cast get_instance_proc_addr(instance, "vkQueueBindSparse")
	queue_end_debug_utils_label = auto_cast get_instance_proc_addr(instance, "vkQueueEndDebugUtilsLabelEXT")
	raw_queue_insert_debug_utils_label = auto_cast get_instance_proc_addr(instance, "vkQueueInsertDebugUtilsLabelEXT")
	raw_queue_notify_out_of_band = auto_cast get_instance_proc_addr(instance, "vkQueueNotifyOutOfBandNV")
	raw_queue_present = auto_cast get_instance_proc_addr(instance, "vkQueuePresentKHR")
	queue_set_performance_configuration_intel = auto_cast get_instance_proc_addr(instance, "vkQueueSetPerformanceConfigurationINTEL")
	raw_queue_submit = auto_cast get_instance_proc_addr(instance, "vkQueueSubmit")
	raw_queue_submit2 = auto_cast get_instance_proc_addr(instance, "vkQueueSubmit2")
	queue_wait_idle = auto_cast get_instance_proc_addr(instance, "vkQueueWaitIdle")
	raw_register_device_event = auto_cast get_instance_proc_addr(instance, "vkRegisterDeviceEventEXT")
	raw_register_display_event = auto_cast get_instance_proc_addr(instance, "vkRegisterDisplayEventEXT")
	raw_release_captured_pipeline_data = auto_cast get_instance_proc_addr(instance, "vkReleaseCapturedPipelineDataKHR")
	raw_release_full_screen_exclusive_mode = auto_cast get_instance_proc_addr(instance, "vkReleaseFullScreenExclusiveModeEXT")
	raw_release_performance_configuration_intel = auto_cast get_instance_proc_addr(instance, "vkReleasePerformanceConfigurationINTEL")
	raw_release_profiling_lock = auto_cast get_instance_proc_addr(instance, "vkReleaseProfilingLockKHR")
	raw_release_swapchain_images = auto_cast get_instance_proc_addr(instance, "vkReleaseSwapchainImagesEXT")
	raw_reset_command_buffer = auto_cast get_instance_proc_addr(instance, "vkResetCommandBuffer")
	raw_reset_command_pool = auto_cast get_instance_proc_addr(instance, "vkResetCommandPool")
	raw_reset_descriptor_pool = auto_cast get_instance_proc_addr(instance, "vkResetDescriptorPool")
	raw_reset_event = auto_cast get_instance_proc_addr(instance, "vkResetEvent")
	raw_reset_fences = auto_cast get_instance_proc_addr(instance, "vkResetFences")
	raw_reset_query_pool = auto_cast get_instance_proc_addr(instance, "vkResetQueryPool")
	raw_set_debug_utils_object_name = auto_cast get_instance_proc_addr(instance, "vkSetDebugUtilsObjectNameEXT")
	raw_set_debug_utils_object_tag = auto_cast get_instance_proc_addr(instance, "vkSetDebugUtilsObjectTagEXT")
	raw_set_device_memory_priority = auto_cast get_instance_proc_addr(instance, "vkSetDeviceMemoryPriorityEXT")
	raw_set_event = auto_cast get_instance_proc_addr(instance, "vkSetEvent")
	raw_set_hdr_metadata = auto_cast get_instance_proc_addr(instance, "vkSetHdrMetadataEXT")
	raw_set_latency_marker = auto_cast get_instance_proc_addr(instance, "vkSetLatencyMarkerNV")
	raw_set_latency_sleep_mode = auto_cast get_instance_proc_addr(instance, "vkSetLatencySleepModeNV")
	raw_set_local_dimming = auto_cast get_instance_proc_addr(instance, "vkSetLocalDimmingAMD")
	raw_set_private_data = auto_cast get_instance_proc_addr(instance, "vkSetPrivateData")
	raw_signal_semaphore = auto_cast get_instance_proc_addr(instance, "vkSignalSemaphore")
	raw_transition_image_layout = auto_cast get_instance_proc_addr(instance, "vkTransitionImageLayout")
	raw_trim_command_pool = auto_cast get_instance_proc_addr(instance, "vkTrimCommandPool")
	raw_uninitialize_performance_api_intel = auto_cast get_instance_proc_addr(instance, "vkUninitializePerformanceApiINTEL")
	raw_unmap_memory = auto_cast get_instance_proc_addr(instance, "vkUnmapMemory")
	raw_unmap_memory2 = auto_cast get_instance_proc_addr(instance, "vkUnmapMemory2")
	raw_update_descriptor_set_with_template = auto_cast get_instance_proc_addr(instance, "vkUpdateDescriptorSetWithTemplate")
	raw_update_descriptor_sets = auto_cast get_instance_proc_addr(instance, "vkUpdateDescriptorSets")
	raw_update_indirect_execution_set_pipeline = auto_cast get_instance_proc_addr(instance, "vkUpdateIndirectExecutionSetPipelineEXT")
	raw_update_indirect_execution_set_shader = auto_cast get_instance_proc_addr(instance, "vkUpdateIndirectExecutionSetShaderEXT")
	raw_update_video_session_parameters = auto_cast get_instance_proc_addr(instance, "vkUpdateVideoSessionParametersKHR")
	raw_wait_for_fences = auto_cast get_instance_proc_addr(instance, "vkWaitForFences")
	raw_wait_for_present = auto_cast get_instance_proc_addr(instance, "vkWaitForPresentKHR")
	raw_wait_semaphores = auto_cast get_instance_proc_addr(instance, "vkWaitSemaphores")
	raw_write_acceleration_structures_properties = auto_cast get_instance_proc_addr(instance, "vkWriteAccelerationStructuresPropertiesKHR")
	raw_write_micromaps_properties = auto_cast get_instance_proc_addr(instance, "vkWriteMicromapsPropertiesEXT")
}

load_proc_addresses_global :: proc(vk_get_instance_proc_addr: rawptr) {
	get_instance_proc_addr = auto_cast vk_get_instance_proc_addr

	raw_create_instance = auto_cast get_instance_proc_addr(nil, "vkCreateInstance")
	debug_utils_messenger_callback = auto_cast get_instance_proc_addr(nil, "vkDebugUtilsMessengerCallbackEXT")
	device_memory_report_callback = auto_cast get_instance_proc_addr(nil, "vkDeviceMemoryReportCallbackEXT")
	raw_enumerate_instance_extension_properties = auto_cast get_instance_proc_addr(nil, "vkEnumerateInstanceExtensionProperties")
	raw_enumerate_instance_layer_properties = auto_cast get_instance_proc_addr(nil, "vkEnumerateInstanceLayerProperties")
	enumerate_instance_version = auto_cast get_instance_proc_addr(nil, "vkEnumerateInstanceVersion")
}

load_proc_addresses :: proc {
	load_proc_addresses_global,
	load_proc_addresses_instance,
	load_proc_addresses_device,
	load_proc_addresses_custom,
}

