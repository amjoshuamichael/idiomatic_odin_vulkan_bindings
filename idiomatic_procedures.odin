//
// Vulkan wrapper generated from "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/master/include/vulkan/vulkan_core.h"
//
package idiomatic_odin_vulkan_bindings


global_device: Device
set_global_device :: proc(device: Device) {
    global_device = device
}

global_instance: Instance
set_global_instance :: proc(instance: Instance) {
    global_instance = instance
}
import "core:c"

// Loader Procedure Helpers
create_instance :: #force_inline proc "system" (application_info: ^Application_Info, flags: Instance_Create_Flags = {}, enabled_layer_names: []cstring = {}, enabled_extension_names: []cstring = {}, allocator: ^Allocation_Callbacks = nil) -> (instance: Instance, result: Result) {
	result = raw_create_instance( &Instance_Create_Info { s_type = .Instance_Create_Info, flags = flags, application_info = application_info, enabled_layer_count = u32(len(enabled_layer_names)), enabled_layer_names = raw_data(enabled_layer_names), enabled_extension_count = u32(len(enabled_extension_names)), enabled_extension_names = raw_data(enabled_extension_names), }, allocator, &instance, )
	return
}

enumerate_instance_extension_properties :: #force_inline proc (layer_name: cstring = nil, allocator := context.allocator) -> (properties: []Extension_Properties, result: Result) {
	property_count: u32
	result = raw_enumerate_instance_extension_properties( layer_name, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Extension_Properties, property_count, allocator)
	result = raw_enumerate_instance_extension_properties( layer_name, &property_count, raw_data(properties), )
	return
}

enumerate_instance_layer_properties :: #force_inline proc (allocator := context.allocator) -> (properties: []Layer_Properties, result: Result) {
	property_count: u32
	result = raw_enumerate_instance_layer_properties( &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Layer_Properties, property_count, allocator)
	result = raw_enumerate_instance_layer_properties( &property_count, raw_data(properties), )
	return
}


// Misc Procedure Helpers
debug_report_callback :: #force_inline proc "system" (object_type: Debug_Report_Object_Type, object: u64, location: int, message_code: i32, layer_prefix: cstring, message: cstring, user_data: [^]u8, flags: Debug_Report_Flags = {}) -> b32 {
	return raw_debug_report_callback( flags, object_type, object, location, message_code, layer_prefix, message, user_data, )
}


// Instance Procedure Helpers
create_debug_report_callback :: #force_inline proc "system" (instance: Instance, _callback: Proc_Debug_Report_Callback, user_data: [^]u8, flags: Debug_Report_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (callback: Debug_Report_Callback, result: Result) {
	result = raw_create_debug_report_callback( instance, &Debug_Report_Callback_Create_Info { s_type = .Debug_Report_Callback_Create_Info, flags = flags, callback = _callback, user_data = user_data, }, allocator, &callback, )
	return
}

create_debug_utils_messenger :: #force_inline proc "system" (instance: Instance, message_severity: Debug_Utils_Message_Severity_Flags, message_type: Debug_Utils_Message_Type_Flags, user_callback: Proc_Debug_Utils_Messenger_Callback, user_data: [^]u8, flags: Debug_Utils_Messenger_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (messenger: Debug_Utils_Messenger, result: Result) {
	result = raw_create_debug_utils_messenger( instance, &Debug_Utils_Messenger_Create_Info { s_type = .Debug_Utils_Messenger_Create_Info, flags = flags, message_severity = message_severity, message_type = message_type, user_callback = user_callback, user_data = user_data, }, allocator, &messenger, )
	return
}

create_device :: #force_inline proc "system" (physical_device: Physical_Device, enabled_features: ^Physical_Device_Features, flags: Device_Create_Flags = {}, queue_create_infos: []Device_Queue_Create_Info = {}, enabled_layer_names: []cstring = {}, enabled_extension_names: []cstring = {}, allocator: ^Allocation_Callbacks = nil) -> (device: Device, result: Result) {
	result = raw_create_device( physical_device, &Device_Create_Info { s_type = .Device_Create_Info, flags = flags, queue_create_info_count = u32(len(queue_create_infos)), queue_create_infos = raw_data(queue_create_infos), enabled_layer_count = u32(len(enabled_layer_names)), enabled_layer_names = raw_data(enabled_layer_names), enabled_extension_count = u32(len(enabled_extension_names)), enabled_extension_names = raw_data(enabled_extension_names), enabled_features = enabled_features, }, allocator, &device, )
	return
}

create_display_mode :: #force_inline proc "system" (physical_device: Physical_Device, display: Display, parameters: Display_Mode_Parameters, flags: Display_Mode_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (mode: Display_Mode, result: Result) {
	result = raw_create_display_mode( physical_device, display, &Display_Mode_Create_Info { s_type = .Display_Mode_Create_Info, flags = flags, parameters = parameters, }, allocator, &mode, )
	return
}

create_display_plane_surface :: #force_inline proc "system" (instance: Instance, create_info: ^Display_Surface_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (surface: Surface, result: Result) {
	result = raw_create_display_plane_surface( instance, create_info, allocator, &surface, )
	return
}

create_headless_surface :: #force_inline proc "system" (instance: Instance, flags: Headless_Surface_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (surface: Surface, result: Result) {
	result = raw_create_headless_surface( instance, &Headless_Surface_Create_Info { s_type = .Headless_Surface_Create_Info, flags = flags, }, allocator, &surface, )
	return
}

create_iossurface_mvk :: #force_inline proc "system" (instance: Instance, view: rawptr, flags: Ios_Surface_Create_Flags_Mvk = {}, allocator: ^Allocation_Callbacks = nil) -> (surface: Surface, result: Result) {
	result = raw_create_iossurface_mvk( instance, &Ios_Surface_Create_Info_Mvk { s_type = .Ios_Surface_Create_Info_Mvk, flags = flags, view = view, }, allocator, &surface, )
	return
}

create_mac_ossurface_mvk :: #force_inline proc "system" (instance: Instance, view: rawptr, flags: Macos_Surface_Create_Flags_Mvk = {}, allocator: ^Allocation_Callbacks = nil) -> (surface: Surface, result: Result) {
	result = raw_create_mac_ossurface_mvk( instance, &Macos_Surface_Create_Info_Mvk { s_type = .Macos_Surface_Create_Info_Mvk, flags = flags, view = view, }, allocator, &surface, )
	return
}

create_metal_surface :: #force_inline proc "system" (instance: Instance, layer: ^Cametal_Layer, flags: Metal_Surface_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (surface: Surface, result: Result) {
	result = raw_create_metal_surface( instance, &Metal_Surface_Create_Info { s_type = .Metal_Surface_Create_Info, flags = flags, layer = layer, }, allocator, &surface, )
	return
}

create_wayland_surface :: #force_inline proc "system" (instance: Instance, display: ^wl_display, _surface: ^wl_surface, flags: Wayland_Surface_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (surface: Surface, result: Result) {
	result = raw_create_wayland_surface( instance, &Wayland_Surface_Create_Info { s_type = .Wayland_Surface_Create_Info, flags = flags, display = display, surface = _surface, }, allocator, &surface, )
	return
}

create_win32_surface :: #force_inline proc "system" (instance: Instance, hinstance: HINSTANCE, hwnd: HWND, flags: Win32_Surface_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (surface: Surface, result: Result) {
	result = raw_create_win32_surface( instance, &Win32_Surface_Create_Info { s_type = .Win32_Surface_Create_Info, flags = flags, hinstance = hinstance, hwnd = hwnd, }, allocator, &surface, )
	return
}

debug_report_message :: #force_inline proc "system" (instance: Instance, object_type: Debug_Report_Object_Type, object: u64, location: int, message_code: i32, layer_prefix: cstring, message: cstring, flags: Debug_Report_Flags = {}) {
	raw_debug_report_message( instance, flags, object_type, object, location, message_code, layer_prefix, message, )
}

destroy_debug_report_callback :: #force_inline proc "system" (instance: Instance, callback: Debug_Report_Callback, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_debug_report_callback( instance, callback, allocator, )
}

destroy_debug_utils_messenger :: #force_inline proc "system" (instance: Instance, messenger: Debug_Utils_Messenger, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_debug_utils_messenger( instance, messenger, allocator, )
}

destroy_instance :: #force_inline proc "system" (instance: Instance, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_instance( instance, allocator, )
}

destroy_surface :: #force_inline proc "system" (instance: Instance, surface: Surface, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_surface( instance, surface, allocator, )
}

enumerate_device_extension_properties :: #force_inline proc (physical_device: Physical_Device, layer_name: cstring = nil, allocator := context.allocator) -> (properties: []Extension_Properties, result: Result) {
	property_count: u32
	result = raw_enumerate_device_extension_properties( physical_device, layer_name, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Extension_Properties, property_count, allocator)
	result = raw_enumerate_device_extension_properties( physical_device, layer_name, &property_count, raw_data(properties), )
	return
}

enumerate_device_layer_properties :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (properties: []Layer_Properties, result: Result) {
	property_count: u32
	result = raw_enumerate_device_layer_properties( physical_device, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Layer_Properties, property_count, allocator)
	result = raw_enumerate_device_layer_properties( physical_device, &property_count, raw_data(properties), )
	return
}

enumerate_physical_device_groups :: #force_inline proc (instance: Instance, allocator := context.allocator) -> (physical_device_group_properties: []Physical_Device_Group_Properties, result: Result) {
	physical_device_group_count: u32
	result = raw_enumerate_physical_device_groups( instance, &physical_device_group_count, nil, )
	if result != .Success || physical_device_group_count == 0 do return
	physical_device_group_properties = make([]Physical_Device_Group_Properties, physical_device_group_count, allocator)
	result = raw_enumerate_physical_device_groups( instance, &physical_device_group_count, raw_data(physical_device_group_properties), )
	return
}

enumerate_physical_devices :: #force_inline proc (instance: Instance, allocator := context.allocator) -> (physical_devices: []Physical_Device, result: Result) {
	physical_device_count: u32
	result = raw_enumerate_physical_devices( instance, &physical_device_count, nil, )
	if result != .Success || physical_device_count == 0 do return
	physical_devices = make([]Physical_Device, physical_device_count, allocator)
	result = raw_enumerate_physical_devices( instance, &physical_device_count, raw_data(physical_devices), )
	return
}

get_display_mode_properties :: #force_inline proc (physical_device: Physical_Device, display: Display, allocator := context.allocator) -> (properties: []Display_Mode_Properties, result: Result) {
	property_count: u32
	result = raw_get_display_mode_properties( physical_device, display, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Display_Mode_Properties, property_count, allocator)
	result = raw_get_display_mode_properties( physical_device, display, &property_count, raw_data(properties), )
	return
}

get_display_mode_properties2 :: #force_inline proc (physical_device: Physical_Device, display: Display, allocator := context.allocator) -> (properties: []Display_Mode_Properties_2, result: Result) {
	property_count: u32
	result = raw_get_display_mode_properties2( physical_device, display, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Display_Mode_Properties_2, property_count, allocator)
	result = raw_get_display_mode_properties2( physical_device, display, &property_count, raw_data(properties), )
	return
}

get_display_plane_capabilities :: #force_inline proc "system" (physical_device: Physical_Device, mode: Display_Mode, plane_index: u32) -> (capabilities: Display_Plane_Capabilities, result: Result) {
	result = raw_get_display_plane_capabilities( physical_device, mode, plane_index, &capabilities, )
	return
}

get_display_plane_capabilities2 :: #force_inline proc "system" (physical_device: Physical_Device, mode: Display_Mode, plane_index: u32) -> (capabilities: Display_Plane_Capabilities_2, result: Result) {
	result = raw_get_display_plane_capabilities2( physical_device, &Display_Plane_Info_2 { s_type = .Display_Plane_Info_2, mode = mode, plane_index = plane_index, }, &capabilities, )
	return
}

get_display_plane_supported_displays :: #force_inline proc (physical_device: Physical_Device, plane_index: u32, allocator := context.allocator) -> (displays: []Display, result: Result) {
	display_count: u32
	result = raw_get_display_plane_supported_displays( physical_device, plane_index, &display_count, nil, )
	if result != .Success || display_count == 0 do return
	displays = make([]Display, display_count, allocator)
	result = raw_get_display_plane_supported_displays( physical_device, plane_index, &display_count, raw_data(displays), )
	return
}

get_drm_display :: #force_inline proc "system" (physical_device: Physical_Device, drm_fd: i32, connector_id: u32) -> (display: Display, result: Result) {
	result = raw_get_drm_display( physical_device, drm_fd, connector_id, &display, )
	return
}

get_physical_device_calibrateable_time_domains :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (time_domains: []Time_Domain, result: Result) {
	time_domain_count: u32
	result = raw_get_physical_device_calibrateable_time_domains( physical_device, &time_domain_count, nil, )
	if result != .Success || time_domain_count == 0 do return
	time_domains = make([]Time_Domain, time_domain_count, allocator)
	result = raw_get_physical_device_calibrateable_time_domains( physical_device, &time_domain_count, raw_data(time_domains), )
	return
}

get_physical_device_cooperative_mat_flexible_dimensions_properties :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (properties: []Cooperative_Matrix_Flexible_Dimensions_Properties, result: Result) {
	property_count: u32
	result = raw_get_physical_device_cooperative_mat_flexible_dimensions_properties( physical_device, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Cooperative_Matrix_Flexible_Dimensions_Properties, property_count, allocator)
	result = raw_get_physical_device_cooperative_mat_flexible_dimensions_properties( physical_device, &property_count, raw_data(properties), )
	return
}

get_physical_device_cooperative_mat_properties :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (properties: []Cooperative_Matrix_Properties, result: Result) {
	property_count: u32
	result = raw_get_physical_device_cooperative_mat_properties( physical_device, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Cooperative_Matrix_Properties, property_count, allocator)
	result = raw_get_physical_device_cooperative_mat_properties( physical_device, &property_count, raw_data(properties), )
	return
}

get_physical_device_display_plane_properties :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (properties: []Display_Plane_Properties, result: Result) {
	property_count: u32
	result = raw_get_physical_device_display_plane_properties( physical_device, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Display_Plane_Properties, property_count, allocator)
	result = raw_get_physical_device_display_plane_properties( physical_device, &property_count, raw_data(properties), )
	return
}

get_physical_device_display_plane_properties2 :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (properties: []Display_Plane_Properties_2, result: Result) {
	property_count: u32
	result = raw_get_physical_device_display_plane_properties2( physical_device, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Display_Plane_Properties_2, property_count, allocator)
	result = raw_get_physical_device_display_plane_properties2( physical_device, &property_count, raw_data(properties), )
	return
}

get_physical_device_display_properties :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (properties: []Display_Properties, result: Result) {
	property_count: u32
	result = raw_get_physical_device_display_properties( physical_device, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Display_Properties, property_count, allocator)
	result = raw_get_physical_device_display_properties( physical_device, &property_count, raw_data(properties), )
	return
}

get_physical_device_display_properties2 :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (properties: []Display_Properties_2, result: Result) {
	property_count: u32
	result = raw_get_physical_device_display_properties2( physical_device, &property_count, nil, )
	if result != .Success || property_count == 0 do return
	properties = make([]Display_Properties_2, property_count, allocator)
	result = raw_get_physical_device_display_properties2( physical_device, &property_count, raw_data(properties), )
	return
}

get_physical_device_external_buffer_properties :: #force_inline proc "system" (physical_device: Physical_Device, usage: Buffer_Usage_Flags, handle_type: External_Memory_Handle_Type_Flags, flags: Buffer_Create_Flags = {}) -> (external_buffer_properties: External_Buffer_Properties) {
	raw_get_physical_device_external_buffer_properties( physical_device, &Physical_Device_External_Buffer_Info { s_type = .Physical_Device_External_Buffer_Info, flags = flags, usage = usage, handle_type = handle_type, }, &external_buffer_properties, )
	return
}

get_physical_device_external_fence_properties :: #force_inline proc "system" (physical_device: Physical_Device, handle_type: External_Fence_Handle_Type_Flags) -> (external_fence_properties: External_Fence_Properties) {
	raw_get_physical_device_external_fence_properties( physical_device, &Physical_Device_External_Fence_Info { s_type = .Physical_Device_External_Fence_Info, handle_type = handle_type, }, &external_fence_properties, )
	return
}

get_physical_device_external_image_format_properties :: #force_inline proc "system" (physical_device: Physical_Device, format: Format, type: Image_Type, tiling: Image_Tiling, usage: Image_Usage_Flags, external_handle_type: External_Memory_Handle_Type_Flags, flags: Image_Create_Flags = {}) -> (external_image_format_properties: External_Image_Format_Properties, result: Result) {
	result = raw_get_physical_device_external_image_format_properties( physical_device, format, type, tiling, usage, flags, external_handle_type, &external_image_format_properties, )
	return
}

get_physical_device_external_semaphore_properties :: #force_inline proc "system" (physical_device: Physical_Device, handle_type: External_Semaphore_Handle_Type_Flags) -> (external_semaphore_properties: External_Semaphore_Properties) {
	raw_get_physical_device_external_semaphore_properties( physical_device, &Physical_Device_External_Semaphore_Info { s_type = .Physical_Device_External_Semaphore_Info, handle_type = handle_type, }, &external_semaphore_properties, )
	return
}

get_physical_device_features :: #force_inline proc "system" (physical_device: Physical_Device) -> (features: Physical_Device_Features) {
	raw_get_physical_device_features( physical_device, &features, )
	return
}

get_physical_device_features2 :: #force_inline proc "system" (physical_device: Physical_Device) -> (features: Physical_Device_Features_2) {
	raw_get_physical_device_features2( physical_device, &features, )
	return
}

get_physical_device_format_properties :: #force_inline proc "system" (physical_device: Physical_Device, format: Format) -> (format_properties: Format_Properties) {
	raw_get_physical_device_format_properties( physical_device, format, &format_properties, )
	return
}

get_physical_device_format_properties2 :: #force_inline proc "system" (physical_device: Physical_Device, format: Format) -> (format_properties: Format_Properties_2) {
	raw_get_physical_device_format_properties2( physical_device, format, &format_properties, )
	return
}

get_physical_device_fragment_shading_rates :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (fragment_shading_rates: []Physical_Device_Fragment_Shading_Rate, result: Result) {
	fragment_shading_rate_count: u32
	result = raw_get_physical_device_fragment_shading_rates( physical_device, &fragment_shading_rate_count, nil, )
	if result != .Success || fragment_shading_rate_count == 0 do return
	fragment_shading_rates = make([]Physical_Device_Fragment_Shading_Rate, fragment_shading_rate_count, allocator)
	result = raw_get_physical_device_fragment_shading_rates( physical_device, &fragment_shading_rate_count, raw_data(fragment_shading_rates), )
	return
}

get_physical_device_image_format_properties :: #force_inline proc "system" (physical_device: Physical_Device, format: Format, type: Image_Type, tiling: Image_Tiling, usage: Image_Usage_Flags, flags: Image_Create_Flags = {}) -> (image_format_properties: Image_Format_Properties, result: Result) {
	result = raw_get_physical_device_image_format_properties( physical_device, format, type, tiling, usage, flags, &image_format_properties, )
	return
}

get_physical_device_image_format_properties2 :: #force_inline proc "system" (physical_device: Physical_Device, image_format_info: ^Physical_Device_Image_Format_Info_2) -> (image_format_properties: Image_Format_Properties_2, result: Result) {
	result = raw_get_physical_device_image_format_properties2( physical_device, image_format_info, &image_format_properties, )
	return
}

get_physical_device_memory_properties :: #force_inline proc "system" (physical_device: Physical_Device) -> (memory_properties: Physical_Device_Memory_Properties) {
	raw_get_physical_device_memory_properties( physical_device, &memory_properties, )
	return
}

get_physical_device_memory_properties2 :: #force_inline proc "system" (physical_device: Physical_Device) -> (memory_properties: Physical_Device_Memory_Properties_2) {
	raw_get_physical_device_memory_properties2( physical_device, &memory_properties, )
	return
}

get_physical_device_multisample_properties :: #force_inline proc "system" (physical_device: Physical_Device, samples: Sample_Count_Flags) -> (multisample_properties: Multisample_Properties) {
	raw_get_physical_device_multisample_properties( physical_device, samples, &multisample_properties, )
	return
}

get_physical_device_optical_flow_image_formats :: #force_inline proc (physical_device: Physical_Device, usage: Optical_Flow_Usage_Flags, allocator := context.allocator) -> (image_format_properties: []Optical_Flow_Image_Format_Properties, result: Result) {
	format_count: u32
	result = raw_get_physical_device_optical_flow_image_formats( physical_device, &Optical_Flow_Image_Format_Info { s_type = .Optical_Flow_Image_Format_Info, usage = usage, }, &format_count, nil, )
	if result != .Success || format_count == 0 do return
	image_format_properties = make([]Optical_Flow_Image_Format_Properties, format_count, allocator)
	result = raw_get_physical_device_optical_flow_image_formats( physical_device, &Optical_Flow_Image_Format_Info { s_type = .Optical_Flow_Image_Format_Info, usage = usage, }, &format_count, raw_data(image_format_properties), )
	return
}

get_physical_device_present_rectangles :: #force_inline proc (physical_device: Physical_Device, surface: Surface, allocator := context.allocator) -> (rects: []Rect_2D, result: Result) {
	rect_count: u32
	result = raw_get_physical_device_present_rectangles( physical_device, surface, &rect_count, nil, )
	if result != .Success || rect_count == 0 do return
	rects = make([]Rect_2D, rect_count, allocator)
	result = raw_get_physical_device_present_rectangles( physical_device, surface, &rect_count, raw_data(rects), )
	return
}

get_physical_device_properties :: #force_inline proc "system" (physical_device: Physical_Device) -> (properties: Physical_Device_Properties) {
	raw_get_physical_device_properties( physical_device, &properties, )
	return
}

get_physical_device_properties2 :: #force_inline proc "system" (physical_device: Physical_Device) -> (properties: Physical_Device_Properties_2) {
	raw_get_physical_device_properties2( physical_device, &properties, )
	return
}

get_physical_device_queue_family_performance_query_passes :: #force_inline proc "system" (physical_device: Physical_Device, queue_family_index: u32, counter_indices: []u32, num_passes: ^u32) {
	raw_get_physical_device_queue_family_performance_query_passes( physical_device, &Query_Pool_Performance_Create_Info { s_type = .Query_Pool_Performance_Create_Info, queue_family_index = queue_family_index, counter_index_count = u32(len(counter_indices)), counter_indices = raw_data(counter_indices), }, num_passes, )
}

get_physical_device_queue_family_properties :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (queue_family_properties: []Queue_Family_Properties) {
	queue_family_property_count: u32
	raw_get_physical_device_queue_family_properties( physical_device, &queue_family_property_count, nil, )
	if queue_family_property_count == 0 do return
	queue_family_properties = make([]Queue_Family_Properties, queue_family_property_count, allocator)
	raw_get_physical_device_queue_family_properties( physical_device, &queue_family_property_count, raw_data(queue_family_properties), )
	return
}

get_physical_device_queue_family_properties2 :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (queue_family_properties: []Queue_Family_Properties_2) {
	queue_family_property_count: u32
	raw_get_physical_device_queue_family_properties2( physical_device, &queue_family_property_count, nil, )
	if queue_family_property_count == 0 do return
	queue_family_properties = make([]Queue_Family_Properties_2, queue_family_property_count, allocator)
	raw_get_physical_device_queue_family_properties2( physical_device, &queue_family_property_count, raw_data(queue_family_properties), )
	return
}

get_physical_device_sparse_image_format_properties :: #force_inline proc (physical_device: Physical_Device, format: Format, type: Image_Type, samples: Sample_Count_Flags, usage: Image_Usage_Flags, tiling: Image_Tiling, allocator := context.allocator) -> (properties: []Sparse_Image_Format_Properties) {
	property_count: u32
	raw_get_physical_device_sparse_image_format_properties( physical_device, format, type, samples, usage, tiling, &property_count, nil, )
	if property_count == 0 do return
	properties = make([]Sparse_Image_Format_Properties, property_count, allocator)
	raw_get_physical_device_sparse_image_format_properties( physical_device, format, type, samples, usage, tiling, &property_count, raw_data(properties), )
	return
}

get_physical_device_sparse_image_format_properties2 :: #force_inline proc (physical_device: Physical_Device, format_info: ^Physical_Device_Sparse_Image_Format_Info_2, allocator := context.allocator) -> (properties: []Sparse_Image_Format_Properties_2) {
	property_count: u32
	raw_get_physical_device_sparse_image_format_properties2( physical_device, format_info, &property_count, nil, )
	if property_count == 0 do return
	properties = make([]Sparse_Image_Format_Properties_2, property_count, allocator)
	raw_get_physical_device_sparse_image_format_properties2( physical_device, format_info, &property_count, raw_data(properties), )
	return
}

get_physical_device_supported_framebuffer_mixed_samples_combinations :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (combinations: []Framebuffer_Mixed_Samples_Combination, result: Result) {
	combination_count: u32
	result = raw_get_physical_device_supported_framebuffer_mixed_samples_combinations( physical_device, &combination_count, nil, )
	if result != .Success || combination_count == 0 do return
	combinations = make([]Framebuffer_Mixed_Samples_Combination, combination_count, allocator)
	result = raw_get_physical_device_supported_framebuffer_mixed_samples_combinations( physical_device, &combination_count, raw_data(combinations), )
	return
}

get_physical_device_surface_capabilities :: #force_inline proc "system" (physical_device: Physical_Device, surface: Surface) -> (surface_capabilities: Surface_Capabilities, result: Result) {
	result = raw_get_physical_device_surface_capabilities( physical_device, surface, &surface_capabilities, )
	return
}

get_physical_device_surface_capabilities2 :: #force_inline proc "system" (physical_device: Physical_Device, _surface: Surface) -> (surface_capabilities: Surface_Capabilities_2, result: Result) {
	result = raw_get_physical_device_surface_capabilities2( physical_device, &Physical_Device_Surface_Info_2 { s_type = .Physical_Device_Surface_Info_2, surface = _surface, }, &surface_capabilities, )
	return
}

get_physical_device_surface_formats :: #force_inline proc (physical_device: Physical_Device, surface: Surface, allocator := context.allocator) -> (surface_formats: []Surface_Format, result: Result) {
	surface_format_count: u32
	result = raw_get_physical_device_surface_formats( physical_device, surface, &surface_format_count, nil, )
	if result != .Success || surface_format_count == 0 do return
	surface_formats = make([]Surface_Format, surface_format_count, allocator)
	result = raw_get_physical_device_surface_formats( physical_device, surface, &surface_format_count, raw_data(surface_formats), )
	return
}

get_physical_device_surface_formats2 :: #force_inline proc (physical_device: Physical_Device, _surface: Surface, allocator := context.allocator) -> (surface_formats: []Surface_Format_2, result: Result) {
	surface_format_count: u32
	result = raw_get_physical_device_surface_formats2( physical_device, &Physical_Device_Surface_Info_2 { s_type = .Physical_Device_Surface_Info_2, surface = _surface, }, &surface_format_count, nil, )
	if result != .Success || surface_format_count == 0 do return
	surface_formats = make([]Surface_Format_2, surface_format_count, allocator)
	result = raw_get_physical_device_surface_formats2( physical_device, &Physical_Device_Surface_Info_2 { s_type = .Physical_Device_Surface_Info_2, surface = _surface, }, &surface_format_count, raw_data(surface_formats), )
	return
}

get_physical_device_surface_present_modes :: #force_inline proc (physical_device: Physical_Device, surface: Surface, allocator := context.allocator) -> (present_modes: []Present_Mode, result: Result) {
	present_mode_count: u32
	result = raw_get_physical_device_surface_present_modes( physical_device, surface, &present_mode_count, nil, )
	if result != .Success || present_mode_count == 0 do return
	present_modes = make([]Present_Mode, present_mode_count, allocator)
	result = raw_get_physical_device_surface_present_modes( physical_device, surface, &present_mode_count, raw_data(present_modes), )
	return
}

get_physical_device_surface_present_modes2 :: #force_inline proc (physical_device: Physical_Device, _surface: Surface, allocator := context.allocator) -> (present_modes: []Present_Mode, result: Result) {
	present_mode_count: u32
	result = raw_get_physical_device_surface_present_modes2( physical_device, &Physical_Device_Surface_Info_2 { s_type = .Physical_Device_Surface_Info_2, surface = _surface, }, &present_mode_count, nil, )
	if result != .Success || present_mode_count == 0 do return
	present_modes = make([]Present_Mode, present_mode_count, allocator)
	result = raw_get_physical_device_surface_present_modes2( physical_device, &Physical_Device_Surface_Info_2 { s_type = .Physical_Device_Surface_Info_2, surface = _surface, }, &present_mode_count, raw_data(present_modes), )
	return
}

get_physical_device_surface_support :: #force_inline proc "system" (physical_device: Physical_Device, queue_family_index: u32, surface: Surface) -> (supported: b32, result: Result) {
	result = raw_get_physical_device_surface_support( physical_device, queue_family_index, surface, &supported, )
	return
}

get_physical_device_tool_properties :: #force_inline proc (physical_device: Physical_Device, allocator := context.allocator) -> (tool_properties: []Physical_Device_Tool_Properties, result: Result) {
	tool_count: u32
	result = raw_get_physical_device_tool_properties( physical_device, &tool_count, nil, )
	if result != .Success || tool_count == 0 do return
	tool_properties = make([]Physical_Device_Tool_Properties, tool_count, allocator)
	result = raw_get_physical_device_tool_properties( physical_device, &tool_count, raw_data(tool_properties), )
	return
}

get_physical_device_video_capabilities :: #force_inline proc "system" (physical_device: Physical_Device, video_codec_operation: Video_Codec_Operation_Flags, chroma_subsampling: Video_Chroma_Subsampling_Flags, luma_bit_depth: Video_Component_Bit_Depth_Flags, chroma_bit_depth: Video_Component_Bit_Depth_Flags) -> (capabilities: Video_Capabilities, result: Result) {
	result = raw_get_physical_device_video_capabilities( physical_device, &Video_Profile_Info { s_type = .Video_Profile_Info, video_codec_operation = video_codec_operation, chroma_subsampling = chroma_subsampling, luma_bit_depth = luma_bit_depth, chroma_bit_depth = chroma_bit_depth, }, &capabilities, )
	return
}

get_physical_device_video_encode_quality_level_properties :: #force_inline proc "system" (physical_device: Physical_Device, video_profile: ^Video_Profile_Info, _quality_level: u32) -> (quality_level_properties: Video_Encode_Quality_Level_Properties, result: Result) {
	result = raw_get_physical_device_video_encode_quality_level_properties( physical_device, &Physical_Device_Video_Encode_Quality_Level_Info { s_type = .Physical_Device_Video_Encode_Quality_Level_Info, video_profile = video_profile, quality_level = _quality_level, }, &quality_level_properties, )
	return
}

get_physical_device_video_format_properties :: #force_inline proc (physical_device: Physical_Device, image_usage: Image_Usage_Flags, allocator := context.allocator) -> (video_format_properties: []Video_Format_Properties, result: Result) {
	video_format_property_count: u32
	result = raw_get_physical_device_video_format_properties( physical_device, &Physical_Device_Video_Format_Info { s_type = .Physical_Device_Video_Format_Info, image_usage = image_usage, }, &video_format_property_count, nil, )
	if result != .Success || video_format_property_count == 0 do return
	video_format_properties = make([]Video_Format_Properties, video_format_property_count, allocator)
	result = raw_get_physical_device_video_format_properties( physical_device, &Physical_Device_Video_Format_Info { s_type = .Physical_Device_Video_Format_Info, image_usage = image_usage, }, &video_format_property_count, raw_data(video_format_properties), )
	return
}

get_physical_device_wayland_presentation_support :: #force_inline proc "system" (physical_device: Physical_Device, queue_family_index: u32) -> (display: wl_display, b32: b32) {
	b32 = raw_get_physical_device_wayland_presentation_support( physical_device, queue_family_index, &display, )
	return
}

get_winrt_display :: #force_inline proc "system" (physical_device: Physical_Device, device_relative_id: u32) -> (display: Display, result: Result) {
	result = raw_get_winrt_display( physical_device, device_relative_id, &display, )
	return
}


// Device Procedure Helpers
acquire_full_screen_exclusive_mode :: #force_inline proc "system" ( swapchain: Swapchain) -> Result {
	return raw_acquire_full_screen_exclusive_mode( global_device, swapchain, )
}

acquire_next_image :: #force_inline proc "system" ( swapchain: Swapchain, timeout: u64, semaphore: Semaphore, fence: Fence) -> (image_index: u32, result: Result) {
	result = raw_acquire_next_image( global_device, swapchain, timeout, semaphore, fence, &image_index, )
	return
}

acquire_next_image2 :: #force_inline proc "system" ( acquire_info: ^Acquire_Next_Image_Info) -> (image_index: u32, result: Result) {
	result = raw_acquire_next_image2( global_device, acquire_info, &image_index, )
	return
}

acquire_performance_configuration_intel :: #force_inline proc "system" ( type: Performance_Configuration_Type_Intel) -> (configuration: Performance_Configuration_Intel, result: Result) {
	result = raw_acquire_performance_configuration_intel( global_device, &Performance_Configuration_Acquire_Info_Intel { s_type = .Performance_Configuration_Acquire_Info_Intel, type = type, }, &configuration, )
	return
}

acquire_profiling_lock :: #force_inline proc "system" ( ) -> (info: Acquire_Profiling_Lock_Info, result: Result) {
	result = raw_acquire_profiling_lock( global_device, &info, )
	return
}

allocate_command_buffers :: #force_inline proc "system" ( command_pool: Command_Pool, level: Command_Buffer_Level, command_buffer_count: u32, command_buffers: ^Command_Buffer) -> Result {
	return raw_allocate_command_buffers( global_device, &Command_Buffer_Allocate_Info { s_type = .Command_Buffer_Allocate_Info, command_pool = command_pool, level = level, command_buffer_count = command_buffer_count, }, command_buffers, )
}

allocate_descriptor_sets :: #force_inline proc "system" ( descriptor_pool: Descriptor_Pool, descriptor_set_count: u32, set_layouts: [^]Descriptor_Set_Layout, descriptor_sets: ^Descriptor_Set) -> Result {
	return raw_allocate_descriptor_sets( global_device, &Descriptor_Set_Allocate_Info { s_type = .Descriptor_Set_Allocate_Info, descriptor_pool = descriptor_pool, descriptor_set_count = descriptor_set_count, set_layouts = set_layouts, }, descriptor_sets, )
}

allocate_memory :: #force_inline proc "system" ( allocation_size: Device_Size, memory_type_index: u32, allocator: ^Allocation_Callbacks = nil) -> (memory: Device_Memory, result: Result) {
	result = raw_allocate_memory( global_device, &Memory_Allocate_Info { s_type = .Memory_Allocate_Info, allocation_size = allocation_size, memory_type_index = memory_type_index, }, allocator, &memory, )
	return
}

anti_lag_update :: #force_inline proc "system" ( data: ^Anti_Lag_Data) {
	raw_anti_lag_update( global_device, data, )
}

begin_command_buffer :: #force_inline proc "system" (command_buffer: Command_Buffer, inheritance_info: ^Command_Buffer_Inheritance_Info, flags: Command_Buffer_Usage_Flags = {}) -> Result {
	return raw_begin_command_buffer( command_buffer, &Command_Buffer_Begin_Info { s_type = .Command_Buffer_Begin_Info, flags = flags, inheritance_info = inheritance_info, }, )
}

bind_acceleration_structure_memory :: #force_inline proc "system" ( bind_infos: []Bind_Acceleration_Structure_Memory_Info) -> Result {
	return raw_bind_acceleration_structure_memory( global_device, u32(len(bind_infos)), raw_data(bind_infos), )
}

bind_buffer_memory :: #force_inline proc "system" ( buffer: Buffer, memory: Device_Memory, memory_offset: Device_Size = 0) -> Result {
	return raw_bind_buffer_memory( global_device, buffer, memory, memory_offset, )
}

bind_buffer_memory2 :: #force_inline proc "system" ( bind_infos: []Bind_Buffer_Memory_Info) -> Result {
	return raw_bind_buffer_memory2( global_device, u32(len(bind_infos)), raw_data(bind_infos), )
}

bind_image_memory :: #force_inline proc "system" ( image: Image, memory: Device_Memory, memory_offset: Device_Size = 0) -> Result {
	return raw_bind_image_memory( global_device, image, memory, memory_offset, )
}

bind_image_memory2 :: #force_inline proc "system" ( bind_infos: []Bind_Image_Memory_Info) -> Result {
	return raw_bind_image_memory2( global_device, u32(len(bind_infos)), raw_data(bind_infos), )
}

bind_optical_flow_session_image :: #force_inline proc "system" ( session: Optical_Flow_Session, binding_point: Optical_Flow_Session_Binding_Point, view: Image_View, layout: Image_Layout) -> Result {
	return raw_bind_optical_flow_session_image( global_device, session, binding_point, view, layout, )
}

bind_video_session_memory :: #force_inline proc "system" ( video_session: Video_Session, bind_session_memory_infos: []Bind_Video_Session_Memory_Info) -> Result {
	return raw_bind_video_session_memory( global_device, video_session, u32(len(bind_session_memory_infos)), raw_data(bind_session_memory_infos), )
}

build_acceleration_structures :: #force_inline proc "system" ( deferred_operation: Deferred_Operation, infos: []Acceleration_Structure_Build_Geometry_Info, build_range_infos: ^[^]Acceleration_Structure_Build_Range_Info) -> Result {
	return raw_build_acceleration_structures( global_device, deferred_operation, u32(len(infos)), raw_data(infos), build_range_infos, )
}

build_micromaps :: #force_inline proc "system" ( deferred_operation: Deferred_Operation, infos: []Micromap_Build_Info) -> Result {
	return raw_build_micromaps( global_device, deferred_operation, u32(len(infos)), raw_data(infos), )
}

cmd_begin_conditional_rendering :: #force_inline proc "system" (command_buffer: Command_Buffer, _buffer: Buffer, offset: Device_Size, flags: Conditional_Rendering_Flags = {}) {
	raw_cmd_begin_conditional_rendering( command_buffer, &Conditional_Rendering_Begin_Info { s_type = .Conditional_Rendering_Begin_Info, buffer = _buffer, offset = offset, flags = flags, }, )
}

cmd_begin_debug_utils_label :: #force_inline proc "system" (command_buffer: Command_Buffer, label_name: cstring, color: [4]f32) {
	raw_cmd_begin_debug_utils_label( command_buffer, &Debug_Utils_Label { s_type = .Debug_Utils_Label, label_name = label_name, color = color, }, )
}

cmd_begin_query :: #force_inline proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, query: u32, flags: Query_Control_Flags = {}) {
	raw_cmd_begin_query( command_buffer, query_pool, query, flags, )
}

cmd_begin_query_indexed :: #force_inline proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, query: u32, index: u32, flags: Query_Control_Flags = {}) {
	raw_cmd_begin_query_indexed( command_buffer, query_pool, query, flags, index, )
}

cmd_begin_render_pass :: #force_inline proc "system" (command_buffer: Command_Buffer, _render_pass: Render_Pass, framebuffer: Framebuffer, render_area: Rect_2D, clear_values: []Clear_Value, contents: Subpass_Contents) {
	raw_cmd_begin_render_pass( command_buffer, &Render_Pass_Begin_Info { s_type = .Render_Pass_Begin_Info, render_pass = _render_pass, framebuffer = framebuffer, render_area = render_area, clear_value_count = u32(len(clear_values)), clear_values = raw_data(clear_values), }, contents, )
}

cmd_begin_render_pass2 :: #force_inline proc "system" (command_buffer: Command_Buffer, _render_pass: Render_Pass, framebuffer: Framebuffer, render_area: Rect_2D, clear_values: []Clear_Value, contents: Subpass_Contents) {
	raw_cmd_begin_render_pass2( command_buffer, &Render_Pass_Begin_Info { s_type = .Render_Pass_Begin_Info, render_pass = _render_pass, framebuffer = framebuffer, render_area = render_area, clear_value_count = u32(len(clear_values)), clear_values = raw_data(clear_values), }, &Subpass_Begin_Info { s_type = .Subpass_Begin_Info, contents = contents, }, )
}

cmd_begin_transform_feedback :: #force_inline proc "system" (command_buffer: Command_Buffer, first_counter_buffer: u32, counter_buffers: []Buffer, counter_buffer_offsets: ^Device_Size) {
	raw_cmd_begin_transform_feedback( command_buffer, first_counter_buffer, u32(len(counter_buffers)), raw_data(counter_buffers), counter_buffer_offsets, )
}

cmd_begin_video_coding :: #force_inline proc "system" (command_buffer: Command_Buffer, video_session: Video_Session, video_session_parameters: Video_Session_Parameters, reference_slots: []Video_Reference_Slot_Info, flags: Video_Begin_Coding_Flags = {}) {
	raw_cmd_begin_video_coding( command_buffer, &Video_Begin_Coding_Info { s_type = .Video_Begin_Coding_Info, flags = flags, video_session = video_session, video_session_parameters = video_session_parameters, reference_slot_count = u32(len(reference_slots)), reference_slots = raw_data(reference_slots), }, )
}

cmd_bind_descriptor_buffer_embedded_samplers2 :: #force_inline proc "system" (command_buffer: Command_Buffer, layout: Pipeline_Layout, set: u32, stage_flags: Shader_Stage_Flags = {}) {
	raw_cmd_bind_descriptor_buffer_embedded_samplers2( command_buffer, &Bind_Descriptor_Buffer_Embedded_Samplers_Info { s_type = .Bind_Descriptor_Buffer_Embedded_Samplers_Info, stage_flags = stage_flags, layout = layout, set = set, }, )
}

cmd_bind_descriptor_sets :: #force_inline proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, layout: Pipeline_Layout, first_set: u32, descriptor_sets: []Descriptor_Set = {}, dynamic_offsets: []u32 = {}) {
	raw_cmd_bind_descriptor_sets( command_buffer, pipeline_bind_point, layout, first_set, u32(len(descriptor_sets)), raw_data(descriptor_sets), u32(len(dynamic_offsets)), raw_data(dynamic_offsets), )
}

cmd_bind_shaders :: #force_inline proc "system" (command_buffer: Command_Buffer, stages: []Shader_Stage_Flags, shaders: ^Shader) {
	raw_cmd_bind_shaders( command_buffer, u32(len(stages)), raw_data(stages), shaders, )
}

cmd_blit_image :: #force_inline proc "system" (command_buffer: Command_Buffer, src_image: Image, src_image_layout: Image_Layout, dst_image: Image, dst_image_layout: Image_Layout, regions: []Image_Blit, filter: Filter) {
	raw_cmd_blit_image( command_buffer, src_image, src_image_layout, dst_image, dst_image_layout, u32(len(regions)), raw_data(regions), filter, )
}

cmd_build_acceleration_structure :: #force_inline proc "system" (command_buffer: Command_Buffer, type: Acceleration_Structure_Type, instance_count: u32, geometries: []Geometry, instance_data: Buffer, update: b32, dst: Acceleration_Structure, src: Acceleration_Structure, scratch: Buffer, flags: Build_Acceleration_Structure_Flags = {}, instance_offset: Device_Size = 0, scratch_offset: Device_Size = 0) {
	raw_cmd_build_acceleration_structure( command_buffer, &Acceleration_Structure_Info { s_type = .Acceleration_Structure_Info, type = type, flags = flags, instance_count = instance_count, geometry_count = u32(len(geometries)), geometries = raw_data(geometries), }, instance_data, instance_offset, update, dst, src, scratch, scratch_offset, )
}

cmd_build_acceleration_structures :: #force_inline proc "system" (command_buffer: Command_Buffer, infos: []Acceleration_Structure_Build_Geometry_Info, build_range_infos: ^[^]Acceleration_Structure_Build_Range_Info) {
	raw_cmd_build_acceleration_structures( command_buffer, u32(len(infos)), raw_data(infos), build_range_infos, )
}

cmd_build_acceleration_structures_indirect :: #force_inline proc "system" (command_buffer: Command_Buffer, infos: []Acceleration_Structure_Build_Geometry_Info, indirect_device_addresses: ^Device_Address, indirect_strides: ^u32, max_primitive_counts: ^[^]u32) {
	raw_cmd_build_acceleration_structures_indirect( command_buffer, u32(len(infos)), raw_data(infos), indirect_device_addresses, indirect_strides, max_primitive_counts, )
}

cmd_build_micromaps :: #force_inline proc "system" (command_buffer: Command_Buffer, infos: []Micromap_Build_Info) {
	raw_cmd_build_micromaps( command_buffer, u32(len(infos)), raw_data(infos), )
}

cmd_clear_attachments :: #force_inline proc "system" (command_buffer: Command_Buffer, attachments: []Clear_Attachment = {}, rects: []Clear_Rect = {}) {
	raw_cmd_clear_attachments( command_buffer, u32(len(attachments)), raw_data(attachments), u32(len(rects)), raw_data(rects), )
}

cmd_clear_color_image :: #force_inline proc "system" (command_buffer: Command_Buffer, image: Image, image_layout: Image_Layout, color: ^Clear_Color_Value, ranges: []Image_Subresource_Range) {
	raw_cmd_clear_color_image( command_buffer, image, image_layout, color, u32(len(ranges)), raw_data(ranges), )
}

cmd_clear_depth_stencil_image :: #force_inline proc "system" (command_buffer: Command_Buffer, image: Image, image_layout: Image_Layout, _depth: f32, _stencil: u32, ranges: []Image_Subresource_Range) {
	raw_cmd_clear_depth_stencil_image( command_buffer, image, image_layout, &Clear_Depth_Stencil_Value { depth = _depth, stencil = _stencil, }, u32(len(ranges)), raw_data(ranges), )
}

cmd_control_video_coding :: #force_inline proc "system" (command_buffer: Command_Buffer, flags: Video_Coding_Control_Flags = {}) {
	raw_cmd_control_video_coding( command_buffer, &Video_Coding_Control_Info { s_type = .Video_Coding_Control_Info, flags = flags, }, )
}

cmd_copy_acceleration_structure_to_memory :: #force_inline proc "system" (command_buffer: Command_Buffer, src: Acceleration_Structure, dst: Device_Or_Host_Address, mode: Copy_Acceleration_Structure_Mode) {
	raw_cmd_copy_acceleration_structure_to_memory( command_buffer, &Copy_Acceleration_Structure_To_Memory_Info { s_type = .Copy_Acceleration_Structure_To_Memory_Info, src = src, dst = dst, mode = mode, }, )
}

cmd_copy_buffer :: #force_inline proc "system" (command_buffer: Command_Buffer, src_buffer: Buffer, dst_buffer: Buffer, regions: []Buffer_Copy) {
	raw_cmd_copy_buffer( command_buffer, src_buffer, dst_buffer, u32(len(regions)), raw_data(regions), )
}

cmd_copy_buffer_to_image :: #force_inline proc "system" (command_buffer: Command_Buffer, src_buffer: Buffer, dst_image: Image, dst_image_layout: Image_Layout, regions: []Buffer_Image_Copy) {
	raw_cmd_copy_buffer_to_image( command_buffer, src_buffer, dst_image, dst_image_layout, u32(len(regions)), raw_data(regions), )
}

cmd_copy_image :: #force_inline proc "system" (command_buffer: Command_Buffer, src_image: Image, src_image_layout: Image_Layout, dst_image: Image, dst_image_layout: Image_Layout, regions: []Image_Copy) {
	raw_cmd_copy_image( command_buffer, src_image, src_image_layout, dst_image, dst_image_layout, u32(len(regions)), raw_data(regions), )
}

cmd_copy_image_to_buffer :: #force_inline proc "system" (command_buffer: Command_Buffer, src_image: Image, src_image_layout: Image_Layout, dst_buffer: Buffer, regions: []Buffer_Image_Copy) {
	raw_cmd_copy_image_to_buffer( command_buffer, src_image, src_image_layout, dst_buffer, u32(len(regions)), raw_data(regions), )
}

cmd_copy_memory_to_acceleration_structure :: #force_inline proc "system" (command_buffer: Command_Buffer, src: Device_Or_Host_Address_Const, dst: Acceleration_Structure, mode: Copy_Acceleration_Structure_Mode) {
	raw_cmd_copy_memory_to_acceleration_structure( command_buffer, &Copy_Memory_To_Acceleration_Structure_Info { s_type = .Copy_Memory_To_Acceleration_Structure_Info, src = src, dst = dst, mode = mode, }, )
}

cmd_copy_memory_to_micromap :: #force_inline proc "system" (command_buffer: Command_Buffer, src: Device_Or_Host_Address_Const, dst: Micromap, mode: Copy_Micromap_Mode) {
	raw_cmd_copy_memory_to_micromap( command_buffer, &Copy_Memory_To_Micromap_Info { s_type = .Copy_Memory_To_Micromap_Info, src = src, dst = dst, mode = mode, }, )
}

cmd_copy_micromap :: #force_inline proc "system" (command_buffer: Command_Buffer, src: Micromap, dst: Micromap, mode: Copy_Micromap_Mode) {
	raw_cmd_copy_micromap( command_buffer, &Copy_Micromap_Info { s_type = .Copy_Micromap_Info, src = src, dst = dst, mode = mode, }, )
}

cmd_copy_micromap_to_memory :: #force_inline proc "system" (command_buffer: Command_Buffer, src: Micromap, dst: Device_Or_Host_Address, mode: Copy_Micromap_Mode) {
	raw_cmd_copy_micromap_to_memory( command_buffer, &Copy_Micromap_To_Memory_Info { s_type = .Copy_Micromap_To_Memory_Info, src = src, dst = dst, mode = mode, }, )
}

cmd_copy_query_pool_results :: #force_inline proc "system" (command_buffer: Command_Buffer, query_pool: Query_Pool, first_query: u32, query_count: u32, dst_buffer: Buffer, stride: Device_Size, dst_offset: Device_Size = 0, flags: Query_Result_Flags = {}) {
	raw_cmd_copy_query_pool_results( command_buffer, query_pool, first_query, query_count, dst_buffer, dst_offset, stride, flags, )
}

cmd_debug_marker_begin :: #force_inline proc "system" (command_buffer: Command_Buffer, marker_name: cstring, color: [4]f32) {
	raw_cmd_debug_marker_begin( command_buffer, &Debug_Marker_Marker_Info { s_type = .Debug_Marker_Marker_Info, marker_name = marker_name, color = color, }, )
}

cmd_debug_marker_insert :: #force_inline proc "system" (command_buffer: Command_Buffer, marker_name: cstring, color: [4]f32) {
	raw_cmd_debug_marker_insert( command_buffer, &Debug_Marker_Marker_Info { s_type = .Debug_Marker_Marker_Info, marker_name = marker_name, color = color, }, )
}

cmd_draw_indexed_indirect_count :: #force_inline proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, count_buffer: Buffer, max_draw_count: u32, stride: u32, count_buffer_offset: Device_Size = 0) {
	raw_cmd_draw_indexed_indirect_count( command_buffer, buffer, offset, count_buffer, count_buffer_offset, max_draw_count, stride, )
}

cmd_draw_indirect_byte_count :: #force_inline proc "system" (command_buffer: Command_Buffer, instance_count: u32, first_instance: u32, counter_buffer: Buffer, counter_offset: u32, vertex_stride: u32, counter_buffer_offset: Device_Size = 0) {
	raw_cmd_draw_indirect_byte_count( command_buffer, instance_count, first_instance, counter_buffer, counter_buffer_offset, counter_offset, vertex_stride, )
}

cmd_draw_indirect_count :: #force_inline proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, count_buffer: Buffer, max_draw_count: u32, stride: u32, count_buffer_offset: Device_Size = 0) {
	raw_cmd_draw_indirect_count( command_buffer, buffer, offset, count_buffer, count_buffer_offset, max_draw_count, stride, )
}

cmd_draw_mesh_tasks_indirect_count :: #force_inline proc "system" (command_buffer: Command_Buffer, buffer: Buffer, offset: Device_Size, count_buffer: Buffer, max_draw_count: u32, stride: u32, count_buffer_offset: Device_Size = 0) {
	raw_cmd_draw_mesh_tasks_indirect_count( command_buffer, buffer, offset, count_buffer, count_buffer_offset, max_draw_count, stride, )
}

cmd_draw_multi :: #force_inline proc "system" (command_buffer: Command_Buffer, draw_count: u32, first_vertex: u32, vertex_count: u32, instance_count: u32, first_instance: u32, stride: u32) {
	raw_cmd_draw_multi( command_buffer, draw_count, &Multi_Draw_Info { first_vertex = first_vertex, vertex_count = vertex_count, }, instance_count, first_instance, stride, )
}

cmd_draw_multi_indexed :: #force_inline proc "system" (command_buffer: Command_Buffer, draw_count: u32, first_index: u32, index_count: u32, _vertex_offset: i32, instance_count: u32, first_instance: u32, stride: u32, vertex_offset: ^i32) {
	raw_cmd_draw_multi_indexed( command_buffer, draw_count, &Multi_Draw_Indexed_Info { first_index = first_index, index_count = index_count, vertex_offset = _vertex_offset, }, instance_count, first_instance, stride, vertex_offset, )
}

cmd_end_render_pass2 :: #force_inline proc "system" (command_buffer: Command_Buffer) {
	raw_cmd_end_render_pass2( command_buffer, &Subpass_End_Info { s_type = .Subpass_End_Info, }, )
}

cmd_end_transform_feedback :: #force_inline proc "system" (command_buffer: Command_Buffer, first_counter_buffer: u32, counter_buffers: []Buffer, counter_buffer_offsets: ^Device_Size) {
	raw_cmd_end_transform_feedback( command_buffer, first_counter_buffer, u32(len(counter_buffers)), raw_data(counter_buffers), counter_buffer_offsets, )
}

cmd_end_video_coding :: #force_inline proc "system" (command_buffer: Command_Buffer, flags: Video_End_Coding_Flags = {}) {
	raw_cmd_end_video_coding( command_buffer, &Video_End_Coding_Info { s_type = .Video_End_Coding_Info, flags = flags, }, )
}

cmd_execute_commands :: #force_inline proc "system" (command_buffer: Command_Buffer, command_buffers: []Command_Buffer) {
	raw_cmd_execute_commands( command_buffer, u32(len(command_buffers)), raw_data(command_buffers), )
}

cmd_fill_buffer :: #force_inline proc "system" (command_buffer: Command_Buffer, dst_buffer: Buffer, size: Device_Size, data: u32, dst_offset: Device_Size = 0) {
	raw_cmd_fill_buffer( command_buffer, dst_buffer, dst_offset, size, data, )
}

cmd_insert_debug_utils_label :: #force_inline proc "system" (command_buffer: Command_Buffer, label_name: cstring, color: [4]f32) {
	raw_cmd_insert_debug_utils_label( command_buffer, &Debug_Utils_Label { s_type = .Debug_Utils_Label, label_name = label_name, color = color, }, )
}

cmd_next_subpass2 :: #force_inline proc "system" (command_buffer: Command_Buffer, contents: Subpass_Contents) {
	raw_cmd_next_subpass2( command_buffer, &Subpass_Begin_Info { s_type = .Subpass_Begin_Info, contents = contents, }, &Subpass_End_Info { s_type = .Subpass_End_Info, }, )
}

cmd_optical_flow_execute :: #force_inline proc "system" (command_buffer: Command_Buffer, session: Optical_Flow_Session, regions: []Rect_2D, flags: Optical_Flow_Execute_Flags = {}) {
	raw_cmd_optical_flow_execute( command_buffer, session, &Optical_Flow_Execute_Info { s_type = .Optical_Flow_Execute_Info, flags = flags, region_count = u32(len(regions)), regions = raw_data(regions), }, )
}

cmd_pipeline_barrier :: #force_inline proc "system" (command_buffer: Command_Buffer, src_stage_mask: Pipeline_Stage_Flags, dst_stage_mask: Pipeline_Stage_Flags, dependency_flags: Dependency_Flags = {}, memory_barriers: []Memory_Barrier = {}, buffer_memory_barriers: []Buffer_Memory_Barrier = {}, image_memory_barriers: []Image_Memory_Barrier = {}) {
	raw_cmd_pipeline_barrier( command_buffer, src_stage_mask, dst_stage_mask, dependency_flags, u32(len(memory_barriers)), raw_data(memory_barriers), u32(len(buffer_memory_barriers)), raw_data(buffer_memory_barriers), u32(len(image_memory_barriers)), raw_data(image_memory_barriers), )
}

cmd_pipeline_barrier2 :: #force_inline proc "system" (command_buffer: Command_Buffer, dependency_flags: Dependency_Flags = {}, memory_barriers: []Memory_Barrier_2 = {}, buffer_memory_barriers: []Buffer_Memory_Barrier_2 = {}, image_memory_barriers: []Image_Memory_Barrier_2 = {}) {
	raw_cmd_pipeline_barrier2( command_buffer, &Dependency_Info { s_type = .Dependency_Info, dependency_flags = dependency_flags, memory_barrier_count = u32(len(memory_barriers)), memory_barriers = raw_data(memory_barriers), buffer_memory_barrier_count = u32(len(buffer_memory_barriers)), buffer_memory_barriers = raw_data(buffer_memory_barriers), image_memory_barrier_count = u32(len(image_memory_barriers)), image_memory_barriers = raw_data(image_memory_barriers), }, )
}

cmd_push_constants :: #force_inline proc "system" (command_buffer: Command_Buffer, layout: Pipeline_Layout, offset: u32, size: u32, values: rawptr, stage_flags: Shader_Stage_Flags = {}) {
	raw_cmd_push_constants( command_buffer, layout, stage_flags, offset, size, values, )
}

cmd_push_descriptor_set :: #force_inline proc "system" (command_buffer: Command_Buffer, pipeline_bind_point: Pipeline_Bind_Point, layout: Pipeline_Layout, set: u32, descriptor_writes: []Write_Descriptor_Set) {
	raw_cmd_push_descriptor_set( command_buffer, pipeline_bind_point, layout, set, u32(len(descriptor_writes)), raw_data(descriptor_writes), )
}

cmd_push_descriptor_set2 :: #force_inline proc "system" (command_buffer: Command_Buffer, layout: Pipeline_Layout, _set: u32, descriptor_writes: []Write_Descriptor_Set, stage_flags: Shader_Stage_Flags = {}) {
	raw_cmd_push_descriptor_set2( command_buffer, &Push_Descriptor_Set_Info { s_type = .Push_Descriptor_Set_Info, stage_flags = stage_flags, layout = layout, set = _set, descriptor_write_count = u32(len(descriptor_writes)), descriptor_writes = raw_data(descriptor_writes), }, )
}

cmd_push_descriptor_set_with_template2 :: #force_inline proc "system" (command_buffer: Command_Buffer, descriptor_update_template: Descriptor_Update_Template, layout: Pipeline_Layout, _set: u32, data: rawptr) {
	raw_cmd_push_descriptor_set_with_template2( command_buffer, &Push_Descriptor_Set_With_Template_Info { s_type = .Push_Descriptor_Set_With_Template_Info, descriptor_update_template = descriptor_update_template, layout = layout, set = _set, data = data, }, )
}

cmd_resolve_image :: #force_inline proc "system" (command_buffer: Command_Buffer, src_image: Image, src_image_layout: Image_Layout, dst_image: Image, dst_image_layout: Image_Layout, regions: []Image_Resolve) {
	raw_cmd_resolve_image( command_buffer, src_image, src_image_layout, dst_image, dst_image_layout, u32(len(regions)), raw_data(regions), )
}

cmd_set_coarse_sample_order :: #force_inline proc "system" (command_buffer: Command_Buffer, sample_order_type: Coarse_Sample_Order_Type, custom_sample_orders: []Coarse_Sample_Order_Custom) {
	raw_cmd_set_coarse_sample_order( command_buffer, sample_order_type, u32(len(custom_sample_orders)), raw_data(custom_sample_orders), )
}

cmd_set_depth_bias2 :: #force_inline proc "system" (command_buffer: Command_Buffer, depth_bias_constant_factor: f32, depth_bias_clamp: f32, depth_bias_slope_factor: f32) {
	raw_cmd_set_depth_bias2( command_buffer, &Depth_Bias_Info { s_type = .Depth_Bias_Info, depth_bias_constant_factor = depth_bias_constant_factor, depth_bias_clamp = depth_bias_clamp, depth_bias_slope_factor = depth_bias_slope_factor, }, )
}

cmd_set_depth_clamp_range :: #force_inline proc "system" (command_buffer: Command_Buffer, depth_clamp_mode: Depth_Clamp_Mode, min_depth_clamp: f32, max_depth_clamp: f32) {
	raw_cmd_set_depth_clamp_range( command_buffer, depth_clamp_mode, &Depth_Clamp_Range { min_depth_clamp = min_depth_clamp, max_depth_clamp = max_depth_clamp, }, )
}

cmd_set_discard_rectangle :: #force_inline proc "system" (command_buffer: Command_Buffer, first_discard_rectangle: u32, discard_rectangles: []Rect_2D) {
	raw_cmd_set_discard_rectangle( command_buffer, first_discard_rectangle, u32(len(discard_rectangles)), raw_data(discard_rectangles), )
}

cmd_set_event2 :: #force_inline proc "system" (command_buffer: Command_Buffer, event: Event, dependency_flags: Dependency_Flags = {}, memory_barriers: []Memory_Barrier_2 = {}, buffer_memory_barriers: []Buffer_Memory_Barrier_2 = {}, image_memory_barriers: []Image_Memory_Barrier_2 = {}) {
	raw_cmd_set_event2( command_buffer, event, &Dependency_Info { s_type = .Dependency_Info, dependency_flags = dependency_flags, memory_barrier_count = u32(len(memory_barriers)), memory_barriers = raw_data(memory_barriers), buffer_memory_barrier_count = u32(len(buffer_memory_barriers)), buffer_memory_barriers = raw_data(buffer_memory_barriers), image_memory_barrier_count = u32(len(image_memory_barriers)), image_memory_barriers = raw_data(image_memory_barriers), }, )
}

cmd_set_exclusive_scissor :: #force_inline proc "system" (command_buffer: Command_Buffer, first_exclusive_scissor: u32, exclusive_scissors: []Rect_2D) {
	raw_cmd_set_exclusive_scissor( command_buffer, first_exclusive_scissor, u32(len(exclusive_scissors)), raw_data(exclusive_scissors), )
}

cmd_set_fragment_shading_rate :: #force_inline proc "system" (command_buffer: Command_Buffer, width: u32, height: u32, combiner_ops: ^[2]Fragment_Shading_Rate_Combiner_Op) {
	raw_cmd_set_fragment_shading_rate( command_buffer, &Extent_2D { width = width, height = height, }, combiner_ops, )
}

cmd_set_performance_marker_intel :: #force_inline proc "system" (command_buffer: Command_Buffer, _marker: u64) -> Result {
	return raw_cmd_set_performance_marker_intel( command_buffer, &Performance_Marker_Info_Intel { s_type = .Performance_Marker_Info_Intel, marker = _marker, }, )
}

cmd_set_performance_stream_marker_intel :: #force_inline proc "system" (command_buffer: Command_Buffer, _marker: u32) -> Result {
	return raw_cmd_set_performance_stream_marker_intel( command_buffer, &Performance_Stream_Marker_Info_Intel { s_type = .Performance_Stream_Marker_Info_Intel, marker = _marker, }, )
}

cmd_set_rendering_attachment_locations :: #force_inline proc "system" (command_buffer: Command_Buffer, color_attachment_locations: []u32) {
	raw_cmd_set_rendering_attachment_locations( command_buffer, &Rendering_Attachment_Location_Info { s_type = .Rendering_Attachment_Location_Info, color_attachment_count = u32(len(color_attachment_locations)), color_attachment_locations = raw_data(color_attachment_locations), }, )
}

cmd_set_rendering_input_attachment_indices :: #force_inline proc "system" (command_buffer: Command_Buffer, color_attachment_input_indices: []u32, depth_input_attachment_index: ^u32, stencil_input_attachment_index: ^u32) {
	raw_cmd_set_rendering_input_attachment_indices( command_buffer, &Rendering_Input_Attachment_Index_Info { s_type = .Rendering_Input_Attachment_Index_Info, color_attachment_count = u32(len(color_attachment_input_indices)), color_attachment_input_indices = raw_data(color_attachment_input_indices), depth_input_attachment_index = depth_input_attachment_index, stencil_input_attachment_index = stencil_input_attachment_index, }, )
}

cmd_set_sample_locations :: #force_inline proc "system" (command_buffer: Command_Buffer, sample_locations_per_pixel: Sample_Count_Flags, sample_location_grid_size: Extent_2D, sample_locations_count: u32, _sample_locations: [^]Sample_Location) {
	raw_cmd_set_sample_locations( command_buffer, &Sample_Locations_Info { s_type = .Sample_Locations_Info, sample_locations_per_pixel = sample_locations_per_pixel, sample_location_grid_size = sample_location_grid_size, sample_locations_count = sample_locations_count, sample_locations = _sample_locations, }, )
}

cmd_set_scissor :: #force_inline proc "system" (command_buffer: Command_Buffer, first_scissor: u32, scissors: []Rect_2D) {
	raw_cmd_set_scissor( command_buffer, first_scissor, u32(len(scissors)), raw_data(scissors), )
}

cmd_set_scissor_with_count :: #force_inline proc "system" (command_buffer: Command_Buffer, scissors: []Rect_2D) {
	raw_cmd_set_scissor_with_count( command_buffer, u32(len(scissors)), raw_data(scissors), )
}

cmd_set_vertex_input :: #force_inline proc "system" (command_buffer: Command_Buffer, vertex_binding_descriptions: []Vertex_Input_Binding_Description_2 = {}, vertex_attribute_descriptions: []Vertex_Input_Attribute_Description_2 = {}) {
	raw_cmd_set_vertex_input( command_buffer, u32(len(vertex_binding_descriptions)), raw_data(vertex_binding_descriptions), u32(len(vertex_attribute_descriptions)), raw_data(vertex_attribute_descriptions), )
}

cmd_set_viewport :: #force_inline proc "system" (command_buffer: Command_Buffer, first_viewport: u32, viewports: []Viewport) {
	raw_cmd_set_viewport( command_buffer, first_viewport, u32(len(viewports)), raw_data(viewports), )
}

cmd_set_viewport_with_count :: #force_inline proc "system" (command_buffer: Command_Buffer, viewports: []Viewport) {
	raw_cmd_set_viewport_with_count( command_buffer, u32(len(viewports)), raw_data(viewports), )
}

cmd_trace_rays :: #force_inline proc "system" (command_buffer: Command_Buffer, raygen_shader_binding_table_buffer: Buffer, miss_shader_binding_table_buffer: Buffer, miss_shader_binding_stride: Device_Size, hit_shader_binding_table_buffer: Buffer, hit_shader_binding_stride: Device_Size, callable_shader_binding_table_buffer: Buffer, callable_shader_binding_stride: Device_Size, width: u32, height: u32, depth: u32, raygen_shader_binding_offset: Device_Size = 0, miss_shader_binding_offset: Device_Size = 0, hit_shader_binding_offset: Device_Size = 0, callable_shader_binding_offset: Device_Size = 0) {
	raw_cmd_trace_rays( command_buffer, raygen_shader_binding_table_buffer, raygen_shader_binding_offset, miss_shader_binding_table_buffer, miss_shader_binding_offset, miss_shader_binding_stride, hit_shader_binding_table_buffer, hit_shader_binding_offset, hit_shader_binding_stride, callable_shader_binding_table_buffer, callable_shader_binding_offset, callable_shader_binding_stride, width, height, depth, )
}

cmd_update_buffer :: #force_inline proc "system" (command_buffer: Command_Buffer, dst_buffer: Buffer, data_size: Device_Size, data: rawptr, dst_offset: Device_Size = 0) {
	raw_cmd_update_buffer( command_buffer, dst_buffer, dst_offset, data_size, data, )
}

cmd_wait_events :: #force_inline proc "system" (command_buffer: Command_Buffer, src_stage_mask: Pipeline_Stage_Flags, dst_stage_mask: Pipeline_Stage_Flags, events: []Event = {}, memory_barriers: []Memory_Barrier = {}, buffer_memory_barriers: []Buffer_Memory_Barrier = {}, image_memory_barriers: []Image_Memory_Barrier = {}) {
	raw_cmd_wait_events( command_buffer, u32(len(events)), raw_data(events), src_stage_mask, dst_stage_mask, u32(len(memory_barriers)), raw_data(memory_barriers), u32(len(buffer_memory_barriers)), raw_data(buffer_memory_barriers), u32(len(image_memory_barriers)), raw_data(image_memory_barriers), )
}

cmd_wait_events2 :: #force_inline proc "system" (command_buffer: Command_Buffer, events: []Event = {}, dependency_flags: Dependency_Flags = {}, memory_barriers: []Memory_Barrier_2 = {}, buffer_memory_barriers: []Buffer_Memory_Barrier_2 = {}, image_memory_barriers: []Image_Memory_Barrier_2 = {}) {
	raw_cmd_wait_events2( command_buffer, u32(len(events)), raw_data(events), &Dependency_Info { s_type = .Dependency_Info, dependency_flags = dependency_flags, memory_barrier_count = u32(len(memory_barriers)), memory_barriers = raw_data(memory_barriers), buffer_memory_barrier_count = u32(len(buffer_memory_barriers)), buffer_memory_barriers = raw_data(buffer_memory_barriers), image_memory_barrier_count = u32(len(image_memory_barriers)), image_memory_barriers = raw_data(image_memory_barriers), }, )
}

cmd_write_acceleration_structures_properties :: #force_inline proc "system" (command_buffer: Command_Buffer, acceleration_structures: []Acceleration_Structure, query_type: Query_Type, query_pool: Query_Pool, first_query: u32) {
	raw_cmd_write_acceleration_structures_properties( command_buffer, u32(len(acceleration_structures)), raw_data(acceleration_structures), query_type, query_pool, first_query, )
}

cmd_write_buffer_marker :: #force_inline proc "system" (command_buffer: Command_Buffer, pipeline_stage: Pipeline_Stage_Flags, dst_buffer: Buffer, marker: u32, dst_offset: Device_Size = 0) {
	raw_cmd_write_buffer_marker( command_buffer, pipeline_stage, dst_buffer, dst_offset, marker, )
}

cmd_write_buffer_marker2 :: #force_inline proc "system" (command_buffer: Command_Buffer, stage: Pipeline_Stage_Flags_2, dst_buffer: Buffer, marker: u32, dst_offset: Device_Size = 0) {
	raw_cmd_write_buffer_marker2( command_buffer, stage, dst_buffer, dst_offset, marker, )
}

cmd_write_micromaps_properties :: #force_inline proc "system" (command_buffer: Command_Buffer, micromaps: []Micromap, query_type: Query_Type, query_pool: Query_Pool, first_query: u32) {
	raw_cmd_write_micromaps_properties( command_buffer, u32(len(micromaps)), raw_data(micromaps), query_type, query_pool, first_query, )
}

compile_deferred :: #force_inline proc "system" ( pipeline: Pipeline, shader: u32) -> Result {
	return raw_compile_deferred( global_device, pipeline, shader, )
}

copy_acceleration_structure :: #force_inline proc "system" ( deferred_operation: Deferred_Operation, src: Acceleration_Structure, dst: Acceleration_Structure, mode: Copy_Acceleration_Structure_Mode) -> Result {
	return raw_copy_acceleration_structure( global_device, deferred_operation, &Copy_Acceleration_Structure_Info { s_type = .Copy_Acceleration_Structure_Info, src = src, dst = dst, mode = mode, }, )
}

copy_acceleration_structure_to_memory :: #force_inline proc "system" ( deferred_operation: Deferred_Operation, src: Acceleration_Structure, dst: Device_Or_Host_Address, mode: Copy_Acceleration_Structure_Mode) -> Result {
	return raw_copy_acceleration_structure_to_memory( global_device, deferred_operation, &Copy_Acceleration_Structure_To_Memory_Info { s_type = .Copy_Acceleration_Structure_To_Memory_Info, src = src, dst = dst, mode = mode, }, )
}

copy_image_to_image :: #force_inline proc "system" ( copy_image_to_image_info: ^Copy_Image_To_Image_Info) -> Result {
	return raw_copy_image_to_image( global_device, copy_image_to_image_info, )
}

copy_image_to_memory :: #force_inline proc "system" (src_image: Image, src_image_layout: Image_Layout, regions: []Image_To_Memory_Copy,  flags: Host_Image_Copy_Flags = {}) -> Result {
	return raw_copy_image_to_memory( global_device, &Copy_Image_To_Memory_Info { s_type = .Copy_Image_To_Memory_Info, flags = flags, src_image = src_image, src_image_layout = src_image_layout, region_count = u32(len(regions)), regions = raw_data(regions), }, )
}

copy_memory_to_acceleration_structure :: #force_inline proc "system" ( deferred_operation: Deferred_Operation, src: Device_Or_Host_Address_Const, dst: Acceleration_Structure, mode: Copy_Acceleration_Structure_Mode) -> Result {
	return raw_copy_memory_to_acceleration_structure( global_device, deferred_operation, &Copy_Memory_To_Acceleration_Structure_Info { s_type = .Copy_Memory_To_Acceleration_Structure_Info, src = src, dst = dst, mode = mode, }, )
}

copy_memory_to_image :: #force_inline proc "system" (dst_image: Image, dst_image_layout: Image_Layout, regions: []Memory_To_Image_Copy,  flags: Host_Image_Copy_Flags = {}) -> Result {
	return raw_copy_memory_to_image( global_device, &Copy_Memory_To_Image_Info { s_type = .Copy_Memory_To_Image_Info, flags = flags, dst_image = dst_image, dst_image_layout = dst_image_layout, region_count = u32(len(regions)), regions = raw_data(regions), }, )
}

copy_memory_to_micromap :: #force_inline proc "system" ( deferred_operation: Deferred_Operation, src: Device_Or_Host_Address_Const, dst: Micromap, mode: Copy_Micromap_Mode) -> Result {
	return raw_copy_memory_to_micromap( global_device, deferred_operation, &Copy_Memory_To_Micromap_Info { s_type = .Copy_Memory_To_Micromap_Info, src = src, dst = dst, mode = mode, }, )
}

copy_micromap :: #force_inline proc "system" ( deferred_operation: Deferred_Operation, src: Micromap, dst: Micromap, mode: Copy_Micromap_Mode) -> Result {
	return raw_copy_micromap( global_device, deferred_operation, &Copy_Micromap_Info { s_type = .Copy_Micromap_Info, src = src, dst = dst, mode = mode, }, )
}

copy_micromap_to_memory :: #force_inline proc "system" ( deferred_operation: Deferred_Operation, src: Micromap, dst: Device_Or_Host_Address, mode: Copy_Micromap_Mode) -> Result {
	return raw_copy_micromap_to_memory( global_device, deferred_operation, &Copy_Micromap_To_Memory_Info { s_type = .Copy_Micromap_To_Memory_Info, src = src, dst = dst, mode = mode, }, )
}

create_acceleration_structure :: #force_inline proc "system" ( compacted_size: Device_Size, _info: Acceleration_Structure_Info, allocator: ^Allocation_Callbacks = nil) -> (acceleration_structure: Acceleration_Structure, result: Result) {
	result = raw_create_acceleration_structure( global_device, &Acceleration_Structure_Create_Info { s_type = .Acceleration_Structure_Create_Info, compacted_size = compacted_size, info = _info, }, allocator, &acceleration_structure, )
	return
}

create_buffer :: #force_inline proc "system" (size: Device_Size, usage: Buffer_Usage_Flags, sharing_mode: Sharing_Mode, queue_family_indices: []u32,  flags: Buffer_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (buffer: Buffer, result: Result) {
	result = raw_create_buffer( global_device, &Buffer_Create_Info { s_type = .Buffer_Create_Info, flags = flags, size = size, usage = usage, sharing_mode = sharing_mode, queue_family_index_count = u32(len(queue_family_indices)), queue_family_indices = raw_data(queue_family_indices), }, allocator, &buffer, )
	return
}

create_buffer_view :: #force_inline proc "system" (buffer: Buffer, format: Format, offset: Device_Size, range: Device_Size,  flags: Buffer_View_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (view: Buffer_View, result: Result) {
	result = raw_create_buffer_view( global_device, &Buffer_View_Create_Info { s_type = .Buffer_View_Create_Info, flags = flags, buffer = buffer, format = format, offset = offset, range = range, }, allocator, &view, )
	return
}

create_command_pool :: #force_inline proc "system" (queue_family_index: u32,  flags: Command_Pool_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (command_pool: Command_Pool, result: Result) {
	result = raw_create_command_pool( global_device, &Command_Pool_Create_Info { s_type = .Command_Pool_Create_Info, flags = flags, queue_family_index = queue_family_index, }, allocator, &command_pool, )
	return
}

create_compute_pipelines :: #force_inline proc "system" ( pipeline_cache: Pipeline_Cache, create_infos: []Compute_Pipeline_Create_Info, pipelines: ^Pipeline, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_create_compute_pipelines( global_device, pipeline_cache, u32(len(create_infos)), raw_data(create_infos), allocator, pipelines, )
}

create_cu_function :: #force_inline proc "system" ( module: Cu_Module, name: cstring, allocator: ^Allocation_Callbacks = nil) -> (function: Cu_Function, result: Result) {
	result = raw_create_cu_function( global_device, &Cu_Function_Create_Info { s_type = .Cu_Function_Create_Info, module = module, name = name, }, allocator, &function, )
	return
}

create_cu_module :: #force_inline proc "system" ( data_size: int, data: rawptr, allocator: ^Allocation_Callbacks = nil) -> (module: Cu_Module, result: Result) {
	result = raw_create_cu_module( global_device, &Cu_Module_Create_Info { s_type = .Cu_Module_Create_Info, data_size = data_size, data = data, }, allocator, &module, )
	return
}

create_cuda_function :: #force_inline proc "system" ( module: Cuda_Module, name: cstring, allocator: ^Allocation_Callbacks = nil) -> (function: Cuda_Function, result: Result) {
	result = raw_create_cuda_function( global_device, &Cuda_Function_Create_Info { s_type = .Cuda_Function_Create_Info, module = module, name = name, }, allocator, &function, )
	return
}

create_cuda_module :: #force_inline proc "system" ( data_size: int, data: rawptr, allocator: ^Allocation_Callbacks = nil) -> (module: Cuda_Module, result: Result) {
	result = raw_create_cuda_module( global_device, &Cuda_Module_Create_Info { s_type = .Cuda_Module_Create_Info, data_size = data_size, data = data, }, allocator, &module, )
	return
}

create_deferred_operation :: #force_inline proc "system" ( allocator: ^Allocation_Callbacks = nil) -> (deferred_operation: Deferred_Operation, result: Result) {
	result = raw_create_deferred_operation( global_device, allocator, &deferred_operation, )
	return
}

create_descriptor_pool :: #force_inline proc "system" (max_sets: u32, pool_sizes: []Descriptor_Pool_Size,  flags: Descriptor_Pool_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (descriptor_pool: Descriptor_Pool, result: Result) {
	result = raw_create_descriptor_pool( global_device, &Descriptor_Pool_Create_Info { s_type = .Descriptor_Pool_Create_Info, flags = flags, max_sets = max_sets, pool_size_count = u32(len(pool_sizes)), pool_sizes = raw_data(pool_sizes), }, allocator, &descriptor_pool, )
	return
}

create_descriptor_set_layout :: #force_inline proc "system" (bindings: []Descriptor_Set_Layout_Binding,  flags: Descriptor_Set_Layout_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (set_layout: Descriptor_Set_Layout, result: Result) {
	result = raw_create_descriptor_set_layout( global_device, &Descriptor_Set_Layout_Create_Info { s_type = .Descriptor_Set_Layout_Create_Info, flags = flags, binding_count = u32(len(bindings)), bindings = raw_data(bindings), }, allocator, &set_layout, )
	return
}

create_descriptor_update_template :: #force_inline proc "system" ( create_info: ^Descriptor_Update_Template_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (descriptor_update_template: Descriptor_Update_Template, result: Result) {
	result = raw_create_descriptor_update_template( global_device, create_info, allocator, &descriptor_update_template, )
	return
}

create_event :: #force_inline proc "system" ( flags: Event_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (event: Event, result: Result) {
	result = raw_create_event( global_device, &Event_Create_Info { s_type = .Event_Create_Info, flags = flags, }, allocator, &event, )
	return
}

create_fence :: #force_inline proc "system" ( flags: Fence_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (fence: Fence, result: Result) {
	result = raw_create_fence( global_device, &Fence_Create_Info { s_type = .Fence_Create_Info, flags = flags, }, allocator, &fence, )
	return
}

create_framebuffer :: #force_inline proc "system" (render_pass: Render_Pass, attachments: []Image_View, width: u32, height: u32,  flags: Framebuffer_Create_Flags = {}, layers: u32 = 1, allocator: ^Allocation_Callbacks = nil) -> (framebuffer: Framebuffer, result: Result) {
	result = raw_create_framebuffer( global_device, &Framebuffer_Create_Info { s_type = .Framebuffer_Create_Info, flags = flags, render_pass = render_pass, attachment_count = u32(len(attachments)), attachments = raw_data(attachments), width = width, height = height, layers = layers, }, allocator, &framebuffer, )
	return
}

create_graphics_pipelines :: #force_inline proc "system" ( pipeline_cache: Pipeline_Cache, create_infos: []Graphics_Pipeline_Create_Info, pipelines: ^Pipeline, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_create_graphics_pipelines( global_device, pipeline_cache, u32(len(create_infos)), raw_data(create_infos), allocator, pipelines, )
}

create_image :: #force_inline proc "system" ( create_info: ^Image_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (image: Image, result: Result) {
	result = raw_create_image( global_device, create_info, allocator, &image, )
	return
}

create_image_view :: #force_inline proc "system" ( create_info: ^Image_View_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (view: Image_View, result: Result) {
	result = raw_create_image_view( global_device, create_info, allocator, &view, )
	return
}

create_indirect_commands_layout :: #force_inline proc "system" (pipeline_bind_point: Pipeline_Bind_Point,  flags: Indirect_Commands_Layout_Usage_Flags = {}, tokens: []Indirect_Commands_Layout_Token = {}, stream_strides: []u32 = {}, allocator: ^Allocation_Callbacks = nil) -> (indirect_commands_layout: Indirect_Commands_Layout, result: Result) {
	result = raw_create_indirect_commands_layout( global_device, &Indirect_Commands_Layout_Create_Info { s_type = .Indirect_Commands_Layout_Create_Info, flags = flags, pipeline_bind_point = pipeline_bind_point, token_count = u32(len(tokens)), tokens = raw_data(tokens), stream_count = u32(len(stream_strides)), stream_strides = raw_data(stream_strides), }, allocator, &indirect_commands_layout, )
	return
}

create_indirect_execution_set :: #force_inline proc "system" ( type: Indirect_Execution_Set_Info_Type, _info: Indirect_Execution_Set_Info, allocator: ^Allocation_Callbacks = nil) -> (indirect_execution_set: Indirect_Execution_Set, result: Result) {
	result = raw_create_indirect_execution_set( global_device, &Indirect_Execution_Set_Create_Info { s_type = .Indirect_Execution_Set_Create_Info, type = type, info = _info, }, allocator, &indirect_execution_set, )
	return
}

create_micromap :: #force_inline proc "system" ( create_info: ^Micromap_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (micromap: Micromap, result: Result) {
	result = raw_create_micromap( global_device, create_info, allocator, &micromap, )
	return
}

create_optical_flow_session :: #force_inline proc "system" ( create_info: ^Optical_Flow_Session_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (session: Optical_Flow_Session, result: Result) {
	result = raw_create_optical_flow_session( global_device, create_info, allocator, &session, )
	return
}

create_pipeline_binaries :: #force_inline proc "system" ( keys_and_data_info: ^Pipeline_Binary_Keys_And_Data, pipeline: Pipeline, pipeline_create_info: ^Pipeline_Create_Info, pipeline_binaries: []Pipeline_Binary, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_create_pipeline_binaries( global_device, &Pipeline_Binary_Create_Info { s_type = .Pipeline_Binary_Create_Info, keys_and_data_info = keys_and_data_info, pipeline = pipeline, pipeline_create_info = pipeline_create_info, }, allocator, &Pipeline_Binary_Handles_Info { s_type = .Pipeline_Binary_Handles_Info, pipeline_binary_count = u32(len(pipeline_binaries)), pipeline_binaries = raw_data(pipeline_binaries), }, )
}

create_pipeline_cache :: #force_inline proc "system" (initial_data_size: int, initial_data: rawptr,  flags: Pipeline_Cache_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (pipeline_cache: Pipeline_Cache, result: Result) {
	result = raw_create_pipeline_cache( global_device, &Pipeline_Cache_Create_Info { s_type = .Pipeline_Cache_Create_Info, flags = flags, initial_data_size = initial_data_size, initial_data = initial_data, }, allocator, &pipeline_cache, )
	return
}

create_pipeline_layout :: #force_inline proc "system" ( flags: Pipeline_Layout_Create_Flags = {}, set_layouts: []Descriptor_Set_Layout = {}, push_constant_ranges: []Push_Constant_Range = {}, allocator: ^Allocation_Callbacks = nil) -> (pipeline_layout: Pipeline_Layout, result: Result) {
	result = raw_create_pipeline_layout( global_device, &Pipeline_Layout_Create_Info { s_type = .Pipeline_Layout_Create_Info, flags = flags, set_layout_count = u32(len(set_layouts)), set_layouts = raw_data(set_layouts), push_constant_range_count = u32(len(push_constant_ranges)), push_constant_ranges = raw_data(push_constant_ranges), }, allocator, &pipeline_layout, )
	return
}

create_private_data_slot :: #force_inline proc "system" ( flags: Private_Data_Slot_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (private_data_slot: Private_Data_Slot, result: Result) {
	result = raw_create_private_data_slot( global_device, &Private_Data_Slot_Create_Info { s_type = .Private_Data_Slot_Create_Info, flags = flags, }, allocator, &private_data_slot, )
	return
}

create_query_pool :: #force_inline proc "system" (query_type: Query_Type, query_count: u32, pipeline_statistics: Query_Pipeline_Statistic_Flags,  flags: Query_Pool_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (query_pool: Query_Pool, result: Result) {
	result = raw_create_query_pool( global_device, &Query_Pool_Create_Info { s_type = .Query_Pool_Create_Info, flags = flags, query_type = query_type, query_count = query_count, pipeline_statistics = pipeline_statistics, }, allocator, &query_pool, )
	return
}

create_ray_tracing_pipelines :: #force_inline proc "system" ( pipeline_cache: Pipeline_Cache, create_infos: []Ray_Tracing_Pipeline_Create_Info, pipelines: ^Pipeline, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_create_ray_tracing_pipelines( global_device, pipeline_cache, u32(len(create_infos)), raw_data(create_infos), allocator, pipelines, )
}

create_render_pass :: #force_inline proc "system" ( flags: Render_Pass_Create_Flags = {}, attachments: []Attachment_Description = {}, subpasses: []Subpass_Description = {}, dependencies: []Subpass_Dependency = {}, allocator: ^Allocation_Callbacks = nil) -> (render_pass: Render_Pass, result: Result) {
	result = raw_create_render_pass( global_device, &Render_Pass_Create_Info { s_type = .Render_Pass_Create_Info, flags = flags, attachment_count = u32(len(attachments)), attachments = raw_data(attachments), subpass_count = u32(len(subpasses)), subpasses = raw_data(subpasses), dependency_count = u32(len(dependencies)), dependencies = raw_data(dependencies), }, allocator, &render_pass, )
	return
}

create_render_pass2 :: #force_inline proc "system" ( create_info: ^Render_Pass_Create_Info_2, allocator: ^Allocation_Callbacks = nil) -> (render_pass: Render_Pass, result: Result) {
	result = raw_create_render_pass2( global_device, create_info, allocator, &render_pass, )
	return
}

create_sampler :: #force_inline proc "system" ( create_info: ^Sampler_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (sampler: Sampler, result: Result) {
	result = raw_create_sampler( global_device, create_info, allocator, &sampler, )
	return
}

create_sampler_ycbcr_conversion :: #force_inline proc "system" ( create_info: ^Sampler_Ycbcr_Conversion_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (ycbcr_conversion: Sampler_Ycbcr_Conversion, result: Result) {
	result = raw_create_sampler_ycbcr_conversion( global_device, create_info, allocator, &ycbcr_conversion, )
	return
}

create_semaphore :: #force_inline proc "system" ( flags: Semaphore_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (semaphore: Semaphore, result: Result) {
	result = raw_create_semaphore( global_device, &Semaphore_Create_Info { s_type = .Semaphore_Create_Info, flags = flags, }, allocator, &semaphore, )
	return
}

create_shader_module :: #force_inline proc "system" (code_size: int, code: ^u32,  flags: Shader_Module_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (shader_module: Shader_Module, result: Result) {
	result = raw_create_shader_module( global_device, &Shader_Module_Create_Info { s_type = .Shader_Module_Create_Info, flags = flags, code_size = code_size, code = code, }, allocator, &shader_module, )
	return
}

create_shaders :: #force_inline proc "system" ( create_infos: []Shader_Create_Info, shaders: ^Shader, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_create_shaders( global_device, u32(len(create_infos)), raw_data(create_infos), allocator, shaders, )
}

create_shared_swapchains :: #force_inline proc "system" ( swapchain_count: u32, create_infos: [^]Swapchain_Create_Info, swapchains: ^Swapchain, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_create_shared_swapchains( global_device, swapchain_count, create_infos, allocator, swapchains, )
}

create_swapchain :: #force_inline proc "system" ( create_info: ^Swapchain_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (swapchain: Swapchain, result: Result) {
	result = raw_create_swapchain( global_device, create_info, allocator, &swapchain, )
	return
}

create_validation_cache :: #force_inline proc "system" (initial_data_size: int, initial_data: rawptr,  flags: Validation_Cache_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> (validation_cache: Validation_Cache, result: Result) {
	result = raw_create_validation_cache( global_device, &Validation_Cache_Create_Info { s_type = .Validation_Cache_Create_Info, flags = flags, initial_data_size = initial_data_size, initial_data = initial_data, }, allocator, &validation_cache, )
	return
}

create_video_session :: #force_inline proc "system" ( create_info: ^Video_Session_Create_Info, allocator: ^Allocation_Callbacks = nil) -> (video_session: Video_Session, result: Result) {
	result = raw_create_video_session( global_device, create_info, allocator, &video_session, )
	return
}

create_video_session_parameters :: #force_inline proc "system" (video_session_parameters_template: Video_Session_Parameters, _video_session: Video_Session, video_session_parameters: ^Video_Session_Parameters,  flags: Video_Session_Parameters_Create_Flags = {}, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_create_video_session_parameters( global_device, &Video_Session_Parameters_Create_Info { s_type = .Video_Session_Parameters_Create_Info, flags = flags, video_session_parameters_template = video_session_parameters_template, video_session = _video_session, }, allocator, video_session_parameters, )
}

debug_marker_set_object_name :: #force_inline proc "system" ( object_type: Debug_Report_Object_Type, object: u64, object_name: cstring) -> Result {
	return raw_debug_marker_set_object_name( global_device, &Debug_Marker_Object_Name_Info { s_type = .Debug_Marker_Object_Name_Info, object_type = object_type, object = object, object_name = object_name, }, )
}

debug_marker_set_object_tag :: #force_inline proc "system" ( tag_info: ^Debug_Marker_Object_Tag_Info) -> Result {
	return raw_debug_marker_set_object_tag( global_device, tag_info, )
}

deferred_operation_join :: #force_inline proc "system" ( operation: Deferred_Operation) -> Result {
	return raw_deferred_operation_join( global_device, operation, )
}

destroy_acceleration_structure :: #force_inline proc "system" ( acceleration_structure: Acceleration_Structure, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_acceleration_structure( global_device, acceleration_structure, allocator, )
}

destroy_buffer :: #force_inline proc "system" ( buffer: Buffer, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_buffer( global_device, buffer, allocator, )
}

destroy_buffer_view :: #force_inline proc "system" ( buffer_view: Buffer_View, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_buffer_view( global_device, buffer_view, allocator, )
}

destroy_command_pool :: #force_inline proc "system" ( command_pool: Command_Pool, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_command_pool( global_device, command_pool, allocator, )
}

destroy_cu_function :: #force_inline proc "system" ( function: Cu_Function, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_cu_function( global_device, function, allocator, )
}

destroy_cu_module :: #force_inline proc "system" ( module: Cu_Module, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_cu_module( global_device, module, allocator, )
}

destroy_cuda_function :: #force_inline proc "system" ( function: Cuda_Function, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_cuda_function( global_device, function, allocator, )
}

destroy_cuda_module :: #force_inline proc "system" ( module: Cuda_Module, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_cuda_module( global_device, module, allocator, )
}

destroy_deferred_operation :: #force_inline proc "system" ( operation: Deferred_Operation, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_deferred_operation( global_device, operation, allocator, )
}

destroy_descriptor_pool :: #force_inline proc "system" ( descriptor_pool: Descriptor_Pool, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_descriptor_pool( global_device, descriptor_pool, allocator, )
}

destroy_descriptor_set_layout :: #force_inline proc "system" ( descriptor_set_layout: Descriptor_Set_Layout, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_descriptor_set_layout( global_device, descriptor_set_layout, allocator, )
}

destroy_descriptor_update_template :: #force_inline proc "system" ( descriptor_update_template: Descriptor_Update_Template, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_descriptor_update_template( global_device, descriptor_update_template, allocator, )
}

destroy_device :: #force_inline proc "system" (device: Device, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_device( device, allocator, )
}

destroy_event :: #force_inline proc "system" ( event: Event, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_event( global_device, event, allocator, )
}

destroy_fence :: #force_inline proc "system" ( fence: Fence, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_fence( global_device, fence, allocator, )
}

destroy_framebuffer :: #force_inline proc "system" ( framebuffer: Framebuffer, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_framebuffer( global_device, framebuffer, allocator, )
}

destroy_image :: #force_inline proc "system" ( image: Image, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_image( global_device, image, allocator, )
}

destroy_image_view :: #force_inline proc "system" ( image_view: Image_View, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_image_view( global_device, image_view, allocator, )
}

destroy_indirect_commands_layout :: #force_inline proc "system" ( indirect_commands_layout: Indirect_Commands_Layout, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_indirect_commands_layout( global_device, indirect_commands_layout, allocator, )
}

destroy_indirect_execution_set :: #force_inline proc "system" ( indirect_execution_set: Indirect_Execution_Set, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_indirect_execution_set( global_device, indirect_execution_set, allocator, )
}

destroy_micromap :: #force_inline proc "system" ( micromap: Micromap, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_micromap( global_device, micromap, allocator, )
}

destroy_optical_flow_session :: #force_inline proc "system" ( session: Optical_Flow_Session, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_optical_flow_session( global_device, session, allocator, )
}

destroy_pipeline :: #force_inline proc "system" ( pipeline: Pipeline, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_pipeline( global_device, pipeline, allocator, )
}

destroy_pipeline_binary :: #force_inline proc "system" ( pipeline_binary: Pipeline_Binary, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_pipeline_binary( global_device, pipeline_binary, allocator, )
}

destroy_pipeline_cache :: #force_inline proc "system" ( pipeline_cache: Pipeline_Cache, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_pipeline_cache( global_device, pipeline_cache, allocator, )
}

destroy_pipeline_layout :: #force_inline proc "system" ( pipeline_layout: Pipeline_Layout, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_pipeline_layout( global_device, pipeline_layout, allocator, )
}

destroy_private_data_slot :: #force_inline proc "system" ( private_data_slot: Private_Data_Slot, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_private_data_slot( global_device, private_data_slot, allocator, )
}

destroy_query_pool :: #force_inline proc "system" ( query_pool: Query_Pool, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_query_pool( global_device, query_pool, allocator, )
}

destroy_render_pass :: #force_inline proc "system" ( render_pass: Render_Pass, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_render_pass( global_device, render_pass, allocator, )
}

destroy_sampler :: #force_inline proc "system" ( sampler: Sampler, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_sampler( global_device, sampler, allocator, )
}

destroy_sampler_ycbcr_conversion :: #force_inline proc "system" ( ycbcr_conversion: Sampler_Ycbcr_Conversion, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_sampler_ycbcr_conversion( global_device, ycbcr_conversion, allocator, )
}

destroy_semaphore :: #force_inline proc "system" ( semaphore: Semaphore, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_semaphore( global_device, semaphore, allocator, )
}

destroy_shader :: #force_inline proc "system" ( shader: Shader, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_shader( global_device, shader, allocator, )
}

destroy_shader_module :: #force_inline proc "system" ( shader_module: Shader_Module, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_shader_module( global_device, shader_module, allocator, )
}

destroy_swapchain :: #force_inline proc "system" ( swapchain: Swapchain, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_swapchain( global_device, swapchain, allocator, )
}

destroy_validation_cache :: #force_inline proc "system" ( validation_cache: Validation_Cache, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_validation_cache( global_device, validation_cache, allocator, )
}

destroy_video_session :: #force_inline proc "system" ( video_session: Video_Session, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_video_session( global_device, video_session, allocator, )
}

destroy_video_session_parameters :: #force_inline proc "system" ( video_session_parameters: Video_Session_Parameters, allocator: ^Allocation_Callbacks = nil) {
	raw_destroy_video_session_parameters( global_device, video_session_parameters, allocator, )
}

device_wait_idle :: #force_inline proc "system" ( ) -> Result {
	return raw_device_wait_idle( global_device, )
}

display_power_control :: #force_inline proc "system" ( display: Display, power_state: Display_Power_State) -> Result {
	return raw_display_power_control( global_device, display, &Display_Power_Info { s_type = .Display_Power_Info, power_state = power_state, }, )
}

export_metal_objects :: #force_inline proc "system" ( ) {
	raw_export_metal_objects( global_device, &Export_Metal_Objects_Info { s_type = .Export_Metal_Objects_Info, }, )
}

flush_mapped_memory_ranges :: #force_inline proc "system" ( memory_ranges: []Mapped_Memory_Range) -> Result {
	return raw_flush_mapped_memory_ranges( global_device, u32(len(memory_ranges)), raw_data(memory_ranges), )
}

free_command_buffers :: #force_inline proc "system" ( command_pool: Command_Pool, command_buffers: []Command_Buffer) {
	raw_free_command_buffers( global_device, command_pool, u32(len(command_buffers)), raw_data(command_buffers), )
}

free_descriptor_sets :: #force_inline proc "system" ( descriptor_pool: Descriptor_Pool, descriptor_sets: []Descriptor_Set) -> Result {
	return raw_free_descriptor_sets( global_device, descriptor_pool, u32(len(descriptor_sets)), raw_data(descriptor_sets), )
}

free_memory :: #force_inline proc "system" ( memory: Device_Memory, allocator: ^Allocation_Callbacks = nil) {
	raw_free_memory( global_device, memory, allocator, )
}

get_acceleration_structure_build_sizes :: #force_inline proc "system" ( build_type: Acceleration_Structure_Build_Type, build_info: ^Acceleration_Structure_Build_Geometry_Info, max_primitive_counts: ^u32) -> (size_info: Acceleration_Structure_Build_Sizes_Info) {
	raw_get_acceleration_structure_build_sizes( global_device, build_type, build_info, max_primitive_counts, &size_info, )
	return
}

get_acceleration_structure_device_address :: #force_inline proc "system" ( ) -> (info: Acceleration_Structure_Device_Address_Info, device_address: Device_Address) {
	device_address = raw_get_acceleration_structure_device_address( global_device, &info, )
	return
}

get_acceleration_structure_handle :: #force_inline proc "system" ( acceleration_structure: Acceleration_Structure, data_size: int, data: [^]u8) -> Result {
	return raw_get_acceleration_structure_handle( global_device, acceleration_structure, data_size, data, )
}

get_acceleration_structure_memory_requirements :: #force_inline proc "system" ( type: Acceleration_Structure_Memory_Requirements_Type, acceleration_structure: Acceleration_Structure) -> (memory_requirements: Memory_Requirements_2) {
	raw_get_acceleration_structure_memory_requirements( global_device, &Acceleration_Structure_Memory_Requirements_Info { s_type = .Acceleration_Structure_Memory_Requirements_Info, type = type, acceleration_structure = acceleration_structure, }, &memory_requirements, )
	return
}

get_acceleration_structure_opaque_capture_descriptor_data :: #force_inline proc "system" ( acceleration_structure: Acceleration_Structure, acceleration_structure_nv: Acceleration_Structure, data: [^]u8) -> Result {
	return raw_get_acceleration_structure_opaque_capture_descriptor_data( global_device, &Acceleration_Structure_Capture_Descriptor_Data_Info { s_type = .Acceleration_Structure_Capture_Descriptor_Data_Info, acceleration_structure = acceleration_structure, acceleration_structure_nv = acceleration_structure_nv, }, data, )
}

get_buffer_device_address :: #force_inline proc "system" ( ) -> (info: Buffer_Device_Address_Info, device_address: Device_Address) {
	device_address = raw_get_buffer_device_address( global_device, &info, )
	return
}

get_buffer_memory_requirements :: #force_inline proc "system" ( buffer: Buffer) -> (memory_requirements: Memory_Requirements) {
	raw_get_buffer_memory_requirements( global_device, buffer, &memory_requirements, )
	return
}

get_buffer_memory_requirements2 :: #force_inline proc "system" ( buffer: Buffer) -> (memory_requirements: Memory_Requirements_2) {
	raw_get_buffer_memory_requirements2( global_device, &Buffer_Memory_Requirements_Info_2 { s_type = .Buffer_Memory_Requirements_Info_2, buffer = buffer, }, &memory_requirements, )
	return
}

get_buffer_opaque_capture_address :: #force_inline proc "system" ( ) -> (info: Buffer_Device_Address_Info, u64: u64) {
	u64 = raw_get_buffer_opaque_capture_address( global_device, &info, )
	return
}

get_buffer_opaque_capture_descriptor_data :: #force_inline proc "system" ( buffer: Buffer, data: [^]u8) -> Result {
	return raw_get_buffer_opaque_capture_descriptor_data( global_device, &Buffer_Capture_Descriptor_Data_Info { s_type = .Buffer_Capture_Descriptor_Data_Info, buffer = buffer, }, data, )
}

get_calibrated_timestamps :: #force_inline proc "system" ( timestamp_infos: []Calibrated_Timestamp_Info, timestamps: ^u64) -> (max_deviation: u64, result: Result) {
	result = raw_get_calibrated_timestamps( global_device, u32(len(timestamp_infos)), raw_data(timestamp_infos), timestamps, &max_deviation, )
	return
}

get_cuda_module_cache :: #force_inline proc "system" ( module: Cuda_Module, cache_size: ^int, cache_data: [^]u8) -> Result {
	return raw_get_cuda_module_cache( global_device, module, cache_size, cache_data, )
}

get_deferred_operation_max_concurrency :: #force_inline proc "system" ( operation: Deferred_Operation) -> u32 {
	return raw_get_deferred_operation_max_concurrency( global_device, operation, )
}

get_deferred_operation_result :: #force_inline proc "system" ( operation: Deferred_Operation) -> Result {
	return raw_get_deferred_operation_result( global_device, operation, )
}

get_descriptor :: #force_inline proc "system" ( type: Descriptor_Type, _data: Descriptor_Data, data_size: int, descriptor: [^]u8) {
	raw_get_descriptor( global_device, &Descriptor_Get_Info { s_type = .Descriptor_Get_Info, type = type, data = _data, }, data_size, descriptor, )
}

get_descriptor_set_host_mapping_valve :: #force_inline proc "system" ( descriptor_set: Descriptor_Set) -> (data: [^]u8) {
	raw_get_descriptor_set_host_mapping_valve( global_device, descriptor_set, &data, )
	return
}

get_descriptor_set_layout_binding_offset :: #force_inline proc "system" ( layout: Descriptor_Set_Layout, binding: u32) -> (offset: Device_Size) {
	raw_get_descriptor_set_layout_binding_offset( global_device, layout, binding, &offset, )
	return
}

get_descriptor_set_layout_host_mapping_info_valve :: #force_inline proc "system" ( descriptor_set_layout: Descriptor_Set_Layout, _binding: u32) -> (host_mapping: Descriptor_Set_Layout_Host_Mapping_Info_Valve) {
	raw_get_descriptor_set_layout_host_mapping_info_valve( global_device, &Descriptor_Set_Binding_Reference_Valve { s_type = .Descriptor_Set_Binding_Reference_Valve, descriptor_set_layout = descriptor_set_layout, binding = _binding, }, &host_mapping, )
	return
}

get_descriptor_set_layout_size :: #force_inline proc "system" ( layout: Descriptor_Set_Layout, layout_size_in_bytes: ^Device_Size) {
	raw_get_descriptor_set_layout_size( global_device, layout, layout_size_in_bytes, )
}

get_descriptor_set_layout_support :: #force_inline proc "system" (bindings: []Descriptor_Set_Layout_Binding,  flags: Descriptor_Set_Layout_Create_Flags = {}) -> (support: Descriptor_Set_Layout_Support) {
	raw_get_descriptor_set_layout_support( global_device, &Descriptor_Set_Layout_Create_Info { s_type = .Descriptor_Set_Layout_Create_Info, flags = flags, binding_count = u32(len(bindings)), bindings = raw_data(bindings), }, &support, )
	return
}

get_device_acceleration_structure_compatibility :: #force_inline proc "system" ( version_data: ^u8) -> (compatibility: Acceleration_Structure_Compatibility) {
	raw_get_device_acceleration_structure_compatibility( global_device, &Acceleration_Structure_Version_Info { s_type = .Acceleration_Structure_Version_Info, version_data = version_data, }, &compatibility, )
	return
}

get_device_buffer_memory_requirements :: #force_inline proc "system" ( create_info: ^Buffer_Create_Info) -> (memory_requirements: Memory_Requirements_2) {
	raw_get_device_buffer_memory_requirements( global_device, &Device_Buffer_Memory_Requirements { s_type = .Device_Buffer_Memory_Requirements, create_info = create_info, }, &memory_requirements, )
	return
}

get_device_fault_info :: #force_inline proc "system" ( address_info_count: u32, vendor_info_count: u32, vendor_binary_size: Device_Size) -> (fault_info: Device_Fault_Info, result: Result) {
	result = raw_get_device_fault_info( global_device, &Device_Fault_Counts { s_type = .Device_Fault_Counts, address_info_count = address_info_count, vendor_info_count = vendor_info_count, vendor_binary_size = vendor_binary_size, }, &fault_info, )
	return
}

get_device_group_peer_memory_features :: #force_inline proc "system" ( heap_index: u32, local_device_index: u32, remote_device_index: u32, peer_memory_features: [^]Peer_Memory_Feature_Flags) {
	raw_get_device_group_peer_memory_features( global_device, heap_index, local_device_index, remote_device_index, peer_memory_features, )
}

get_device_group_present_capabilities :: #force_inline proc "system" ( ) -> (device_group_present_capabilities: Device_Group_Present_Capabilities, result: Result) {
	result = raw_get_device_group_present_capabilities( global_device, &device_group_present_capabilities, )
	return
}

get_device_group_surface_present_modes :: #force_inline proc "system" ( surface: Surface, modes: [^]Device_Group_Present_Mode_Flags) -> Result {
	return raw_get_device_group_surface_present_modes( global_device, surface, modes, )
}

get_device_group_surface_present_modes2 :: #force_inline proc "system" ( _surface: Surface, modes: [^]Device_Group_Present_Mode_Flags) -> Result {
	return raw_get_device_group_surface_present_modes2( global_device, &Physical_Device_Surface_Info_2 { s_type = .Physical_Device_Surface_Info_2, surface = _surface, }, modes, )
}

get_device_image_memory_requirements :: #force_inline proc "system" ( create_info: ^Image_Create_Info, plane_aspect: Image_Aspect_Flags) -> (memory_requirements: Memory_Requirements_2) {
	raw_get_device_image_memory_requirements( global_device, &Device_Image_Memory_Requirements { s_type = .Device_Image_Memory_Requirements, create_info = create_info, plane_aspect = plane_aspect, }, &memory_requirements, )
	return
}

get_device_image_sparse_memory_requirements :: #force_inline proc ( create_info: ^Image_Create_Info, plane_aspect: Image_Aspect_Flags, allocator := context.allocator) -> (sparse_memory_requirements: []Sparse_Image_Memory_Requirements_2) {
	sparse_memory_requirement_count: u32
	raw_get_device_image_sparse_memory_requirements( global_device, &Device_Image_Memory_Requirements { s_type = .Device_Image_Memory_Requirements, create_info = create_info, plane_aspect = plane_aspect, }, &sparse_memory_requirement_count, nil, )
	if sparse_memory_requirement_count == 0 do return
	sparse_memory_requirements = make([]Sparse_Image_Memory_Requirements_2, sparse_memory_requirement_count, allocator)
	raw_get_device_image_sparse_memory_requirements( global_device, &Device_Image_Memory_Requirements { s_type = .Device_Image_Memory_Requirements, create_info = create_info, plane_aspect = plane_aspect, }, &sparse_memory_requirement_count, raw_data(sparse_memory_requirements), )
	return
}

get_device_image_subresource_layout :: #force_inline proc "system" ( create_info: ^Image_Create_Info, subresource: ^Image_Subresource_2) -> (layout: Subresource_Layout_2) {
	raw_get_device_image_subresource_layout( global_device, &Device_Image_Subresource_Info { s_type = .Device_Image_Subresource_Info, create_info = create_info, subresource = subresource, }, &layout, )
	return
}

get_device_memory_commitment :: #force_inline proc "system" ( memory: Device_Memory, committed_memory_in_bytes: ^Device_Size) {
	raw_get_device_memory_commitment( global_device, memory, committed_memory_in_bytes, )
}

get_device_memory_opaque_capture_address :: #force_inline proc "system" ( ) -> (info: Device_Memory_Opaque_Capture_Address_Info, u64: u64) {
	u64 = raw_get_device_memory_opaque_capture_address( global_device, &info, )
	return
}

get_device_micromap_compatibility :: #force_inline proc "system" ( version_data: ^u8) -> (compatibility: Acceleration_Structure_Compatibility) {
	raw_get_device_micromap_compatibility( global_device, &Micromap_Version_Info { s_type = .Micromap_Version_Info, version_data = version_data, }, &compatibility, )
	return
}

get_device_queue :: #force_inline proc "system" ( queue_family_index: u32, queue_index: u32) -> (queue: Queue) {
	raw_get_device_queue( global_device, queue_family_index, queue_index, &queue, )
	return
}

get_device_queue2 :: #force_inline proc "system" (queue_family_index: u32, queue_index: u32,  flags: Device_Queue_Create_Flags = {}) -> (queue: Queue) {
	raw_get_device_queue2( global_device, &Device_Queue_Info_2 { s_type = .Device_Queue_Info_2, flags = flags, queue_family_index = queue_family_index, queue_index = queue_index, }, &queue, )
	return
}

get_device_subpass_shading_max_workgroup_size_huawei :: #force_inline proc "system" ( renderpass: Render_Pass) -> (max_workgroup_size: Extent_2D, result: Result) {
	result = raw_get_device_subpass_shading_max_workgroup_size_huawei( global_device, renderpass, &max_workgroup_size, )
	return
}

get_dynamic_rendering_tile_properties_qcom :: #force_inline proc "system" ( rendering_info: ^Rendering_Info) -> (properties: Tile_Properties_Qcom, result: Result) {
	result = raw_get_dynamic_rendering_tile_properties_qcom( global_device, rendering_info, &properties, )
	return
}

get_encoded_video_session_parameters :: #force_inline proc ( _video_session_parameters: Video_Session_Parameters, has_overrides: b32, allocator := context.allocator) -> (data: []u8, result: Result) {
	data_size: int
	result = raw_get_encoded_video_session_parameters( global_device, &Video_Encode_Session_Parameters_Get_Info { s_type = .Video_Encode_Session_Parameters_Get_Info, video_session_parameters = _video_session_parameters, }, &Video_Encode_Session_Parameters_Feedback_Info { s_type = .Video_Encode_Session_Parameters_Feedback_Info, has_overrides = has_overrides, }, &data_size, nil, )
	if result != .Success || data_size == 0 do return
	data = make([]u8, data_size, allocator)
	result = raw_get_encoded_video_session_parameters( global_device, &Video_Encode_Session_Parameters_Get_Info { s_type = .Video_Encode_Session_Parameters_Get_Info, video_session_parameters = _video_session_parameters, }, &Video_Encode_Session_Parameters_Feedback_Info { s_type = .Video_Encode_Session_Parameters_Feedback_Info, has_overrides = has_overrides, }, &data_size, raw_data(data), )
	return
}

get_event_status :: #force_inline proc "system" ( event: Event) -> Result {
	return raw_get_event_status( global_device, event, )
}

get_fence_fd :: #force_inline proc "system" ( fence: Fence, handle_type: External_Fence_Handle_Type_Flags, fd: ^c.int) -> Result {
	return raw_get_fence_fd( global_device, &Fence_Get_Fd_Info { s_type = .Fence_Get_Fd_Info, fence = fence, handle_type = handle_type, }, fd, )
}

get_fence_status :: #force_inline proc "system" ( fence: Fence) -> Result {
	return raw_get_fence_status( global_device, fence, )
}

get_fence_win32_handle :: #force_inline proc "system" ( fence: Fence, handle_type: External_Fence_Handle_Type_Flags) -> (handle: HANDLE, result: Result) {
	result = raw_get_fence_win32_handle( global_device, &Fence_Get_Win32_Handle_Info { s_type = .Fence_Get_Win32_Handle_Info, fence = fence, handle_type = handle_type, }, &handle, )
	return
}

get_framebuffer_tile_properties_qcom :: #force_inline proc ( framebuffer: Framebuffer, allocator := context.allocator) -> (properties: []Tile_Properties_Qcom, result: Result) {
	properties_count: u32
	result = raw_get_framebuffer_tile_properties_qcom( global_device, framebuffer, &properties_count, nil, )
	if result != .Success || properties_count == 0 do return
	properties = make([]Tile_Properties_Qcom, properties_count, allocator)
	result = raw_get_framebuffer_tile_properties_qcom( global_device, framebuffer, &properties_count, raw_data(properties), )
	return
}

get_generated_commands_memory_requirements :: #force_inline proc "system" ( pipeline_bind_point: Pipeline_Bind_Point, pipeline: Pipeline, indirect_commands_layout: Indirect_Commands_Layout, max_sequences_count: u32) -> (memory_requirements: Memory_Requirements_2) {
	raw_get_generated_commands_memory_requirements( global_device, &Generated_Commands_Memory_Requirements_Info { s_type = .Generated_Commands_Memory_Requirements_Info, pipeline_bind_point = pipeline_bind_point, pipeline = pipeline, indirect_commands_layout = indirect_commands_layout, max_sequences_count = max_sequences_count, }, &memory_requirements, )
	return
}

get_image_drm_format_modifier_properties :: #force_inline proc "system" ( image: Image) -> (properties: Image_Drm_Format_Modifier_Properties, result: Result) {
	result = raw_get_image_drm_format_modifier_properties( global_device, image, &properties, )
	return
}

get_image_memory_requirements :: #force_inline proc "system" ( image: Image) -> (memory_requirements: Memory_Requirements) {
	raw_get_image_memory_requirements( global_device, image, &memory_requirements, )
	return
}

get_image_memory_requirements2 :: #force_inline proc "system" ( image: Image) -> (memory_requirements: Memory_Requirements_2) {
	raw_get_image_memory_requirements2( global_device, &Image_Memory_Requirements_Info_2 { s_type = .Image_Memory_Requirements_Info_2, image = image, }, &memory_requirements, )
	return
}

get_image_opaque_capture_descriptor_data :: #force_inline proc "system" ( image: Image, data: [^]u8) -> Result {
	return raw_get_image_opaque_capture_descriptor_data( global_device, &Image_Capture_Descriptor_Data_Info { s_type = .Image_Capture_Descriptor_Data_Info, image = image, }, data, )
}

get_image_sparse_memory_requirements :: #force_inline proc ( image: Image, allocator := context.allocator) -> (sparse_memory_requirements: []Sparse_Image_Memory_Requirements) {
	sparse_memory_requirement_count: u32
	raw_get_image_sparse_memory_requirements( global_device, image, &sparse_memory_requirement_count, nil, )
	if sparse_memory_requirement_count == 0 do return
	sparse_memory_requirements = make([]Sparse_Image_Memory_Requirements, sparse_memory_requirement_count, allocator)
	raw_get_image_sparse_memory_requirements( global_device, image, &sparse_memory_requirement_count, raw_data(sparse_memory_requirements), )
	return
}

get_image_sparse_memory_requirements2 :: #force_inline proc ( image: Image, allocator := context.allocator) -> (sparse_memory_requirements: []Sparse_Image_Memory_Requirements_2) {
	sparse_memory_requirement_count: u32
	raw_get_image_sparse_memory_requirements2( global_device, &Image_Sparse_Memory_Requirements_Info_2 { s_type = .Image_Sparse_Memory_Requirements_Info_2, image = image, }, &sparse_memory_requirement_count, nil, )
	if sparse_memory_requirement_count == 0 do return
	sparse_memory_requirements = make([]Sparse_Image_Memory_Requirements_2, sparse_memory_requirement_count, allocator)
	raw_get_image_sparse_memory_requirements2( global_device, &Image_Sparse_Memory_Requirements_Info_2 { s_type = .Image_Sparse_Memory_Requirements_Info_2, image = image, }, &sparse_memory_requirement_count, raw_data(sparse_memory_requirements), )
	return
}

get_image_subresource_layout :: #force_inline proc "system" ( image: Image, subresource: ^Image_Subresource) -> (layout: Subresource_Layout) {
	raw_get_image_subresource_layout( global_device, image, subresource, &layout, )
	return
}

get_image_subresource_layout2 :: #force_inline proc "system" ( image: Image, image_subresource: Image_Subresource) -> (layout: Subresource_Layout_2) {
	raw_get_image_subresource_layout2( global_device, image, &Image_Subresource_2 { s_type = .Image_Subresource_2, image_subresource = image_subresource, }, &layout, )
	return
}

get_image_view_address :: #force_inline proc "system" ( image_view: Image_View) -> (properties: Image_View_Address_Properties, result: Result) {
	result = raw_get_image_view_address( global_device, image_view, &properties, )
	return
}

get_image_view_handle :: #force_inline proc "system" ( ) -> (info: Image_View_Handle_Info, u32: u32) {
	u32 = raw_get_image_view_handle( global_device, &info, )
	return
}

get_image_view_handle64 :: #force_inline proc "system" ( ) -> (info: Image_View_Handle_Info, u64: u64) {
	u64 = raw_get_image_view_handle64( global_device, &info, )
	return
}

get_image_view_opaque_capture_descriptor_data :: #force_inline proc "system" ( image_view: Image_View, data: [^]u8) -> Result {
	return raw_get_image_view_opaque_capture_descriptor_data( global_device, &Image_View_Capture_Descriptor_Data_Info { s_type = .Image_View_Capture_Descriptor_Data_Info, image_view = image_view, }, data, )
}

get_latency_timings :: #force_inline proc "system" ( swapchain: Swapchain) -> (latency_marker_info: Get_Latency_Marker_Info) {
	raw_get_latency_timings( global_device, swapchain, &latency_marker_info, )
	return
}

get_memory_fd :: #force_inline proc "system" ( memory: Device_Memory, handle_type: External_Memory_Handle_Type_Flags, fd: ^c.int) -> Result {
	return raw_get_memory_fd( global_device, &Memory_Get_Fd_Info { s_type = .Memory_Get_Fd_Info, memory = memory, handle_type = handle_type, }, fd, )
}

get_memory_fd_properties :: #force_inline proc "system" ( handle_type: External_Memory_Handle_Type_Flags, fd: c.int) -> (memory_fd_properties: Memory_Fd_Properties, result: Result) {
	result = raw_get_memory_fd_properties( global_device, handle_type, fd, &memory_fd_properties, )
	return
}

get_memory_host_pointer_properties :: #force_inline proc "system" ( handle_type: External_Memory_Handle_Type_Flags, host_pointer: rawptr) -> (memory_host_pointer_properties: Memory_Host_Pointer_Properties, result: Result) {
	result = raw_get_memory_host_pointer_properties( global_device, handle_type, host_pointer, &memory_host_pointer_properties, )
	return
}

get_memory_remote_address :: #force_inline proc "system" ( _memory: Device_Memory, handle_type: External_Memory_Handle_Type_Flags, address: ^Remote_Address) -> Result {
	return raw_get_memory_remote_address( global_device, &Memory_Get_Remote_Address_Info { s_type = .Memory_Get_Remote_Address_Info, memory = _memory, handle_type = handle_type, }, address, )
}

get_memory_win32_handle :: #force_inline proc "system" ( memory: Device_Memory, handle_type: External_Memory_Handle_Type_Flags) -> (handle: HANDLE, result: Result) {
	result = raw_get_memory_win32_handle( global_device, &Memory_Get_Win32_Handle_Info { s_type = .Memory_Get_Win32_Handle_Info, memory = memory, handle_type = handle_type, }, &handle, )
	return
}

get_memory_win32_handle_properties :: #force_inline proc "system" ( handle_type: External_Memory_Handle_Type_Flags, handle: HANDLE) -> (memory_win32_handle_properties: Memory_Win32_Handle_Properties, result: Result) {
	result = raw_get_memory_win32_handle_properties( global_device, handle_type, handle, &memory_win32_handle_properties, )
	return
}

get_micromap_build_sizes :: #force_inline proc "system" ( build_type: Acceleration_Structure_Build_Type, build_info: ^Micromap_Build_Info) -> (size_info: Micromap_Build_Sizes_Info) {
	raw_get_micromap_build_sizes( global_device, build_type, build_info, &size_info, )
	return
}

get_past_presentation_timing :: #force_inline proc ( swapchain: Swapchain, allocator := context.allocator) -> (presentation_timings: []Past_Presentation_Timing, result: Result) {
	presentation_timing_count: u32
	result = raw_get_past_presentation_timing( global_device, swapchain, &presentation_timing_count, nil, )
	if result != .Success || presentation_timing_count == 0 do return
	presentation_timings = make([]Past_Presentation_Timing, presentation_timing_count, allocator)
	result = raw_get_past_presentation_timing( global_device, swapchain, &presentation_timing_count, raw_data(presentation_timings), )
	return
}

get_performance_parameter_intel :: #force_inline proc "system" ( parameter: Performance_Parameter_Type_Intel) -> (value: Performance_Value_Intel, result: Result) {
	result = raw_get_performance_parameter_intel( global_device, parameter, &value, )
	return
}

get_pipeline_binary_data :: #force_inline proc "system" ( _pipeline_binary: Pipeline_Binary, key_size: u32, _key: [MAX_PIPELINE_BINARY_KEY_SIZE_KHR]u8, pipeline_binary_data_size: ^int, pipeline_binary_data: [^]u8) -> Result {
	return raw_get_pipeline_binary_data( global_device, &Pipeline_Binary_Data_Info { s_type = .Pipeline_Binary_Data_Info, pipeline_binary = _pipeline_binary, }, &Pipeline_Binary_Key { s_type = .Pipeline_Binary_Key, key_size = key_size, key = _key, }, pipeline_binary_data_size, pipeline_binary_data, )
}

get_pipeline_cache_data :: #force_inline proc ( pipeline_cache: Pipeline_Cache, allocator := context.allocator) -> (data: []u8, result: Result) {
	data_size: int
	result = raw_get_pipeline_cache_data( global_device, pipeline_cache, &data_size, nil, )
	if result != .Success || data_size == 0 do return
	data = make([]u8, data_size, allocator)
	result = raw_get_pipeline_cache_data( global_device, pipeline_cache, &data_size, raw_data(data), )
	return
}

get_pipeline_executable_internal_representations :: #force_inline proc ( pipeline: Pipeline, executable_index: u32, allocator := context.allocator) -> (internal_representations: []Pipeline_Executable_Internal_Representation, result: Result) {
	internal_representation_count: u32
	result = raw_get_pipeline_executable_internal_representations( global_device, &Pipeline_Executable_Info { s_type = .Pipeline_Executable_Info, pipeline = pipeline, executable_index = executable_index, }, &internal_representation_count, nil, )
	if result != .Success || internal_representation_count == 0 do return
	internal_representations = make([]Pipeline_Executable_Internal_Representation, internal_representation_count, allocator)
	result = raw_get_pipeline_executable_internal_representations( global_device, &Pipeline_Executable_Info { s_type = .Pipeline_Executable_Info, pipeline = pipeline, executable_index = executable_index, }, &internal_representation_count, raw_data(internal_representations), )
	return
}

get_pipeline_executable_properties :: #force_inline proc ( _pipeline: Pipeline, allocator := context.allocator) -> (properties: []Pipeline_Executable_Properties, result: Result) {
	executable_count: u32
	result = raw_get_pipeline_executable_properties( global_device, &Pipeline_Info { s_type = .Pipeline_Info, pipeline = _pipeline, }, &executable_count, nil, )
	if result != .Success || executable_count == 0 do return
	properties = make([]Pipeline_Executable_Properties, executable_count, allocator)
	result = raw_get_pipeline_executable_properties( global_device, &Pipeline_Info { s_type = .Pipeline_Info, pipeline = _pipeline, }, &executable_count, raw_data(properties), )
	return
}

get_pipeline_executable_statistics :: #force_inline proc ( pipeline: Pipeline, executable_index: u32, allocator := context.allocator) -> (statistics: []Pipeline_Executable_Statistic, result: Result) {
	statistic_count: u32
	result = raw_get_pipeline_executable_statistics( global_device, &Pipeline_Executable_Info { s_type = .Pipeline_Executable_Info, pipeline = pipeline, executable_index = executable_index, }, &statistic_count, nil, )
	if result != .Success || statistic_count == 0 do return
	statistics = make([]Pipeline_Executable_Statistic, statistic_count, allocator)
	result = raw_get_pipeline_executable_statistics( global_device, &Pipeline_Executable_Info { s_type = .Pipeline_Executable_Info, pipeline = pipeline, executable_index = executable_index, }, &statistic_count, raw_data(statistics), )
	return
}

get_pipeline_indirect_device_address :: #force_inline proc "system" ( ) -> (info: Pipeline_Indirect_Device_Address_Info, device_address: Device_Address) {
	device_address = raw_get_pipeline_indirect_device_address( global_device, &info, )
	return
}

get_pipeline_indirect_memory_requirements :: #force_inline proc "system" (stage: Pipeline_Shader_Stage_Create_Info, layout: Pipeline_Layout, base_pipeline_handle: Pipeline, base_pipeline_index: i32,  flags: Pipeline_Create_Flags = {}) -> (memory_requirements: Memory_Requirements_2) {
	raw_get_pipeline_indirect_memory_requirements( global_device, &Compute_Pipeline_Create_Info { s_type = .Compute_Pipeline_Create_Info, flags = flags, stage = stage, layout = layout, base_pipeline_handle = base_pipeline_handle, base_pipeline_index = base_pipeline_index, }, &memory_requirements, )
	return
}

get_pipeline_key :: #force_inline proc "system" ( ) -> (pipeline_key: Pipeline_Binary_Key, result: Result) {
	result = raw_get_pipeline_key( global_device, &Pipeline_Create_Info { s_type = .Pipeline_Create_Info, }, &pipeline_key, )
	return
}

get_pipeline_properties :: #force_inline proc "system" ( _pipeline: Pipeline) -> (pipeline_properties: Base_Out_Structure, result: Result) {
	result = raw_get_pipeline_properties( global_device, &Pipeline_Info { s_type = .Pipeline_Info, pipeline = _pipeline, }, &pipeline_properties, )
	return
}

get_private_data :: #force_inline proc "system" ( object_type: Object_Type, object_handle: u64, private_data_slot: Private_Data_Slot) -> (data: u64) {
	raw_get_private_data( global_device, object_type, object_handle, private_data_slot, &data, )
	return
}

get_query_pool_results :: #force_inline proc "system" ( query_pool: Query_Pool, first_query: u32, query_count: u32, data_size: int, data: [^]u8, stride: Device_Size, flags: Query_Result_Flags = {}) -> Result {
	return raw_get_query_pool_results( global_device, query_pool, first_query, query_count, data_size, data, stride, flags, )
}

get_queue_checkpoint_data :: #force_inline proc "system" (queue: Queue, checkpoint_data_count: ^u32) -> (checkpoint_data: Checkpoint_Data) {
	raw_get_queue_checkpoint_data( queue, checkpoint_data_count, &checkpoint_data, )
	return
}

get_queue_checkpoint_data2 :: #force_inline proc "system" (queue: Queue, checkpoint_data_count: ^u32) -> (checkpoint_data: Checkpoint_Data_2) {
	raw_get_queue_checkpoint_data2( queue, checkpoint_data_count, &checkpoint_data, )
	return
}

get_ray_tracing_capture_replay_shader_group_handles :: #force_inline proc "system" ( pipeline: Pipeline, first_group: u32, group_count: u32, data_size: int, data: [^]u8) -> Result {
	return raw_get_ray_tracing_capture_replay_shader_group_handles( global_device, pipeline, first_group, group_count, data_size, data, )
}

get_ray_tracing_shader_group_handles :: #force_inline proc "system" ( pipeline: Pipeline, first_group: u32, group_count: u32, data_size: int, data: [^]u8) -> Result {
	return raw_get_ray_tracing_shader_group_handles( global_device, pipeline, first_group, group_count, data_size, data, )
}

get_ray_tracing_shader_group_stack_size :: #force_inline proc "system" ( pipeline: Pipeline, group: u32, group_shader: Shader_Group_Shader) -> Device_Size {
	return raw_get_ray_tracing_shader_group_stack_size( global_device, pipeline, group, group_shader, )
}

get_refresh_cycle_duration :: #force_inline proc "system" ( swapchain: Swapchain) -> (display_timing_properties: Refresh_Cycle_Duration, result: Result) {
	result = raw_get_refresh_cycle_duration( global_device, swapchain, &display_timing_properties, )
	return
}

get_render_area_granularity :: #force_inline proc "system" ( render_pass: Render_Pass) -> (granularity: Extent_2D) {
	raw_get_render_area_granularity( global_device, render_pass, &granularity, )
	return
}

get_rendering_area_granularity :: #force_inline proc "system" ( view_mask: u32, color_attachment_formats: []Format, depth_attachment_format: Format, stencil_attachment_format: Format) -> (granularity: Extent_2D) {
	raw_get_rendering_area_granularity( global_device, &Rendering_Area_Info { s_type = .Rendering_Area_Info, view_mask = view_mask, color_attachment_count = u32(len(color_attachment_formats)), color_attachment_formats = raw_data(color_attachment_formats), depth_attachment_format = depth_attachment_format, stencil_attachment_format = stencil_attachment_format, }, &granularity, )
	return
}

get_sampler_opaque_capture_descriptor_data :: #force_inline proc "system" ( sampler: Sampler, data: [^]u8) -> Result {
	return raw_get_sampler_opaque_capture_descriptor_data( global_device, &Sampler_Capture_Descriptor_Data_Info { s_type = .Sampler_Capture_Descriptor_Data_Info, sampler = sampler, }, data, )
}

get_semaphore_counter_value :: #force_inline proc "system" ( semaphore: Semaphore) -> (value: u64, result: Result) {
	result = raw_get_semaphore_counter_value( global_device, semaphore, &value, )
	return
}

get_semaphore_fd :: #force_inline proc "system" ( semaphore: Semaphore, handle_type: External_Semaphore_Handle_Type_Flags, fd: ^c.int) -> Result {
	return raw_get_semaphore_fd( global_device, &Semaphore_Get_Fd_Info { s_type = .Semaphore_Get_Fd_Info, semaphore = semaphore, handle_type = handle_type, }, fd, )
}

get_semaphore_win32_handle :: #force_inline proc "system" ( semaphore: Semaphore, handle_type: External_Semaphore_Handle_Type_Flags) -> (handle: HANDLE, result: Result) {
	result = raw_get_semaphore_win32_handle( global_device, &Semaphore_Get_Win32_Handle_Info { s_type = .Semaphore_Get_Win32_Handle_Info, semaphore = semaphore, handle_type = handle_type, }, &handle, )
	return
}

get_shader_binary_data :: #force_inline proc ( shader: Shader, allocator := context.allocator) -> (data: []u8, result: Result) {
	data_size: int
	result = raw_get_shader_binary_data( global_device, shader, &data_size, nil, )
	if result != .Success || data_size == 0 do return
	data = make([]u8, data_size, allocator)
	result = raw_get_shader_binary_data( global_device, shader, &data_size, raw_data(data), )
	return
}

get_shader_info :: #force_inline proc "system" ( pipeline: Pipeline, shader_stage: Shader_Stage_Flags, info_type: Shader_Info_Type, info_size: ^int, info: [^]u8) -> Result {
	return raw_get_shader_info( global_device, pipeline, shader_stage, info_type, info_size, info, )
}

get_shader_module_create_info_identifier :: #force_inline proc "system" (code_size: int, code: ^u32,  flags: Shader_Module_Create_Flags = {}) -> (identifier: Shader_Module_Identifier) {
	raw_get_shader_module_create_info_identifier( global_device, &Shader_Module_Create_Info { s_type = .Shader_Module_Create_Info, flags = flags, code_size = code_size, code = code, }, &identifier, )
	return
}

get_shader_module_identifier :: #force_inline proc "system" ( shader_module: Shader_Module) -> (identifier: Shader_Module_Identifier) {
	raw_get_shader_module_identifier( global_device, shader_module, &identifier, )
	return
}

get_swapchain_counter :: #force_inline proc "system" ( swapchain: Swapchain, counter: Surface_Counter_Flags) -> (counter_value: u64, result: Result) {
	result = raw_get_swapchain_counter( global_device, swapchain, counter, &counter_value, )
	return
}

get_swapchain_images :: #force_inline proc ( swapchain: Swapchain, allocator := context.allocator) -> (swapchain_images: []Image, result: Result) {
	swapchain_image_count: u32
	result = raw_get_swapchain_images( global_device, swapchain, &swapchain_image_count, nil, )
	if result != .Success || swapchain_image_count == 0 do return
	swapchain_images = make([]Image, swapchain_image_count, allocator)
	result = raw_get_swapchain_images( global_device, swapchain, &swapchain_image_count, raw_data(swapchain_images), )
	return
}

get_swapchain_status :: #force_inline proc "system" ( swapchain: Swapchain) -> Result {
	return raw_get_swapchain_status( global_device, swapchain, )
}

get_validation_cache_data :: #force_inline proc ( validation_cache: Validation_Cache, allocator := context.allocator) -> (data: []u8, result: Result) {
	data_size: int
	result = raw_get_validation_cache_data( global_device, validation_cache, &data_size, nil, )
	if result != .Success || data_size == 0 do return
	data = make([]u8, data_size, allocator)
	result = raw_get_validation_cache_data( global_device, validation_cache, &data_size, raw_data(data), )
	return
}

get_video_session_memory_requirements :: #force_inline proc ( video_session: Video_Session, allocator := context.allocator) -> (memory_requirements: []Video_Session_Memory_Requirements, result: Result) {
	memory_requirements_count: u32
	result = raw_get_video_session_memory_requirements( global_device, video_session, &memory_requirements_count, nil, )
	if result != .Success || memory_requirements_count == 0 do return
	memory_requirements = make([]Video_Session_Memory_Requirements, memory_requirements_count, allocator)
	result = raw_get_video_session_memory_requirements( global_device, video_session, &memory_requirements_count, raw_data(memory_requirements), )
	return
}

import_fence_fd :: #force_inline proc "system" ( _fence: Fence, handle_type: External_Fence_Handle_Type_Flags, _fd: c.int, flags: Fence_Import_Flags = {}) -> Result {
	return raw_import_fence_fd( global_device, &Import_Fence_Fd_Info { s_type = .Import_Fence_Fd_Info, fence = _fence, flags = flags, handle_type = handle_type, fd = _fd, }, )
}

import_fence_win32_handle :: #force_inline proc "system" ( _fence: Fence, handle_type: External_Fence_Handle_Type_Flags, _handle: HANDLE, name: LPCWSTR, flags: Fence_Import_Flags = {}) -> Result {
	return raw_import_fence_win32_handle( global_device, &Import_Fence_Win32_Handle_Info { s_type = .Import_Fence_Win32_Handle_Info, fence = _fence, flags = flags, handle_type = handle_type, handle = _handle, name = name, }, )
}

import_semaphore_fd :: #force_inline proc "system" ( _semaphore: Semaphore, handle_type: External_Semaphore_Handle_Type_Flags, _fd: c.int, flags: Semaphore_Import_Flags = {}) -> Result {
	return raw_import_semaphore_fd( global_device, &Import_Semaphore_Fd_Info { s_type = .Import_Semaphore_Fd_Info, semaphore = _semaphore, flags = flags, handle_type = handle_type, fd = _fd, }, )
}

import_semaphore_win32_handle :: #force_inline proc "system" ( _semaphore: Semaphore, handle_type: External_Semaphore_Handle_Type_Flags, _handle: HANDLE, name: LPCWSTR, flags: Semaphore_Import_Flags = {}) -> Result {
	return raw_import_semaphore_win32_handle( global_device, &Import_Semaphore_Win32_Handle_Info { s_type = .Import_Semaphore_Win32_Handle_Info, semaphore = _semaphore, flags = flags, handle_type = handle_type, handle = _handle, name = name, }, )
}

initialize_performance_api_intel :: #force_inline proc "system" ( user_data: [^]u8) -> Result {
	return raw_initialize_performance_api_intel( global_device, &Initialize_Performance_Api_Info_Intel { s_type = .Initialize_Performance_Api_Info_Intel, user_data = user_data, }, )
}

invalidate_mapped_memory_ranges :: #force_inline proc "system" ( memory_ranges: []Mapped_Memory_Range) -> Result {
	return raw_invalidate_mapped_memory_ranges( global_device, u32(len(memory_ranges)), raw_data(memory_ranges), )
}

latency_sleep :: #force_inline proc "system" ( swapchain: Swapchain, signal_semaphore: Semaphore, value: u64) -> Result {
	return raw_latency_sleep( global_device, swapchain, &Latency_Sleep_Info { s_type = .Latency_Sleep_Info, signal_semaphore = signal_semaphore, value = value, }, )
}

map_memory :: #force_inline proc "system" ( memory: Device_Memory, offset: Device_Size, size: Device_Size, flags: Memory_Map_Flags = {}) -> (data: [^]u8, result: Result) {
	result = raw_map_memory( global_device, memory, offset, size, flags, &data, )
	return
}

map_memory2 :: #force_inline proc "system" (_memory: Device_Memory, offset: Device_Size, size: Device_Size,  flags: Memory_Map_Flags = {}) -> (data: [^]u8, result: Result) {
	result = raw_map_memory2( global_device, &Memory_Map_Info { s_type = .Memory_Map_Info, flags = flags, memory = _memory, offset = offset, size = size, }, &data, )
	return
}

merge_pipeline_caches :: #force_inline proc "system" ( dst_cache: Pipeline_Cache, src_caches: []Pipeline_Cache) -> Result {
	return raw_merge_pipeline_caches( global_device, dst_cache, u32(len(src_caches)), raw_data(src_caches), )
}

merge_validation_caches :: #force_inline proc "system" ( dst_cache: Validation_Cache, src_caches: []Validation_Cache) -> Result {
	return raw_merge_validation_caches( global_device, dst_cache, u32(len(src_caches)), raw_data(src_caches), )
}

queue_begin_debug_utils_label :: #force_inline proc "system" (queue: Queue, label_name: cstring, color: [4]f32) {
	raw_queue_begin_debug_utils_label( queue, &Debug_Utils_Label { s_type = .Debug_Utils_Label, label_name = label_name, color = color, }, )
}

queue_insert_debug_utils_label :: #force_inline proc "system" (queue: Queue, label_name: cstring, color: [4]f32) {
	raw_queue_insert_debug_utils_label( queue, &Debug_Utils_Label { s_type = .Debug_Utils_Label, label_name = label_name, color = color, }, )
}

queue_notify_out_of_band :: #force_inline proc "system" (queue: Queue, _queue_type: Out_Of_Band_Queue_Type) {
	raw_queue_notify_out_of_band( queue, &Out_Of_Band_Queue_Type_Info { s_type = .Out_Of_Band_Queue_Type_Info, queue_type = _queue_type, }, )
}

queue_present :: #force_inline proc "system" (queue: Queue, image_indices: ^u32, results: ^Result, wait_semaphores: []Semaphore = {}, swapchains: []Swapchain = {}) -> Result {
	return raw_queue_present( queue, &Present_Info { s_type = .Present_Info, wait_semaphore_count = u32(len(wait_semaphores)), wait_semaphores = raw_data(wait_semaphores), swapchain_count = u32(len(swapchains)), swapchains = raw_data(swapchains), image_indices = image_indices, results = results, }, )
}

queue_submit :: #force_inline proc "system" (queue: Queue, submits: []Submit_Info, fence: Fence) -> Result {
	return raw_queue_submit( queue, u32(len(submits)), raw_data(submits), fence, )
}

queue_submit2 :: #force_inline proc "system" (queue: Queue, submits: []Submit_Info_2, fence: Fence) -> Result {
	return raw_queue_submit2( queue, u32(len(submits)), raw_data(submits), fence, )
}

register_device_event :: #force_inline proc "system" ( _device_event: Device_Event_Type, fence: ^Fence, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_register_device_event( global_device, &Device_Event_Info { s_type = .Device_Event_Info, device_event = _device_event, }, allocator, fence, )
}

register_display_event :: #force_inline proc "system" ( display: Display, _display_event: Display_Event_Type, fence: ^Fence, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_register_display_event( global_device, display, &Display_Event_Info { s_type = .Display_Event_Info, display_event = _display_event, }, allocator, fence, )
}

release_captured_pipeline_data :: #force_inline proc "system" ( pipeline: Pipeline, allocator: ^Allocation_Callbacks = nil) -> Result {
	return raw_release_captured_pipeline_data( global_device, &Release_Captured_Pipeline_Data_Info { s_type = .Release_Captured_Pipeline_Data_Info, pipeline = pipeline, }, allocator, )
}

release_full_screen_exclusive_mode :: #force_inline proc "system" ( swapchain: Swapchain) -> Result {
	return raw_release_full_screen_exclusive_mode( global_device, swapchain, )
}

release_performance_configuration_intel :: #force_inline proc "system" ( configuration: Performance_Configuration_Intel) -> Result {
	return raw_release_performance_configuration_intel( global_device, configuration, )
}

release_profiling_lock :: #force_inline proc "system" ( ) {
	raw_release_profiling_lock( global_device, )
}

release_swapchain_images :: #force_inline proc "system" ( swapchain: Swapchain, image_indices: []u32) -> Result {
	return raw_release_swapchain_images( global_device, &Release_Swapchain_Images_Info { s_type = .Release_Swapchain_Images_Info, swapchain = swapchain, image_index_count = u32(len(image_indices)), image_indices = raw_data(image_indices), }, )
}

reset_command_buffer :: #force_inline proc "system" (command_buffer: Command_Buffer, flags: Command_Buffer_Reset_Flags = {}) -> Result {
	return raw_reset_command_buffer( command_buffer, flags, )
}

reset_command_pool :: #force_inline proc "system" ( command_pool: Command_Pool, flags: Command_Pool_Reset_Flags = {}) -> Result {
	return raw_reset_command_pool( global_device, command_pool, flags, )
}

reset_descriptor_pool :: #force_inline proc "system" ( descriptor_pool: Descriptor_Pool, flags: Descriptor_Pool_Reset_Flags = {}) -> Result {
	return raw_reset_descriptor_pool( global_device, descriptor_pool, flags, )
}

reset_event :: #force_inline proc "system" ( event: Event) -> Result {
	return raw_reset_event( global_device, event, )
}

reset_fences :: #force_inline proc "system" ( fences: []Fence) -> Result {
	return raw_reset_fences( global_device, u32(len(fences)), raw_data(fences), )
}

reset_query_pool :: #force_inline proc "system" ( query_pool: Query_Pool, first_query: u32, query_count: u32) {
	raw_reset_query_pool( global_device, query_pool, first_query, query_count, )
}

set_debug_utils_object_name :: #force_inline proc "system" ( object_type: Object_Type, object_handle: u64, object_name: cstring) -> Result {
	return raw_set_debug_utils_object_name( global_device, &Debug_Utils_Object_Name_Info { s_type = .Debug_Utils_Object_Name_Info, object_type = object_type, object_handle = object_handle, object_name = object_name, }, )
}

set_debug_utils_object_tag :: #force_inline proc "system" ( tag_info: ^Debug_Utils_Object_Tag_Info) -> Result {
	return raw_set_debug_utils_object_tag( global_device, tag_info, )
}

set_device_memory_priority :: #force_inline proc "system" ( memory: Device_Memory, priority: f32) {
	raw_set_device_memory_priority( global_device, memory, priority, )
}

set_event :: #force_inline proc "system" ( event: Event) -> Result {
	return raw_set_event( global_device, event, )
}

set_hdr_metadata :: #force_inline proc "system" ( swapchains: []Swapchain, metadata: ^Hdr_Metadata) {
	raw_set_hdr_metadata( global_device, u32(len(swapchains)), raw_data(swapchains), metadata, )
}

set_latency_marker :: #force_inline proc "system" ( swapchain: Swapchain, present_id: u64, _marker: Latency_Marker) {
	raw_set_latency_marker( global_device, swapchain, &Set_Latency_Marker_Info { s_type = .Set_Latency_Marker_Info, present_id = present_id, marker = _marker, }, )
}

set_latency_sleep_mode :: #force_inline proc "system" ( swapchain: Swapchain, low_latency_mode: b32, low_latency_boost: b32, minimum_interval_us: u32) -> Result {
	return raw_set_latency_sleep_mode( global_device, swapchain, &Latency_Sleep_Mode_Info { s_type = .Latency_Sleep_Mode_Info, low_latency_mode = low_latency_mode, low_latency_boost = low_latency_boost, minimum_interval_us = minimum_interval_us, }, )
}

set_local_dimming :: #force_inline proc "system" ( swap_chain: Swapchain, local_dimming_enable: b32) {
	raw_set_local_dimming( global_device, swap_chain, local_dimming_enable, )
}

set_private_data :: #force_inline proc "system" ( object_type: Object_Type, object_handle: u64, private_data_slot: Private_Data_Slot, data: u64) -> Result {
	return raw_set_private_data( global_device, object_type, object_handle, private_data_slot, data, )
}

signal_semaphore :: #force_inline proc "system" ( semaphore: Semaphore, value: u64) -> Result {
	return raw_signal_semaphore( global_device, &Semaphore_Signal_Info { s_type = .Semaphore_Signal_Info, semaphore = semaphore, value = value, }, )
}

transition_image_layout :: #force_inline proc "system" ( transitions: []Host_Image_Layout_Transition_Info) -> Result {
	return raw_transition_image_layout( global_device, u32(len(transitions)), raw_data(transitions), )
}

trim_command_pool :: #force_inline proc "system" ( command_pool: Command_Pool, flags: Command_Pool_Trim_Flags = {}) {
	raw_trim_command_pool( global_device, command_pool, flags, )
}

uninitialize_performance_api_intel :: #force_inline proc "system" ( ) {
	raw_uninitialize_performance_api_intel( global_device, )
}

unmap_memory :: #force_inline proc "system" ( memory: Device_Memory) {
	raw_unmap_memory( global_device, memory, )
}

unmap_memory2 :: #force_inline proc "system" (_memory: Device_Memory,  flags: Memory_Unmap_Flags = {}) -> Result {
	return raw_unmap_memory2( global_device, &Memory_Unmap_Info { s_type = .Memory_Unmap_Info, flags = flags, memory = _memory, }, )
}

update_descriptor_set_with_template :: #force_inline proc "system" ( descriptor_set: Descriptor_Set, descriptor_update_template: Descriptor_Update_Template, data: rawptr) {
	raw_update_descriptor_set_with_template( global_device, descriptor_set, descriptor_update_template, data, )
}

update_descriptor_sets :: #force_inline proc "system" ( descriptor_writes: []Write_Descriptor_Set = {}, descriptor_copies: []Copy_Descriptor_Set = {}) {
	raw_update_descriptor_sets( global_device, u32(len(descriptor_writes)), raw_data(descriptor_writes), u32(len(descriptor_copies)), raw_data(descriptor_copies), )
}

update_indirect_execution_set_pipeline :: #force_inline proc "system" ( indirect_execution_set: Indirect_Execution_Set, execution_set_writes: []Write_Indirect_Execution_Set_Pipeline) {
	raw_update_indirect_execution_set_pipeline( global_device, indirect_execution_set, u32(len(execution_set_writes)), raw_data(execution_set_writes), )
}

update_indirect_execution_set_shader :: #force_inline proc "system" ( indirect_execution_set: Indirect_Execution_Set, execution_set_writes: []Write_Indirect_Execution_Set_Shader) {
	raw_update_indirect_execution_set_shader( global_device, indirect_execution_set, u32(len(execution_set_writes)), raw_data(execution_set_writes), )
}

update_video_session_parameters :: #force_inline proc "system" ( video_session_parameters: Video_Session_Parameters, update_sequence_count: u32) -> Result {
	return raw_update_video_session_parameters( global_device, video_session_parameters, &Video_Session_Parameters_Update_Info { s_type = .Video_Session_Parameters_Update_Info, update_sequence_count = update_sequence_count, }, )
}

wait_for_fences :: #force_inline proc "system" ( fences: []Fence, wait_all: b32, timeout: u64) -> Result {
	return raw_wait_for_fences( global_device, u32(len(fences)), raw_data(fences), wait_all, timeout, )
}

wait_for_present :: #force_inline proc "system" ( swapchain: Swapchain, present_id: u64, timeout: u64) -> Result {
	return raw_wait_for_present( global_device, swapchain, present_id, timeout, )
}

wait_semaphores :: #force_inline proc "system" (semaphores: []Semaphore, values: ^u64, timeout: u64,  flags: Semaphore_Wait_Flags = {}) -> Result {
	return raw_wait_semaphores( global_device, &Semaphore_Wait_Info { s_type = .Semaphore_Wait_Info, flags = flags, semaphore_count = u32(len(semaphores)), semaphores = raw_data(semaphores), values = values, }, timeout, )
}

write_acceleration_structures_properties :: #force_inline proc "system" ( acceleration_structures: []Acceleration_Structure, query_type: Query_Type, data_size: int, data: [^]u8, stride: int) -> Result {
	return raw_write_acceleration_structures_properties( global_device, u32(len(acceleration_structures)), raw_data(acceleration_structures), query_type, data_size, data, stride, )
}

write_micromaps_properties :: #force_inline proc "system" ( micromaps: []Micromap, query_type: Query_Type, data_size: int, data: [^]u8, stride: int) -> Result {
	return raw_write_micromaps_properties( global_device, u32(len(micromaps)), raw_data(micromaps), query_type, data_size, data, stride, )
}


