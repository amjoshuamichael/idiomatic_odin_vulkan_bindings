//
// Vulkan wrapper generated from "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/master/include/vulkan/vulkan_core.h"
//
package idiomatic_odin_vulkan_bindings

import "core:c"

// Loader Procedure Types
Proc_Create_Instance :: #type proc "system" (create_info: ^Instance_Create_Info, allocator: ^Allocation_Callbacks, instance: ^Instance, ) -> Result
Proc_Debug_Utils_Messenger_Callback :: #type proc "system" (message_severity: Debug_Utils_Message_Severity_Flags, message_types: Debug_Utils_Message_Type_Flags, callback_data: ^Debug_Utils_Messenger_Callback_Data, user_data: [^]u8, ) -> b32
Proc_Device_Memory_Report_Callback :: #type proc "system" (callback_data: ^Device_Memory_Report_Callback_Data, user_data: [^]u8, )
Proc_Enumerate_Instance_Extension_Properties :: #type proc "system" (layer_name: cstring, property_count: ^u32, properties: [^]Extension_Properties, ) -> Result
Proc_Enumerate_Instance_Layer_Properties :: #type proc "system" (property_count: ^u32, properties: [^]Layer_Properties, ) -> Result
Proc_Enumerate_Instance_Version :: #type proc "system" (api_version: ^u32, ) -> Result

// Misc Procedure Types
Proc_Allocation_Function :: #type proc "system" (user_data: [^]u8, size: int, alignment: int, allocation_scope: System_Allocation_Scope, ) -> [^]u8
Proc_Debug_Report_Callback :: #type proc "system" (flags: Debug_Report_Flags, object_type: Debug_Report_Object_Type, object: u64, location: int, message_code: i32, layer_prefix: cstring, message: cstring, user_data: [^]u8, ) -> b32
Proc_Free_Function :: #type proc "system" (user_data: [^]u8, memory: [^]u8, )
Proc_Get_Instance_Proc_Addr :: #type proc "system" (instance: Instance, name: cstring, ) -> Proc_Void_Function
Proc_Internal_Allocation_Notification :: #type proc "system" (user_data: [^]u8, size: int, allocation_type: Internal_Allocation_Type, allocation_scope: System_Allocation_Scope, )
Proc_Internal_Free_Notification :: #type proc "system" (user_data: [^]u8, size: int, allocation_type: Internal_Allocation_Type, allocation_scope: System_Allocation_Scope, )
Proc_Reallocation_Function :: #type proc "system" (user_data: [^]u8, original: [^]u8, size: int, alignment: int, allocation_scope: System_Allocation_Scope, ) -> [^]u8
Proc_Void_Function :: #type proc "system" ()

// Instance Procedure Types
Proc_Acquire_Drm_Display :: #type proc "system" (physical_device: Physical_Device, drm_fd: i32, display: Display, ) -> Result
Proc_Acquire_Winrt_Display :: #type proc "system" (physical_device: Physical_Device, display: Display, ) -> Result
Proc_Create_Debug_Report_Callback :: #type proc "system" (instance: Instance, create_info: ^Debug_Report_Callback_Create_Info, allocator: ^Allocation_Callbacks, callback: ^Debug_Report_Callback, ) -> Result
Proc_Create_Debug_Utils_Messenger :: #type proc "system" (instance: Instance, create_info: ^Debug_Utils_Messenger_Create_Info, allocator: ^Allocation_Callbacks, messenger: ^Debug_Utils_Messenger, ) -> Result
Proc_Create_Device :: #type proc "system" (physical_device: Physical_Device, create_info: ^Device_Create_Info, allocator: ^Allocation_Callbacks, device: ^Device, ) -> Result
Proc_Create_Display_Mode :: #type proc "system" (physical_device: Physical_Device, display: Display, create_info: ^Display_Mode_Create_Info, allocator: ^Allocation_Callbacks, mode: ^Display_Mode, ) -> Result
Proc_Create_Display_Plane_Surface :: #type proc "system" (instance: Instance, create_info: ^Display_Surface_Create_Info, allocator: ^Allocation_Callbacks, surface: ^Surface, ) -> Result
Proc_Create_Headless_Surface :: #type proc "system" (instance: Instance, create_info: ^Headless_Surface_Create_Info, allocator: ^Allocation_Callbacks, surface: ^Surface, ) -> Result
Proc_Create_Ios_Surface_Mvk :: #type proc "system" (instance: Instance, create_info: ^Ios_Surface_Create_Info_Mvk, allocator: ^Allocation_Callbacks, surface: ^Surface, ) -> Result
Proc_Create_Macos_Surface_Mvk :: #type proc "system" (instance: Instance, create_info: ^Macos_Surface_Create_Info_Mvk, allocator: ^Allocation_Callbacks, surface: ^Surface, ) -> Result
Proc_Create_Metal_Surface :: #type proc "system" (instance: Instance, create_info: ^Metal_Surface_Create_Info, allocator: ^Allocation_Callbacks, surface: ^Surface, ) -> Result
Proc_Create_Wayland_Surface :: #type proc "system" (instance: Instance, create_info: ^Wayland_Surface_Create_Info, allocator: ^Allocation_Callbacks, surface: ^Surface, ) -> Result
Proc_Create_Win32_Surface :: #type proc "system" (instance: Instance, create_info: ^Win32_Surface_Create_Info, allocator: ^Allocation_Callbacks, surface: ^Surface, ) -> Result
Proc_Debug_Report_Message :: #type proc "system" (instance: Instance, flags: Debug_Report_Flags, object_type: Debug_Report_Object_Type, object: u64, location: int, message_code: i32, layer_prefix: cstring, message: cstring, )
Proc_Destroy_Debug_Report_Callback :: #type proc "system" (instance: Instance, callback: Debug_Report_Callback, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Debug_Utils_Messenger :: #type proc "system" (instance: Instance, messenger: Debug_Utils_Messenger, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Instance :: #type proc "system" (instance: Instance, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Surface :: #type proc "system" (instance: Instance, surface: Surface, allocator: ^Allocation_Callbacks, )
Proc_Enumerate_Device_Extension_Properties :: #type proc "system" (physical_device: Physical_Device, layer_name: cstring, property_count: ^u32, properties: [^]Extension_Properties, ) -> Result
Proc_Enumerate_Device_Layer_Properties :: #type proc "system" (physical_device: Physical_Device, property_count: ^u32, properties: [^]Layer_Properties, ) -> Result
Proc_Enumerate_Physical_Device_Groups :: #type proc "system" (instance: Instance, physical_device_group_count: ^u32, physical_device_group_properties: [^]Physical_Device_Group_Properties, ) -> Result
Proc_Enumerate_Physical_Device_Queue_Family_Performance_Query_Counters :: #type proc "system" (physical_device: Physical_Device, queue_family_index: u32, counter_count: ^u32, counters: [^]Performance_Counter, counter_descriptions: ^Performance_Counter_Description, ) -> Result
Proc_Enumerate_Physical_Devices :: #type proc "system" (instance: Instance, physical_device_count: ^u32, physical_devices: [^]Physical_Device, ) -> Result
Proc_Get_Device_Proc_Addr :: #type proc "system" (device: Device, name: cstring, ) -> Proc_Void_Function
Proc_Get_Display_Mode_Properties :: #type proc "system" (physical_device: Physical_Device, display: Display, property_count: ^u32, properties: [^]Display_Mode_Properties, ) -> Result
Proc_Get_Display_Mode_Properties_2 :: #type proc "system" (physical_device: Physical_Device, display: Display, property_count: ^u32, properties: [^]Display_Mode_Properties_2, ) -> Result
Proc_Get_Display_Plane_Capabilities :: #type proc "system" (physical_device: Physical_Device, mode: Display_Mode, plane_index: u32, capabilities: ^Display_Plane_Capabilities, ) -> Result
Proc_Get_Display_Plane_Capabilities_2 :: #type proc "system" (physical_device: Physical_Device, display_plane_info: ^Display_Plane_Info_2, capabilities: ^Display_Plane_Capabilities_2, ) -> Result
Proc_Get_Display_Plane_Supported_Displays :: #type proc "system" (physical_device: Physical_Device, plane_index: u32, display_count: ^u32, displays: [^]Display, ) -> Result
Proc_Get_Drm_Display :: #type proc "system" (physical_device: Physical_Device, drm_fd: i32, connector_id: u32, display: ^Display, ) -> Result
Proc_Get_Instance_Proc_Addr_Lunarg :: #type proc "system" (instance: Instance, name: cstring, ) -> Proc_Void_Function
Proc_Get_Physical_Device_Calibrateable_Time_Domains :: #type proc "system" (physical_device: Physical_Device, time_domain_count: ^u32, time_domains: [^]Time_Domain, ) -> Result
Proc_Get_Physical_Device_Cooperative_Matrix_Flexible_Dimensions_Properties :: #type proc "system" (physical_device: Physical_Device, property_count: ^u32, properties: [^]Cooperative_Matrix_Flexible_Dimensions_Properties, ) -> Result
Proc_Get_Physical_Device_Cooperative_Matrix_Properties :: #type proc "system" (physical_device: Physical_Device, property_count: ^u32, properties: [^]Cooperative_Matrix_Properties, ) -> Result
Proc_Get_Physical_Device_Display_Plane_Properties :: #type proc "system" (physical_device: Physical_Device, property_count: ^u32, properties: [^]Display_Plane_Properties, ) -> Result
Proc_Get_Physical_Device_Display_Plane_Properties_2 :: #type proc "system" (physical_device: Physical_Device, property_count: ^u32, properties: [^]Display_Plane_Properties_2, ) -> Result
Proc_Get_Physical_Device_Display_Properties :: #type proc "system" (physical_device: Physical_Device, property_count: ^u32, properties: [^]Display_Properties, ) -> Result
Proc_Get_Physical_Device_Display_Properties_2 :: #type proc "system" (physical_device: Physical_Device, property_count: ^u32, properties: [^]Display_Properties_2, ) -> Result
Proc_Get_Physical_Device_External_Buffer_Properties :: #type proc "system" (physical_device: Physical_Device, external_buffer_info: ^Physical_Device_External_Buffer_Info, external_buffer_properties: ^External_Buffer_Properties, )
Proc_Get_Physical_Device_External_Fence_Properties :: #type proc "system" (physical_device: Physical_Device, external_fence_info: ^Physical_Device_External_Fence_Info, external_fence_properties: ^External_Fence_Properties, )
Proc_Get_Physical_Device_External_Image_Format_Properties :: #type proc "system" (physical_device: Physical_Device, format: Format, type: Image_Type, tiling: Image_Tiling, usage: Image_Usage_Flags, flags: Image_Create_Flags, external_handle_type: External_Memory_Handle_Type_Flags, external_image_format_properties: ^External_Image_Format_Properties, ) -> Result
Proc_Get_Physical_Device_External_Semaphore_Properties :: #type proc "system" (physical_device: Physical_Device, external_semaphore_info: ^Physical_Device_External_Semaphore_Info, external_semaphore_properties: ^External_Semaphore_Properties, )
Proc_Get_Physical_Device_Features :: #type proc "system" (physical_device: Physical_Device, features: ^Physical_Device_Features, )
Proc_Get_Physical_Device_Features_2 :: #type proc "system" (physical_device: Physical_Device, features: ^Physical_Device_Features_2, )
Proc_Get_Physical_Device_Format_Properties :: #type proc "system" (physical_device: Physical_Device, format: Format, format_properties: ^Format_Properties, )
Proc_Get_Physical_Device_Format_Properties_2 :: #type proc "system" (physical_device: Physical_Device, format: Format, format_properties: ^Format_Properties_2, )
Proc_Get_Physical_Device_Fragment_Shading_Rates :: #type proc "system" (physical_device: Physical_Device, fragment_shading_rate_count: ^u32, fragment_shading_rates: [^]Physical_Device_Fragment_Shading_Rate, ) -> Result
Proc_Get_Physical_Device_Image_Format_Properties :: #type proc "system" (physical_device: Physical_Device, format: Format, type: Image_Type, tiling: Image_Tiling, usage: Image_Usage_Flags, flags: Image_Create_Flags, image_format_properties: ^Image_Format_Properties, ) -> Result
Proc_Get_Physical_Device_Image_Format_Properties_2 :: #type proc "system" (physical_device: Physical_Device, image_format_info: ^Physical_Device_Image_Format_Info_2, image_format_properties: ^Image_Format_Properties_2, ) -> Result
Proc_Get_Physical_Device_Memory_Properties :: #type proc "system" (physical_device: Physical_Device, memory_properties: ^Physical_Device_Memory_Properties, )
Proc_Get_Physical_Device_Memory_Properties_2 :: #type proc "system" (physical_device: Physical_Device, memory_properties: ^Physical_Device_Memory_Properties_2, )
Proc_Get_Physical_Device_Multisample_Properties :: #type proc "system" (physical_device: Physical_Device, samples: Sample_Count_Flags, multisample_properties: ^Multisample_Properties, )
Proc_Get_Physical_Device_Optical_Flow_Image_Formats :: #type proc "system" (physical_device: Physical_Device, optical_flow_image_format_info: ^Optical_Flow_Image_Format_Info, format_count: ^u32, image_format_properties: [^]Optical_Flow_Image_Format_Properties, ) -> Result
Proc_Get_Physical_Device_Present_Rectangles :: #type proc "system" (physical_device: Physical_Device, surface: Surface, rect_count: ^u32, rects: [^]Rect_2D, ) -> Result
Proc_Get_Physical_Device_Properties :: #type proc "system" (physical_device: Physical_Device, properties: ^Physical_Device_Properties, )
Proc_Get_Physical_Device_Properties_2 :: #type proc "system" (physical_device: Physical_Device, properties: ^Physical_Device_Properties_2, )
Proc_Get_Physical_Device_Queue_Family_Performance_Query_Passes :: #type proc "system" (physical_device: Physical_Device, performance_query_create_info: ^Query_Pool_Performance_Create_Info, num_passes: ^u32, )
Proc_Get_Physical_Device_Queue_Family_Properties :: #type proc "system" (physical_device: Physical_Device, queue_family_property_count: ^u32, queue_family_properties: [^]Queue_Family_Properties, )
Proc_Get_Physical_Device_Queue_Family_Properties_2 :: #type proc "system" (physical_device: Physical_Device, queue_family_property_count: ^u32, queue_family_properties: [^]Queue_Family_Properties_2, )
Proc_Get_Physical_Device_Sparse_Image_Format_Properties :: #type proc "system" (physical_device: Physical_Device, format: Format, type: Image_Type, samples: Sample_Count_Flags, usage: Image_Usage_Flags, tiling: Image_Tiling, property_count: ^u32, properties: [^]Sparse_Image_Format_Properties, )
Proc_Get_Physical_Device_Sparse_Image_Format_Properties_2 :: #type proc "system" (physical_device: Physical_Device, format_info: ^Physical_Device_Sparse_Image_Format_Info_2, property_count: ^u32, properties: [^]Sparse_Image_Format_Properties_2, )
Proc_Get_Physical_Device_Supported_Framebuffer_Mixed_Samples_Combinations :: #type proc "system" (physical_device: Physical_Device, combination_count: ^u32, combinations: [^]Framebuffer_Mixed_Samples_Combination, ) -> Result
Proc_Get_Physical_Device_Surface_Capabilities :: #type proc "system" (physical_device: Physical_Device, surface: Surface, surface_capabilities: ^Surface_Capabilities, ) -> Result
Proc_Get_Physical_Device_Surface_Capabilities_2 :: #type proc "system" (physical_device: Physical_Device, surface_info: ^Physical_Device_Surface_Info_2, surface_capabilities: ^Surface_Capabilities_2, ) -> Result
Proc_Get_Physical_Device_Surface_Formats :: #type proc "system" (physical_device: Physical_Device, surface: Surface, surface_format_count: ^u32, surface_formats: [^]Surface_Format, ) -> Result
Proc_Get_Physical_Device_Surface_Formats_2 :: #type proc "system" (physical_device: Physical_Device, surface_info: ^Physical_Device_Surface_Info_2, surface_format_count: ^u32, surface_formats: [^]Surface_Format_2, ) -> Result
Proc_Get_Physical_Device_Surface_Present_Modes :: #type proc "system" (physical_device: Physical_Device, surface: Surface, present_mode_count: ^u32, present_modes: [^]Present_Mode, ) -> Result
Proc_Get_Physical_Device_Surface_Present_Modes_2 :: #type proc "system" (physical_device: Physical_Device, surface_info: ^Physical_Device_Surface_Info_2, present_mode_count: ^u32, present_modes: [^]Present_Mode, ) -> Result
Proc_Get_Physical_Device_Surface_Support :: #type proc "system" (physical_device: Physical_Device, queue_family_index: u32, surface: Surface, supported: ^b32, ) -> Result
Proc_Get_Physical_Device_Tool_Properties :: #type proc "system" (physical_device: Physical_Device, tool_count: ^u32, tool_properties: [^]Physical_Device_Tool_Properties, ) -> Result
Proc_Get_Physical_Device_Video_Capabilities :: #type proc "system" (physical_device: Physical_Device, video_profile: ^Video_Profile_Info, capabilities: ^Video_Capabilities, ) -> Result
Proc_Get_Physical_Device_Video_Encode_Quality_Level_Properties :: #type proc "system" (physical_device: Physical_Device, quality_level_info: ^Physical_Device_Video_Encode_Quality_Level_Info, quality_level_properties: ^Video_Encode_Quality_Level_Properties, ) -> Result
Proc_Get_Physical_Device_Video_Format_Properties :: #type proc "system" (physical_device: Physical_Device, video_format_info: ^Physical_Device_Video_Format_Info, video_format_property_count: ^u32, video_format_properties: [^]Video_Format_Properties, ) -> Result
Proc_Get_Physical_Device_Wayland_Presentation_Support :: #type proc "system" (physical_device: Physical_Device, queue_family_index: u32, display: ^wl_display, ) -> b32
Proc_Get_Physical_Device_Win32_Presentation_Support :: #type proc "system" (physical_device: Physical_Device, queue_family_index: u32, ) -> b32
Proc_Get_Winrt_Display :: #type proc "system" (physical_device: Physical_Device, device_relative_id: u32, display: ^Display, ) -> Result
Proc_Release_Display :: #type proc "system" (physical_device: Physical_Device, display: Display, ) -> Result
Proc_Submit_Debug_Utils_Message :: #type proc "system" (instance: Instance, message_severity: Debug_Utils_Message_Severity_Flags, message_types: Debug_Utils_Message_Type_Flags, callback_data: ^Debug_Utils_Messenger_Callback_Data, )

// Device Procedure Types
Proc_Acquire_Full_Screen_Exclusive_Mode :: #type proc "system" (device: Device, swapchain: Swapchain, ) -> Result
Proc_Acquire_Next_Image :: #type proc "system" (device: Device, swapchain: Swapchain, timeout: u64, semaphore: Semaphore, fence: Fence, image_index: ^u32, ) -> Result
Proc_Acquire_Next_Image_2 :: #type proc "system" (device: Device, acquire_info: ^Acquire_Next_Image_Info, image_index: ^u32, ) -> Result
Proc_Acquire_Performance_Configuration_Intel :: #type proc "system" (device: Device, acquire_info: ^Performance_Configuration_Acquire_Info_Intel, configuration: ^Performance_Configuration_Intel, ) -> Result
Proc_Acquire_Profiling_Lock :: #type proc "system" (device: Device, info: ^Acquire_Profiling_Lock_Info, ) -> Result
Proc_Allocate_Command_Buffers :: #type proc "system" (device: Device, allocate_info: ^Command_Buffer_Allocate_Info, command_buffers: ^Command_Buffer, ) -> Result
Proc_Allocate_Descriptor_Sets :: #type proc "system" (device: Device, allocate_info: ^Descriptor_Set_Allocate_Info, descriptor_sets: ^Descriptor_Set, ) -> Result
Proc_Allocate_Memory :: #type proc "system" (device: Device, allocate_info: ^Memory_Allocate_Info, allocator: ^Allocation_Callbacks, memory: ^Device_Memory, ) -> Result
Proc_Anti_Lag_Update :: #type proc "system" (device: Device, data: ^Anti_Lag_Data, )
Proc_Begin_Command_Buffer :: #type proc "system" (command_buffer: Command_Buffer, begin_info: ^Command_Buffer_Begin_Info, ) -> Result
Proc_Bind_Acceleration_Structure_Memory :: #type proc "system" (device: Device, bind_info_count: u32, bind_infos: [^]Bind_Acceleration_Structure_Memory_Info, ) -> Result
Proc_Bind_Buffer_Memory :: #type proc "system" (device: Device, buffer: Buffer, memory: Device_Memory, memory_offset: Device_Size, ) -> Result
Proc_Bind_Buffer_Memory_2 :: #type proc "system" (device: Device, bind_info_count: u32, bind_infos: [^]Bind_Buffer_Memory_Info, ) -> Result
Proc_Bind_Image_Memory :: #type proc "system" (device: Device, image: Image, memory: Device_Memory, memory_offset: Device_Size, ) -> Result
Proc_Bind_Image_Memory_2 :: #type proc "system" (device: Device, bind_info_count: u32, bind_infos: [^]Bind_Image_Memory_Info, ) -> Result
Proc_Bind_Optical_Flow_Session_Image :: #type proc "system" (device: Device, session: Optical_Flow_Session, binding_point: Optical_Flow_Session_Binding_Point, view: Image_View, layout: Image_Layout, ) -> Result
Proc_Bind_Video_Session_Memory :: #type proc "system" (device: Device, video_session: Video_Session, bind_session_memory_info_count: u32, bind_session_memory_infos: [^]Bind_Video_Session_Memory_Info, ) -> Result
Proc_Build_Acceleration_Structures :: #type proc "system" (device: Device, deferred_operation: Deferred_Operation, info_count: u32, infos: [^]Acceleration_Structure_Build_Geometry_Info, build_range_infos: ^[^]Acceleration_Structure_Build_Range_Info, ) -> Result
Proc_Build_Micromaps :: #type proc "system" (device: Device, deferred_operation: Deferred_Operation, info_count: u32, infos: [^]Micromap_Build_Info, ) -> Result
Proc_Cmd_Begin_Conditional_Rendering :: #type proc "system" (command_buffer: Command_Buffer, conditional_rendering_begin: ^Conditional_Rendering_Begin_Info, )
Proc_Cmd_Begin_Debug_Utils_Label :: #type proc "system" (command_buffer: Command_Buffer, label_info: ^Debug_Utils_Label, )
Proc_Cmd_Begin_Query :: #type proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, query: u32, flags: Query_Control_Flags, )
Proc_Cmd_Begin_Query_Indexed :: #type proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, query: u32, flags: Query_Control_Flags, index: u32, )
Proc_Cmd_Begin_Render_Pass :: #type proc "system" (command_buffer: Command_Buffer, render_pass_begin: ^Render_Pass_Begin_Info, contents: Subpass_Contents, )
Proc_Cmd_Begin_Render_Pass_2 :: #type proc "system" (command_buffer: Command_Buffer, render_pass_begin: ^Render_Pass_Begin_Info, subpass_begin_info: ^Subpass_Begin_Info, )
Proc_Cmd_Begin_Rendering :: #type proc "system" (command_buffer: Command_Buffer, rendering_info: ^Rendering_Info, )
Proc_Cmd_Begin_Transform_Feedback :: #type proc "system" (command_buffer: Command_Buffer, first_counter_buffer: u32, counter_buffer_count: u32, counter_buffers: [^]Buffer, counter_buffer_offsets: ^Device_Size, )
Proc_Cmd_Begin_Video_Coding :: #type proc "system" (command_buffer: Command_Buffer, begin_info: ^Video_Begin_Coding_Info, )
Proc_Cmd_Bind_Descriptor_Buffer_Embedded_Samplers :: #type proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, layout: Pipeline_Layout, set: u32, )
Proc_Cmd_Bind_Descriptor_Buffer_Embedded_Samplers_2 :: #type proc "system" (command_buffer: Command_Buffer, bind_descriptor_buffer_embedded_samplers_info: ^Bind_Descriptor_Buffer_Embedded_Samplers_Info, )
Proc_Cmd_Bind_Descriptor_Buffers :: #type proc "system" (command_buffer: Command_Buffer, buffer_count: u32, binding_infos: [^]Descriptor_Buffer_Binding_Info, )
Proc_Cmd_Bind_Descriptor_Sets :: #type proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, layout: Pipeline_Layout, first_set: u32, descriptor_set_count: u32, descriptor_sets: [^]Descriptor_Set, dynamic_offset_count: u32, dynamic_offsets: [^]u32, )
Proc_Cmd_Bind_Descriptor_Sets_2 :: #type proc "system" (command_buffer: Command_Buffer, bind_descriptor_sets_info: ^Bind_Descriptor_Sets_Info, )
Proc_Cmd_Bind_Index_Buffer :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, index_type: Index_Type, )
Proc_Cmd_Bind_Index_Buffer_2 :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, size: Device_Size, index_type: Index_Type, )
Proc_Cmd_Bind_Invocation_Mask_Huawei :: #type proc "system" (command_buffer: Command_Buffer, image_view: Image_View, image_layout: Image_Layout, )
Proc_Cmd_Bind_Pipeline :: #type proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, pipeline: Pipeline, )
Proc_Cmd_Bind_Pipeline_Shader_Group :: #type proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, pipeline: Pipeline, group_index: u32, )
Proc_Cmd_Bind_Shaders :: #type proc "system" (command_buffer: Command_Buffer, stage_count: u32, stages: [^]Shader_Stage_Flags, shaders: ^Shader, )
Proc_Cmd_Bind_Shading_Rate_Image :: #type proc "system" (command_buffer: Command_Buffer, image_view: Image_View, image_layout: Image_Layout, )
Proc_Cmd_Bind_Transform_Feedback_Buffers :: #type proc "system" (command_buffer: Command_Buffer, first_binding: u32, binding_count: u32, buffers: [^]Buffer, offsets: ^Device_Size, sizes: ^Device_Size, )
Proc_Cmd_Bind_Vertex_Buffers :: #type proc "system" (command_buffer: Command_Buffer, first_binding: u32, binding_count: u32, buffers: [^]Buffer, offsets: ^Device_Size, )
Proc_Cmd_Bind_Vertex_Buffers_2 :: #type proc "system" (command_buffer: Command_Buffer, first_binding: u32, binding_count: u32, buffers: [^]Buffer, offsets: ^Device_Size, sizes: ^Device_Size, strides: ^Device_Size, )
Proc_Cmd_Blit_Image :: #type proc "system" (command_buffer: Command_Buffer, src_image: Image, src_image_layout: Image_Layout, dst_image: Image, dst_image_layout: Image_Layout, region_count: u32, regions: [^]Image_Blit, filter: Filter, )
Proc_Cmd_Blit_Image_2 :: #type proc "system" (command_buffer: Command_Buffer, blit_image_info: ^Blit_Image_Info_2, )
Proc_Cmd_Build_Acceleration_Structure :: #type proc "system" (command_buffer: Command_Buffer, info: ^Acceleration_Structure_Info, instance_data: Buffer, instance_offset: Device_Size, update: b32, dst: Acceleration_Structure, src: Acceleration_Structure, scratch: Buffer, scratch_offset: Device_Size, )
Proc_Cmd_Build_Acceleration_Structures :: #type proc "system" (command_buffer: Command_Buffer, info_count: u32, infos: [^]Acceleration_Structure_Build_Geometry_Info, build_range_infos: ^[^]Acceleration_Structure_Build_Range_Info, )
Proc_Cmd_Build_Acceleration_Structures_Indirect :: #type proc "system" (command_buffer: Command_Buffer, info_count: u32, infos: [^]Acceleration_Structure_Build_Geometry_Info, indirect_device_addresses: ^Device_Address, indirect_strides: ^u32, max_primitive_counts: ^[^]u32, )
Proc_Cmd_Build_Micromaps :: #type proc "system" (command_buffer: Command_Buffer, info_count: u32, infos: [^]Micromap_Build_Info, )
Proc_Cmd_Clear_Attachments :: #type proc "system" (command_buffer: Command_Buffer, attachment_count: u32, attachments: [^]Clear_Attachment, rect_count: u32, rects: [^]Clear_Rect, )
Proc_Cmd_Clear_Color_Image :: #type proc "system" (command_buffer: Command_Buffer, image: Image, image_layout: Image_Layout, color: ^Clear_Color_Value, range_count: u32, ranges: [^]Image_Subresource_Range, )
Proc_Cmd_Clear_Depth_Stencil_Image :: #type proc "system" (command_buffer: Command_Buffer, image: Image, image_layout: Image_Layout, depth_stencil: ^Clear_Depth_Stencil_Value, range_count: u32, ranges: [^]Image_Subresource_Range, )
Proc_Cmd_Control_Video_Coding :: #type proc "system" (command_buffer: Command_Buffer, coding_control_info: ^Video_Coding_Control_Info, )
Proc_Cmd_Copy_Acceleration_Structure :: #type proc "system" (command_buffer: Command_Buffer, dst: Acceleration_Structure, src: Acceleration_Structure, mode: Copy_Acceleration_Structure_Mode, )
Proc_Cmd_Copy_Acceleration_Structure_To_Memory :: #type proc "system" (command_buffer: Command_Buffer, info: ^Copy_Acceleration_Structure_To_Memory_Info, )
Proc_Cmd_Copy_Buffer :: #type proc "system" (command_buffer: Command_Buffer, src_buffer: Buffer, dst_buffer: Buffer, region_count: u32, regions: [^]Buffer_Copy, )
Proc_Cmd_Copy_Buffer_2 :: #type proc "system" (command_buffer: Command_Buffer, copy_buffer_info: ^Copy_Buffer_Info_2, )
Proc_Cmd_Copy_Buffer_To_Image :: #type proc "system" (command_buffer: Command_Buffer, src_buffer: Buffer, dst_image: Image, dst_image_layout: Image_Layout, region_count: u32, regions: [^]Buffer_Image_Copy, )
Proc_Cmd_Copy_Buffer_To_Image_2 :: #type proc "system" (command_buffer: Command_Buffer, copy_buffer_to_image_info: ^Copy_Buffer_To_Image_Info_2, )
Proc_Cmd_Copy_Image :: #type proc "system" (command_buffer: Command_Buffer, src_image: Image, src_image_layout: Image_Layout, dst_image: Image, dst_image_layout: Image_Layout, region_count: u32, regions: [^]Image_Copy, )
Proc_Cmd_Copy_Image_2 :: #type proc "system" (command_buffer: Command_Buffer, copy_image_info: ^Copy_Image_Info_2, )
Proc_Cmd_Copy_Image_To_Buffer :: #type proc "system" (command_buffer: Command_Buffer, src_image: Image, src_image_layout: Image_Layout, dst_buffer: Buffer, region_count: u32, regions: [^]Buffer_Image_Copy, )
Proc_Cmd_Copy_Image_To_Buffer_2 :: #type proc "system" (command_buffer: Command_Buffer, copy_image_to_buffer_info: ^Copy_Image_To_Buffer_Info_2, )
Proc_Cmd_Copy_Memory_Indirect :: #type proc "system" (command_buffer: Command_Buffer, copy_buffer_address: Device_Address, copy_count: u32, stride: u32, )
Proc_Cmd_Copy_Memory_To_Acceleration_Structure :: #type proc "system" (command_buffer: Command_Buffer, info: ^Copy_Memory_To_Acceleration_Structure_Info, )
Proc_Cmd_Copy_Memory_To_Image_Indirect :: #type proc "system" (command_buffer: Command_Buffer, copy_buffer_address: Device_Address, copy_count: u32, stride: u32, dst_image: Image, dst_image_layout: Image_Layout, image_subresources: ^Image_Subresource_Layers, )
Proc_Cmd_Copy_Memory_To_Micromap :: #type proc "system" (command_buffer: Command_Buffer, info: ^Copy_Memory_To_Micromap_Info, )
Proc_Cmd_Copy_Micromap :: #type proc "system" (command_buffer: Command_Buffer, info: ^Copy_Micromap_Info, )
Proc_Cmd_Copy_Micromap_To_Memory :: #type proc "system" (command_buffer: Command_Buffer, info: ^Copy_Micromap_To_Memory_Info, )
Proc_Cmd_Copy_Query_Pool_Results :: #type proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, first_query: u32, query_count: u32, dst_buffer: Buffer, dst_offset: Device_Size, stride: Device_Size, flags: Query_Result_Flags, )
Proc_Cmd_Cu_Launch_Kernel :: #type proc "system" (command_buffer: Command_Buffer, launch_info: ^Cu_Launch_Info, )
Proc_Cmd_Cuda_Launch_Kernel :: #type proc "system" (command_buffer: Command_Buffer, launch_info: ^Cuda_Launch_Info, )
Proc_Cmd_Debug_Marker_Begin :: #type proc "system" (command_buffer: Command_Buffer, marker_info: ^Debug_Marker_Marker_Info, )
Proc_Cmd_Debug_Marker_End :: #type proc "system" (command_buffer: Command_Buffer, )
Proc_Cmd_Debug_Marker_Insert :: #type proc "system" (command_buffer: Command_Buffer, marker_info: ^Debug_Marker_Marker_Info, )
Proc_Cmd_Decode_Video :: #type proc "system" (command_buffer: Command_Buffer, decode_info: ^Video_Decode_Info, )
Proc_Cmd_Decompress_Memory :: #type proc "system" (command_buffer: Command_Buffer, decompress_region_count: u32, decompress_memory_regions: [^]Decompress_Memory_Region, )
Proc_Cmd_Decompress_Memory_Indirect_Count :: #type proc "system" (command_buffer: Command_Buffer, indirect_commands_address: Device_Address, indirect_commands_count_address: Device_Address, stride: u32, )
Proc_Cmd_Dispatch :: #type proc "system" (command_buffer: Command_Buffer, group_count_x: u32, group_count_y: u32, group_count_z: u32, )
Proc_Cmd_Dispatch_Base :: #type proc "system" (command_buffer: Command_Buffer, base_group_x: u32, base_group_y: u32, base_group_z: u32, group_count_x: u32, group_count_y: u32, group_count_z: u32, )
Proc_Cmd_Dispatch_Indirect :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, )
Proc_Cmd_Draw :: #type proc "system" (command_buffer: Command_Buffer, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32, )
Proc_Cmd_Draw_Cluster_Huawei :: #type proc "system" (command_buffer: Command_Buffer, group_count_x: u32, group_count_y: u32, group_count_z: u32, )
Proc_Cmd_Draw_Cluster_Indirect_Huawei :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, )
Proc_Cmd_Draw_Indexed :: #type proc "system" (command_buffer: Command_Buffer, index_count: u32, instance_count: u32, first_index: u32, vertex_offset: i32, first_instance: u32, )
Proc_Cmd_Draw_Indexed_Indirect :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, draw_count: u32, stride: u32, )
Proc_Cmd_Draw_Indexed_Indirect_Count :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, count_buffer: Buffer, count_buffer_offset: Device_Size, max_draw_count: u32, stride: u32, )
Proc_Cmd_Draw_Indirect :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, draw_count: u32, stride: u32, )
Proc_Cmd_Draw_Indirect_Byte_Count :: #type proc "system" (command_buffer: Command_Buffer, instance_count: u32, first_instance: u32, counter_buffer: Buffer, counter_buffer_offset: Device_Size, counter_offset: u32, vertex_stride: u32, )
Proc_Cmd_Draw_Indirect_Count :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, count_buffer: Buffer, count_buffer_offset: Device_Size, max_draw_count: u32, stride: u32, )
Proc_Cmd_Draw_Mesh_Tasks :: #type proc "system" (command_buffer: Command_Buffer, task_count: u32, first_task: u32, )
Proc_Cmd_Draw_Mesh_Tasks_Indirect :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, draw_count: u32, stride: u32, )
Proc_Cmd_Draw_Mesh_Tasks_Indirect_Count :: #type proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, count_buffer: Buffer, count_buffer_offset: Device_Size, max_draw_count: u32, stride: u32, )
Proc_Cmd_Draw_Multi :: #type proc "system" (command_buffer: Command_Buffer, draw_count: u32, vertex_info: ^Multi_Draw_Info, instance_count: u32, first_instance: u32, stride: u32, )
Proc_Cmd_Draw_Multi_Indexed :: #type proc "system" (command_buffer: Command_Buffer, draw_count: u32, index_info: ^Multi_Draw_Indexed_Info, instance_count: u32, first_instance: u32, stride: u32, vertex_offset: ^i32, )
Proc_Cmd_Encode_Video :: #type proc "system" (command_buffer: Command_Buffer, encode_info: ^Video_Encode_Info, )
Proc_Cmd_End_Conditional_Rendering :: #type proc "system" (command_buffer: Command_Buffer, )
Proc_Cmd_End_Debug_Utils_Label :: #type proc "system" (command_buffer: Command_Buffer, )
Proc_Cmd_End_Query :: #type proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, query: u32, )
Proc_Cmd_End_Query_Indexed :: #type proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, query: u32, index: u32, )
Proc_Cmd_End_Render_Pass :: #type proc "system" (command_buffer: Command_Buffer, )
Proc_Cmd_End_Render_Pass_2 :: #type proc "system" (command_buffer: Command_Buffer, subpass_end_info: ^Subpass_End_Info, )
Proc_Cmd_End_Rendering :: #type proc "system" (command_buffer: Command_Buffer, )
Proc_Cmd_End_Transform_Feedback :: #type proc "system" (command_buffer: Command_Buffer, first_counter_buffer: u32, counter_buffer_count: u32, counter_buffers: [^]Buffer, counter_buffer_offsets: ^Device_Size, )
Proc_Cmd_End_Video_Coding :: #type proc "system" (command_buffer: Command_Buffer, end_coding_info: ^Video_End_Coding_Info, )
Proc_Cmd_Execute_Commands :: #type proc "system" (command_buffer: Command_Buffer, command_buffer_count: u32, command_buffers: [^]Command_Buffer, )
Proc_Cmd_Execute_Generated_Commands :: #type proc "system" (command_buffer: Command_Buffer, is_preprocessed: b32, generated_commands_info: ^Generated_Commands_Info, )
Proc_Cmd_Fill_Buffer :: #type proc "system" (command_buffer: Command_Buffer, dst_buffer: Buffer, dst_offset: Device_Size, size: Device_Size, data: u32, )
Proc_Cmd_Insert_Debug_Utils_Label :: #type proc "system" (command_buffer: Command_Buffer, label_info: ^Debug_Utils_Label, )
Proc_Cmd_Next_Subpass :: #type proc "system" (command_buffer: Command_Buffer, contents: Subpass_Contents, )
Proc_Cmd_Next_Subpass_2 :: #type proc "system" (command_buffer: Command_Buffer, subpass_begin_info: ^Subpass_Begin_Info, subpass_end_info: ^Subpass_End_Info, )
Proc_Cmd_Optical_Flow_Execute :: #type proc "system" (command_buffer: Command_Buffer, session: Optical_Flow_Session, execute_info: ^Optical_Flow_Execute_Info, )
Proc_Cmd_Pipeline_Barrier :: #type proc "system" (command_buffer: Command_Buffer, src_stage_mask: Pipeline_Stage_Flags, dst_stage_mask: Pipeline_Stage_Flags, dependency_flags: Dependency_Flags, memory_barrier_count: u32, memory_barriers: [^]Memory_Barrier, buffer_memory_barrier_count: u32, buffer_memory_barriers: [^]Buffer_Memory_Barrier, image_memory_barrier_count: u32, image_memory_barriers: [^]Image_Memory_Barrier, )
Proc_Cmd_Pipeline_Barrier_2 :: #type proc "system" (command_buffer: Command_Buffer, dependency_info: ^Dependency_Info, )
Proc_Cmd_Preprocess_Generated_Commands :: #type proc "system" (command_buffer: Command_Buffer, generated_commands_info: ^Generated_Commands_Info, )
Proc_Cmd_Push_Constants :: #type proc "system" (command_buffer: Command_Buffer, layout: Pipeline_Layout, stage_flags: Shader_Stage_Flags, offset: u32, size: u32, values: rawptr, )
Proc_Cmd_Push_Constants_2 :: #type proc "system" (command_buffer: Command_Buffer, push_constants_info: ^Push_Constants_Info, )
Proc_Cmd_Push_Descriptor_Set :: #type proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, layout: Pipeline_Layout, set: u32, descriptor_write_count: u32, descriptor_writes: [^]Write_Descriptor_Set, )
Proc_Cmd_Push_Descriptor_Set_2 :: #type proc "system" (command_buffer: Command_Buffer, push_descriptor_set_info: ^Push_Descriptor_Set_Info, )
Proc_Cmd_Push_Descriptor_Set_With_Template :: #type proc "system" (command_buffer: Command_Buffer, descriptor_update_template: Descriptor_Update_Template, layout: Pipeline_Layout, set: u32, data: rawptr, )
Proc_Cmd_Push_Descriptor_Set_With_Template_2 :: #type proc "system" (command_buffer: Command_Buffer, push_descriptor_set_with_template_info: ^Push_Descriptor_Set_With_Template_Info, )
Proc_Cmd_Reset_Event :: #type proc "system" (command_buffer: Command_Buffer, event: Event, stage_mask: Pipeline_Stage_Flags, )
Proc_Cmd_Reset_Event_2 :: #type proc "system" (command_buffer: Command_Buffer, event: Event, stage_mask: Pipeline_Stage_Flags_2, )
Proc_Cmd_Reset_Query_Pool :: #type proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, first_query: u32, query_count: u32, )
Proc_Cmd_Resolve_Image :: #type proc "system" (command_buffer: Command_Buffer, src_image: Image, src_image_layout: Image_Layout, dst_image: Image, dst_image_layout: Image_Layout, region_count: u32, regions: [^]Image_Resolve, )
Proc_Cmd_Resolve_Image_2 :: #type proc "system" (command_buffer: Command_Buffer, resolve_image_info: ^Resolve_Image_Info_2, )
Proc_Cmd_Set_Alpha_To_Coverage_Enable :: #type proc "system" (command_buffer: Command_Buffer, alpha_to_coverage_enable: b32, )
Proc_Cmd_Set_Alpha_To_One_Enable :: #type proc "system" (command_buffer: Command_Buffer, alpha_to_one_enable: b32, )
Proc_Cmd_Set_Attachment_Feedback_Loop_Enable :: #type proc "system" (command_buffer: Command_Buffer, aspect_mask: Image_Aspect_Flags, )
Proc_Cmd_Set_Blend_Constants :: #type proc "system" (command_buffer: Command_Buffer, blend_constants: ^[4]f32, )
Proc_Cmd_Set_Checkpoint :: #type proc "system" (command_buffer: Command_Buffer, checkpoint_marker: rawptr, )
Proc_Cmd_Set_Coarse_Sample_Order :: #type proc "system" (command_buffer: Command_Buffer, sample_order_type: Coarse_Sample_Order_Type, custom_sample_order_count: u32, custom_sample_orders: [^]Coarse_Sample_Order_Custom, )
Proc_Cmd_Set_Color_Blend_Advanced :: #type proc "system" (command_buffer: Command_Buffer, first_attachment: u32, attachment_count: u32, color_blend_advanced: ^Color_Blend_Advanced, )
Proc_Cmd_Set_Color_Blend_Enable :: #type proc "system" (command_buffer: Command_Buffer, first_attachment: u32, attachment_count: u32, color_blend_enables: [^]b32, )
Proc_Cmd_Set_Color_Blend_Equation :: #type proc "system" (command_buffer: Command_Buffer, first_attachment: u32, attachment_count: u32, color_blend_equations: [^]Color_Blend_Equation, )
Proc_Cmd_Set_Color_Write_Mask :: #type proc "system" (command_buffer: Command_Buffer, first_attachment: u32, attachment_count: u32, color_write_masks: [^]Color_Component_Flags, )
Proc_Cmd_Set_Conservative_Rasterization_Mode :: #type proc "system" (command_buffer: Command_Buffer, conservative_rasterization_mode: Conservative_Rasterization_Mode, )
Proc_Cmd_Set_Coverage_Modulation_Mode :: #type proc "system" (command_buffer: Command_Buffer, coverage_modulation_mode: Coverage_Modulation_Mode, )
Proc_Cmd_Set_Coverage_Modulation_Table :: #type proc "system" (command_buffer: Command_Buffer, coverage_modulation_table_count: u32, coverage_modulation_table: [^]f32, )
Proc_Cmd_Set_Coverage_Modulation_Table_Enable :: #type proc "system" (command_buffer: Command_Buffer, coverage_modulation_table_enable: b32, )
Proc_Cmd_Set_Coverage_Reduction_Mode :: #type proc "system" (command_buffer: Command_Buffer, coverage_reduction_mode: Coverage_Reduction_Mode, )
Proc_Cmd_Set_Coverage_To_Color_Enable :: #type proc "system" (command_buffer: Command_Buffer, coverage_to_color_enable: b32, )
Proc_Cmd_Set_Coverage_To_Color_Location :: #type proc "system" (command_buffer: Command_Buffer, coverage_to_color_location: u32, )
Proc_Cmd_Set_Cull_Mode :: #type proc "system" (command_buffer: Command_Buffer, cull_mode: Cull_Mode_Flags, )
Proc_Cmd_Set_Depth_Bias :: #type proc "system" (command_buffer: Command_Buffer, depth_bias_constant_factor: f32, depth_bias_clamp: f32, depth_bias_slope_factor: f32, )
Proc_Cmd_Set_Depth_Bias_2 :: #type proc "system" (command_buffer: Command_Buffer, depth_bias_info: ^Depth_Bias_Info, )
Proc_Cmd_Set_Depth_Bias_Enable :: #type proc "system" (command_buffer: Command_Buffer, depth_bias_enable: b32, )
Proc_Cmd_Set_Depth_Bounds :: #type proc "system" (command_buffer: Command_Buffer, min_depth_bounds: f32, max_depth_bounds: f32, )
Proc_Cmd_Set_Depth_Bounds_Test_Enable :: #type proc "system" (command_buffer: Command_Buffer, depth_bounds_test_enable: b32, )
Proc_Cmd_Set_Depth_Clamp_Enable :: #type proc "system" (command_buffer: Command_Buffer, depth_clamp_enable: b32, )
Proc_Cmd_Set_Depth_Clamp_Range :: #type proc "system" (command_buffer: Command_Buffer, depth_clamp_mode: Depth_Clamp_Mode, depth_clamp_range: ^Depth_Clamp_Range, )
Proc_Cmd_Set_Depth_Clip_Enable :: #type proc "system" (command_buffer: Command_Buffer, depth_clip_enable: b32, )
Proc_Cmd_Set_Depth_Clip_Negative_One_To_One :: #type proc "system" (command_buffer: Command_Buffer, negative_one_to_one: b32, )
Proc_Cmd_Set_Depth_Compare_Op :: #type proc "system" (command_buffer: Command_Buffer, depth_compare_op: Compare_Op, )
Proc_Cmd_Set_Depth_Test_Enable :: #type proc "system" (command_buffer: Command_Buffer, depth_test_enable: b32, )
Proc_Cmd_Set_Depth_Write_Enable :: #type proc "system" (command_buffer: Command_Buffer, depth_write_enable: b32, )
Proc_Cmd_Set_Descriptor_Buffer_Offsets :: #type proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, layout: Pipeline_Layout, first_set: u32, set_count: u32, buffer_indices: [^]u32, offsets: ^Device_Size, )
Proc_Cmd_Set_Descriptor_Buffer_Offsets_2 :: #type proc "system" (command_buffer: Command_Buffer, set_descriptor_buffer_offsets_info: ^Set_Descriptor_Buffer_Offsets_Info, )
Proc_Cmd_Set_Device_Mask :: #type proc "system" (command_buffer: Command_Buffer, device_mask: u32, )
Proc_Cmd_Set_Discard_Rectangle :: #type proc "system" (command_buffer: Command_Buffer, first_discard_rectangle: u32, discard_rectangle_count: u32, discard_rectangles: [^]Rect_2D, )
Proc_Cmd_Set_Discard_Rectangle_Enable :: #type proc "system" (command_buffer: Command_Buffer, discard_rectangle_enable: b32, )
Proc_Cmd_Set_Discard_Rectangle_Mode :: #type proc "system" (command_buffer: Command_Buffer, discard_rectangle_mode: Discard_Rectangle_Mode, )
Proc_Cmd_Set_Event :: #type proc "system" (command_buffer: Command_Buffer, event: Event, stage_mask: Pipeline_Stage_Flags, )
Proc_Cmd_Set_Event_2 :: #type proc "system" (command_buffer: Command_Buffer, event: Event, dependency_info: ^Dependency_Info, )
Proc_Cmd_Set_Exclusive_Scissor :: #type proc "system" (command_buffer: Command_Buffer, first_exclusive_scissor: u32, exclusive_scissor_count: u32, exclusive_scissors: [^]Rect_2D, )
Proc_Cmd_Set_Exclusive_Scissor_Enable :: #type proc "system" (command_buffer: Command_Buffer, first_exclusive_scissor: u32, exclusive_scissor_count: u32, exclusive_scissor_enables: [^]b32, )
Proc_Cmd_Set_Extra_Primitive_Overestimation_Size :: #type proc "system" (command_buffer: Command_Buffer, extra_primitive_overestimation_size: f32, )
Proc_Cmd_Set_Fragment_Shading_Rate :: #type proc "system" (command_buffer: Command_Buffer, fragment_size: ^Extent_2D, combiner_ops: ^[2]Fragment_Shading_Rate_Combiner_Op, )
Proc_Cmd_Set_Fragment_Shading_Rate_Enum :: #type proc "system" (command_buffer: Command_Buffer, shading_rate: Fragment_Shading_Rate, combiner_ops: ^[2]Fragment_Shading_Rate_Combiner_Op, )
Proc_Cmd_Set_Front_Face :: #type proc "system" (command_buffer: Command_Buffer, front_face: Front_Face, )
Proc_Cmd_Set_Line_Rasterization_Mode :: #type proc "system" (command_buffer: Command_Buffer, line_rasterization_mode: Line_Rasterization_Mode, )
Proc_Cmd_Set_Line_Stipple :: #type proc "system" (command_buffer: Command_Buffer, line_stipple_factor: u32, line_stipple_pattern: u16, )
Proc_Cmd_Set_Line_Stipple_Enable :: #type proc "system" (command_buffer: Command_Buffer, stippled_line_enable: b32, )
Proc_Cmd_Set_Line_Width :: #type proc "system" (command_buffer: Command_Buffer, line_width: f32, )
Proc_Cmd_Set_Logic_Op :: #type proc "system" (command_buffer: Command_Buffer, logic_op: Logic_Op, )
Proc_Cmd_Set_Logic_Op_Enable :: #type proc "system" (command_buffer: Command_Buffer, logic_op_enable: b32, )
Proc_Cmd_Set_Patch_Control_Points :: #type proc "system" (command_buffer: Command_Buffer, patch_control_points: u32, )
Proc_Cmd_Set_Performance_Marker_Intel :: #type proc "system" (command_buffer: Command_Buffer, marker_info: ^Performance_Marker_Info_Intel, ) -> Result
Proc_Cmd_Set_Performance_Override_Intel :: #type proc "system" (command_buffer: Command_Buffer, override_info: ^Performance_Override_Info_Intel, ) -> Result
Proc_Cmd_Set_Performance_Stream_Marker_Intel :: #type proc "system" (command_buffer: Command_Buffer, marker_info: ^Performance_Stream_Marker_Info_Intel, ) -> Result
Proc_Cmd_Set_Polygon_Mode :: #type proc "system" (command_buffer: Command_Buffer, polygon_mode: Polygon_Mode, )
Proc_Cmd_Set_Primitive_Restart_Enable :: #type proc "system" (command_buffer: Command_Buffer, primitive_restart_enable: b32, )
Proc_Cmd_Set_Primitive_Topology :: #type proc "system" (command_buffer: Command_Buffer, primitive_topology: Primitive_Topology, )
Proc_Cmd_Set_Provoking_Vertex_Mode :: #type proc "system" (command_buffer: Command_Buffer, provoking_vertex_mode: Provoking_Vertex_Mode, )
Proc_Cmd_Set_Rasterization_Samples :: #type proc "system" (command_buffer: Command_Buffer, rasterization_samples: Sample_Count_Flags, )
Proc_Cmd_Set_Rasterization_Stream :: #type proc "system" (command_buffer: Command_Buffer, rasterization_stream: u32, )
Proc_Cmd_Set_Rasterizer_Discard_Enable :: #type proc "system" (command_buffer: Command_Buffer, rasterizer_discard_enable: b32, )
Proc_Cmd_Set_Ray_Tracing_Pipeline_Stack_Size :: #type proc "system" (command_buffer: Command_Buffer, pipeline_stack_size: u32, )
Proc_Cmd_Set_Rendering_Attachment_Locations :: #type proc "system" (command_buffer: Command_Buffer, location_info: ^Rendering_Attachment_Location_Info, )
Proc_Cmd_Set_Rendering_Input_Attachment_Indices :: #type proc "system" (command_buffer: Command_Buffer, input_attachment_index_info: ^Rendering_Input_Attachment_Index_Info, )
Proc_Cmd_Set_Representative_Fragment_Test_Enable :: #type proc "system" (command_buffer: Command_Buffer, representative_fragment_test_enable: b32, )
Proc_Cmd_Set_Sample_Locations :: #type proc "system" (command_buffer: Command_Buffer, sample_locations_info: ^Sample_Locations_Info, )
Proc_Cmd_Set_Sample_Locations_Enable :: #type proc "system" (command_buffer: Command_Buffer, sample_locations_enable: b32, )
Proc_Cmd_Set_Sample_Mask :: #type proc "system" (command_buffer: Command_Buffer, samples: Sample_Count_Flags, sample_mask: ^Sample_Mask, )
Proc_Cmd_Set_Scissor :: #type proc "system" (command_buffer: Command_Buffer, first_scissor: u32, scissor_count: u32, scissors: [^]Rect_2D, )
Proc_Cmd_Set_Scissor_With_Count :: #type proc "system" (command_buffer: Command_Buffer, scissor_count: u32, scissors: [^]Rect_2D, )
Proc_Cmd_Set_Shading_Rate_Image_Enable :: #type proc "system" (command_buffer: Command_Buffer, shading_rate_image_enable: b32, )
Proc_Cmd_Set_Stencil_Compare_Mask :: #type proc "system" (command_buffer: Command_Buffer, face_mask: Stencil_Face_Flags, compare_mask: u32, )
Proc_Cmd_Set_Stencil_Op :: #type proc "system" (command_buffer: Command_Buffer, face_mask: Stencil_Face_Flags, fail_op: Stencil_Op, pass_op: Stencil_Op, depth_fail_op: Stencil_Op, compare_op: Compare_Op, )
Proc_Cmd_Set_Stencil_Reference :: #type proc "system" (command_buffer: Command_Buffer, face_mask: Stencil_Face_Flags, reference: u32, )
Proc_Cmd_Set_Stencil_Test_Enable :: #type proc "system" (command_buffer: Command_Buffer, stencil_test_enable: b32, )
Proc_Cmd_Set_Stencil_Write_Mask :: #type proc "system" (command_buffer: Command_Buffer, face_mask: Stencil_Face_Flags, write_mask: u32, )
Proc_Cmd_Set_Tessellation_Domain_Origin :: #type proc "system" (command_buffer: Command_Buffer, domain_origin: Tessellation_Domain_Origin, )
Proc_Cmd_Set_Vertex_Input :: #type proc "system" (command_buffer: Command_Buffer, vertex_binding_description_count: u32, vertex_binding_descriptions: [^]Vertex_Input_Binding_Description_2, vertex_attribute_description_count: u32, vertex_attribute_descriptions: [^]Vertex_Input_Attribute_Description_2, )
Proc_Cmd_Set_Viewport :: #type proc "system" (command_buffer: Command_Buffer, first_viewport: u32, viewport_count: u32, viewports: [^]Viewport, )
Proc_Cmd_Set_Viewport_Shading_Rate_Palette :: #type proc "system" (command_buffer: Command_Buffer, first_viewport: u32, viewport_count: u32, shading_rate_palettes: [^]Shading_Rate_Palette, )
Proc_Cmd_Set_Viewport_Swizzle :: #type proc "system" (command_buffer: Command_Buffer, first_viewport: u32, viewport_count: u32, viewport_swizzles: [^]Viewport_Swizzle, )
Proc_Cmd_Set_Viewport_With_Count :: #type proc "system" (command_buffer: Command_Buffer, viewport_count: u32, viewports: [^]Viewport, )
Proc_Cmd_Set_Viewport_Wscaling :: #type proc "system" (command_buffer: Command_Buffer, first_viewport: u32, viewport_count: u32, viewport_wscalings: [^]Viewport_Wscaling, )
Proc_Cmd_Set_Viewport_Wscaling_Enable :: #type proc "system" (command_buffer: Command_Buffer, viewport_wscaling_enable: b32, )
Proc_Cmd_Subpass_Shading_Huawei :: #type proc "system" (command_buffer: Command_Buffer, )
Proc_Cmd_Trace_Rays :: #type proc "system" (command_buffer: Command_Buffer, raygen_shader_binding_table_buffer: Buffer, raygen_shader_binding_offset: Device_Size, miss_shader_binding_table_buffer: Buffer, miss_shader_binding_offset: Device_Size, miss_shader_binding_stride: Device_Size, hit_shader_binding_table_buffer: Buffer, hit_shader_binding_offset: Device_Size, hit_shader_binding_stride: Device_Size, callable_shader_binding_table_buffer: Buffer, callable_shader_binding_offset: Device_Size, callable_shader_binding_stride: Device_Size, width: u32, height: u32, depth: u32, )
Proc_Cmd_Trace_Rays_Indirect :: #type proc "system" (command_buffer: Command_Buffer, raygen_shader_binding_table: ^Strided_Device_Address_Region, miss_shader_binding_table: ^Strided_Device_Address_Region, hit_shader_binding_table: ^Strided_Device_Address_Region, callable_shader_binding_table: ^Strided_Device_Address_Region, indirect_device_address: Device_Address, )
Proc_Cmd_Trace_Rays_Indirect_2 :: #type proc "system" (command_buffer: Command_Buffer, indirect_device_address: Device_Address, )
Proc_Cmd_Update_Buffer :: #type proc "system" (command_buffer: Command_Buffer, dst_buffer: Buffer, dst_offset: Device_Size, data_size: Device_Size, data: rawptr, )
Proc_Cmd_Update_Pipeline_Indirect_Buffer :: #type proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, pipeline: Pipeline, )
Proc_Cmd_Wait_Events :: #type proc "system" (command_buffer: Command_Buffer, event_count: u32, events: [^]Event, src_stage_mask: Pipeline_Stage_Flags, dst_stage_mask: Pipeline_Stage_Flags, memory_barrier_count: u32, memory_barriers: [^]Memory_Barrier, buffer_memory_barrier_count: u32, buffer_memory_barriers: [^]Buffer_Memory_Barrier, image_memory_barrier_count: u32, image_memory_barriers: [^]Image_Memory_Barrier, )
Proc_Cmd_Wait_Events_2 :: #type proc "system" (command_buffer: Command_Buffer, event_count: u32, events: [^]Event, dependency_infos: ^Dependency_Info, )
Proc_Cmd_Write_Acceleration_Structures_Properties :: #type proc "system" (command_buffer: Command_Buffer, acceleration_structure_count: u32, acceleration_structures: [^]Acceleration_Structure, query_type: Query_Type, query_pool: Query_Pool, first_query: u32, )
Proc_Cmd_Write_Buffer_Marker :: #type proc "system" (command_buffer: Command_Buffer, pipeline_stage: Pipeline_Stage_Flags, dst_buffer: Buffer, dst_offset: Device_Size, marker: u32, )
Proc_Cmd_Write_Buffer_Marker_2 :: #type proc "system" (command_buffer: Command_Buffer, stage: Pipeline_Stage_Flags_2, dst_buffer: Buffer, dst_offset: Device_Size, marker: u32, )
Proc_Cmd_Write_Micromaps_Properties :: #type proc "system" (command_buffer: Command_Buffer, micromap_count: u32, micromaps: [^]Micromap, query_type: Query_Type, query_pool: Query_Pool, first_query: u32, )
Proc_Cmd_Write_Timestamp :: #type proc "system" (command_buffer: Command_Buffer, pipeline_stage: Pipeline_Stage_Flags, query_pool: Query_Pool, query: u32, )
Proc_Cmd_Write_Timestamp_2 :: #type proc "system" (command_buffer: Command_Buffer, stage: Pipeline_Stage_Flags_2, query_pool: Query_Pool, query: u32, )
Proc_Compile_Deferred :: #type proc "system" (device: Device, pipeline: Pipeline, shader: u32, ) -> Result
Proc_Copy_Acceleration_Structure :: #type proc "system" (device: Device, deferred_operation: Deferred_Operation, info: ^Copy_Acceleration_Structure_Info, ) -> Result
Proc_Copy_Acceleration_Structure_To_Memory :: #type proc "system" (device: Device, deferred_operation: Deferred_Operation, info: ^Copy_Acceleration_Structure_To_Memory_Info, ) -> Result
Proc_Copy_Image_To_Image :: #type proc "system" (device: Device, copy_image_to_image_info: ^Copy_Image_To_Image_Info, ) -> Result
Proc_Copy_Image_To_Memory :: #type proc "system" (device: Device, copy_image_to_memory_info: ^Copy_Image_To_Memory_Info, ) -> Result
Proc_Copy_Memory_To_Acceleration_Structure :: #type proc "system" (device: Device, deferred_operation: Deferred_Operation, info: ^Copy_Memory_To_Acceleration_Structure_Info, ) -> Result
Proc_Copy_Memory_To_Image :: #type proc "system" (device: Device, copy_memory_to_image_info: ^Copy_Memory_To_Image_Info, ) -> Result
Proc_Copy_Memory_To_Micromap :: #type proc "system" (device: Device, deferred_operation: Deferred_Operation, info: ^Copy_Memory_To_Micromap_Info, ) -> Result
Proc_Copy_Micromap :: #type proc "system" (device: Device, deferred_operation: Deferred_Operation, info: ^Copy_Micromap_Info, ) -> Result
Proc_Copy_Micromap_To_Memory :: #type proc "system" (device: Device, deferred_operation: Deferred_Operation, info: ^Copy_Micromap_To_Memory_Info, ) -> Result
Proc_Create_Acceleration_Structure :: #type proc "system" (device: Device, create_info: ^Acceleration_Structure_Create_Info, allocator: ^Allocation_Callbacks, acceleration_structure: ^Acceleration_Structure, ) -> Result
Proc_Create_Buffer :: #type proc "system" (device: Device, create_info: ^Buffer_Create_Info, allocator: ^Allocation_Callbacks, buffer: ^Buffer, ) -> Result
Proc_Create_Buffer_View :: #type proc "system" (device: Device, create_info: ^Buffer_View_Create_Info, allocator: ^Allocation_Callbacks, view: ^Buffer_View, ) -> Result
Proc_Create_Command_Pool :: #type proc "system" (device: Device, create_info: ^Command_Pool_Create_Info, allocator: ^Allocation_Callbacks, command_pool: ^Command_Pool, ) -> Result
Proc_Create_Compute_Pipelines :: #type proc "system" (device: Device, pipeline_cache: Pipeline_Cache, create_info_count: u32, create_infos: [^]Compute_Pipeline_Create_Info, allocator: ^Allocation_Callbacks, pipelines: ^Pipeline, ) -> Result
Proc_Create_Cu_Function :: #type proc "system" (device: Device, create_info: ^Cu_Function_Create_Info, allocator: ^Allocation_Callbacks, function: ^Cu_Function, ) -> Result
Proc_Create_Cu_Module :: #type proc "system" (device: Device, create_info: ^Cu_Module_Create_Info, allocator: ^Allocation_Callbacks, module: ^Cu_Module, ) -> Result
Proc_Create_Cuda_Function :: #type proc "system" (device: Device, create_info: ^Cuda_Function_Create_Info, allocator: ^Allocation_Callbacks, function: ^Cuda_Function, ) -> Result
Proc_Create_Cuda_Module :: #type proc "system" (device: Device, create_info: ^Cuda_Module_Create_Info, allocator: ^Allocation_Callbacks, module: ^Cuda_Module, ) -> Result
Proc_Create_Deferred_Operation :: #type proc "system" (device: Device, allocator: ^Allocation_Callbacks, deferred_operation: ^Deferred_Operation, ) -> Result
Proc_Create_Descriptor_Pool :: #type proc "system" (device: Device, create_info: ^Descriptor_Pool_Create_Info, allocator: ^Allocation_Callbacks, descriptor_pool: ^Descriptor_Pool, ) -> Result
Proc_Create_Descriptor_Set_Layout :: #type proc "system" (device: Device, create_info: ^Descriptor_Set_Layout_Create_Info, allocator: ^Allocation_Callbacks, set_layout: ^Descriptor_Set_Layout, ) -> Result
Proc_Create_Descriptor_Update_Template :: #type proc "system" (device: Device, create_info: ^Descriptor_Update_Template_Create_Info, allocator: ^Allocation_Callbacks, descriptor_update_template: ^Descriptor_Update_Template, ) -> Result
Proc_Create_Event :: #type proc "system" (device: Device, create_info: ^Event_Create_Info, allocator: ^Allocation_Callbacks, event: ^Event, ) -> Result
Proc_Create_Fence :: #type proc "system" (device: Device, create_info: ^Fence_Create_Info, allocator: ^Allocation_Callbacks, fence: ^Fence, ) -> Result
Proc_Create_Framebuffer :: #type proc "system" (device: Device, create_info: ^Framebuffer_Create_Info, allocator: ^Allocation_Callbacks, framebuffer: ^Framebuffer, ) -> Result
Proc_Create_Graphics_Pipelines :: #type proc "system" (device: Device, pipeline_cache: Pipeline_Cache, create_info_count: u32, create_infos: [^]Graphics_Pipeline_Create_Info, allocator: ^Allocation_Callbacks, pipelines: ^Pipeline, ) -> Result
Proc_Create_Image :: #type proc "system" (device: Device, create_info: ^Image_Create_Info, allocator: ^Allocation_Callbacks, image: ^Image, ) -> Result
Proc_Create_Image_View :: #type proc "system" (device: Device, create_info: ^Image_View_Create_Info, allocator: ^Allocation_Callbacks, view: ^Image_View, ) -> Result
Proc_Create_Indirect_Commands_Layout :: #type proc "system" (device: Device, create_info: ^Indirect_Commands_Layout_Create_Info, allocator: ^Allocation_Callbacks, indirect_commands_layout: ^Indirect_Commands_Layout, ) -> Result
Proc_Create_Indirect_Execution_Set :: #type proc "system" (device: Device, create_info: ^Indirect_Execution_Set_Create_Info, allocator: ^Allocation_Callbacks, indirect_execution_set: ^Indirect_Execution_Set, ) -> Result
Proc_Create_Micromap :: #type proc "system" (device: Device, create_info: ^Micromap_Create_Info, allocator: ^Allocation_Callbacks, micromap: ^Micromap, ) -> Result
Proc_Create_Optical_Flow_Session :: #type proc "system" (device: Device, create_info: ^Optical_Flow_Session_Create_Info, allocator: ^Allocation_Callbacks, session: ^Optical_Flow_Session, ) -> Result
Proc_Create_Pipeline_Binaries :: #type proc "system" (device: Device, create_info: ^Pipeline_Binary_Create_Info, allocator: ^Allocation_Callbacks, binaries: ^Pipeline_Binary_Handles_Info, ) -> Result
Proc_Create_Pipeline_Cache :: #type proc "system" (device: Device, create_info: ^Pipeline_Cache_Create_Info, allocator: ^Allocation_Callbacks, pipeline_cache: ^Pipeline_Cache, ) -> Result
Proc_Create_Pipeline_Layout :: #type proc "system" (device: Device, create_info: ^Pipeline_Layout_Create_Info, allocator: ^Allocation_Callbacks, pipeline_layout: ^Pipeline_Layout, ) -> Result
Proc_Create_Private_Data_Slot :: #type proc "system" (device: Device, create_info: ^Private_Data_Slot_Create_Info, allocator: ^Allocation_Callbacks, private_data_slot: ^Private_Data_Slot, ) -> Result
Proc_Create_Query_Pool :: #type proc "system" (device: Device, create_info: ^Query_Pool_Create_Info, allocator: ^Allocation_Callbacks, query_pool: ^Query_Pool, ) -> Result
Proc_Create_Ray_Tracing_Pipelines :: #type proc "system" (device: Device, pipeline_cache: Pipeline_Cache, create_info_count: u32, create_infos: [^]Ray_Tracing_Pipeline_Create_Info, allocator: ^Allocation_Callbacks, pipelines: ^Pipeline, ) -> Result
Proc_Create_Render_Pass :: #type proc "system" (device: Device, create_info: ^Render_Pass_Create_Info, allocator: ^Allocation_Callbacks, render_pass: ^Render_Pass, ) -> Result
Proc_Create_Render_Pass_2 :: #type proc "system" (device: Device, create_info: ^Render_Pass_Create_Info_2, allocator: ^Allocation_Callbacks, render_pass: ^Render_Pass, ) -> Result
Proc_Create_Sampler :: #type proc "system" (device: Device, create_info: ^Sampler_Create_Info, allocator: ^Allocation_Callbacks, sampler: ^Sampler, ) -> Result
Proc_Create_Sampler_Ycbcr_Conversion :: #type proc "system" (device: Device, create_info: ^Sampler_Ycbcr_Conversion_Create_Info, allocator: ^Allocation_Callbacks, ycbcr_conversion: ^Sampler_Ycbcr_Conversion, ) -> Result
Proc_Create_Semaphore :: #type proc "system" (device: Device, create_info: ^Semaphore_Create_Info, allocator: ^Allocation_Callbacks, semaphore: ^Semaphore, ) -> Result
Proc_Create_Shader_Module :: #type proc "system" (device: Device, create_info: ^Shader_Module_Create_Info, allocator: ^Allocation_Callbacks, shader_module: ^Shader_Module, ) -> Result
Proc_Create_Shaders :: #type proc "system" (device: Device, create_info_count: u32, create_infos: [^]Shader_Create_Info, allocator: ^Allocation_Callbacks, shaders: ^Shader, ) -> Result
Proc_Create_Shared_Swapchains :: #type proc "system" (device: Device, swapchain_count: u32, create_infos: [^]Swapchain_Create_Info, allocator: ^Allocation_Callbacks, swapchains: ^Swapchain, ) -> Result
Proc_Create_Swapchain :: #type proc "system" (device: Device, create_info: ^Swapchain_Create_Info, allocator: ^Allocation_Callbacks, swapchain: ^Swapchain, ) -> Result
Proc_Create_Validation_Cache :: #type proc "system" (device: Device, create_info: ^Validation_Cache_Create_Info, allocator: ^Allocation_Callbacks, validation_cache: ^Validation_Cache, ) -> Result
Proc_Create_Video_Session :: #type proc "system" (device: Device, create_info: ^Video_Session_Create_Info, allocator: ^Allocation_Callbacks, video_session: ^Video_Session, ) -> Result
Proc_Create_Video_Session_Parameters :: #type proc "system" (device: Device, create_info: ^Video_Session_Parameters_Create_Info, allocator: ^Allocation_Callbacks, video_session_parameters: ^Video_Session_Parameters, ) -> Result
Proc_Debug_Marker_Set_Object_Name :: #type proc "system" (device: Device, name_info: ^Debug_Marker_Object_Name_Info, ) -> Result
Proc_Debug_Marker_Set_Object_Tag :: #type proc "system" (device: Device, tag_info: ^Debug_Marker_Object_Tag_Info, ) -> Result
Proc_Deferred_Operation_Join :: #type proc "system" (device: Device, operation: Deferred_Operation, ) -> Result
Proc_Destroy_Acceleration_Structure :: #type proc "system" (device: Device, acceleration_structure: Acceleration_Structure, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Buffer :: #type proc "system" (device: Device, buffer: Buffer, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Buffer_View :: #type proc "system" (device: Device, buffer_view: Buffer_View, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Command_Pool :: #type proc "system" (device: Device, command_pool: Command_Pool, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Cu_Function :: #type proc "system" (device: Device, function: Cu_Function, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Cu_Module :: #type proc "system" (device: Device, module: Cu_Module, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Cuda_Function :: #type proc "system" (device: Device, function: Cuda_Function, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Cuda_Module :: #type proc "system" (device: Device, module: Cuda_Module, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Deferred_Operation :: #type proc "system" (device: Device, operation: Deferred_Operation, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Descriptor_Pool :: #type proc "system" (device: Device, descriptor_pool: Descriptor_Pool, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Descriptor_Set_Layout :: #type proc "system" (device: Device, descriptor_set_layout: Descriptor_Set_Layout, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Descriptor_Update_Template :: #type proc "system" (device: Device, descriptor_update_template: Descriptor_Update_Template, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Device :: #type proc "system" (device: Device, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Event :: #type proc "system" (device: Device, event: Event, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Fence :: #type proc "system" (device: Device, fence: Fence, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Framebuffer :: #type proc "system" (device: Device, framebuffer: Framebuffer, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Image :: #type proc "system" (device: Device, image: Image, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Image_View :: #type proc "system" (device: Device, image_view: Image_View, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Indirect_Commands_Layout :: #type proc "system" (device: Device, indirect_commands_layout: Indirect_Commands_Layout, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Indirect_Execution_Set :: #type proc "system" (device: Device, indirect_execution_set: Indirect_Execution_Set, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Micromap :: #type proc "system" (device: Device, micromap: Micromap, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Optical_Flow_Session :: #type proc "system" (device: Device, session: Optical_Flow_Session, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Pipeline :: #type proc "system" (device: Device, pipeline: Pipeline, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Pipeline_Binary :: #type proc "system" (device: Device, pipeline_binary: Pipeline_Binary, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Pipeline_Cache :: #type proc "system" (device: Device, pipeline_cache: Pipeline_Cache, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Pipeline_Layout :: #type proc "system" (device: Device, pipeline_layout: Pipeline_Layout, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Private_Data_Slot :: #type proc "system" (device: Device, private_data_slot: Private_Data_Slot, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Query_Pool :: #type proc "system" (device: Device, query_pool: Query_Pool, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Render_Pass :: #type proc "system" (device: Device, render_pass: Render_Pass, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Sampler :: #type proc "system" (device: Device, sampler: Sampler, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Sampler_Ycbcr_Conversion :: #type proc "system" (device: Device, ycbcr_conversion: Sampler_Ycbcr_Conversion, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Semaphore :: #type proc "system" (device: Device, semaphore: Semaphore, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Shader :: #type proc "system" (device: Device, shader: Shader, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Shader_Module :: #type proc "system" (device: Device, shader_module: Shader_Module, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Swapchain :: #type proc "system" (device: Device, swapchain: Swapchain, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Validation_Cache :: #type proc "system" (device: Device, validation_cache: Validation_Cache, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Video_Session :: #type proc "system" (device: Device, video_session: Video_Session, allocator: ^Allocation_Callbacks, )
Proc_Destroy_Video_Session_Parameters :: #type proc "system" (device: Device, video_session_parameters: Video_Session_Parameters, allocator: ^Allocation_Callbacks, )
Proc_Device_Wait_Idle :: #type proc "system" (device: Device, ) -> Result
Proc_Display_Power_Control :: #type proc "system" (device: Device, display: Display, display_power_info: ^Display_Power_Info, ) -> Result
Proc_End_Command_Buffer :: #type proc "system" (command_buffer: Command_Buffer, ) -> Result
Proc_Export_Metal_Objects :: #type proc "system" (device: Device, metal_objects_info: ^Export_Metal_Objects_Info, )
Proc_Flush_Mapped_Memory_Ranges :: #type proc "system" (device: Device, memory_range_count: u32, memory_ranges: [^]Mapped_Memory_Range, ) -> Result
Proc_Free_Command_Buffers :: #type proc "system" (device: Device, command_pool: Command_Pool, command_buffer_count: u32, command_buffers: [^]Command_Buffer, )
Proc_Free_Descriptor_Sets :: #type proc "system" (device: Device, descriptor_pool: Descriptor_Pool, descriptor_set_count: u32, descriptor_sets: [^]Descriptor_Set, ) -> Result
Proc_Free_Memory :: #type proc "system" (device: Device, memory: Device_Memory, allocator: ^Allocation_Callbacks, )
Proc_Get_Acceleration_Structure_Build_Sizes :: #type proc "system" (device: Device, build_type: Acceleration_Structure_Build_Type, build_info: ^Acceleration_Structure_Build_Geometry_Info, max_primitive_counts: ^u32, size_info: ^Acceleration_Structure_Build_Sizes_Info, )
Proc_Get_Acceleration_Structure_Device_Address :: #type proc "system" (device: Device, info: ^Acceleration_Structure_Device_Address_Info, ) -> Device_Address
Proc_Get_Acceleration_Structure_Handle :: #type proc "system" (device: Device, acceleration_structure: Acceleration_Structure, data_size: int, data: [^]u8, ) -> Result
Proc_Get_Acceleration_Structure_Memory_Requirements :: #type proc "system" (device: Device, info: ^Acceleration_Structure_Memory_Requirements_Info, memory_requirements: ^Memory_Requirements_2, )
Proc_Get_Acceleration_Structure_Opaque_Capture_Descriptor_Data :: #type proc "system" (device: Device, info: ^Acceleration_Structure_Capture_Descriptor_Data_Info, data: [^]u8, ) -> Result
Proc_Get_Buffer_Device_Address :: #type proc "system" (device: Device, info: ^Buffer_Device_Address_Info, ) -> Device_Address
Proc_Get_Buffer_Memory_Requirements :: #type proc "system" (device: Device, buffer: Buffer, memory_requirements: ^Memory_Requirements, )
Proc_Get_Buffer_Memory_Requirements_2 :: #type proc "system" (device: Device, info: ^Buffer_Memory_Requirements_Info_2, memory_requirements: ^Memory_Requirements_2, )
Proc_Get_Buffer_Opaque_Capture_Address :: #type proc "system" (device: Device, info: ^Buffer_Device_Address_Info, ) -> u64
Proc_Get_Buffer_Opaque_Capture_Descriptor_Data :: #type proc "system" (device: Device, info: ^Buffer_Capture_Descriptor_Data_Info, data: [^]u8, ) -> Result
Proc_Get_Calibrated_Timestamps :: #type proc "system" (device: Device, timestamp_count: u32, timestamp_infos: [^]Calibrated_Timestamp_Info, timestamps: ^u64, max_deviation: ^u64, ) -> Result
Proc_Get_Cuda_Module_Cache :: #type proc "system" (device: Device, module: Cuda_Module, cache_size: ^int, cache_data: [^]u8, ) -> Result
Proc_Get_Deferred_Operation_Max_Concurrency :: #type proc "system" (device: Device, operation: Deferred_Operation, ) -> u32
Proc_Get_Deferred_Operation_Result :: #type proc "system" (device: Device, operation: Deferred_Operation, ) -> Result
Proc_Get_Descriptor :: #type proc "system" (device: Device, descriptor_info: ^Descriptor_Get_Info, data_size: int, descriptor: [^]u8, )
Proc_Get_Descriptor_Set_Host_Mapping_Valve :: #type proc "system" (device: Device, descriptor_set: Descriptor_Set, data: ^[^]u8, )
Proc_Get_Descriptor_Set_Layout_Binding_Offset :: #type proc "system" (device: Device, layout: Descriptor_Set_Layout, binding: u32, offset: ^Device_Size, )
Proc_Get_Descriptor_Set_Layout_Host_Mapping_Info_Valve :: #type proc "system" (device: Device, binding_reference: ^Descriptor_Set_Binding_Reference_Valve, host_mapping: ^Descriptor_Set_Layout_Host_Mapping_Info_Valve, )
Proc_Get_Descriptor_Set_Layout_Size :: #type proc "system" (device: Device, layout: Descriptor_Set_Layout, layout_size_in_bytes: ^Device_Size, )
Proc_Get_Descriptor_Set_Layout_Support :: #type proc "system" (device: Device, create_info: ^Descriptor_Set_Layout_Create_Info, support: ^Descriptor_Set_Layout_Support, )
Proc_Get_Device_Acceleration_Structure_Compatibility :: #type proc "system" (device: Device, version_info: ^Acceleration_Structure_Version_Info, compatibility: ^Acceleration_Structure_Compatibility, )
Proc_Get_Device_Buffer_Memory_Requirements :: #type proc "system" (device: Device, info: ^Device_Buffer_Memory_Requirements, memory_requirements: ^Memory_Requirements_2, )
Proc_Get_Device_Fault_Info :: #type proc "system" (device: Device, fault_counts: ^Device_Fault_Counts, fault_info: ^Device_Fault_Info, ) -> Result
Proc_Get_Device_Group_Peer_Memory_Features :: #type proc "system" (device: Device, heap_index: u32, local_device_index: u32, remote_device_index: u32, peer_memory_features: [^]Peer_Memory_Feature_Flags, )
Proc_Get_Device_Group_Present_Capabilities :: #type proc "system" (device: Device, device_group_present_capabilities: ^Device_Group_Present_Capabilities, ) -> Result
Proc_Get_Device_Group_Surface_Present_Modes :: #type proc "system" (device: Device, surface: Surface, modes: [^]Device_Group_Present_Mode_Flags, ) -> Result
Proc_Get_Device_Group_Surface_Present_Modes_2 :: #type proc "system" (device: Device, surface_info: ^Physical_Device_Surface_Info_2, modes: [^]Device_Group_Present_Mode_Flags, ) -> Result
Proc_Get_Device_Image_Memory_Requirements :: #type proc "system" (device: Device, info: ^Device_Image_Memory_Requirements, memory_requirements: ^Memory_Requirements_2, )
Proc_Get_Device_Image_Sparse_Memory_Requirements :: #type proc "system" (device: Device, info: ^Device_Image_Memory_Requirements, sparse_memory_requirement_count: ^u32, sparse_memory_requirements: [^]Sparse_Image_Memory_Requirements_2, )
Proc_Get_Device_Image_Subresource_Layout :: #type proc "system" (device: Device, info: ^Device_Image_Subresource_Info, layout: ^Subresource_Layout_2, )
Proc_Get_Device_Memory_Commitment :: #type proc "system" (device: Device, memory: Device_Memory, committed_memory_in_bytes: ^Device_Size, )
Proc_Get_Device_Memory_Opaque_Capture_Address :: #type proc "system" (device: Device, info: ^Device_Memory_Opaque_Capture_Address_Info, ) -> u64
Proc_Get_Device_Micromap_Compatibility :: #type proc "system" (device: Device, version_info: ^Micromap_Version_Info, compatibility: ^Acceleration_Structure_Compatibility, )
Proc_Get_Device_Queue :: #type proc "system" (device: Device, queue_family_index: u32, queue_index: u32, queue: ^Queue, )
Proc_Get_Device_Queue_2 :: #type proc "system" (device: Device, queue_info: ^Device_Queue_Info_2, queue: ^Queue, )
Proc_Get_Device_Subpass_Shading_Max_Workgroup_Size_Huawei :: #type proc "system" (device: Device, renderpass: Render_Pass, max_workgroup_size: ^Extent_2D, ) -> Result
Proc_Get_Dynamic_Rendering_Tile_Properties_Qcom :: #type proc "system" (device: Device, rendering_info: ^Rendering_Info, properties: ^Tile_Properties_Qcom, ) -> Result
Proc_Get_Encoded_Video_Session_Parameters :: #type proc "system" (device: Device, video_session_parameters_info: ^Video_Encode_Session_Parameters_Get_Info, feedback_info: ^Video_Encode_Session_Parameters_Feedback_Info, data_size: ^int, data: [^]u8, ) -> Result
Proc_Get_Event_Status :: #type proc "system" (device: Device, event: Event, ) -> Result
Proc_Get_Fence_Fd :: #type proc "system" (device: Device, get_fd_info: ^Fence_Get_Fd_Info, fd: ^c.int, ) -> Result
Proc_Get_Fence_Status :: #type proc "system" (device: Device, fence: Fence, ) -> Result
Proc_Get_Fence_Win32_Handle :: #type proc "system" (device: Device, get_win32_handle_info: ^Fence_Get_Win32_Handle_Info, handle: ^HANDLE, ) -> Result
Proc_Get_Framebuffer_Tile_Properties_Qcom :: #type proc "system" (device: Device, framebuffer: Framebuffer, properties_count: ^u32, properties: [^]Tile_Properties_Qcom, ) -> Result
Proc_Get_Generated_Commands_Memory_Requirements :: #type proc "system" (device: Device, info: ^Generated_Commands_Memory_Requirements_Info, memory_requirements: ^Memory_Requirements_2, )
Proc_Get_Image_Drm_Format_Modifier_Properties :: #type proc "system" (device: Device, image: Image, properties: ^Image_Drm_Format_Modifier_Properties, ) -> Result
Proc_Get_Image_Memory_Requirements :: #type proc "system" (device: Device, image: Image, memory_requirements: ^Memory_Requirements, )
Proc_Get_Image_Memory_Requirements_2 :: #type proc "system" (device: Device, info: ^Image_Memory_Requirements_Info_2, memory_requirements: ^Memory_Requirements_2, )
Proc_Get_Image_Opaque_Capture_Descriptor_Data :: #type proc "system" (device: Device, info: ^Image_Capture_Descriptor_Data_Info, data: [^]u8, ) -> Result
Proc_Get_Image_Sparse_Memory_Requirements :: #type proc "system" (device: Device, image: Image, sparse_memory_requirement_count: ^u32, sparse_memory_requirements: [^]Sparse_Image_Memory_Requirements, )
Proc_Get_Image_Sparse_Memory_Requirements_2 :: #type proc "system" (device: Device, info: ^Image_Sparse_Memory_Requirements_Info_2, sparse_memory_requirement_count: ^u32, sparse_memory_requirements: [^]Sparse_Image_Memory_Requirements_2, )
Proc_Get_Image_Subresource_Layout :: #type proc "system" (device: Device, image: Image, subresource: ^Image_Subresource, layout: ^Subresource_Layout, )
Proc_Get_Image_Subresource_Layout_2 :: #type proc "system" (device: Device, image: Image, subresource: ^Image_Subresource_2, layout: ^Subresource_Layout_2, )
Proc_Get_Image_View_Address :: #type proc "system" (device: Device, image_view: Image_View, properties: ^Image_View_Address_Properties, ) -> Result
Proc_Get_Image_View_Handle :: #type proc "system" (device: Device, info: ^Image_View_Handle_Info, ) -> u32
Proc_Get_Image_View_Handle_64 :: #type proc "system" (device: Device, info: ^Image_View_Handle_Info, ) -> u64
Proc_Get_Image_View_Opaque_Capture_Descriptor_Data :: #type proc "system" (device: Device, info: ^Image_View_Capture_Descriptor_Data_Info, data: [^]u8, ) -> Result
Proc_Get_Latency_Timings :: #type proc "system" (device: Device, swapchain: Swapchain, latency_marker_info: ^Get_Latency_Marker_Info, )
Proc_Get_Memory_Fd :: #type proc "system" (device: Device, get_fd_info: ^Memory_Get_Fd_Info, fd: ^c.int, ) -> Result
Proc_Get_Memory_Fd_Properties :: #type proc "system" (device: Device, handle_type: External_Memory_Handle_Type_Flags, fd: c.int, memory_fd_properties: ^Memory_Fd_Properties, ) -> Result
Proc_Get_Memory_Host_Pointer_Properties :: #type proc "system" (device: Device, handle_type: External_Memory_Handle_Type_Flags, host_pointer: rawptr, memory_host_pointer_properties: ^Memory_Host_Pointer_Properties, ) -> Result
Proc_Get_Memory_Remote_Address :: #type proc "system" (device: Device, memory_get_remote_address_info: ^Memory_Get_Remote_Address_Info, address: ^Remote_Address, ) -> Result
Proc_Get_Memory_Win32_Handle :: #type proc "system" (device: Device, get_win32_handle_info: ^Memory_Get_Win32_Handle_Info, handle: ^HANDLE, ) -> Result
Proc_Get_Memory_Win32_Handle_Properties :: #type proc "system" (device: Device, handle_type: External_Memory_Handle_Type_Flags, handle: HANDLE, memory_win32_handle_properties: ^Memory_Win32_Handle_Properties, ) -> Result
Proc_Get_Micromap_Build_Sizes :: #type proc "system" (device: Device, build_type: Acceleration_Structure_Build_Type, build_info: ^Micromap_Build_Info, size_info: ^Micromap_Build_Sizes_Info, )
Proc_Get_Past_Presentation_Timing :: #type proc "system" (device: Device, swapchain: Swapchain, presentation_timing_count: ^u32, presentation_timings: [^]Past_Presentation_Timing, ) -> Result
Proc_Get_Performance_Parameter_Intel :: #type proc "system" (device: Device, parameter: Performance_Parameter_Type_Intel, value: ^Performance_Value_Intel, ) -> Result
Proc_Get_Pipeline_Binary_Data :: #type proc "system" (device: Device, info: ^Pipeline_Binary_Data_Info, pipeline_binary_key: ^Pipeline_Binary_Key, pipeline_binary_data_size: ^int, pipeline_binary_data: [^]u8, ) -> Result
Proc_Get_Pipeline_Cache_Data :: #type proc "system" (device: Device, pipeline_cache: Pipeline_Cache, data_size: ^int, data: [^]u8, ) -> Result
Proc_Get_Pipeline_Executable_Internal_Representations :: #type proc "system" (device: Device, executable_info: ^Pipeline_Executable_Info, internal_representation_count: ^u32, internal_representations: [^]Pipeline_Executable_Internal_Representation, ) -> Result
Proc_Get_Pipeline_Executable_Properties :: #type proc "system" (device: Device, pipeline_info: ^Pipeline_Info, executable_count: ^u32, properties: [^]Pipeline_Executable_Properties, ) -> Result
Proc_Get_Pipeline_Executable_Statistics :: #type proc "system" (device: Device, executable_info: ^Pipeline_Executable_Info, statistic_count: ^u32, statistics: [^]Pipeline_Executable_Statistic, ) -> Result
Proc_Get_Pipeline_Indirect_Device_Address :: #type proc "system" (device: Device, info: ^Pipeline_Indirect_Device_Address_Info, ) -> Device_Address
Proc_Get_Pipeline_Indirect_Memory_Requirements :: #type proc "system" (device: Device, create_info: ^Compute_Pipeline_Create_Info, memory_requirements: ^Memory_Requirements_2, )
Proc_Get_Pipeline_Key :: #type proc "system" (device: Device, pipeline_create_info: ^Pipeline_Create_Info, pipeline_key: ^Pipeline_Binary_Key, ) -> Result
Proc_Get_Pipeline_Properties :: #type proc "system" (device: Device, pipeline_info: ^Pipeline_Info, pipeline_properties: ^Base_Out_Structure, ) -> Result
Proc_Get_Private_Data :: #type proc "system" (device: Device, object_type: Object_Type, object_handle: u64, private_data_slot: Private_Data_Slot, data: ^u64, )
Proc_Get_Query_Pool_Results :: #type proc "system" (device: Device, query_pool: Query_Pool, first_query: u32, query_count: u32, data_size: int, data: [^]u8, stride: Device_Size, flags: Query_Result_Flags, ) -> Result
Proc_Get_Queue_Checkpoint_Data :: #type proc "system" (queue: Queue, checkpoint_data_count: ^u32, checkpoint_data: ^Checkpoint_Data, )
Proc_Get_Queue_Checkpoint_Data_2 :: #type proc "system" (queue: Queue, checkpoint_data_count: ^u32, checkpoint_data: ^Checkpoint_Data_2, )
Proc_Get_Ray_Tracing_Capture_Replay_Shader_Group_Handles :: #type proc "system" (device: Device, pipeline: Pipeline, first_group: u32, group_count: u32, data_size: int, data: [^]u8, ) -> Result
Proc_Get_Ray_Tracing_Shader_Group_Handles :: #type proc "system" (device: Device, pipeline: Pipeline, first_group: u32, group_count: u32, data_size: int, data: [^]u8, ) -> Result
Proc_Get_Ray_Tracing_Shader_Group_Stack_Size :: #type proc "system" (device: Device, pipeline: Pipeline, group: u32, group_shader: Shader_Group_Shader, ) -> Device_Size
Proc_Get_Refresh_Cycle_Duration :: #type proc "system" (device: Device, swapchain: Swapchain, display_timing_properties: ^Refresh_Cycle_Duration, ) -> Result
Proc_Get_Render_Area_Granularity :: #type proc "system" (device: Device, render_pass: Render_Pass, granularity: ^Extent_2D, )
Proc_Get_Rendering_Area_Granularity :: #type proc "system" (device: Device, rendering_area_info: ^Rendering_Area_Info, granularity: ^Extent_2D, )
Proc_Get_Sampler_Opaque_Capture_Descriptor_Data :: #type proc "system" (device: Device, info: ^Sampler_Capture_Descriptor_Data_Info, data: [^]u8, ) -> Result
Proc_Get_Semaphore_Counter_Value :: #type proc "system" (device: Device, semaphore: Semaphore, value: ^u64, ) -> Result
Proc_Get_Semaphore_Fd :: #type proc "system" (device: Device, get_fd_info: ^Semaphore_Get_Fd_Info, fd: ^c.int, ) -> Result
Proc_Get_Semaphore_Win32_Handle :: #type proc "system" (device: Device, get_win32_handle_info: ^Semaphore_Get_Win32_Handle_Info, handle: ^HANDLE, ) -> Result
Proc_Get_Shader_Binary_Data :: #type proc "system" (device: Device, shader: Shader, data_size: ^int, data: [^]u8, ) -> Result
Proc_Get_Shader_Info :: #type proc "system" (device: Device, pipeline: Pipeline, shader_stage: Shader_Stage_Flags, info_type: Shader_Info_Type, info_size: ^int, info: [^]u8, ) -> Result
Proc_Get_Shader_Module_Create_Info_Identifier :: #type proc "system" (device: Device, create_info: ^Shader_Module_Create_Info, identifier: ^Shader_Module_Identifier, )
Proc_Get_Shader_Module_Identifier :: #type proc "system" (device: Device, shader_module: Shader_Module, identifier: ^Shader_Module_Identifier, )
Proc_Get_Swapchain_Counter :: #type proc "system" (device: Device, swapchain: Swapchain, counter: Surface_Counter_Flags, counter_value: ^u64, ) -> Result
Proc_Get_Swapchain_Images :: #type proc "system" (device: Device, swapchain: Swapchain, swapchain_image_count: ^u32, swapchain_images: [^]Image, ) -> Result
Proc_Get_Swapchain_Status :: #type proc "system" (device: Device, swapchain: Swapchain, ) -> Result
Proc_Get_Validation_Cache_Data :: #type proc "system" (device: Device, validation_cache: Validation_Cache, data_size: ^int, data: [^]u8, ) -> Result
Proc_Get_Video_Session_Memory_Requirements :: #type proc "system" (device: Device, video_session: Video_Session, memory_requirements_count: ^u32, memory_requirements: [^]Video_Session_Memory_Requirements, ) -> Result
Proc_Import_Fence_Fd :: #type proc "system" (device: Device, import_fence_fd_info: ^Import_Fence_Fd_Info, ) -> Result
Proc_Import_Fence_Win32_Handle :: #type proc "system" (device: Device, import_fence_win32_handle_info: ^Import_Fence_Win32_Handle_Info, ) -> Result
Proc_Import_Semaphore_Fd :: #type proc "system" (device: Device, import_semaphore_fd_info: ^Import_Semaphore_Fd_Info, ) -> Result
Proc_Import_Semaphore_Win32_Handle :: #type proc "system" (device: Device, import_semaphore_win32_handle_info: ^Import_Semaphore_Win32_Handle_Info, ) -> Result
Proc_Initialize_Performance_Api_Intel :: #type proc "system" (device: Device, initialize_info: ^Initialize_Performance_Api_Info_Intel, ) -> Result
Proc_Invalidate_Mapped_Memory_Ranges :: #type proc "system" (device: Device, memory_range_count: u32, memory_ranges: [^]Mapped_Memory_Range, ) -> Result
Proc_Latency_Sleep :: #type proc "system" (device: Device, swapchain: Swapchain, sleep_info: ^Latency_Sleep_Info, ) -> Result
Proc_Map_Memory :: #type proc "system" (device: Device, memory: Device_Memory, offset: Device_Size, size: Device_Size, flags: Memory_Map_Flags, data: ^[^]u8, ) -> Result
Proc_Map_Memory_2 :: #type proc "system" (device: Device, memory_map_info: ^Memory_Map_Info, data: ^[^]u8, ) -> Result
Proc_Merge_Pipeline_Caches :: #type proc "system" (device: Device, dst_cache: Pipeline_Cache, src_cache_count: u32, src_caches: [^]Pipeline_Cache, ) -> Result
Proc_Merge_Validation_Caches :: #type proc "system" (device: Device, dst_cache: Validation_Cache, src_cache_count: u32, src_caches: [^]Validation_Cache, ) -> Result
Proc_Queue_Begin_Debug_Utils_Label :: #type proc "system" (queue: Queue, label_info: ^Debug_Utils_Label, )
Proc_Queue_Bind_Sparse :: #type proc "system" (queue: Queue, bind_info_count: u32, bind_info: ^Bind_Sparse_Info, fence: Fence, ) -> Result
Proc_Queue_End_Debug_Utils_Label :: #type proc "system" (queue: Queue, )
Proc_Queue_Insert_Debug_Utils_Label :: #type proc "system" (queue: Queue, label_info: ^Debug_Utils_Label, )
Proc_Queue_Notify_Out_Of_Band :: #type proc "system" (queue: Queue, queue_type_info: ^Out_Of_Band_Queue_Type_Info, )
Proc_Queue_Present :: #type proc "system" (queue: Queue, present_info: ^Present_Info, ) -> Result
Proc_Queue_Set_Performance_Configuration_Intel :: #type proc "system" (queue: Queue, configuration: Performance_Configuration_Intel, ) -> Result
Proc_Queue_Submit :: #type proc "system" (queue: Queue, submit_count: u32, submits: [^]Submit_Info, fence: Fence, ) -> Result
Proc_Queue_Submit_2 :: #type proc "system" (queue: Queue, submit_count: u32, submits: [^]Submit_Info_2, fence: Fence, ) -> Result
Proc_Queue_Wait_Idle :: #type proc "system" (queue: Queue, ) -> Result
Proc_Register_Device_Event :: #type proc "system" (device: Device, device_event_info: ^Device_Event_Info, allocator: ^Allocation_Callbacks, fence: ^Fence, ) -> Result
Proc_Register_Display_Event :: #type proc "system" (device: Device, display: Display, display_event_info: ^Display_Event_Info, allocator: ^Allocation_Callbacks, fence: ^Fence, ) -> Result
Proc_Release_Captured_Pipeline_Data :: #type proc "system" (device: Device, info: ^Release_Captured_Pipeline_Data_Info, allocator: ^Allocation_Callbacks, ) -> Result
Proc_Release_Full_Screen_Exclusive_Mode :: #type proc "system" (device: Device, swapchain: Swapchain, ) -> Result
Proc_Release_Performance_Configuration_Intel :: #type proc "system" (device: Device, configuration: Performance_Configuration_Intel, ) -> Result
Proc_Release_Profiling_Lock :: #type proc "system" (device: Device, )
Proc_Release_Swapchain_Images :: #type proc "system" (device: Device, release_info: ^Release_Swapchain_Images_Info, ) -> Result
Proc_Reset_Command_Buffer :: #type proc "system" (command_buffer: Command_Buffer, flags: Command_Buffer_Reset_Flags, ) -> Result
Proc_Reset_Command_Pool :: #type proc "system" (device: Device, command_pool: Command_Pool, flags: Command_Pool_Reset_Flags, ) -> Result
Proc_Reset_Descriptor_Pool :: #type proc "system" (device: Device, descriptor_pool: Descriptor_Pool, flags: Descriptor_Pool_Reset_Flags, ) -> Result
Proc_Reset_Event :: #type proc "system" (device: Device, event: Event, ) -> Result
Proc_Reset_Fences :: #type proc "system" (device: Device, fence_count: u32, fences: [^]Fence, ) -> Result
Proc_Reset_Query_Pool :: #type proc "system" (device: Device, query_pool: Query_Pool, first_query: u32, query_count: u32, )
Proc_Set_Debug_Utils_Object_Name :: #type proc "system" (device: Device, name_info: ^Debug_Utils_Object_Name_Info, ) -> Result
Proc_Set_Debug_Utils_Object_Tag :: #type proc "system" (device: Device, tag_info: ^Debug_Utils_Object_Tag_Info, ) -> Result
Proc_Set_Device_Memory_Priority :: #type proc "system" (device: Device, memory: Device_Memory, priority: f32, )
Proc_Set_Event :: #type proc "system" (device: Device, event: Event, ) -> Result
Proc_Set_Hdr_Metadata :: #type proc "system" (device: Device, swapchain_count: u32, swapchains: [^]Swapchain, metadata: ^Hdr_Metadata, )
Proc_Set_Latency_Marker :: #type proc "system" (device: Device, swapchain: Swapchain, latency_marker_info: ^Set_Latency_Marker_Info, )
Proc_Set_Latency_Sleep_Mode :: #type proc "system" (device: Device, swapchain: Swapchain, sleep_mode_info: ^Latency_Sleep_Mode_Info, ) -> Result
Proc_Set_Local_Dimming :: #type proc "system" (device: Device, swap_chain: Swapchain, local_dimming_enable: b32, )
Proc_Set_Private_Data :: #type proc "system" (device: Device, object_type: Object_Type, object_handle: u64, private_data_slot: Private_Data_Slot, data: u64, ) -> Result
Proc_Signal_Semaphore :: #type proc "system" (device: Device, signal_info: ^Semaphore_Signal_Info, ) -> Result
Proc_Transition_Image_Layout :: #type proc "system" (device: Device, transition_count: u32, transitions: [^]Host_Image_Layout_Transition_Info, ) -> Result
Proc_Trim_Command_Pool :: #type proc "system" (device: Device, command_pool: Command_Pool, flags: Command_Pool_Trim_Flags, )
Proc_Uninitialize_Performance_Api_Intel :: #type proc "system" (device: Device, )
Proc_Unmap_Memory :: #type proc "system" (device: Device, memory: Device_Memory, )
Proc_Unmap_Memory_2 :: #type proc "system" (device: Device, memory_unmap_info: ^Memory_Unmap_Info, ) -> Result
Proc_Update_Descriptor_Set_With_Template :: #type proc "system" (device: Device, descriptor_set: Descriptor_Set, descriptor_update_template: Descriptor_Update_Template, data: rawptr, )
Proc_Update_Descriptor_Sets :: #type proc "system" (device: Device, descriptor_write_count: u32, descriptor_writes: [^]Write_Descriptor_Set, descriptor_copy_count: u32, descriptor_copies: [^]Copy_Descriptor_Set, )
Proc_Update_Indirect_Execution_Set_Pipeline :: #type proc "system" (device: Device, indirect_execution_set: Indirect_Execution_Set, execution_set_write_count: u32, execution_set_writes: [^]Write_Indirect_Execution_Set_Pipeline, )
Proc_Update_Indirect_Execution_Set_Shader :: #type proc "system" (device: Device, indirect_execution_set: Indirect_Execution_Set, execution_set_write_count: u32, execution_set_writes: [^]Write_Indirect_Execution_Set_Shader, )
Proc_Update_Video_Session_Parameters :: #type proc "system" (device: Device, video_session_parameters: Video_Session_Parameters, update_info: ^Video_Session_Parameters_Update_Info, ) -> Result
Proc_Wait_For_Fences :: #type proc "system" (device: Device, fence_count: u32, fences: [^]Fence, wait_all: b32, timeout: u64, ) -> Result
Proc_Wait_For_Present :: #type proc "system" (device: Device, swapchain: Swapchain, present_id: u64, timeout: u64, ) -> Result
Proc_Wait_Semaphores :: #type proc "system" (device: Device, wait_info: ^Semaphore_Wait_Info, timeout: u64, ) -> Result
Proc_Write_Acceleration_Structures_Properties :: #type proc "system" (device: Device, acceleration_structure_count: u32, acceleration_structures: [^]Acceleration_Structure, query_type: Query_Type, data_size: int, data: [^]u8, stride: int, ) -> Result
Proc_Write_Micromaps_Properties :: #type proc "system" (device: Device, micromap_count: u32, micromaps: [^]Micromap, query_type: Query_Type, data_size: int, data: [^]u8, stride: int, ) -> Result

