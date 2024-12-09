//
// Vulkan wrapper generated from "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/master/include/vulkan/vulkan_core.h"
//
package idiomatic_odin_vulkan_bindings

import "core:c"

// Enums
Video_Av1_Chroma_Sample_Position :: enum c.int {
	Unknown = 0,
	Vertical = 1,
	Colocated = 2,
	Reserved = 3,
}

Video_Av1_Color_Primaries :: enum c.int {
	Bt_709 = 1,
	Unspecified = 2,
	Bt_470_M = 4,
	Bt_470_B_G = 5,
	Bt_601 = 6,
	Smpte_240 = 7,
	Generic_Film = 8,
	Bt_2020 = 9,
	Xyz = 10,
	Smpte_431 = 11,
	Smpte_432 = 12,
	Ebu_3213 = 22,
}

Video_Av1_Frame_Restoration_Type :: enum c.int {
	None = 0,
	Wiener = 1,
	Sgrproj = 2,
	Switchable = 3,
}

Video_Av1_Frame_Type :: enum c.int {
	Key = 0,
	Inter = 1,
	Intra_Only = 2,
	Switch = 3,
}

Video_Av1_Interpolation_Filter :: enum c.int {
	Eighttap = 0,
	Eighttap_Smooth = 1,
	Eighttap_Sharp = 2,
	Bilinear = 3,
	Switchable = 4,
}

Video_Av1_Level :: enum c.int {
	_2_0 = 0,
	_2_1 = 1,
	_2_2 = 2,
	_2_3 = 3,
	_3_0 = 4,
	_3_1 = 5,
	_3_2 = 6,
	_3_3 = 7,
	_4_0 = 8,
	_4_1 = 9,
	_4_2 = 10,
	_4_3 = 11,
	_5_0 = 12,
	_5_1 = 13,
	_5_2 = 14,
	_5_3 = 15,
	_6_0 = 16,
	_6_1 = 17,
	_6_2 = 18,
	_6_3 = 19,
	_7_0 = 20,
	_7_1 = 21,
	_7_2 = 22,
	_7_3 = 23,
}

Video_Av1_Matrix_Coefficients :: enum c.int {
	Identity = 0,
	Bt_709 = 1,
	Unspecified = 2,
	Reserved_3 = 3,
	Fcc = 4,
	Bt_470_B_G = 5,
	Bt_601 = 6,
	Smpte_240 = 7,
	Smpte_Ycgco = 8,
	Bt_2020_Ncl = 9,
	Bt_2020_Cl = 10,
	Smpte_2085 = 11,
	Chromat_Ncl = 12,
	Chromat_Cl = 13,
	Ictcp = 14,
}

Video_Av1_Profile :: enum c.int {
	Main = 0,
	High = 1,
	Professional = 2,
}

Video_Av1_Reference_Name :: enum c.int {
	Intra_Frame = 0,
	Last_Frame = 1,
	Last2_Frame = 2,
	Last3_Frame = 3,
	Golden_Frame = 4,
	Bwdref_Frame = 5,
	Altref2_Frame = 6,
	Altref_Frame = 7,
}

Video_Av1_Transfer_Characteristics :: enum c.int {
	Reserved_0 = 0,
	Bt_709 = 1,
	Unspecified = 2,
	Reserved_3 = 3,
	Bt_470_M = 4,
	Bt_470_B_G = 5,
	Bt_601 = 6,
	Smpte_240 = 7,
	Linear = 8,
	Log_100 = 9,
	Log_100_Sqrt10 = 10,
	Iec_61966 = 11,
	Bt_1361 = 12,
	Srgb = 13,
	Bt_2020_10 = 14,
	Bt_2020_12 = 15,
	Smpte_2084 = 16,
	Smpte_428 = 17,
	Hlg = 18,
}

Video_Av1_Tx_Mode :: enum c.int {
	Only_4X4 = 0,
	Largest = 1,
	Select = 2,
}

Video_Decode_H264Field_Order_Count :: enum c.int {
	Top = 0,
	Bottom = 1,
}

Video_H264Aspect_Ratio_Idc :: enum c.int {
	Unspecified = 0,
	Square = 1,
	_12_11 = 2,
	_10_11 = 3,
	_16_11 = 4,
	_40_33 = 5,
	_24_11 = 6,
	_20_11 = 7,
	_32_11 = 8,
	_80_33 = 9,
	_18_11 = 10,
	_15_11 = 11,
	_64_33 = 12,
	_160_99 = 13,
	_4_3 = 14,
	_3_2 = 15,
	_2_1 = 16,
	Extended_Sar = 255,
}

Video_H264Cabac_Init_Idc :: enum c.int {
	_0 = 0,
	_1 = 1,
	_2 = 2,
}

Video_H264Chroma_Format_Idc :: enum c.int {
	Monochrome = 0,
	_420 = 1,
	_422 = 2,
	_444 = 3,
}

Video_H264Disable_Deblocking_Filter_Idc :: enum c.int {
	Disabled = 0,
	Enabled = 1,
	Partial = 2,
}

Video_H264Level_Idc :: enum c.int {
	_1_0 = 0,
	_1_1 = 1,
	_1_2 = 2,
	_1_3 = 3,
	_2_0 = 4,
	_2_1 = 5,
	_2_2 = 6,
	_3_0 = 7,
	_3_1 = 8,
	_3_2 = 9,
	_4_0 = 10,
	_4_1 = 11,
	_4_2 = 12,
	_5_0 = 13,
	_5_1 = 14,
	_5_2 = 15,
	_6_0 = 16,
	_6_1 = 17,
	_6_2 = 18,
}

Video_H264Mem_Mgmt_Control_Op :: enum c.int {
	End = 0,
	Unmark_Short_Term = 1,
	Unmark_Long_Term = 2,
	Mark_Long_Term = 3,
	Set_Max_Long_Term_Index = 4,
	Unmark_All = 5,
	Mark_Current_As_Long_Term = 6,
}

Video_H264Modification_Of_Pic_Nums_Idc :: enum c.int {
	Short_Term_Subtract = 0,
	Short_Term_Add = 1,
	Long_Term = 2,
	End = 3,
}

Video_H264Non_Vcl_Nalu_Type :: enum c.int {
	Sps = 0,
	Pps = 1,
	Aud = 2,
	Prefix = 3,
	End_Of_Sequence = 4,
	End_Of_Stream = 5,
	Precoded = 6,
}

Video_H264Picture_Type :: enum c.int {
	P = 0,
	B = 1,
	I = 2,
	Idr = 5,
}

Video_H264Poc_Type :: enum c.int {
	_0 = 0,
	_1 = 1,
	_2 = 2,
}

Video_H264Profile_Idc :: enum c.int {
	Baseline = 66,
	Main = 77,
	High = 100,
	High_444_Predictive = 244,
}

Video_H264Slice_Type :: enum c.int {
	P = 0,
	B = 1,
	I = 2,
}

Video_H264Weighted_Bipred_Idc :: enum c.int {
	Default = 0,
	Explicit = 1,
	Implicit = 2,
}

Video_H265Aspect_Ratio_Idc :: enum c.int {
	Unspecified = 0,
	Square = 1,
	_12_11 = 2,
	_10_11 = 3,
	_16_11 = 4,
	_40_33 = 5,
	_24_11 = 6,
	_20_11 = 7,
	_32_11 = 8,
	_80_33 = 9,
	_18_11 = 10,
	_15_11 = 11,
	_64_33 = 12,
	_160_99 = 13,
	_4_3 = 14,
	_3_2 = 15,
	_2_1 = 16,
	Extended_Sar = 255,
}

Video_H265Chroma_Format_Idc :: enum c.int {
	Monochrome = 0,
	_420 = 1,
	_422 = 2,
	_444 = 3,
}

Video_H265Level_Idc :: enum c.int {
	_1_0 = 0,
	_2_0 = 1,
	_2_1 = 2,
	_3_0 = 3,
	_3_1 = 4,
	_4_0 = 5,
	_4_1 = 6,
	_5_0 = 7,
	_5_1 = 8,
	_5_2 = 9,
	_6_0 = 10,
	_6_1 = 11,
	_6_2 = 12,
}

Video_H265Picture_Type :: enum c.int {
	P = 0,
	B = 1,
	I = 2,
	Idr = 3,
}

Video_H265Profile_Idc :: enum c.int {
	Main = 1,
	Main_10 = 2,
	Main_Still_Picture = 3,
	Format_Range_Extensions = 4,
	Scc_Extensions = 9,
}

Video_H265Slice_Type :: enum c.int {
	B = 0,
	P = 1,
	I = 2,
}

Acceleration_Structure_Build_Type :: enum c.int {
	Host = 0,
	Device = 1,
	Host_Or_Device = 2,
}

Acceleration_Structure_Compatibility :: enum c.int {
	Compatible = 0,
	Incompatible = 1,
}

Acceleration_Structure_Memory_Requirements_Type :: enum c.int {
	Object = 0,
	Build_Scratch = 1,
	Update_Scratch = 2,
}

Acceleration_Structure_Motion_Instance_Type :: enum c.int {
	Static = 0,
	Matrix_Motion = 1,
	Srt_Motion = 2,
}

Acceleration_Structure_Type :: enum c.int {
	Top_Level = 0,
	Bottom_Level = 1,
	Generic = 2,
}

Anti_Lag_Mode :: enum c.int {
	Driver_Control = 0,
	On = 1,
	Off = 2,
}

Anti_Lag_Stage :: enum c.int {
	Input = 0,
	Present = 1,
}

Attachment_Load_Op :: enum c.int {
	Load = 0,
	Clear = 1,
	Dont_Care = 2,
	None = 1000400000,
}

Attachment_Store_Op :: enum c.int {
	Store = 0,
	Dont_Care = 1,
	None = 1000301000,
}

Blend_Factor :: enum c.int {
	Zero = 0,
	One = 1,
	Src_Color = 2,
	One_Minus_Src_Color = 3,
	Dst_Color = 4,
	One_Minus_Dst_Color = 5,
	Src_Alpha = 6,
	One_Minus_Src_Alpha = 7,
	Dst_Alpha = 8,
	One_Minus_Dst_Alpha = 9,
	Constant_Color = 10,
	One_Minus_Constant_Color = 11,
	Constant_Alpha = 12,
	One_Minus_Constant_Alpha = 13,
	Src_Alpha_Saturate = 14,
	Src1_Color = 15,
	One_Minus_Src1_Color = 16,
	Src1_Alpha = 17,
	One_Minus_Src1_Alpha = 18,
}

Blend_Op :: enum c.int {
	Add = 0,
	Subtract = 1,
	Reverse_Subtract = 2,
	Min = 3,
	Max = 4,
	Zero = 1000148000,
	Src = 1000148001,
	Dst = 1000148002,
	Src_Over = 1000148003,
	Dst_Over = 1000148004,
	Src_In = 1000148005,
	Dst_In = 1000148006,
	Src_Out = 1000148007,
	Dst_Out = 1000148008,
	Src_Atop = 1000148009,
	Dst_Atop = 1000148010,
	Xor = 1000148011,
	Multiply = 1000148012,
	Screen = 1000148013,
	Overlay = 1000148014,
	Darken = 1000148015,
	Lighten = 1000148016,
	Colordodge = 1000148017,
	Colorburn = 1000148018,
	Hardlight = 1000148019,
	Softlight = 1000148020,
	Difference = 1000148021,
	Exclusion = 1000148022,
	Invert = 1000148023,
	Invert_Rgb = 1000148024,
	Lineardodge = 1000148025,
	Linearburn = 1000148026,
	Vividlight = 1000148027,
	Linearlight = 1000148028,
	Pinlight = 1000148029,
	Hardmix = 1000148030,
	Hsl_Hue = 1000148031,
	Hsl_Saturation = 1000148032,
	Hsl_Color = 1000148033,
	Hsl_Luminosity = 1000148034,
	Plus = 1000148035,
	Plus_Clamped = 1000148036,
	Plus_Clamped_Alpha = 1000148037,
	Plus_Darker = 1000148038,
	Minus = 1000148039,
	Minus_Clamped = 1000148040,
	Contrast = 1000148041,
	Invert_Ovg = 1000148042,
	Red = 1000148043,
	Green = 1000148044,
	Blue = 1000148045,
}

Blend_Overlap :: enum c.int {
	Uncorrelated = 0,
	Disjoint = 1,
	Conjoint = 2,
}

Block_Match_Window_Compare_Mode_Qcom :: enum c.int {
	Block_Match_Window_Compare_Mode_Min_Qcom = 0,
	Block_Match_Window_Compare_Mode_Max_Qcom = 1,
}

Border_Color :: enum c.int {
	Float_Transparent_Black = 0,
	Int_Transparent_Black = 1,
	Float_Opaque_Black = 2,
	Int_Opaque_Black = 3,
	Float_Opaque_White = 4,
	Int_Opaque_White = 5,
	Float_Custom = 1000287003,
	Int_Custom = 1000287004,
}

Build_Acceleration_Structure_Mode :: enum c.int {
	Build = 0,
	Update = 1,
}

Build_Micromap_Mode :: enum c.int {
	Build = 0,
}

Chroma_Location :: enum c.int {
	Cosited_Even = 0,
	Midpoint = 1,
}

Coarse_Sample_Order_Type :: enum c.int {
	Default = 0,
	Custom = 1,
	Pixel_Major = 2,
	Sample_Major = 3,
}

Color_Space :: enum c.int {
	Srgb_Nonlinear = 0,
	Display_P3_Nonlinear = 1000104001,
	Ended_Srgb_Linear = 1000104002,
	Display_P3_Linear = 1000104003,
	Dci_P3_Nonlinear = 1000104004,
	Bt709_Linear = 1000104005,
	Bt709_Nonlinear = 1000104006,
	Bt2020_Linear = 1000104007,
	Hdr10_St2084 = 1000104008,
	Dolbyvision = 1000104009,
	Hdr10_Hlg = 1000104010,
	Adobergb_Linear = 1000104011,
	Adobergb_Nonlinear = 1000104012,
	Pass_Through = 1000104013,
	Ended_Srgb_Nonlinear = 1000104014,
	Display_Native = 1000213000,
}

Command_Buffer_Level :: enum c.int {
	Primary = 0,
	Secondary = 1,
}

Compare_Op :: enum c.int {
	Never = 0,
	Less = 1,
	Equal = 2,
	Less_Or_Equal = 3,
	Greater = 4,
	Not_Equal = 5,
	Greater_Or_Equal = 6,
	Always = 7,
}

Component_Swizzle :: enum c.int {
	Identity = 0,
	Zero = 1,
	One = 2,
	R = 3,
	G = 4,
	B = 5,
	A = 6,
}

Component_Type :: enum c.int {
	Float16 = 0,
	Float32 = 1,
	Float64 = 2,
	Sint8 = 3,
	Sint16 = 4,
	Sint32 = 5,
	Sint64 = 6,
	Uint8 = 7,
	Uint16 = 8,
	Uint32 = 9,
	Uint64 = 10,
}

Conservative_Rasterization_Mode :: enum c.int {
	Disabled = 0,
	Overestimate = 1,
	Underestimate = 2,
}

Copy_Acceleration_Structure_Mode :: enum c.int {
	Clone = 0,
	Compact = 1,
	Serialize = 2,
	Deserialize = 3,
}

Copy_Micromap_Mode :: enum c.int {
	Clone = 0,
	Serialize = 1,
	Deserialize = 2,
	Compact = 3,
}

Coverage_Modulation_Mode :: enum c.int {
	None = 0,
	Rgb = 1,
	Alpha = 2,
	Rgba = 3,
}

Coverage_Reduction_Mode :: enum c.int {
	Merge = 0,
	Truncate = 1,
}

Cubic_Filter_Weights_Qcom :: enum c.int {
	Cubic_Filter_Weights_Catmull_Rom_Qcom = 0,
	Cubic_Filter_Weights_Zero_Tangent_Cardinal_Qcom = 1,
	Cubic_Filter_Weights_B_Spline_Qcom = 2,
	Cubic_Filter_Weights_Mitchell_Netravali_Qcom = 3,
}

Debug_Report_Object_Type :: enum c.int {
	Unknown = 0,
	Instance = 1,
	Physical_Device = 2,
	Device = 3,
	Queue = 4,
	Semaphore = 5,
	Command_Buffer = 6,
	Fence = 7,
	Device_Memory = 8,
	Buffer = 9,
	Image = 10,
	Event = 11,
	Query_Pool = 12,
	Buffer_View = 13,
	Image_View = 14,
	Shader_Module = 15,
	Pipeline_Cache = 16,
	Pipeline_Layout = 17,
	Render_Pass = 18,
	Pipeline = 19,
	Descriptor_Set_Layout = 20,
	Sampler = 21,
	Descriptor_Pool = 22,
	Descriptor_Set = 23,
	Framebuffer = 24,
	Command_Pool = 25,
	Surface_Khr = 26,
	Swapchain_Khr = 27,
	Debug_Report_Callback = 28,
	Display_Khr = 29,
	Display_Mode_Khr = 30,
	Validation_Cache = 33,
	Sampler_Ycbcr_Conversion = 1000156000,
	Descriptor_Update_Template = 1000085000,
	Cu_Module_Nvx = 1000029000,
	Cu_Function_Nvx = 1000029001,
	Acceleration_Structure_Khr = 1000150000,
	Acceleration_Structure_Nv = 1000165000,
	Cuda_Module_Nv = 1000307000,
	Cuda_Function_Nv = 1000307001,
	Buffer_Collection_Fuchsia = 1000366000,
}

Depth_Bias_Representation :: enum c.int {
	Least_Representable_Value_Format = 0,
	Least_Representable_Value_Force_Unorm = 1,
	Float = 2,
}

Depth_Clamp_Mode :: enum c.int {
	Viewport_Range = 0,
	User_Defined_Range = 1,
}

Descriptor_Type :: enum c.int {
	Sampler = 0,
	Combined_Image_Sampler = 1,
	Sampled_Image = 2,
	Storage_Image = 3,
	Uniform_Texel_Buffer = 4,
	Storage_Texel_Buffer = 5,
	Uniform_Buffer = 6,
	Storage_Buffer = 7,
	Uniform_Buffer_Dynamic = 8,
	Storage_Buffer_Dynamic = 9,
	Input_Attachment = 10,
	Inline_Uniform_Block = 1000138000,
	Acceleration_Structure = 1000150000,
	Acceleration_Structure_ = 1000165000,
	Sample_Weight_Image_Qcom = 1000440000,
	Block_Match_Image_Qcom = 1000440001,
	Mutable = 1000351000,
}

Descriptor_Update_Template_Type :: enum c.int {
	Descriptor_Set = 0,
	Push_Descriptors = 1,
}

Device_Address_Binding_Type :: enum c.int {
	Bind = 0,
	Unbind = 1,
}

Device_Event_Type :: enum c.int {
	Display_Hotplug = 0,
}

Device_Fault_Address_Type :: enum c.int {
	None = 0,
	Read_Invalid = 1,
	Write_Invalid = 2,
	Execute_Invalid = 3,
	Instruction_Pointer_Unknown = 4,
	Instruction_Pointer_Invalid = 5,
	Instruction_Pointer_Fault = 6,
}

Device_Fault_Vendor_Binary_Header_Version :: enum c.int {
	One = 1,
}

Device_Memory_Report_Event_Type :: enum c.int {
	Allocate = 0,
	Free = 1,
	Import = 2,
	Unimport = 3,
	Allocation_Failed = 4,
}

Direct_Driver_Loading_Mode_Lunarg :: enum c.int {
	Direct_Driver_Loading_Mode_Exclusive_Lunarg = 0,
	Direct_Driver_Loading_Mode_Inclusive_Lunarg = 1,
}

Discard_Rectangle_Mode :: enum c.int {
	Inclusive = 0,
	Exclusive = 1,
}

Display_Event_Type :: enum c.int {
	First_Pixel_Out = 0,
}

Display_Power_State :: enum c.int {
	Off = 0,
	Suspend = 1,
	On = 2,
}

Display_Surface_Stereo_Type :: enum c.int {
	None = 0,
	Onboard_Din = 1,
	Hdmi_3D = 2,
	Inband_Displayport = 3,
}

Driver_Id :: enum c.int {
	Amd_Proprietary = 1,
	Amd_Open_Source = 2,
	Mesa_Radv = 3,
	Nvidia_Proprietary = 4,
	Intel_Proprietary_Windows = 5,
	Intel_Open_Source_Mesa = 6,
	Imagination_Proprietary = 7,
	Qualcomm_Proprietary = 8,
	Arm_Proprietary = 9,
	Google_Swiftshader = 10,
	Ggp_Proprietary = 11,
	Broadcom_Proprietary = 12,
	Mesa_Llvmpipe = 13,
	Moltenvk = 14,
	Coreavi_Proprietary = 15,
	Juice_Proprietary = 16,
	Verisilicon_Proprietary = 17,
	Mesa_Turnip = 18,
	Mesa_V3Dv = 19,
	Mesa_Panvk = 20,
	Samsung_Proprietary = 21,
	Mesa_Venus = 22,
	Mesa_Dozen = 23,
	Mesa_Nvk = 24,
	Imagination_Open_Source_Mesa = 25,
	Mesa_Honeykrisp = 26,
	Reserved_27 = 27,
}

Dynamic_State :: enum c.int {
	Viewport = 0,
	Scissor = 1,
	Line_Width = 2,
	Depth_Bias = 3,
	Blend_Constants = 4,
	Depth_Bounds = 5,
	Stencil_Compare_Mask = 6,
	Stencil_Write_Mask = 7,
	Stencil_Reference = 8,
	Cull_Mode = 1000267000,
	Front_Face = 1000267001,
	Primitive_Topology = 1000267002,
	Viewport_With_Count = 1000267003,
	Scissor_With_Count = 1000267004,
	Vertex_Input_Binding_Stride = 1000267005,
	Depth_Test_Enable = 1000267006,
	Depth_Write_Enable = 1000267007,
	Depth_Compare_Op = 1000267008,
	Depth_Bounds_Test_Enable = 1000267009,
	Stencil_Test_Enable = 1000267010,
	Stencil_Op = 1000267011,
	Rasterizer_Discard_Enable = 1000377001,
	Depth_Bias_Enable = 1000377002,
	Primitive_Restart_Enable = 1000377004,
	Line_Stipple = 1000259000,
	Viewport_W_Scaling = 1000087000,
	Discard_Rectangle = 1000099000,
	Discard_Rectangle_Enable = 1000099001,
	Discard_Rectangle_Mode = 1000099002,
	Sample_Locations = 1000143000,
	Ray_Tracing_Pipeline_Stack_Size = 1000347000,
	Viewport_Shading_Rate_Palette = 1000164004,
	Viewport_Coarse_Sample_Order = 1000164006,
	Exclusive_Scissor_Enable = 1000205000,
	Exclusive_Scissor = 1000205001,
	Fragment_Shading_Rate = 1000226000,
	Vertex_Input = 1000352000,
	Patch_Control_Points = 1000377000,
	Logic_Op = 1000377003,
	Color_Write_Enable = 1000381000,
	Depth_Clamp_Enable = 1000455003,
	Polygon_Mode = 1000455004,
	Rasterization_Samples = 1000455005,
	Sample_Mask = 1000455006,
	Alpha_To_Coverage_Enable = 1000455007,
	Alpha_To_One_Enable = 1000455008,
	Logic_Op_Enable = 1000455009,
	Color_Blend_Enable = 1000455010,
	Color_Blend_Equation = 1000455011,
	Color_Write_Mask = 1000455012,
	Tessellation_Domain_Origin = 1000455002,
	Rasterization_Stream = 1000455013,
	Conservative_Rasterization_Mode = 1000455014,
	Ra_Primitive_Overestimation_Size = 1000455015,
	Depth_Clip_Enable = 1000455016,
	Sample_Locations_Enable = 1000455017,
	Color_Blend_Advanced = 1000455018,
	Provoking_Vertex_Mode = 1000455019,
	Line_Rasterization_Mode = 1000455020,
	Line_Stipple_Enable = 1000455021,
	Depth_Clip_Negative_One_To_One = 1000455022,
	Viewport_W_Scaling_Enable = 1000455023,
	Viewport_Swizzle = 1000455024,
	Coverage_To_Color_Enable = 1000455025,
	Coverage_To_Color_Location = 1000455026,
	Coverage_Modulation_Mode = 1000455027,
	Coverage_Modulation_Table_Enable = 1000455028,
	Coverage_Modulation_Table = 1000455029,
	Shading_Rate_Image_Enable = 1000455030,
	Representative_Fragment_Test_Enable = 1000455031,
	Coverage_Reduction_Mode = 1000455032,
	Attachment_Feedback_Loop_Enable = 1000524000,
	Depth_Clamp_Range = 1000582000,
}

Filter :: enum c.int {
	Nearest = 0,
	Linear = 1,
	Cubic = 1000015000,
}

Format :: enum c.int {
	Undefined = 0,
	R4G4_Unorm_Pack8 = 1,
	R4G4B4A4_Unorm_Pack16 = 2,
	B4G4R4A4_Unorm_Pack16 = 3,
	R5G6B5_Unorm_Pack16 = 4,
	B5G6R5_Unorm_Pack16 = 5,
	R5G5B5A1_Unorm_Pack16 = 6,
	B5G5R5A1_Unorm_Pack16 = 7,
	A1R5G5B5_Unorm_Pack16 = 8,
	R8_Unorm = 9,
	R8_Snorm = 10,
	R8_Uscaled = 11,
	R8_Sscaled = 12,
	R8_Uint = 13,
	R8_Sint = 14,
	R8_Srgb = 15,
	R8G8_Unorm = 16,
	R8G8_Snorm = 17,
	R8G8_Uscaled = 18,
	R8G8_Sscaled = 19,
	R8G8_Uint = 20,
	R8G8_Sint = 21,
	R8G8_Srgb = 22,
	R8G8B8_Unorm = 23,
	R8G8B8_Snorm = 24,
	R8G8B8_Uscaled = 25,
	R8G8B8_Sscaled = 26,
	R8G8B8_Uint = 27,
	R8G8B8_Sint = 28,
	R8G8B8_Srgb = 29,
	B8G8R8_Unorm = 30,
	B8G8R8_Snorm = 31,
	B8G8R8_Uscaled = 32,
	B8G8R8_Sscaled = 33,
	B8G8R8_Uint = 34,
	B8G8R8_Sint = 35,
	B8G8R8_Srgb = 36,
	R8G8B8A8_Unorm = 37,
	R8G8B8A8_Snorm = 38,
	R8G8B8A8_Uscaled = 39,
	R8G8B8A8_Sscaled = 40,
	R8G8B8A8_Uint = 41,
	R8G8B8A8_Sint = 42,
	R8G8B8A8_Srgb = 43,
	B8G8R8A8_Unorm = 44,
	B8G8R8A8_Snorm = 45,
	B8G8R8A8_Uscaled = 46,
	B8G8R8A8_Sscaled = 47,
	B8G8R8A8_Uint = 48,
	B8G8R8A8_Sint = 49,
	B8G8R8A8_Srgb = 50,
	A8B8G8R8_Unorm_Pack32 = 51,
	A8B8G8R8_Snorm_Pack32 = 52,
	A8B8G8R8_Uscaled_Pack32 = 53,
	A8B8G8R8_Sscaled_Pack32 = 54,
	A8B8G8R8_Uint_Pack32 = 55,
	A8B8G8R8_Sint_Pack32 = 56,
	A8B8G8R8_Srgb_Pack32 = 57,
	A2R10G10B10_Unorm_Pack32 = 58,
	A2R10G10B10_Snorm_Pack32 = 59,
	A2R10G10B10_Uscaled_Pack32 = 60,
	A2R10G10B10_Sscaled_Pack32 = 61,
	A2R10G10B10_Uint_Pack32 = 62,
	A2R10G10B10_Sint_Pack32 = 63,
	A2B10G10R10_Unorm_Pack32 = 64,
	A2B10G10R10_Snorm_Pack32 = 65,
	A2B10G10R10_Uscaled_Pack32 = 66,
	A2B10G10R10_Sscaled_Pack32 = 67,
	A2B10G10R10_Uint_Pack32 = 68,
	A2B10G10R10_Sint_Pack32 = 69,
	R16_Unorm = 70,
	R16_Snorm = 71,
	R16_Uscaled = 72,
	R16_Sscaled = 73,
	R16_Uint = 74,
	R16_Sint = 75,
	R16_Sfloat = 76,
	R16G16_Unorm = 77,
	R16G16_Snorm = 78,
	R16G16_Uscaled = 79,
	R16G16_Sscaled = 80,
	R16G16_Uint = 81,
	R16G16_Sint = 82,
	R16G16_Sfloat = 83,
	R16G16B16_Unorm = 84,
	R16G16B16_Snorm = 85,
	R16G16B16_Uscaled = 86,
	R16G16B16_Sscaled = 87,
	R16G16B16_Uint = 88,
	R16G16B16_Sint = 89,
	R16G16B16_Sfloat = 90,
	R16G16B16A16_Unorm = 91,
	R16G16B16A16_Snorm = 92,
	R16G16B16A16_Uscaled = 93,
	R16G16B16A16_Sscaled = 94,
	R16G16B16A16_Uint = 95,
	R16G16B16A16_Sint = 96,
	R16G16B16A16_Sfloat = 97,
	R32_Uint = 98,
	R32_Sint = 99,
	R32_Sfloat = 100,
	R32G32_Uint = 101,
	R32G32_Sint = 102,
	R32G32_Sfloat = 103,
	R32G32B32_Uint = 104,
	R32G32B32_Sint = 105,
	R32G32B32_Sfloat = 106,
	R32G32B32A32_Uint = 107,
	R32G32B32A32_Sint = 108,
	R32G32B32A32_Sfloat = 109,
	R64_Uint = 110,
	R64_Sint = 111,
	R64_Sfloat = 112,
	R64G64_Uint = 113,
	R64G64_Sint = 114,
	R64G64_Sfloat = 115,
	R64G64B64_Uint = 116,
	R64G64B64_Sint = 117,
	R64G64B64_Sfloat = 118,
	R64G64B64A64_Uint = 119,
	R64G64B64A64_Sint = 120,
	R64G64B64A64_Sfloat = 121,
	B10G11R11_Ufloat_Pack32 = 122,
	E5B9G9R9_Ufloat_Pack32 = 123,
	D16_Unorm = 124,
	X8_D24_Unorm_Pack32 = 125,
	D32_Sfloat = 126,
	S8_Uint = 127,
	D16_Unorm_S8_Uint = 128,
	D24_Unorm_S8_Uint = 129,
	D32_Sfloat_S8_Uint = 130,
	Bc1_Rgb_Unorm_Block = 131,
	Bc1_Rgb_Srgb_Block = 132,
	Bc1_Rgba_Unorm_Block = 133,
	Bc1_Rgba_Srgb_Block = 134,
	Bc2_Unorm_Block = 135,
	Bc2_Srgb_Block = 136,
	Bc3_Unorm_Block = 137,
	Bc3_Srgb_Block = 138,
	Bc4_Unorm_Block = 139,
	Bc4_Snorm_Block = 140,
	Bc5_Unorm_Block = 141,
	Bc5_Snorm_Block = 142,
	Bc6H_Ufloat_Block = 143,
	Bc6H_Sfloat_Block = 144,
	Bc7_Unorm_Block = 145,
	Bc7_Srgb_Block = 146,
	Etc2_R8G8B8_Unorm_Block = 147,
	Etc2_R8G8B8_Srgb_Block = 148,
	Etc2_R8G8B8A1_Unorm_Block = 149,
	Etc2_R8G8B8A1_Srgb_Block = 150,
	Etc2_R8G8B8A8_Unorm_Block = 151,
	Etc2_R8G8B8A8_Srgb_Block = 152,
	Eac_R11_Unorm_Block = 153,
	Eac_R11_Snorm_Block = 154,
	Eac_R11G11_Unorm_Block = 155,
	Eac_R11G11_Snorm_Block = 156,
	Astc_4X4_Unorm_Block = 157,
	Astc_4X4_Srgb_Block = 158,
	Astc_5X4_Unorm_Block = 159,
	Astc_5X4_Srgb_Block = 160,
	Astc_5X5_Unorm_Block = 161,
	Astc_5X5_Srgb_Block = 162,
	Astc_6X5_Unorm_Block = 163,
	Astc_6X5_Srgb_Block = 164,
	Astc_6X6_Unorm_Block = 165,
	Astc_6X6_Srgb_Block = 166,
	Astc_8X5_Unorm_Block = 167,
	Astc_8X5_Srgb_Block = 168,
	Astc_8X6_Unorm_Block = 169,
	Astc_8X6_Srgb_Block = 170,
	Astc_8X8_Unorm_Block = 171,
	Astc_8X8_Srgb_Block = 172,
	Astc_10X5_Unorm_Block = 173,
	Astc_10X5_Srgb_Block = 174,
	Astc_10X6_Unorm_Block = 175,
	Astc_10X6_Srgb_Block = 176,
	Astc_10X8_Unorm_Block = 177,
	Astc_10X8_Srgb_Block = 178,
	Astc_10X10_Unorm_Block = 179,
	Astc_10X10_Srgb_Block = 180,
	Astc_12X10_Unorm_Block = 181,
	Astc_12X10_Srgb_Block = 182,
	Astc_12X12_Unorm_Block = 183,
	Astc_12X12_Srgb_Block = 184,
	G8B8G8R8_422_Unorm = 1000156000,
	B8G8R8G8_422_Unorm = 1000156001,
	G8_B8_R8_3Plane_420_Unorm = 1000156002,
	G8_B8R8_2Plane_420_Unorm = 1000156003,
	G8_B8_R8_3Plane_422_Unorm = 1000156004,
	G8_B8R8_2Plane_422_Unorm = 1000156005,
	G8_B8_R8_3Plane_444_Unorm = 1000156006,
	R10X6_Unorm_Pack16 = 1000156007,
	R10X6G10X6_Unorm_2Pack16 = 1000156008,
	R10X6G10X6B10X6A10X6_Unorm_4Pack16 = 1000156009,
	G10X6B10X6G10X6R10X6_422_Unorm_4Pack16 = 1000156010,
	B10X6G10X6R10X6G10X6_422_Unorm_4Pack16 = 1000156011,
	G10X6_B10X6_R10X6_3Plane_420_Unorm_3Pack16 = 1000156012,
	G10X6_B10X6R10X6_2Plane_420_Unorm_3Pack16 = 1000156013,
	G10X6_B10X6_R10X6_3Plane_422_Unorm_3Pack16 = 1000156014,
	G10X6_B10X6R10X6_2Plane_422_Unorm_3Pack16 = 1000156015,
	G10X6_B10X6_R10X6_3Plane_444_Unorm_3Pack16 = 1000156016,
	R12X4_Unorm_Pack16 = 1000156017,
	R12X4G12X4_Unorm_2Pack16 = 1000156018,
	R12X4G12X4B12X4A12X4_Unorm_4Pack16 = 1000156019,
	G12X4B12X4G12X4R12X4_422_Unorm_4Pack16 = 1000156020,
	B12X4G12X4R12X4G12X4_422_Unorm_4Pack16 = 1000156021,
	G12X4_B12X4_R12X4_3Plane_420_Unorm_3Pack16 = 1000156022,
	G12X4_B12X4R12X4_2Plane_420_Unorm_3Pack16 = 1000156023,
	G12X4_B12X4_R12X4_3Plane_422_Unorm_3Pack16 = 1000156024,
	G12X4_B12X4R12X4_2Plane_422_Unorm_3Pack16 = 1000156025,
	G12X4_B12X4_R12X4_3Plane_444_Unorm_3Pack16 = 1000156026,
	G16B16G16R16_422_Unorm = 1000156027,
	B16G16R16G16_422_Unorm = 1000156028,
	G16_B16_R16_3Plane_420_Unorm = 1000156029,
	G16_B16R16_2Plane_420_Unorm = 1000156030,
	G16_B16_R16_3Plane_422_Unorm = 1000156031,
	G16_B16R16_2Plane_422_Unorm = 1000156032,
	G16_B16_R16_3Plane_444_Unorm = 1000156033,
	G8_B8R8_2Plane_444_Unorm = 1000330000,
	G10X6_B10X6R10X6_2Plane_444_Unorm_3Pack16 = 1000330001,
	G12X4_B12X4R12X4_2Plane_444_Unorm_3Pack16 = 1000330002,
	G16_B16R16_2Plane_444_Unorm = 1000330003,
	A4R4G4B4_Unorm_Pack16 = 1000340000,
	A4B4G4R4_Unorm_Pack16 = 1000340001,
	Astc_4X4_Sfloat_Block = 1000066000,
	Astc_5X4_Sfloat_Block = 1000066001,
	Astc_5X5_Sfloat_Block = 1000066002,
	Astc_6X5_Sfloat_Block = 1000066003,
	Astc_6X6_Sfloat_Block = 1000066004,
	Astc_8X5_Sfloat_Block = 1000066005,
	Astc_8X6_Sfloat_Block = 1000066006,
	Astc_8X8_Sfloat_Block = 1000066007,
	Astc_10X5_Sfloat_Block = 1000066008,
	Astc_10X6_Sfloat_Block = 1000066009,
	Astc_10X8_Sfloat_Block = 1000066010,
	Astc_10X10_Sfloat_Block = 1000066011,
	Astc_12X10_Sfloat_Block = 1000066012,
	Astc_12X12_Sfloat_Block = 1000066013,
	A1B5G5R5_Unorm_Pack16 = 1000470000,
	A8_Unorm = 1000470001,
	Pvrtc1_2Bpp_Unorm_Block_Img = 1000054000,
	Pvrtc1_4Bpp_Unorm_Block_Img = 1000054001,
	Pvrtc2_2Bpp_Unorm_Block_Img = 1000054002,
	Pvrtc2_4Bpp_Unorm_Block_Img = 1000054003,
	Pvrtc1_2Bpp_Srgb_Block_Img = 1000054004,
	Pvrtc1_4Bpp_Srgb_Block_Img = 1000054005,
	Pvrtc2_2Bpp_Srgb_Block_Img = 1000054006,
	Pvrtc2_4Bpp_Srgb_Block_Img = 1000054007,
	R16G16_Sfixed5 = 1000464000,
}

Fragment_Shading_Rate_Combiner_Op :: enum c.int {
	Keep = 0,
	Replace = 1,
	Min = 2,
	Max = 3,
	Mul = 4,
}

Fragment_Shading_Rate :: enum c.int {
	_1_Iocation_Per_Pixel = 0,
	_1_Iocation_Per_1X2_Pixels = 1,
	_1_Iocation_Per_2X1_Pixels = 4,
	_1_Iocation_Per_2X2_Pixels = 5,
	_1_Iocation_Per_2X4_Pixels = 6,
	_1_Iocation_Per_4X2_Pixels = 9,
	_1_Iocation_Per_4X4_Pixels = 10,
	_2_Iocations_Per_Pixel = 11,
	_4_Iocations_Per_Pixel = 12,
	_8_Iocations_Per_Pixel = 13,
	_16_Iocations_Per_Pixel = 14,
	No_Iocations = 15,
}

Fragment_Shading_Rate_Type :: enum c.int {
	Fragment_Size = 0,
	Enums = 1,
}

Front_Face :: enum c.int {
	Counter_Clockwise = 0,
	Clockwise = 1,
}

Full_Screen_Exclusive :: enum c.int {
	Default = 0,
	Allowed = 1,
	Disallowed = 2,
	Application_Controlled = 3,
}

Geometry_Type :: enum c.int {
	Triangles = 0,
	Aabbs = 1,
	Instances = 2,
}

Image_Layout :: enum c.int {
	Undefined = 0,
	General = 1,
	Color_Attachment_Optimal = 2,
	Depth_Stencil_Attachment_Optimal = 3,
	Depth_Stencil_Read_Only_Optimal = 4,
	Shader_Read_Only_Optimal = 5,
	Transfer_Src_Optimal = 6,
	Transfer_Dst_Optimal = 7,
	Preinitialized = 8,
	Depth_Read_Only_Stencil_Attachment_Optimal = 1000117000,
	Depth_Attachment_Stencil_Read_Only_Optimal = 1000117001,
	Depth_Attachment_Optimal = 1000241000,
	Depth_Read_Only_Optimal = 1000241001,
	Stencil_Attachment_Optimal = 1000241002,
	Stencil_Read_Only_Optimal = 1000241003,
	Read_Only_Optimal = 1000314000,
	Attachment_Optimal = 1000314001,
	Rendering_Local_Read = 1000232000,
	Present_Src = 1000001002,
	Video_Decode_Dst = 1000024000,
	Video_Decode_Src = 1000024001,
	Video_Decode_Dpb = 1000024002,
	Shared_Present = 1000111000,
	Fragment_Density_Map_Optimal = 1000218000,
	Fragment_Shading_Rate_Attachment_Optimal = 1000164003,
	Video_Encode_Dst = 1000299000,
	Video_Encode_Src = 1000299001,
	Video_Encode_Dpb = 1000299002,
	Attachment_Feedback_Loop_Optimal = 1000339000,
	Video_Encode_Quantization_Map = 1000553000,
}

Image_Tiling :: enum c.int {
	Optimal = 0,
	Linear = 1,
	Drm_Format_Modifier = 1000158000,
}

Image_Type :: enum c.int {
	D1 = 0,
	D2 = 1,
	D3 = 2,
}

Image_View_Type :: enum c.int {
	D1 = 0,
	D2 = 1,
	D3 = 2,
	Cube = 3,
	D1_ = 4,
	D2_ = 5,
	Cube_Array = 6,
}

Index_Type :: enum c.int {
	Uint16 = 0,
	Uint32 = 1,
	Uint8 = 1000265000,
	None = 1000165000,
}

Indirect_Commands_Token_Type :: enum c.int {
	Execution_Set = 0,
	Push_Constant = 1,
	Sequence_Index = 2,
	Index_Buffer = 3,
	Vertex_Buffer = 4,
	Draw_Indexed = 5,
	Draw = 6,
	Draw_Indexed_Count = 7,
	Draw_Count = 8,
	Dispatch = 9,
	Draw_Mesh_Tasks_Nv = 1000202002,
	Draw_Mesh_Tasks_Count_Nv = 1000202003,
	Draw_Mesh_Tasks = 1000328000,
	Draw_Mesh_Tasks_Count = 1000328001,
	Trace_Rays2 = 1000386004,
}

Indirect_Execution_Set_Info_Type :: enum c.int {
	Pipelines = 0,
	Shader_Objects = 1,
}

Internal_Allocation_Type :: enum c.int {
	Executable = 0,
}

Latency_Marker :: enum c.int {
	Simulation_Start = 0,
	Simulation_End = 1,
	Rendersubmit_Start = 2,
	Rendersubmit_End = 3,
	Present_Start = 4,
	Present_End = 5,
	Input_Sample = 6,
	Trigger_Flash = 7,
	Out_Of_Band_Rendersubmit_Start = 8,
	Out_Of_Band_Rendersubmit_End = 9,
	Out_Of_Band_Present_Start = 10,
	Out_Of_Band_Present_End = 11,
}

Layer_Setting_Type :: enum c.int {
	Bool32 = 0,
	Int32 = 1,
	Int64 = 2,
	Uint32 = 3,
	Uint64 = 4,
	Float32 = 5,
	Float64 = 6,
	String = 7,
}

Layered_Driver_Underlying_Api_Msft :: enum c.int {
	Layered_Driver_Underlying_Api_None_Msft = 0,
	Layered_Driver_Underlying_Api_D3D12_Msft = 1,
}

Line_Rasterization_Mode :: enum c.int {
	Default = 0,
	Rectangular = 1,
	Bresenham = 2,
	Rectangular_Smooth = 3,
}

Logic_Op :: enum c.int {
	Clear = 0,
	And = 1,
	And_Reverse = 2,
	Copy = 3,
	And_Inverted = 4,
	No_Op = 5,
	Xor = 6,
	Or = 7,
	Nor = 8,
	Equivalent = 9,
	Invert = 10,
	Or_Reverse = 11,
	Copy_Inverted = 12,
	Or_Inverted = 13,
	Nand = 14,
	Set = 15,
}

Memory_Overallocation_Behavior :: enum c.int {
	Default = 0,
	Allowed = 1,
	Disallowed = 2,
}

Micromap_Type :: enum c.int {
	Opacity_Micromap = 0,
	Displacement_Micromap = 1000397000,
}

Object_Type :: enum c.int {
	Unknown = 0,
	Instance = 1,
	Physical_Device = 2,
	Device = 3,
	Queue = 4,
	Semaphore = 5,
	Command_Buffer = 6,
	Fence = 7,
	Device_Memory = 8,
	Buffer = 9,
	Image = 10,
	Event = 11,
	Query_Pool = 12,
	Buffer_View = 13,
	Image_View = 14,
	Shader_Module = 15,
	Pipeline_Cache = 16,
	Pipeline_Layout = 17,
	Render_Pass = 18,
	Pipeline = 19,
	Descriptor_Set_Layout = 20,
	Sampler = 21,
	Descriptor_Pool = 22,
	Descriptor_Set = 23,
	Framebuffer = 24,
	Command_Pool = 25,
	Sampler_Ycbcr_Conversion = 1000156000,
	Descriptor_Update_Template = 1000085000,
	Private_Data_Slot = 1000295000,
	Surface = 1000000000,
	Swapchain = 1000001000,
	Display = 1000002000,
	Display_Mode = 1000002001,
	Debug_Report_Callback = 1000011000,
	Video_Session = 1000023000,
	Video_Session_Parameters = 1000023001,
	Cu_Module = 1000029000,
	Cu_Function = 1000029001,
	Debug_Utils_Messenger = 1000128000,
	Acceleration_Structure = 1000150000,
	Validation_Cache = 1000160000,
	Acceleration_Structure_ = 1000165000,
	Performance_Configuration_Intel = 1000210000,
	Deferred_Operation = 1000268000,
	Indirect_Commands_Layout = 1000277000,
	Cuda_Module = 1000307000,
	Cuda_Function = 1000307001,
	Buffer_Collection_Fuchsia = 1000366000,
	Micromap = 1000396000,
	Optical_Flow_Session = 1000464000,
	Shader = 1000482000,
	Pipeline_Binary = 1000483000,
	Indirect_Commands_Layout_ = 1000572000,
	Indirect_Execution_Set = 1000572001,
}

Opacity_Micromap_Format :: enum c.int {
	_2_State = 1,
	_4_State = 2,
}

Opacity_Micromap_Special_Index :: enum c.int {
	Fully_Transparent = -1,
	Fully_Opaque = -2,
	Fully_Unknown_Transparent = -3,
	Fully_Unknown_Opaque = -4,
}

Optical_Flow_Performance_Level :: enum c.int {
	Unknown = 0,
	Slow = 1,
	Medium = 2,
	Fast = 3,
}

Optical_Flow_Session_Binding_Point :: enum c.int {
	Unknown = 0,
	Input = 1,
	Reference = 2,
	Hint = 3,
	Flow_Vector = 4,
	Backward_Flow_Vector = 5,
	Cost = 6,
	Backward_Cost = 7,
	Global_Flow = 8,
}

Out_Of_Band_Queue_Type :: enum c.int {
	Render = 0,
	Present = 1,
}

Performance_Configuration_Type_Intel :: enum c.int {
	Performance_Configuration_Type_Command_Queue_Metrics_Discovery_Activated_Intel = 0,
}

Performance_Counter_Scope :: enum c.int {
	Command_Buffer = 0,
	Render_Pass = 1,
	Command = 2,
}

Performance_Counter_Storage :: enum c.int {
	Int32 = 0,
	Int64 = 1,
	Uint32 = 2,
	Uint64 = 3,
	Float32 = 4,
	Float64 = 5,
}

Performance_Counter_Unit :: enum c.int {
	Generic = 0,
	Percentage = 1,
	Nanoseconds = 2,
	Bytes = 3,
	Bytes_Per_Second = 4,
	Kelvin = 5,
	Watts = 6,
	Volts = 7,
	Amps = 8,
	Hertz = 9,
	Cycles = 10,
}

Performance_Override_Type_Intel :: enum c.int {
	Performance_Override_Type_Null_Hardware_Intel = 0,
	Performance_Override_Type_Flush_Gpu_Caches_Intel = 1,
}

Performance_Parameter_Type_Intel :: enum c.int {
	Performance_Parameter_Type_Hw_Counters_Supported_Intel = 0,
	Performance_Parameter_Type_Stream_Marker_Valid_Bits_Intel = 1,
}

Performance_Value_Type_Intel :: enum c.int {
	Performance_Value_Type_Uint32_Intel = 0,
	Performance_Value_Type_Uint64_Intel = 1,
	Performance_Value_Type_Float_Intel = 2,
	Performance_Value_Type_Bool_Intel = 3,
	Performance_Value_Type_String_Intel = 4,
}

Physical_Device_Layered_Api :: enum c.int {
	Vulkan = 0,
	D3D12 = 1,
	Metal = 2,
	Opengl = 3,
	Opengles = 4,
}

Physical_Device_Type :: enum c.int {
	Other = 0,
	Integrated_Gpu = 1,
	Discrete_Gpu = 2,
	Virtual_Gpu = 3,
	Cpu = 4,
}

Pipeline_Bind_Point :: enum c.int {
	Graphics = 0,
	Compute = 1,
	Execution_Graph_Amdx = 1000134000,
	Ray_Tracing = 1000165000,
	Subpass_Shading_Huawei = 1000369003,
}

Pipeline_Cache_Header_Version :: enum c.int {
	One = 1,
}

Pipeline_Executable_Statistic_Format :: enum c.int {
	Bool32 = 0,
	Int64 = 1,
	Uint64 = 2,
	Float64 = 3,
}

Pipeline_Robustness_Buffer_Behavior :: enum c.int {
	Device_Default = 0,
	Disabled = 1,
	Robust_Buffer_Access = 2,
	Robust_Buffer_Access_2 = 3,
}

Pipeline_Robustness_Image_Behavior :: enum c.int {
	Device_Default = 0,
	Disabled = 1,
	Robust_Image_Access = 2,
	Robust_Image_Access_2 = 3,
}

Point_Clipping_Behavior :: enum c.int {
	All_Clip_Planes = 0,
	User_Clip_Planes_Only = 1,
}

Polygon_Mode :: enum c.int {
	Fill = 0,
	Line = 1,
	Point = 2,
	Fill_Rectangle = 1000153000,
}

Present_Mode :: enum c.int {
	Immediate = 0,
	Mailbox = 1,
	Fifo = 2,
	Fifo_Relaxed = 3,
	Shared_Demand_Refresh = 1000111000,
	Shared_Continuous_Refresh = 1000111001,
	Fifo_Latest_Ready = 1000361000,
}

Primitive_Topology :: enum c.int {
	Point_List = 0,
	Line_List = 1,
	Line_Strip = 2,
	Triangle_List = 3,
	Triangle_Strip = 4,
	Triangle_Fan = 5,
	Line_List_With_Adjacency = 6,
	Line_Strip_With_Adjacency = 7,
	Triangle_List_With_Adjacency = 8,
	Triangle_Strip_With_Adjacency = 9,
	Patch_List = 10,
}

Provoking_Vertex_Mode :: enum c.int {
	First_Vertex = 0,
	Last_Vertex = 1,
}

Query_Pool_Sampling_Mode_Intel :: enum c.int {
	Query_Pool_Sampling_Mode_Manual_Intel = 0,
}

Query_Result_Status :: enum c.int {
	Error = -1,
	Not_Ready = 0,
	Complete = 1,
	Insufficient_Bitstream_Buffer_Range = -1000299000,
}

Query_Type :: enum c.int {
	Occlusion = 0,
	Pipeline_Statistics = 1,
	Timestamp = 2,
	Result_Status_Only = 1000023000,
	Transform_Feedback_Stream = 1000028004,
	Performance_Query = 1000116000,
	Acceleration_Structure_Compacted_Size = 1000150000,
	Acceleration_Structure_Serialization_Size = 1000150001,
	Acceleration_Structure_Compacted_Size_ = 1000165000,
	Performance_Query_Intel = 1000210000,
	Video_Encode_Feedback = 1000299000,
	Mesh_Primitives_Generated = 1000328000,
	Primitives_Generated = 1000382000,
	Acceleration_Structure_Serialization_Bottom_Level_Pointers = 1000386000,
	Acceleration_Structure_Size = 1000386001,
	Micromap_Serialization_Size = 1000396000,
	Micromap_Compacted_Size = 1000396001,
}

Queue_Global_Priority :: enum c.int {
	Low = 128,
	Medium = 256,
	High = 512,
	Realtime = 1024,
}

Rasterization_Order :: enum c.int {
	Strict = 0,
	Relaxed = 1,
}

Ray_Tracing_Invocation_Reorder_Mode :: enum c.int {
	None = 0,
	Reorder = 1,
}

Ray_Tracing_Shader_Group_Type :: enum c.int {
	General = 0,
	Triangles_Hit_Group = 1,
	Procedural_Hit_Group = 2,
}

Result :: enum c.int {
	Success = 0,
	Not_Ready = 1,
	Timeout = 2,
	Event_Set = 3,
	Event_Reset = 4,
	Incomplete = 5,
	Error_Out_Of_Host_Memory = -1,
	Error_Out_Of_Device_Memory = -2,
	Error_Initialization_Failed = -3,
	Error_Device_Lost = -4,
	Error_Memory_Map_Failed = -5,
	Error_Layer_Not_Present = -6,
	Error_Extension_Not_Present = -7,
	Error_Feature_Not_Present = -8,
	Error_Incompatible_Driver = -9,
	Error_Too_Many_Objects = -10,
	Error_Format_Not_Supported = -11,
	Error_Fragmented_Pool = -12,
	Error_Unknown = -13,
	Error_Out_Of_Pool_Memory = -1000069000,
	Error_Invalid_External_Handle = -1000072003,
	Error_Fragmentation = -1000161000,
	Error_Invalid_Opaque_Capture_Address = -1000257000,
	Pipeline_Compile_Required = 1000297000,
	Error_Not_Permitted = -1000174001,
	Error_Surface_Lost = -1000000000,
	Error_Native_Window_In_Use = -1000000001,
	Suboptimal = 1000001003,
	Error_Out_Of_Date = -1000001004,
	Error_Incompatible_Display = -1000003001,
	Error_Validation_Failed = -1000011001,
	Error_Ialid_Shader = -1000012000,
	Error_Image_Usage_Not_Supported = -1000023000,
	Error_Video_Picture_Layout_Not_Supported = -1000023001,
	Error_Video_Profile_Operation_Not_Supported = -1000023002,
	Error_Video_Profile_Format_Not_Supported = -1000023003,
	Error_Video_Profile_Codec_Not_Supported = -1000023004,
	Error_Video_Std_Version_Not_Supported = -1000023005,
	Error_Invalid_Drm_Format_Modifier_Plane_Layout = -1000158000,
	Error_Full_Screen_Exclusive_Mode_Lost = -1000255000,
	Thread_Idle = 1000268000,
	Thread_Done = 1000268001,
	Operation_Deferred = 1000268002,
	Operation_Not_Deferred = 1000268003,
	Error_Invalid_Video_Std_Parameters = -1000299000,
	Error_Compression_Exhausted = -1000338000,
	Incompatible_Shader_Binary = 1000482000,
	Pipeline_Binary_Missing = 1000483000,
	Error_Not_Enough_Space = -1000483000,
}

Sampler_Address_Mode :: enum c.int {
	Repeat = 0,
	Mirrored_Repeat = 1,
	Clamp_To_Edge = 2,
	Clamp_To_Border = 3,
	Mirror_Clamp_To_Edge = 4,
}

Sampler_Mipmap_Mode :: enum c.int {
	Nearest = 0,
	Linear = 1,
}

Sampler_Reduction_Mode :: enum c.int {
	Weighted_Average = 0,
	Min = 1,
	Max = 2,
	Weighted_Average_Rangeclamp_Qcom = 1000521000,
}

Sampler_Ycbcr_Model_Conversion :: enum c.int {
	Rgb_Identity = 0,
	Ycbcr_Identity = 1,
	Ycbcr_709 = 2,
	Ycbcr_601 = 3,
	Ycbcr_2020 = 4,
}

Sampler_Ycbcr_Range :: enum c.int {
	Itu_Full = 0,
	Itu_Narrow = 1,
}

Scope :: enum c.int {
	Device = 1,
	Workgroup = 2,
	Subgroup = 3,
	Queue_Family = 5,
}

Semaphore_Type :: enum c.int {
	Binary = 0,
	Timeline = 1,
}

Shader_Code_Type :: enum c.int {
	Binary = 0,
	Spirv = 1,
}

Shader_Float_Controls_Independence :: enum c.int {
	_32_Bit_Only = 0,
	All = 1,
	None = 2,
}

Shader_Group_Shader :: enum c.int {
	General = 0,
	Closest_Hit = 1,
	Any_Hit = 2,
	Intersection = 3,
}

Shader_Info_Type :: enum c.int {
	Statistics = 0,
	Binary = 1,
	Disassembly = 2,
}

Shading_Rate_Palette_Entry :: enum c.int {
	No_Iocations = 0,
	_16_Iocations_Per_Pixel = 1,
	_8_Iocations_Per_Pixel = 2,
	_4_Iocations_Per_Pixel = 3,
	_2_Iocations_Per_Pixel = 4,
	_1_Iocation_Per_Pixel = 5,
	_1_Iocation_Per_2X1_Pixels = 6,
	_1_Iocation_Per_1X2_Pixels = 7,
	_1_Iocation_Per_2X2_Pixels = 8,
	_1_Iocation_Per_4X2_Pixels = 9,
	_1_Iocation_Per_2X4_Pixels = 10,
	_1_Iocation_Per_4X4_Pixels = 11,
}

Sharing_Mode :: enum c.int {
	Exclusive = 0,
	Concurrent = 1,
}

Stencil_Op :: enum c.int {
	Keep = 0,
	Zero = 1,
	Replace = 2,
	Increment_And_Clamp = 3,
	Decrement_And_Clamp = 4,
	Invert = 5,
	Increment_And_Wrap = 6,
	Decrement_And_Wrap = 7,
}

Structure_Type :: enum c.int {
	Application_Info = 0,
	Instance_Create_Info = 1,
	Device_Queue_Create_Info = 2,
	Device_Create_Info = 3,
	Submit_Info = 4,
	Memory_Allocate_Info = 5,
	Mapped_Memory_Range = 6,
	Bind_Sparse_Info = 7,
	Fence_Create_Info = 8,
	Semaphore_Create_Info = 9,
	Event_Create_Info = 10,
	Query_Pool_Create_Info = 11,
	Buffer_Create_Info = 12,
	Buffer_View_Create_Info = 13,
	Image_Create_Info = 14,
	Image_View_Create_Info = 15,
	Shader_Module_Create_Info = 16,
	Pipeline_Cache_Create_Info = 17,
	Pipeline_Shader_Stage_Create_Info = 18,
	Pipeline_Vertex_Input_State_Create_Info = 19,
	Pipeline_Input_Assembly_State_Create_Info = 20,
	Pipeline_Tessellation_State_Create_Info = 21,
	Pipeline_Viewport_State_Create_Info = 22,
	Pipeline_Rasterization_State_Create_Info = 23,
	Pipeline_Multisample_State_Create_Info = 24,
	Pipeline_Depth_Stencil_State_Create_Info = 25,
	Pipeline_Color_Blend_State_Create_Info = 26,
	Pipeline_Dynamic_State_Create_Info = 27,
	Graphics_Pipeline_Create_Info = 28,
	Compute_Pipeline_Create_Info = 29,
	Pipeline_Layout_Create_Info = 30,
	Sampler_Create_Info = 31,
	Descriptor_Set_Layout_Create_Info = 32,
	Descriptor_Pool_Create_Info = 33,
	Descriptor_Set_Allocate_Info = 34,
	Write_Descriptor_Set = 35,
	Copy_Descriptor_Set = 36,
	Framebuffer_Create_Info = 37,
	Render_Pass_Create_Info = 38,
	Command_Pool_Create_Info = 39,
	Command_Buffer_Allocate_Info = 40,
	Command_Buffer_Inheritance_Info = 41,
	Command_Buffer_Begin_Info = 42,
	Render_Pass_Begin_Info = 43,
	Buffer_Memory_Barrier = 44,
	Image_Memory_Barrier = 45,
	Memory_Barrier = 46,
	Loader_Instance_Create_Info = 47,
	Loader_Device_Create_Info = 48,
	Physical_Device_Subgroup_Properties = 1000094000,
	Bind_Buffer_Memory_Info = 1000157000,
	Bind_Image_Memory_Info = 1000157001,
	Physical_Device_16Bit_Storage_Features = 1000083000,
	Memory_Dedicated_Requirements = 1000127000,
	Memory_Dedicated_Allocate_Info = 1000127001,
	Memory_Allocate_Flags_Info = 1000060000,
	Device_Group_Render_Pass_Begin_Info = 1000060003,
	Device_Group_Command_Buffer_Begin_Info = 1000060004,
	Device_Group_Submit_Info = 1000060005,
	Device_Group_Bind_Sparse_Info = 1000060006,
	Bind_Buffer_Memory_Device_Group_Info = 1000060013,
	Bind_Image_Memory_Device_Group_Info = 1000060014,
	Physical_Device_Group_Properties = 1000070000,
	Device_Group_Device_Create_Info = 1000070001,
	Buffer_Memory_Requirements_Info_2 = 1000146000,
	Image_Memory_Requirements_Info_2 = 1000146001,
	Image_Sparse_Memory_Requirements_Info_2 = 1000146002,
	Memory_Requirements_2 = 1000146003,
	Sparse_Image_Memory_Requirements_2 = 1000146004,
	Physical_Device_Features_2 = 1000059000,
	Physical_Device_Properties_2 = 1000059001,
	Format_Properties_2 = 1000059002,
	Image_Format_Properties_2 = 1000059003,
	Physical_Device_Image_Format_Info_2 = 1000059004,
	Queue_Family_Properties_2 = 1000059005,
	Physical_Device_Memory_Properties_2 = 1000059006,
	Sparse_Image_Format_Properties_2 = 1000059007,
	Physical_Device_Sparse_Image_Format_Info_2 = 1000059008,
	Physical_Device_Point_Clipping_Properties = 1000117000,
	Render_Pass_Input_Attachment_Aspect_Create_Info = 1000117001,
	Image_View_Usage_Create_Info = 1000117002,
	Pipeline_Tessellation_Domain_Origin_State_Create_Info = 1000117003,
	Render_Pass_Multiview_Create_Info = 1000053000,
	Physical_Device_Multiview_Features = 1000053001,
	Physical_Device_Multiview_Properties = 1000053002,
	Physical_Device_Variable_Pointers_Features = 1000120000,
	Protected_Submit_Info = 1000145000,
	Physical_Device_Protected_Memory_Features = 1000145001,
	Physical_Device_Protected_Memory_Properties = 1000145002,
	Device_Queue_Info_2 = 1000145003,
	Sampler_Ycbcr_Conversion_Create_Info = 1000156000,
	Sampler_Ycbcr_Conversion_Info = 1000156001,
	Bind_Image_Plane_Memory_Info = 1000156002,
	Image_Plane_Memory_Requirements_Info = 1000156003,
	Physical_Device_Sampler_Ycbcr_Conversion_Features = 1000156004,
	Sampler_Ycbcr_Conversion_Image_Format_Properties = 1000156005,
	Descriptor_Update_Template_Create_Info = 1000085000,
	Physical_Device_External_Image_Format_Info = 1000071000,
	External_Image_Format_Properties = 1000071001,
	Physical_Device_External_Buffer_Info = 1000071002,
	External_Buffer_Properties = 1000071003,
	Physical_Device_Id_Properties = 1000071004,
	External_Memory_Buffer_Create_Info = 1000072000,
	External_Memory_Image_Create_Info = 1000072001,
	Export_Memory_Allocate_Info = 1000072002,
	Physical_Device_External_Fence_Info = 1000112000,
	External_Fence_Properties = 1000112001,
	Export_Fence_Create_Info = 1000113000,
	Export_Semaphore_Create_Info = 1000077000,
	Physical_Device_External_Semaphore_Info = 1000076000,
	External_Semaphore_Properties = 1000076001,
	Physical_Device_Maintenance_3_Properties = 1000168000,
	Descriptor_Set_Layout_Support = 1000168001,
	Physical_Device_Shader_Draw_Parameters_Features = 1000063000,
	Physical_Device_Vulkan_1_1_Features = 49,
	Physical_Device_Vulkan_1_1_Properties = 50,
	Physical_Device_Vulkan_1_2_Features = 51,
	Physical_Device_Vulkan_1_2_Properties = 52,
	Image_Format_List_Create_Info = 1000147000,
	Attachment_Description_2 = 1000109000,
	Attachment_Reference_2 = 1000109001,
	Subpass_Description_2 = 1000109002,
	Subpass_Dependency_2 = 1000109003,
	Render_Pass_Create_Info_2 = 1000109004,
	Subpass_Begin_Info = 1000109005,
	Subpass_End_Info = 1000109006,
	Physical_Device_8Bit_Storage_Features = 1000177000,
	Physical_Device_Driver_Properties = 1000196000,
	Physical_Device_Shader_Atomic_Int64_Features = 1000180000,
	Physical_Device_Shader_Float16_Int8_Features = 1000082000,
	Physical_Device_Float_Controls_Properties = 1000197000,
	Descriptor_Set_Layout_Binding_Flags_Create_Info = 1000161000,
	Physical_Device_Descriptor_Indexing_Features = 1000161001,
	Physical_Device_Descriptor_Indexing_Properties = 1000161002,
	Descriptor_Set_Variable_Descriptor_Count_Allocate_Info = 1000161003,
	Descriptor_Set_Variable_Descriptor_Count_Layout_Support = 1000161004,
	Physical_Device_Depth_Stencil_Resolve_Properties = 1000199000,
	Subpass_Description_Depth_Stencil_Resolve = 1000199001,
	Physical_Device_Scalar_Block_Layout_Features = 1000221000,
	Image_Stencil_Usage_Create_Info = 1000246000,
	Physical_Device_Sampler_Filter_Minmax_Properties = 1000130000,
	Sampler_Reduction_Mode_Create_Info = 1000130001,
	Physical_Device_Vulkan_Memory_Model_Features = 1000211000,
	Physical_Device_Imageless_Framebuffer_Features = 1000108000,
	Framebuffer_Attachments_Create_Info = 1000108001,
	Framebuffer_Attachment_Image_Info = 1000108002,
	Render_Pass_Attachment_Begin_Info = 1000108003,
	Physical_Device_Uniform_Buffer_Standard_Layout_Features = 1000253000,
	Physical_Device_Shader_Subgroup_Extended_Types_Features = 1000175000,
	Physical_Device_Separate_Depth_Stencil_Layouts_Features = 1000241000,
	Attachment_Reference_Stencil_Layout = 1000241001,
	Attachment_Description_Stencil_Layout = 1000241002,
	Physical_Device_Host_Query_Reset_Features = 1000261000,
	Physical_Device_Timeline_Semaphore_Features = 1000207000,
	Physical_Device_Timeline_Semaphore_Properties = 1000207001,
	Semaphore_Type_Create_Info = 1000207002,
	Timeline_Semaphore_Submit_Info = 1000207003,
	Semaphore_Wait_Info = 1000207004,
	Semaphore_Signal_Info = 1000207005,
	Physical_Device_Buffer_Device_Address_Features = 1000257000,
	Buffer_Device_Address_Info = 1000244001,
	Buffer_Opaque_Capture_Address_Create_Info = 1000257002,
	Memory_Opaque_Capture_Address_Allocate_Info = 1000257003,
	Device_Memory_Opaque_Capture_Address_Info = 1000257004,
	Physical_Device_Vulkan_1_3_Features = 53,
	Physical_Device_Vulkan_1_3_Properties = 54,
	Pipeline_Creation_Feedback_Create_Info = 1000192000,
	Physical_Device_Shader_Terminate_Invocation_Features = 1000215000,
	Physical_Device_Tool_Properties = 1000245000,
	Physical_Device_Shader_Demote_To_Helper_Invocation_Features = 1000276000,
	Physical_Device_Private_Data_Features = 1000295000,
	Device_Private_Data_Create_Info = 1000295001,
	Private_Data_Slot_Create_Info = 1000295002,
	Physical_Device_Pipeline_Creation_Cache_Control_Features = 1000297000,
	Memory_Barrier_2 = 1000314000,
	Buffer_Memory_Barrier_2 = 1000314001,
	Image_Memory_Barrier_2 = 1000314002,
	Dependency_Info = 1000314003,
	Submit_Info_2 = 1000314004,
	Semaphore_Submit_Info = 1000314005,
	Command_Buffer_Submit_Info = 1000314006,
	Physical_Device_Synchronization_2_Features = 1000314007,
	Physical_Device_Zero_Initialize_Workgroup_Memory_Features = 1000325000,
	Physical_Device_Image_Robustness_Features = 1000335000,
	Copy_Buffer_Info_2 = 1000337000,
	Copy_Image_Info_2 = 1000337001,
	Copy_Buffer_To_Image_Info_2 = 1000337002,
	Copy_Image_To_Buffer_Info_2 = 1000337003,
	Blit_Image_Info_2 = 1000337004,
	Resolve_Image_Info_2 = 1000337005,
	Buffer_Copy_2 = 1000337006,
	Image_Copy_2 = 1000337007,
	Image_Blit_2 = 1000337008,
	Buffer_Image_Copy_2 = 1000337009,
	Image_Resolve_2 = 1000337010,
	Physical_Device_Subgroup_Size_Control_Properties = 1000225000,
	Pipeline_Shader_Stage_Required_Subgroup_Size_Create_Info = 1000225001,
	Physical_Device_Subgroup_Size_Control_Features = 1000225002,
	Physical_Device_Inline_Uniform_Block_Features = 1000138000,
	Physical_Device_Inline_Uniform_Block_Properties = 1000138001,
	Write_Descriptor_Set_Inline_Uniform_Block = 1000138002,
	Descriptor_Pool_Inline_Uniform_Block_Create_Info = 1000138003,
	Physical_Device_Texture_Compression_Astc_Hdr_Features = 1000066000,
	Rendering_Info = 1000044000,
	Rendering_Attachment_Info = 1000044001,
	Pipeline_Rendering_Create_Info = 1000044002,
	Physical_Device_Dynamic_Rendering_Features = 1000044003,
	Command_Buffer_Inheritance_Rendering_Info = 1000044004,
	Physical_Device_Shader_Integer_Dot_Product_Features = 1000280000,
	Physical_Device_Shader_Integer_Dot_Product_Properties = 1000280001,
	Physical_Device_Texel_Buffer_Alignment_Properties = 1000281001,
	Format_Properties_3 = 1000360000,
	Physical_Device_Maintenance_4_Features = 1000413000,
	Physical_Device_Maintenance_4_Properties = 1000413001,
	Device_Buffer_Memory_Requirements = 1000413002,
	Device_Image_Memory_Requirements = 1000413003,
	Physical_Device_Vulkan_1_4_Features = 55,
	Physical_Device_Vulkan_1_4_Properties = 56,
	Device_Queue_Global_Priority_Create_Info = 1000174000,
	Physical_Device_Global_Priority_Query_Features = 1000388000,
	Queue_Family_Global_Priority_Properties = 1000388001,
	Physical_Device_Shader_Subgroup_Rotate_Features = 1000416000,
	Physical_Device_Shader_Float_Controls_2_Features = 1000528000,
	Physical_Device_Shader_Expect_Assume_Features = 1000544000,
	Physical_Device_Line_Rasterization_Features = 1000259000,
	Pipeline_Rasterization_Line_State_Create_Info = 1000259001,
	Physical_Device_Line_Rasterization_Properties = 1000259002,
	Physical_Device_Vertex_Attribute_Divisor_Properties = 1000525000,
	Pipeline_Vertex_Input_Divisor_State_Create_Info = 1000190001,
	Physical_Device_Vertex_Attribute_Divisor_Features = 1000190002,
	Physical_Device_Index_Type_Uint8_Features = 1000265000,
	Memory_Map_Info = 1000271000,
	Memory_Unmap_Info = 1000271001,
	Physical_Device_Maintenance_5_Features = 1000470000,
	Physical_Device_Maintenance_5_Properties = 1000470001,
	Rendering_Area_Info = 1000470003,
	Device_Image_Subresource_Info = 1000470004,
	Subresource_Layout_2 = 1000338002,
	Image_Subresource_2 = 1000338003,
	Pipeline_Create_Flags_2_Create_Info = 1000470005,
	Buffer_Usage_Flags_2_Create_Info = 1000470006,
	Physical_Device_Push_Descriptor_Properties = 1000080000,
	Physical_Device_Dynamic_Rendering_Local_Read_Features = 1000232000,
	Rendering_Attachment_Location_Info = 1000232001,
	Rendering_Input_Attachment_Index_Info = 1000232002,
	Physical_Device_Maintenance_6_Features = 1000545000,
	Physical_Device_Maintenance_6_Properties = 1000545001,
	Bind_Memory_Status = 1000545002,
	Bind_Descriptor_Sets_Info = 1000545003,
	Push_Constants_Info = 1000545004,
	Push_Descriptor_Set_Info = 1000545005,
	Push_Descriptor_Set_With_Template_Info = 1000545006,
	Physical_Device_Pipeline_Protected_Access_Features = 1000466000,
	Pipeline_Robustness_Create_Info = 1000068000,
	Physical_Device_Pipeline_Robustness_Features = 1000068001,
	Physical_Device_Pipeline_Robustness_Properties = 1000068002,
	Physical_Device_Host_Image_Copy_Features = 1000270000,
	Physical_Device_Host_Image_Copy_Properties = 1000270001,
	Memory_To_Image_Copy = 1000270002,
	Image_To_Memory_Copy = 1000270003,
	Copy_Image_To_Memory_Info = 1000270004,
	Copy_Memory_To_Image_Info = 1000270005,
	Host_Image_Layout_Transition_Info = 1000270006,
	Copy_Image_To_Image_Info = 1000270007,
	Subresource_Host_Memcpy_Size = 1000270008,
	Host_Image_Copy_Device_Performance_Query = 1000270009,
	Swapchain_Create_Info = 1000001000,
	Present_Info = 1000001001,
	Device_Group_Present_Capabilities = 1000060007,
	Image_Swapchain_Create_Info = 1000060008,
	Bind_Image_Memory_Swapchain_Info = 1000060009,
	Acquire_Next_Image_Info = 1000060010,
	Device_Group_Present_Info = 1000060011,
	Device_Group_Swapchain_Create_Info = 1000060012,
	Display_Mode_Create_Info = 1000002000,
	Display_Surface_Create_Info = 1000002001,
	Display_Present_Info = 1000003000,
	Xlib_Surface_Create_Info = 1000004000,
	Xcb_Surface_Create_Info = 1000005000,
	Wayland_Surface_Create_Info = 1000006000,
	Android_Surface_Create_Info = 1000008000,
	Win32_Surface_Create_Info = 1000009000,
	Debug_Report_Callback_Create_Info = 1000011000,
	Pipeline_Rasterization_State_Rasterization_Order = 1000018000,
	Debug_Marker_Object_Name_Info = 1000022000,
	Debug_Marker_Object_Tag_Info = 1000022001,
	Debug_Marker_Marker_Info = 1000022002,
	Video_Profile_Info = 1000023000,
	Video_Capabilities = 1000023001,
	Video_Picture_Resource_Info = 1000023002,
	Video_Session_Memory_Requirements = 1000023003,
	Bind_Video_Session_Memory_Info = 1000023004,
	Video_Session_Create_Info = 1000023005,
	Video_Session_Parameters_Create_Info = 1000023006,
	Video_Session_Parameters_Update_Info = 1000023007,
	Video_Begin_Coding_Info = 1000023008,
	Video_End_Coding_Info = 1000023009,
	Video_Coding_Control_Info = 1000023010,
	Video_Reference_Slot_Info = 1000023011,
	Queue_Family_Video_Properties = 1000023012,
	Video_Profile_List_Info = 1000023013,
	Physical_Device_Video_Format_Info = 1000023014,
	Video_Format_Properties = 1000023015,
	Queue_Family_Query_Result_Status_Properties = 1000023016,
	Video_Decode_Info = 1000024000,
	Video_Decode_Capabilities = 1000024001,
	Video_Decode_Usage_Info = 1000024002,
	Dedicated_Allocation_Image_Create_Info = 1000026000,
	Dedicated_Allocation_Buffer_Create_Info = 1000026001,
	Dedicated_Allocation_Memory_Allocate_Info = 1000026002,
	Physical_Device_Transform_Feedback_Features = 1000028000,
	Physical_Device_Transform_Feedback_Properties = 1000028001,
	Pipeline_Rasterization_State_Stream_Create_Info = 1000028002,
	Cu_Module_Create_Info = 1000029000,
	Cu_Function_Create_Info = 1000029001,
	Cu_Launch_Info = 1000029002,
	Cu_Module_Texturing_Mode_Create_Info = 1000029004,
	Image_View_Handle_Info = 1000030000,
	Image_View_Address_Properties = 1000030001,
	Video_Encode_H264_Capabilities = 1000038000,
	Video_Encode_H264_Session_Parameters_Create_Info = 1000038001,
	Video_Encode_H264_Session_Parameters_Add_Info = 1000038002,
	Video_Encode_H264_Picture_Info = 1000038003,
	Video_Encode_H264_Dpb_Slot_Info = 1000038004,
	Video_Encode_H264_Nalu_Slice_Info = 1000038005,
	Video_Encode_H264_Gop_Remaining_Frame_Info = 1000038006,
	Video_Encode_H264_Profile_Info = 1000038007,
	Video_Encode_H264_Rate_Control_Info = 1000038008,
	Video_Encode_H264_Rate_Control_Layer_Info = 1000038009,
	Video_Encode_H264_Session_Create_Info = 1000038010,
	Video_Encode_H264_Quality_Level_Properties = 1000038011,
	Video_Encode_H264_Session_Parameters_Get_Info = 1000038012,
	Video_Encode_H264_Session_Parameters_Feedback_Info = 1000038013,
	Video_Encode_H265_Capabilities = 1000039000,
	Video_Encode_H265_Session_Parameters_Create_Info = 1000039001,
	Video_Encode_H265_Session_Parameters_Add_Info = 1000039002,
	Video_Encode_H265_Picture_Info = 1000039003,
	Video_Encode_H265_Dpb_Slot_Info = 1000039004,
	Video_Encode_H265_Nalu_Slice_Segment_Info = 1000039005,
	Video_Encode_H265_Gop_Remaining_Frame_Info = 1000039006,
	Video_Encode_H265_Profile_Info = 1000039007,
	Video_Encode_H265_Rate_Control_Info = 1000039009,
	Video_Encode_H265_Rate_Control_Layer_Info = 1000039010,
	Video_Encode_H265_Session_Create_Info = 1000039011,
	Video_Encode_H265_Quality_Level_Properties = 1000039012,
	Video_Encode_H265_Session_Parameters_Get_Info = 1000039013,
	Video_Encode_H265_Session_Parameters_Feedback_Info = 1000039014,
	Video_Decode_H264_Capabilities = 1000040000,
	Video_Decode_H264_Picture_Info = 1000040001,
	Video_Decode_H264_Profile_Info = 1000040003,
	Video_Decode_H264_Session_Parameters_Create_Info = 1000040004,
	Video_Decode_H264_Session_Parameters_Add_Info = 1000040005,
	Video_Decode_H264_Dpb_Slot_Info = 1000040006,
	Texture_Lod_Gather_Format_Properties = 1000041000,
	Stream_Descriptor_Surface_Create_Info_Ggp = 1000049000,
	Physical_Device_Corner_Sampled_Image_Features = 1000050000,
	External_Memory_Image_Create_Info_ = 1000056000,
	Export_Memory_Allocate_Info_ = 1000056001,
	Import_Memory_Win32_Handle_Info = 1000057000,
	Export_Memory_Win32_Handle_Info = 1000057001,
	Win32_Keyed_Mutex_Acquire_Release_Info = 1000058000,
	Validation_Flags = 1000061000,
	Vi_Surface_Create_Info_Nn = 1000062000,
	Image_View_Astc_Decode_Mode = 1000067000,
	Physical_Device_Astc_Decode_Features = 1000067001,
	Import_Memory_Win32_Handle_Info_ = 1000073000,
	Export_Memory_Win32_Handle_Info_ = 1000073001,
	Memory_Win32_Handle_Properties = 1000073002,
	Memory_Get_Win32_Handle_Info = 1000073003,
	Import_Memory_Fd_Info = 1000074000,
	Memory_Fd_Properties = 1000074001,
	Memory_Get_Fd_Info = 1000074002,
	Win32_Keyed_Mutex_Acquire_Release_Info_ = 1000075000,
	Import_Semaphore_Win32_Handle_Info = 1000078000,
	Export_Semaphore_Win32_Handle_Info = 1000078001,
	D3D12_Fence_Submit_Info = 1000078002,
	Semaphore_Get_Win32_Handle_Info = 1000078003,
	Import_Semaphore_Fd_Info = 1000079000,
	Semaphore_Get_Fd_Info = 1000079001,
	Command_Buffer_Inheritance_Conditional_Rendering_Info = 1000081000,
	Physical_Device_Conditional_Rendering_Features = 1000081001,
	Conditional_Rendering_Begin_Info = 1000081002,
	Present_Regions = 1000084000,
	Pipeline_Viewport_W_Scaling_State_Create_Info = 1000087000,
	Surface_Capabilities_2 = 1000090000,
	Display_Power_Info = 1000091000,
	Device_Event_Info = 1000091001,
	Display_Event_Info = 1000091002,
	Swapchain_Counter_Create_Info = 1000091003,
	Present_Times_Info = 1000092000,
	Physical_Device_Multiview_Per_View_Attributes_Properties = 1000097000,
	Multiview_Per_View_Attributes_Info = 1000044009,
	Pipeline_Viewport_Swizzle_State_Create_Info = 1000098000,
	Physical_Device_Discard_Rectangle_Properties = 1000099000,
	Pipeline_Discard_Rectangle_State_Create_Info = 1000099001,
	Physical_Device_Conservative_Rasterization_Properties = 1000101000,
	Pipeline_Rasterization_Conservative_State_Create_Info = 1000101001,
	Physical_Device_Depth_Clip_Enable_Features = 1000102000,
	Pipeline_Rasterization_Depth_Clip_State_Create_Info = 1000102001,
	Hdr_Metadata = 1000105000,
	Physical_Device_Relaxed_Line_Rasterization_Features_Img = 1000110000,
	Shared_Present_Surface_Capabilities = 1000111000,
	Import_Fence_Win32_Handle_Info = 1000114000,
	Export_Fence_Win32_Handle_Info = 1000114001,
	Fence_Get_Win32_Handle_Info = 1000114002,
	Import_Fence_Fd_Info = 1000115000,
	Fence_Get_Fd_Info = 1000115001,
	Physical_Device_Performance_Query_Features = 1000116000,
	Physical_Device_Performance_Query_Properties = 1000116001,
	Query_Pool_Performance_Create_Info = 1000116002,
	Performance_Query_Submit_Info = 1000116003,
	Acquire_Profiling_Lock_Info = 1000116004,
	Performance_Counter = 1000116005,
	Performance_Counter_Description = 1000116006,
	Physical_Device_Surface_Info_2 = 1000119000,
	Surface_Capabilities_2_ = 1000119001,
	Surface_Format_2 = 1000119002,
	Display_Properties_2 = 1000121000,
	Display_Plane_Properties_2 = 1000121001,
	Display_Mode_Properties_2 = 1000121002,
	Display_Plane_Info_2 = 1000121003,
	Display_Plane_Capabilities_2 = 1000121004,
	Ios_Surface_Create_Info_Mvk = 1000122000,
	Macos_Surface_Create_Info_Mvk = 1000123000,
	Debug_Utils_Object_Name_Info = 1000128000,
	Debug_Utils_Object_Tag_Info = 1000128001,
	Debug_Utils_Label = 1000128002,
	Debug_Utils_Messenger_Callback_Data = 1000128003,
	Debug_Utils_Messenger_Create_Info = 1000128004,
	Android_Hardware_Buffer_Usage_Android = 1000129000,
	Android_Hardware_Buffer_Properties_Android = 1000129001,
	Android_Hardware_Buffer_Format_Properties_Android = 1000129002,
	Import_Android_Hardware_Buffer_Info_Android = 1000129003,
	Memory_Get_Android_Hardware_Buffer_Info_Android = 1000129004,
	External_Format_Android = 1000129005,
	Android_Hardware_Buffer_Format_Properties_2_Android = 1000129006,
	Physical_Device_Shader_Enqueue_Features_Amdx = 1000134000,
	Physical_Device_Shader_Enqueue_Properties_Amdx = 1000134001,
	Execution_Graph_Pipeline_Scratch_Size_Amdx = 1000134002,
	Execution_Graph_Pipeline_Create_Info_Amdx = 1000134003,
	Pipeline_Shader_Stage_Node_Create_Info_Amdx = 1000134004,
	Attachment_Sample_Count_Info = 1000044008,
	Sample_Locations_Info = 1000143000,
	Render_Pass_Sample_Locations_Begin_Info = 1000143001,
	Pipeline_Sample_Locations_State_Create_Info = 1000143002,
	Physical_Device_Sample_Locations_Properties = 1000143003,
	Multisample_Properties = 1000143004,
	Physical_Device_Blend_Operation_Advanced_Features = 1000148000,
	Physical_Device_Blend_Operation_Advanced_Properties = 1000148001,
	Pipeline_Color_Blend_Advanced_State_Create_Info = 1000148002,
	Pipeline_Coverage_To_Color_State_Create_Info = 1000149000,
	Write_Descriptor_Set_Acceleration_Structure = 1000150007,
	Acceleration_Structure_Build_Geometry_Info = 1000150000,
	Acceleration_Structure_Device_Address_Info = 1000150002,
	Acceleration_Structure_Geometry_Aabbs_Data = 1000150003,
	Acceleration_Structure_Geometry_Instances_Data = 1000150004,
	Acceleration_Structure_Geometry_Triangles_Data = 1000150005,
	Acceleration_Structure_Geometry = 1000150006,
	Acceleration_Structure_Version_Info = 1000150009,
	Copy_Acceleration_Structure_Info = 1000150010,
	Copy_Acceleration_Structure_To_Memory_Info = 1000150011,
	Copy_Memory_To_Acceleration_Structure_Info = 1000150012,
	Physical_Device_Acceleration_Structure_Features = 1000150013,
	Physical_Device_Acceleration_Structure_Properties = 1000150014,
	Acceleration_Structure_Create_Info = 1000150017,
	Acceleration_Structure_Build_Sizes_Info = 1000150020,
	Physical_Device_Ray_Tracing_Pipeline_Features = 1000347000,
	Physical_Device_Ray_Tracing_Pipeline_Properties = 1000347001,
	Ray_Tracing_Pipeline_Create_Info = 1000150015,
	Ray_Tracing_Shader_Group_Create_Info = 1000150016,
	Ray_Tracing_Pipeline_Interface_Create_Info = 1000150018,
	Physical_Device_Ray_Query_Features = 1000348013,
	Pipeline_Coverage_Modulation_State_Create_Info = 1000152000,
	Physical_Device_Shader_Sm_Builtins_Features = 1000154000,
	Physical_Device_Shader_Sm_Builtins_Properties = 1000154001,
	Drm_Format_Modifier_Properties_List = 1000158000,
	Physical_Device_Image_Drm_Format_Modifier_Info = 1000158002,
	Image_Drm_Format_Modifier_List_Create_Info = 1000158003,
	Image_Drm_Format_Modifier_Explicit_Create_Info = 1000158004,
	Image_Drm_Format_Modifier_Properties = 1000158005,
	Drm_Format_Modifier_Properties_List_2 = 1000158006,
	Validation_Cache_Create_Info = 1000160000,
	Shader_Module_Validation_Cache_Create_Info = 1000160001,
	Physical_Device_Portability_Subset_Features = 1000163000,
	Physical_Device_Portability_Subset_Properties = 1000163001,
	Pipeline_Viewport_Shading_Rate_Image_State_Create_Info = 1000164000,
	Physical_Device_Shading_Rate_Image_Features = 1000164001,
	Physical_Device_Shading_Rate_Image_Properties = 1000164002,
	Pipeline_Viewport_Coarse_Sample_Order_State_Create_Info = 1000164005,
	Ray_Tracing_Pipeline_Create_Info_ = 1000165000,
	Acceleration_Structure_Create_Info_ = 1000165001,
	Geometry = 1000165003,
	Geometry_Triangles = 1000165004,
	Geometry_Aabb = 1000165005,
	Bind_Acceleration_Structure_Memory_Info = 1000165006,
	Write_Descriptor_Set_Acceleration_Structure_ = 1000165007,
	Acceleration_Structure_Memory_Requirements_Info = 1000165008,
	Physical_Device_Ray_Tracing_Properties = 1000165009,
	Ray_Tracing_Shader_Group_Create_Info_ = 1000165011,
	Acceleration_Structure_Info = 1000165012,
	Physical_Device_Representative_Fragment_Test_Features = 1000166000,
	Pipeline_Representative_Fragment_Test_State_Create_Info = 1000166001,
	Physical_Device_Image_View_Image_Format_Info = 1000170000,
	Filter_Cubic_Image_View_Image_Format_Properties = 1000170001,
	Import_Memory_Host_Pointer_Info = 1000178000,
	Memory_Host_Pointer_Properties = 1000178001,
	Physical_Deviceernal_Memory_Host_Properties = 1000178002,
	Physical_Device_Shader_Clock_Features = 1000181000,
	Pipeline_Compiler_Control_Create_Info = 1000183000,
	Physical_Device_Shader_Core_Properties = 1000185000,
	Video_Decode_H265_Capabilities = 1000187000,
	Video_Decode_H265_Session_Parameters_Create_Info = 1000187001,
	Video_Decode_H265_Session_Parameters_Add_Info = 1000187002,
	Video_Decode_H265_Profile_Info = 1000187003,
	Video_Decode_H265_Picture_Info = 1000187004,
	Video_Decode_H265_Dpb_Slot_Info = 1000187005,
	Device_Memory_Overallocation_Create_Info = 1000189000,
	Physical_Device_Vertex_Attribute_Divisor_Properties_ = 1000190000,
	Present_Frame_Token_Ggp = 1000191000,
	Physical_Device_Mesh_Shader_Features = 1000202000,
	Physical_Device_Mesh_Shader_Properties = 1000202001,
	Physical_Device_Shader_Image_Footprint_Features = 1000204000,
	Pipeline_Viewport_Exclusive_Scissor_State_Create_Info = 1000205000,
	Physical_Device_Exclusive_Scissor_Features = 1000205002,
	Checkpoint_Data = 1000206000,
	Queue_Family_Checkpoint_Properties = 1000206001,
	Queue_Family_Checkpoint_Properties_2 = 1000314008,
	Checkpoint_Data_2 = 1000314009,
	Physical_Device_Shader_Integer_Functions_2_Features_Intel = 1000209000,
	Query_Pool_Performance_Query_Create_Info_Intel = 1000210000,
	Initialize_Performance_Api_Info_Intel = 1000210001,
	Performance_Marker_Info_Intel = 1000210002,
	Performance_Stream_Marker_Info_Intel = 1000210003,
	Performance_Override_Info_Intel = 1000210004,
	Performance_Configuration_Acquire_Info_Intel = 1000210005,
	Physical_Device_Pci_Bus_Info_Properties = 1000212000,
	Display_Native_Hdr_Surface_Capabilities = 1000213000,
	Swapchain_Display_Native_Hdr_Create_Info = 1000213001,
	Imagepipe_Surface_Create_Info_Fuchsia = 1000214000,
	Metal_Surface_Create_Info = 1000217000,
	Physical_Device_Fragment_Density_Map_Features = 1000218000,
	Physical_Device_Fragment_Density_Map_Properties = 1000218001,
	Render_Pass_Fragment_Density_Map_Create_Info = 1000218002,
	Rendering_Fragment_Density_Map_Attachment_Info = 1000044007,
	Fragment_Shading_Rate_Attachment_Info = 1000226000,
	Pipeline_Fragment_Shading_Rate_State_Create_Info = 1000226001,
	Physical_Device_Fragment_Shading_Rate_Properties = 1000226002,
	Physical_Device_Fragment_Shading_Rate_Features = 1000226003,
	Physical_Device_Fragment_Shading_Rate = 1000226004,
	Rendering_Fragment_Shading_Rate_Attachment_Info = 1000044006,
	Physical_Device_Shader_Core_Properties_2 = 1000227000,
	Physical_Device_Coherent_Memory_Features = 1000229000,
	Physical_Device_Shader_Image_Atomic_Int64_Features = 1000234000,
	Physical_Device_Shader_Quad_Control_Features = 1000235000,
	Physical_Device_Memory_Budget_Properties = 1000237000,
	Physical_Device_Memory_Priority_Features = 1000238000,
	Memory_Priority_Allocate_Info = 1000238001,
	Surface_Protected_Capabilities = 1000239000,
	Physical_Device_Dedicated_Allocation_Image_Aliasing_Features = 1000240000,
	Physical_Device_Buffer_Device_Address_Features_ = 1000244000,
	Buffer_Device_Address_Create_Info = 1000244002,
	Validation_Features = 1000247000,
	Physical_Device_Present_Wait_Features = 1000248000,
	Physical_Device_Cooperative_Matrix_Features = 1000249000,
	Cooperative_Matrix_Properties = 1000249001,
	Physical_Device_Cooperative_Matrix_Properties = 1000249002,
	Physical_Device_Coverage_Reduction_Mode_Features = 1000250000,
	Pipeline_Coverage_Reduction_State_Create_Info = 1000250001,
	Framebuffer_Mixed_Samples_Combination = 1000250002,
	Physical_Device_Fragment_Shader_Interlock_Features = 1000251000,
	Physical_Device_Ycbcr_Image_Arrays_Features = 1000252000,
	Physical_Device_Provoking_Vertex_Features = 1000254000,
	Pipeline_Rasterization_Provoking_Vertex_State_Create_Info = 1000254001,
	Physical_Device_Provoking_Vertex_Properties = 1000254002,
	Surface_Full_Screen_Exclusive_Info = 1000255000,
	Surface_Capabilities_Full_Screen_Exclusive = 1000255002,
	Surface_Full_Screen_Exclusive_Win32_Info = 1000255001,
	Headless_Surface_Create_Info = 1000256000,
	Physical_Device_Shader_Atomic_Float_Features = 1000260000,
	Physical_Deviceended_Dynamic_State_Features = 1000267000,
	Physical_Device_Pipeline_Executable_Properties_Features = 1000269000,
	Pipeline_Info = 1000269001,
	Pipeline_Executable_Properties = 1000269002,
	Pipeline_Executable_Info = 1000269003,
	Pipeline_Executable_Statistic = 1000269004,
	Pipeline_Executable_Internal_Representation = 1000269005,
	Physical_Device_Map_Memory_Placed_Features = 1000272000,
	Physical_Device_Map_Memory_Placed_Properties = 1000272001,
	Memory_Map_Placed_Info = 1000272002,
	Physical_Device_Shader_Atomic_Float_2_Features = 1000273000,
	Surface_Present_Mode = 1000274000,
	Surface_Present_Scaling_Capabilities = 1000274001,
	Surface_Present_Mode_Compatibility = 1000274002,
	Physical_Device_Swapchain_Maintenance_1_Features = 1000275000,
	Swapchain_Present_Fence_Info = 1000275001,
	Swapchain_Present_Modes_Create_Info = 1000275002,
	Swapchain_Present_Mode_Info = 1000275003,
	Swapchain_Present_Scaling_Create_Info = 1000275004,
	Release_Swapchain_Images_Info = 1000275005,
	Physical_Device_Device_Generated_Commands_Properties = 1000277000,
	Graphics_Shader_Group_Create_Info = 1000277001,
	Graphics_Pipeline_Shader_Groups_Create_Info = 1000277002,
	Indirect_Commands_Layout_Token = 1000277003,
	Indirect_Commands_Layout_Create_Info = 1000277004,
	Generated_Commands_Info = 1000277005,
	Generated_Commands_Memory_Requirements_Info = 1000277006,
	Physical_Device_Device_Generated_Commands_Features = 1000277007,
	Physical_Device_Inherited_Viewport_Scissor_Features = 1000278000,
	Command_Buffer_Inheritance_Viewport_Scissor_Info = 1000278001,
	Physical_Device_Texel_Buffer_Alignment_Features = 1000281000,
	Command_Buffer_Inheritance_Render_Pass_Transform_Info_Qcom = 1000282000,
	Render_Pass_Transform_Begin_Info_Qcom = 1000282001,
	Physical_Device_Depth_Bias_Control_Features = 1000283000,
	Depth_Bias_Info = 1000283001,
	Depth_Bias_Representation_Info = 1000283002,
	Physical_Device_Device_Memory_Report_Features = 1000284000,
	Device_Device_Memory_Report_Create_Info = 1000284001,
	Device_Memory_Report_Callback_Data = 1000284002,
	Physical_Device_Robustness_2_Features = 1000286000,
	Physical_Device_Robustness_2_Properties = 1000286001,
	Sampler_Custom_Border_Color_Create_Info = 1000287000,
	Physical_Device_Custom_Border_Color_Properties = 1000287001,
	Physical_Device_Custom_Border_Color_Features = 1000287002,
	Pipeline_Library_Create_Info = 1000290000,
	Physical_Device_Present_Barrier_Features = 1000292000,
	Surface_Capabilities_Present_Barrier = 1000292001,
	Swapchain_Present_Barrier_Create_Info = 1000292002,
	Present_Id = 1000294000,
	Physical_Device_Present_Id_Features = 1000294001,
	Video_Encode_Info = 1000299000,
	Video_Encode_Rate_Control_Info = 1000299001,
	Video_Encode_Rate_Control_Layer_Info = 1000299002,
	Video_Encode_Capabilities = 1000299003,
	Video_Encode_Usage_Info = 1000299004,
	Query_Pool_Video_Encode_Feedback_Create_Info = 1000299005,
	Physical_Device_Video_Encode_Quality_Level_Info = 1000299006,
	Video_Encode_Quality_Level_Properties = 1000299007,
	Video_Encode_Quality_Level_Info = 1000299008,
	Video_Encode_Session_Parameters_Get_Info = 1000299009,
	Video_Encode_Session_Parameters_Feedback_Info = 1000299010,
	Physical_Device_Diagnostics_Config_Features = 1000300000,
	Device_Diagnostics_Config_Create_Info = 1000300001,
	Cuda_Module_Create_Info = 1000307000,
	Cuda_Function_Create_Info = 1000307001,
	Cuda_Launch_Info = 1000307002,
	Physical_Device_Cuda_Kernel_Launch_Features = 1000307003,
	Physical_Device_Cuda_Kernel_Launch_Properties = 1000307004,
	Query_Low_Latency_Support = 1000310000,
	Export_Metal_Object_Create_Info = 1000311000,
	Export_Metal_Objects_Info = 1000311001,
	Export_Metal_Device_Info = 1000311002,
	Export_Metal_Command_Queue_Info = 1000311003,
	Export_Metal_Buffer_Info = 1000311004,
	Import_Metal_Buffer_Info = 1000311005,
	Export_Metal_Ture_Info = 1000311006,
	Import_Metal_Ture_Info = 1000311007,
	Export_Metal_Io_Surface_Info = 1000311008,
	Import_Metal_Io_Surface_Info = 1000311009,
	Export_Metal_Shared_Event_Info = 1000311010,
	Import_Metal_Shared_Event_Info = 1000311011,
	Physical_Device_Descriptor_Buffer_Properties = 1000316000,
	Physical_Device_Descriptor_Buffer_Density_Map_Properties = 1000316001,
	Physical_Device_Descriptor_Buffer_Features = 1000316002,
	Descriptor_Address_Info = 1000316003,
	Descriptor_Get_Info = 1000316004,
	Buffer_Capture_Descriptor_Data_Info = 1000316005,
	Image_Capture_Descriptor_Data_Info = 1000316006,
	Image_View_Capture_Descriptor_Data_Info = 1000316007,
	Sampler_Capture_Descriptor_Data_Info = 1000316008,
	Opaque_Capture_Descriptor_Data_Create_Info = 1000316010,
	Descriptor_Buffer_Binding_Info = 1000316011,
	Descriptor_Buffer_Binding_Push_Descriptor_Buffer_Handle = 1000316012,
	Acceleration_Structure_Capture_Descriptor_Data_Info = 1000316009,
	Physical_Device_Graphics_Pipeline_Library_Features = 1000320000,
	Physical_Device_Graphics_Pipeline_Library_Properties = 1000320001,
	Graphics_Pipeline_Library_Create_Info = 1000320002,
	Physical_Device_Shader_Early_And_Late_Fragment_Tests_Features = 1000321000,
	Physical_Device_Fragment_Shader_Barycentric_Features = 1000203000,
	Physical_Device_Fragment_Shader_Barycentric_Properties = 1000322000,
	Physical_Device_Shader_Subgroup_Uniform_Control_Flow_Features = 1000323000,
	Physical_Device_Fragment_Shading_Rate_Enums_Properties = 1000326000,
	Physical_Device_Fragment_Shading_Rate_Enums_Features = 1000326001,
	Pipeline_Fragment_Shading_Rate_Enum_State_Create_Info = 1000326002,
	Acceleration_Structure_Geometry_Motion_Triangles_Data = 1000327000,
	Physical_Device_Ray_Tracing_Motion_Blur_Features = 1000327001,
	Acceleration_Structure_Motion_Info = 1000327002,
	Physical_Device_Mesh_Shader_Features_ = 1000328000,
	Physical_Device_Mesh_Shader_Properties_ = 1000328001,
	Physical_Device_Ycbcr_2_Plane_444_Formats_Features = 1000330000,
	Physical_Device_Fragment_Density_Map_2_Features = 1000332000,
	Physical_Device_Fragment_Density_Map_2_Properties = 1000332001,
	Copy_Command_Transform_Info_Qcom = 1000333000,
	Physical_Device_Workgroup_Memory_Explicit_Layout_Features = 1000336000,
	Physical_Device_Image_Compression_Control_Features = 1000338000,
	Image_Compression_Control = 1000338001,
	Image_Compression_Properties = 1000338004,
	Physical_Device_Attachment_Feedback_Loop_Layout_Features = 1000339000,
	Physical_Device_4444_Formats_Features = 1000340000,
	Physical_Device_Fault_Features = 1000341000,
	Device_Fault_Counts = 1000341001,
	Device_Fault_Info = 1000341002,
	Physical_Device_Rgba10X6_Formats_Features = 1000344000,
	Directfb_Surface_Create_Info = 1000346000,
	Physical_Device_Vertex_Input_Dynamic_State_Features = 1000352000,
	Vertex_Input_Binding_Description_2 = 1000352001,
	Vertex_Input_Attribute_Description_2 = 1000352002,
	Physical_Device_Drm_Properties = 1000353000,
	Physical_Device_Address_Binding_Report_Features = 1000354000,
	Device_Address_Binding_Callback_Data = 1000354001,
	Physical_Device_Depth_Clip_Control_Features = 1000355000,
	Pipeline_Viewport_Depth_Clip_Control_Create_Info = 1000355001,
	Physical_Device_Primitive_Topology_List_Restart_Features = 1000356000,
	Physical_Device_Present_Mode_Fifo_Latest_Ready_Features = 1000361000,
	Import_Memory_Zircon_Handle_Info_Fuchsia = 1000364000,
	Memory_Zircon_Handle_Properties_Fuchsia = 1000364001,
	Memory_Get_Zircon_Handle_Info_Fuchsia = 1000364002,
	Import_Semaphore_Zircon_Handle_Info_Fuchsia = 1000365000,
	Semaphore_Get_Zircon_Handle_Info_Fuchsia = 1000365001,
	Buffer_Collection_Create_Info_Fuchsia = 1000366000,
	Import_Memory_Buffer_Collection_Fuchsia = 1000366001,
	Buffer_Collection_Image_Create_Info_Fuchsia = 1000366002,
	Buffer_Collection_Properties_Fuchsia = 1000366003,
	Buffer_Constraints_Info_Fuchsia = 1000366004,
	Buffer_Collection_Buffer_Create_Info_Fuchsia = 1000366005,
	Image_Constraints_Info_Fuchsia = 1000366006,
	Image_Format_Constraints_Info_Fuchsia = 1000366007,
	Sysmem_Color_Space_Fuchsia = 1000366008,
	Buffer_Collection_Constraints_Info_Fuchsia = 1000366009,
	Subpass_Shading_Pipeline_Create_Info_Huawei = 1000369000,
	Physical_Device_Subpass_Shading_Features_Huawei = 1000369001,
	Physical_Device_Subpass_Shading_Properties_Huawei = 1000369002,
	Physical_Device_Invocation_Mask_Features_Huawei = 1000370000,
	Memory_Get_Remote_Address_Info = 1000371000,
	Physical_Device_External_Memory_Rdma_Features = 1000371001,
	Pipeline_Properties_Identifier = 1000372000,
	Physical_Device_Pipeline_Properties_Features = 1000372001,
	Physical_Device_Frame_Boundary_Features = 1000375000,
	Frame_Boundary = 1000375001,
	Physical_Device_Multisampled_Render_To_Single_Sampled_Features = 1000376000,
	Subpass_Resolve_Performance_Query = 1000376001,
	Multisampled_Render_To_Single_Sampled_Info = 1000376002,
	Physical_Deviceended_Dynamic_State_2_Features = 1000377000,
	Screen_Surface_Create_Info_Qnx = 1000378000,
	Physical_Device_Color_Write_Enable_Features = 1000381000,
	Pipeline_Color_Write_Create_Info = 1000381001,
	Physical_Device_Primitives_Generated_Query_Features = 1000382000,
	Physical_Device_Ray_Tracing_Maintenance_1_Features = 1000386000,
	Physical_Device_Image_View_Min_Lod_Features = 1000391000,
	Image_View_Min_Lod_Create_Info = 1000391001,
	Physical_Device_Multi_Draw_Features = 1000392000,
	Physical_Device_Multi_Draw_Properties = 1000392001,
	Physical_Device_Image_2D_View_Of_3D_Features = 1000393000,
	Physical_Device_Shader_Tile_Image_Features = 1000395000,
	Physical_Device_Shader_Tile_Image_Properties = 1000395001,
	Micromap_Build_Info = 1000396000,
	Micromap_Version_Info = 1000396001,
	Copy_Micromap_Info = 1000396002,
	Copy_Micromap_To_Memory_Info = 1000396003,
	Copy_Memory_To_Micromap_Info = 1000396004,
	Physical_Device_Opacity_Micromap_Features = 1000396005,
	Physical_Device_Opacity_Micromap_Properties = 1000396006,
	Micromap_Create_Info = 1000396007,
	Micromap_Build_Sizes_Info = 1000396008,
	Acceleration_Structure_Triangles_Opacity_Micromap = 1000396009,
	Physical_Device_Displacement_Micromap_Features = 1000397000,
	Physical_Device_Displacement_Micromap_Properties = 1000397001,
	Acceleration_Structure_Triangles_Displacement_Micromap = 1000397002,
	Physical_Device_Cluster_Culling_Shader_Features_Huawei = 1000404000,
	Physical_Device_Cluster_Culling_Shader_Properties_Huawei = 1000404001,
	Physical_Device_Cluster_Culling_Shader_Vrs_Features_Huawei = 1000404002,
	Physical_Device_Border_Color_Swizzle_Features = 1000411000,
	Sampler_Border_Color_Component_Mapping_Create_Info = 1000411001,
	Physical_Device_Pageable_Device_Local_Memory_Features = 1000412000,
	Physical_Device_Shader_Core_Properties_Arm = 1000415000,
	Device_Queue_Shader_Core_Control_Create_Info_Arm = 1000417000,
	Physical_Device_Scheduling_Controls_Features_Arm = 1000417001,
	Physical_Device_Scheduling_Controls_Properties_Arm = 1000417002,
	Physical_Device_Image_Sliced_View_Of_3D_Features = 1000418000,
	Image_View_Sliced_Create_Info = 1000418001,
	Physical_Device_Descriptor_Set_Host_Mapping_Features_Valve = 1000420000,
	Descriptor_Set_Binding_Reference_Valve = 1000420001,
	Descriptor_Set_Layout_Host_Mapping_Info_Valve = 1000420002,
	Physical_Device_Depth_Clamp_Zero_One_Features = 1000421000,
	Physical_Device_Non_Seamless_Cube_Map_Features = 1000422000,
	Physical_Device_Render_Pass_Striped_Features_Arm = 1000424000,
	Physical_Device_Render_Pass_Striped_Properties_Arm = 1000424001,
	Render_Pass_Stripe_Begin_Info_Arm = 1000424002,
	Render_Pass_Stripe_Info_Arm = 1000424003,
	Render_Pass_Stripe_Submit_Info_Arm = 1000424004,
	Physical_Device_Fragment_Density_Map_Offset_Features_Qcom = 1000425000,
	Physical_Device_Fragment_Density_Map_Offset_Properties_Qcom = 1000425001,
	Subpass_Fragment_Density_Map_Offset_End_Info_Qcom = 1000425002,
	Physical_Device_Copy_Memory_Indirect_Features = 1000426000,
	Physical_Device_Copy_Memory_Indirect_Properties = 1000426001,
	Physical_Device_Memory_Decompression_Features = 1000427000,
	Physical_Device_Memory_Decompression_Properties = 1000427001,
	Physical_Device_Device_Generated_Commands_Compute_Features = 1000428000,
	Compute_Pipeline_Indirect_Buffer_Info = 1000428001,
	Pipeline_Indirect_Device_Address_Info = 1000428002,
	Physical_Device_Linear_Color_Attachment_Features = 1000430000,
	Physical_Device_Shader_Maximal_Reconvergence_Features = 1000434000,
	Physical_Device_Image_Compression_Control_Swapchain_Features = 1000437000,
	Physical_Device_Image_Processing_Features_Qcom = 1000440000,
	Physical_Device_Image_Processing_Properties_Qcom = 1000440001,
	Image_View_Sample_Weight_Create_Info_Qcom = 1000440002,
	Physical_Device_Nested_Command_Buffer_Features = 1000451000,
	Physical_Device_Nested_Command_Buffer_Properties = 1000451001,
	Ernal_Memory_Acquire_Unmodified = 1000453000,
	Physical_Deviceended_Dynamic_State_3_Features = 1000455000,
	Physical_Deviceended_Dynamic_State_3_Properties = 1000455001,
	Physical_Device_Subpass_Merge_Feedback_Features = 1000458000,
	Render_Pass_Creation_Control = 1000458001,
	Render_Pass_Creation_Feedback_Create_Info = 1000458002,
	Render_Pass_Subpass_Feedback_Create_Info = 1000458003,
	Direct_Driver_Loading_Info_Lunarg = 1000459000,
	Direct_Driver_Loading_List_Lunarg = 1000459001,
	Physical_Device_Shader_Module_Identifier_Features = 1000462000,
	Physical_Device_Shader_Module_Identifier_Properties = 1000462001,
	Pipeline_Shader_Stage_Module_Identifier_Create_Info = 1000462002,
	Shader_Module_Identifier = 1000462003,
	Physical_Device_Rasterization_Order_Attachment_Access_Features = 1000342000,
	Physical_Device_Optical_Flow_Features = 1000464000,
	Physical_Device_Optical_Flow_Properties = 1000464001,
	Optical_Flow_Image_Format_Info = 1000464002,
	Optical_Flow_Image_Format_Properties = 1000464003,
	Optical_Flow_Session_Create_Info = 1000464004,
	Optical_Flow_Execute_Info = 1000464005,
	Optical_Flow_Session_Create_Private_Data_Info = 1000464010,
	Physical_Device_Legacy_Dithering_Features = 1000465000,
	Physical_Device_External_Format_Resolve_Features_Android = 1000468000,
	Physical_Device_External_Format_Resolve_Properties_Android = 1000468001,
	Android_Hardware_Buffer_Format_Resolve_Properties_Android = 1000468002,
	Physical_Device_Anti_Lag_Features = 1000476000,
	Anti_Lag_Data = 1000476001,
	Anti_Lag_Presentation_Info = 1000476002,
	Physical_Device_Ray_Tracing_Position_Fetch_Features = 1000481000,
	Physical_Device_Shader_Object_Features = 1000482000,
	Physical_Device_Shader_Object_Properties = 1000482001,
	Shader_Create_Info = 1000482002,
	Physical_Device_Pipeline_Binary_Features = 1000483000,
	Pipeline_Binary_Create_Info = 1000483001,
	Pipeline_Binary_Info = 1000483002,
	Pipeline_Binary_Key = 1000483003,
	Physical_Device_Pipeline_Binary_Properties = 1000483004,
	Release_Captured_Pipeline_Data_Info = 1000483005,
	Pipeline_Binary_Data_Info = 1000483006,
	Pipeline_Create_Info = 1000483007,
	Device_Pipeline_Binary_Internal_Cache_Control = 1000483008,
	Pipeline_Binary_Handles_Info = 1000483009,
	Physical_Device_Tile_Properties_Features_Qcom = 1000484000,
	Tile_Properties_Qcom = 1000484001,
	Physical_Device_Amigo_Profiling_Features_Sec = 1000485000,
	Amigo_Profiling_Submit_Info_Sec = 1000485001,
	Physical_Device_Multiview_Per_View_Viewports_Features_Qcom = 1000488000,
	Physical_Device_Ray_Tracing_Iocation_Reorder_Features = 1000490000,
	Physical_Device_Ray_Tracing_Iocation_Reorder_Properties = 1000490001,
	Physical_Device_Extended_Sparse_Address_Space_Features = 1000492000,
	Physical_Device_Extended_Sparse_Address_Space_Properties = 1000492001,
	Physical_Device_Mutable_Descriptor_Type_Features = 1000351000,
	Mutable_Descriptor_Type_Create_Info = 1000351002,
	Physical_Device_Legacy_Vertex_Attributes_Features = 1000495000,
	Physical_Device_Legacy_Vertex_Attributes_Properties = 1000495001,
	Layer_Settings_Create_Info = 1000496000,
	Physical_Device_Shader_Core_Builtins_Features_Arm = 1000497000,
	Physical_Device_Shader_Core_Builtins_Properties_Arm = 1000497001,
	Physical_Device_Pipeline_Library_Group_Handles_Features = 1000498000,
	Physical_Device_Dynamic_Rendering_Unused_Attachments_Features = 1000499000,
	Latency_Sleep_Mode_Info = 1000505000,
	Latency_Sleep_Info = 1000505001,
	Set_Latency_Marker_Info = 1000505002,
	Get_Latency_Marker_Info = 1000505003,
	Latency_Timings_Frame_Report = 1000505004,
	Latency_Submission_Present_Id = 1000505005,
	Out_Of_Band_Queue_Type_Info = 1000505006,
	Swapchain_Latency_Create_Info = 1000505007,
	Latency_Surface_Capabilities = 1000505008,
	Physical_Device_Cooperative_Matrix_Features_ = 1000506000,
	Cooperative_Matrix_Properties_ = 1000506001,
	Physical_Device_Cooperative_Matrix_Properties_ = 1000506002,
	Physical_Device_Multiview_Per_View_Render_Areas_Features_Qcom = 1000510000,
	Multiview_Per_View_Render_Areas_Render_Pass_Begin_Info_Qcom = 1000510001,
	Physical_Device_Compute_Shader_Derivatives_Features = 1000201000,
	Physical_Device_Compute_Shader_Derivatives_Properties = 1000511000,
	Video_Decode_Av1_Capabilities = 1000512000,
	Video_Decode_Av1_Picture_Info = 1000512001,
	Video_Decode_Av1_Profile_Info = 1000512003,
	Video_Decode_Av1_Session_Parameters_Create_Info = 1000512004,
	Video_Decode_Av1_Dpb_Slot_Info = 1000512005,
	Video_Encode_Av1_Capabilities = 1000513000,
	Video_Encode_Av1_Session_Parameters_Create_Info = 1000513001,
	Video_Encode_Av1_Picture_Info = 1000513002,
	Video_Encode_Av1_Dpb_Slot_Info = 1000513003,
	Physical_Device_Video_Encode_Av1_Features = 1000513004,
	Video_Encode_Av1_Profile_Info = 1000513005,
	Video_Encode_Av1_Rate_Control_Info = 1000513006,
	Video_Encode_Av1_Rate_Control_Layer_Info = 1000513007,
	Video_Encode_Av1_Quality_Level_Properties = 1000513008,
	Video_Encode_Av1_Session_Create_Info = 1000513009,
	Video_Encode_Av1_Gop_Remaining_Frame_Info = 1000513010,
	Physical_Device_Video_Maintenance_1_Features = 1000515000,
	Video_Inline_Query_Info = 1000515001,
	Physical_Device_Per_Stage_Descriptor_Set_Features = 1000516000,
	Physical_Device_Image_Processing_2_Features_Qcom = 1000518000,
	Physical_Device_Image_Processing_2_Properties_Qcom = 1000518001,
	Sampler_Block_Match_Window_Create_Info_Qcom = 1000518002,
	Sampler_Cubic_Weights_Create_Info_Qcom = 1000519000,
	Physical_Device_Cubic_Weights_Features_Qcom = 1000519001,
	Blit_Image_Cubic_Weights_Info_Qcom = 1000519002,
	Physical_Device_Ycbcr_Degamma_Features_Qcom = 1000520000,
	Sampler_Ycbcr_Conversion_Ycbcr_Degamma_Create_Info_Qcom = 1000520001,
	Physical_Device_Cubic_Clamp_Features_Qcom = 1000521000,
	Physical_Device_Attachment_Feedback_Loop_Dynamic_State_Features = 1000524000,
	Screen_Buffer_Properties_Qnx = 1000529000,
	Screen_Buffer_Format_Properties_Qnx = 1000529001,
	Import_Screen_Buffer_Info_Qnx = 1000529002,
	External_Format_Qnx = 1000529003,
	Physical_Device_External_Memory_Screen_Buffer_Features_Qnx = 1000529004,
	Physical_Device_Layered_Driver_Properties_Msft = 1000530000,
	Calibrated_Timestamp_Info = 1000184000,
	Set_Descriptor_Buffer_Offsets_Info = 1000545007,
	Bind_Descriptor_Buffer_Embedded_Samplers_Info = 1000545008,
	Physical_Device_Descriptor_Pool_Overallocation_Features = 1000546000,
	Display_Surface_Stereo_Create_Info = 1000551000,
	Display_Mode_Stereo_Properties = 1000551001,
	Video_Encode_Quantization_Map_Capabilities = 1000553000,
	Video_Format_Quantization_Map_Properties = 1000553001,
	Video_Encode_Quantization_Map_Info = 1000553002,
	Video_Encode_Quantization_Map_Session_Parameters_Create_Info = 1000553005,
	Physical_Device_Video_Encode_Quantization_Map_Features = 1000553009,
	Video_Encode_H264_Quantization_Map_Capabilities = 1000553003,
	Video_Encode_H265_Quantization_Map_Capabilities = 1000553004,
	Video_Format_H265_Quantization_Map_Properties = 1000553006,
	Video_Encode_Av1_Quantization_Map_Capabilities = 1000553007,
	Video_Format_Av1_Quantization_Map_Properties = 1000553008,
	Physical_Device_Raw_Access_Chains_Features = 1000555000,
	Physical_Device_Shader_Relaxed_Extended_Instruction_Features = 1000558000,
	Physical_Device_Command_Buffer_Inheritance_Features = 1000559000,
	Physical_Device_Maintenance_7_Features = 1000562000,
	Physical_Device_Maintenance_7_Properties = 1000562001,
	Physical_Device_Layered_Api_Properties_List = 1000562002,
	Physical_Device_Layered_Api_Properties = 1000562003,
	Physical_Device_Layered_Api_Vulkan_Properties = 1000562004,
	Physical_Device_Shader_Atomic_Float16_Vector_Features = 1000563000,
	Physical_Device_Shader_Replicated_Composites_Features = 1000564000,
	Physical_Device_Ray_Tracing_Validation_Features = 1000568000,
	Physical_Device_Device_Generated_Commands_Features_ = 1000572000,
	Physical_Device_Device_Generated_Commands_Properties_ = 1000572001,
	Generated_Commands_Memory_Requirements_Info_ = 1000572002,
	Indirect_Execution_Set_Create_Info = 1000572003,
	Generated_Commands_Info_ = 1000572004,
	Indirect_Commands_Layout_Create_Info_ = 1000572006,
	Indirect_Commands_Layout_Token_ = 1000572007,
	Write_Indirect_Execution_Set_Pipeline = 1000572008,
	Write_Indirect_Execution_Set_Shader = 1000572009,
	Indirect_Execution_Set_Pipeline_Info = 1000572010,
	Indirect_Execution_Set_Shader_Info = 1000572011,
	Indirect_Execution_Set_Shader_Layout_Info = 1000572012,
	Generated_Commands_Pipeline_Info = 1000572013,
	Generated_Commands_Shader_Info = 1000572014,
	Physical_Device_Image_Alignment_Control_Features_Mesa = 1000575000,
	Physical_Device_Image_Alignment_Control_Properties_Mesa = 1000575001,
	Image_Alignment_Control_Create_Info_Mesa = 1000575002,
	Physical_Device_Depth_Clamp_Control_Features = 1000582000,
	Pipeline_Viewport_Depth_Clamp_Control_Create_Info = 1000582001,
	Physical_Device_Hdr_Vivid_Features_Huawei = 1000590000,
	Hdr_Vivid_Dynamic_Metadata_Huawei = 1000590001,
	Physical_Device_Cooperative_Matrix_2_Features = 1000593000,
	Cooperative_Matrix_Flexible_Dimensions_Properties = 1000593001,
	Physical_Device_Cooperative_Matrix_2_Properties = 1000593002,
	Physical_Device_Vertex_Attribute_Robustness_Features = 1000608000,
}

Subpass_Contents :: enum c.int {
	Inline = 0,
	Secondary_Command_Buffers = 1,
	Inline_And_Secondary_Command_Buffers = 1000451000,
}

Subpass_Merge_Status :: enum c.int {
	Merged = 0,
	Disallowed = 1,
	Not_Merged_Side_Effects = 2,
	Not_Merged_Samples_Mismatch = 3,
	Not_Merged_Views_Mismatch = 4,
	Not_Merged_Aliasing = 5,
	Not_Merged_Dependencies = 6,
	Not_Merged_Incompatible_Input_Attachment = 7,
	Not_Merged_Too_Many_Attachments = 8,
	Not_Merged_Insufficient_Storage = 9,
	Not_Merged_Depth_Stencil_Count = 10,
	Not_Merged_Resolve_Attachment_Reuse = 11,
	Not_Merged_Single_Subpass = 12,
	Not_Merged_Unspecified = 13,
}

System_Allocation_Scope :: enum c.int {
	Command = 0,
	Object = 1,
	Cache = 2,
	Device = 3,
	Instance = 4,
}

Tessellation_Domain_Origin :: enum c.int {
	Upper_Left = 0,
	Lower_Left = 1,
}

Time_Domain :: enum c.int {
	Device = 0,
	Clock_Monotonic = 1,
	Clock_Monotonic_Raw = 2,
	Query_Performance_Counter = 3,
}

Validation_Cache_Header_Version :: enum c.int {
	One = 1,
}

Validation_Check :: enum c.int {
	All = 0,
	Shaders = 1,
}

Validation_Feature_Disable :: enum c.int {
	All = 0,
	Shaders = 1,
	Thread_Safety = 2,
	Api_Parameters = 3,
	Object_Lifetimes = 4,
	Core_Checks = 5,
	Unique_Handles = 6,
	Shader_Validation_Cache = 7,
}

Validation_Feature_Enable :: enum c.int {
	Gpu_Assisted = 0,
	Gpu_Assisted_Reserve_Binding_Slot = 1,
	Best_Practices = 2,
	Debug_Printf = 3,
	Synchronization_Validation = 4,
}

Vendor_Id :: enum c.int {
}

Vertex_Input_Rate :: enum c.int {
	Vertex = 0,
	Instance = 1,
}

Video_Encode_Av1_Prediction_Mode :: enum c.int {
	Intra_Only = 0,
	Single_Reference = 1,
	Unidirectional_Compound = 2,
	Bidirectional_Compound = 3,
}

Video_Encode_Av1_Rate_Control_Group :: enum c.int {
	Intra = 0,
	Predictive = 1,
	Bipredictive = 2,
}

Video_Encode_Tuning_Mode :: enum c.int {
	Default = 0,
	High_Quality = 1,
	Low_Latency = 2,
	Ultra_Low_Latency = 3,
	Lossless = 4,
}

Viewport_Coordinate_Swizzle :: enum c.int {
	Positive_X = 0,
	Negative_X = 1,
	Positive_Y = 2,
	Negative_Y = 3,
	Positive_Z = 4,
	Negative_Z = 5,
	Positive_W = 6,
	Negative_W = 7,
}

Access_Flags :: distinct bit_set[Access_Flag; Flags]
Access_Flag :: enum Flags {
	Indirect_Command_Read = 0,
	Index_Read = 1,
	Vertex_Attribute_Read = 2,
	Uniform_Read = 3,
	Input_Attachment_Read = 4,
	Shader_Read = 5,
	Shader_Write = 6,
	Color_Attachment_Read = 7,
	Color_Attachment_Write = 8,
	Depth_Stencil_Attachment_Read = 9,
	Depth_Stencil_Attachment_Write = 10,
	Transfer_Read = 11,
	Transfer_Write = 12,
	Host_Read = 13,
	Host_Write = 14,
	Memory_Read = 15,
	Memory_Write = 16,
	None = 0,
	Transform_Feedback_Write = 25,
	Transform_Feedback_Counter_Read = 26,
	Transform_Feedback_Counter_Write = 27,
	Conditional_Rendering_Read = 20,
	Color_Attachment_Read_Noncoherent = 19,
	Acceleration_Structure_Read = 21,
	Acceleration_Structure_Write = 22,
	Fragment_Density_Map_Read = 24,
	Fragment_Shading_Rate_Attachment_Read = 23,
	Command_Preprocess_Read = 17,
	Command_Preprocess_Write = 18,
	Shading_Rate_Image_Read = Fragment_Shading_Rate_Attachment_Read,
}

Image_Aspect_Flags :: distinct bit_set[Image_Aspect_Flag; Flags]
Image_Aspect_Flag :: enum Flags {
	Color = 0,
	Depth = 1,
	Stencil = 2,
	Metadata = 3,
	Plane_0 = 4,
	Plane_1 = 5,
	Plane_2 = 6,
	None = 0,
	Memory_Plane_0 = 7,
	Memory_Plane_1 = 8,
	Memory_Plane_2 = 9,
	Memory_Plane_3 = 10,
}

Format_Feature_Flags :: distinct bit_set[Format_Feature_Flag; Flags]
Format_Feature_Flag :: enum Flags {
	Sampled_Image = 0,
	Storage_Image = 1,
	Storage_Image_Atomic = 2,
	Uniform_Texel_Buffer = 3,
	Storage_Texel_Buffer = 4,
	Storage_Texel_Buffer_Atomic = 5,
	Vertex_Buffer = 6,
	Color_Attachment = 7,
	Color_Attachment_Blend = 8,
	Depth_Stencil_Attachment = 9,
	Blit_Src = 10,
	Blit_Dst = 11,
	Sampled_Image_Filter_Linear = 12,
	Transfer_Src = 14,
	Transfer_Dst = 15,
	Midpoint_Chroma_Samples = 17,
	Sampled_Image_Ycbcr_Conversion_Linear_Filter = 18,
	Sampled_Image_Ycbcr_Conversion_Separate_Reconstruction_Filter = 19,
	Sampled_Image_Ycbcr_Conversion_Chroma_Reconstruction_Explicit = 20,
	Sampled_Image_Ycbcr_Conversion_Chroma_Reconstruction_Explicit_Forceable = 21,
	Disjoint = 22,
	Cosited_Chroma_Samples = 23,
	Sampled_Image_Filter_Minmax = 16,
	Video_Decode_Output = 25,
	Video_Decode_Dpb = 26,
	Acceleration_Structure_Vertex_Buffer = 29,
	Sampled_Image_Filter_Cubic = 13,
	Fragment_Density_Map = 24,
	Fragment_Shading_Rate_Attachment = 30,
	Video_Encode_Input = 27,
	Video_Encode_Dpb = 28,
	Sampled_Image_Filter_Cubic_Bit_Img = Sampled_Image_Filter_Cubic,
}

Image_Create_Flags :: distinct bit_set[Image_Create_Flag; Flags]
Image_Create_Flag :: enum Flags {
	Sparse_Binding = 0,
	Sparse_Residency = 1,
	Sparse_Aliased = 2,
	Mutable_Format = 3,
	Cube_Compatible = 4,
	Alias = 10,
	Split_Instance_Bind_Regions = 6,
	D2 = 5,
	Block_Texel_View_Compatible = 7,
	Extended_Usage = 8,
	Protected = 11,
	Disjoint = 9,
	Corner_Sampled = 13,
	Sample_Locations_Compatible_Depth = 12,
	Subsampled = 14,
	Descriptor_Buffer_Capture_Replay = 16,
	Multisampled_Render_To_Single_Sampled = 18,
	Fragment_Density_Map_Offset_Bit_Qcom = 15,
	Video_Profile_Independent = 20,
}

Sample_Count_Flags :: distinct bit_set[Sample_Count_Flag; Flags]
Sample_Count_Flag :: enum Flags {
	_1 = 0,
	_2 = 1,
	_4 = 2,
	_8 = 3,
	_16 = 4,
	_32 = 5,
	_64 = 6,
}

Image_Usage_Flags :: distinct bit_set[Image_Usage_Flag; Flags]
Image_Usage_Flag :: enum Flags {
	Transfer_Src = 0,
	Transfer_Dst = 1,
	Sampled = 2,
	Storage = 3,
	Color_Attachment = 4,
	Depth_Stencil_Attachment = 5,
	Transient_Attachment = 6,
	Input_Attachment = 7,
	Host_Transfer = 22,
	Video_Decode_Dst = 10,
	Video_Decode_Src = 11,
	Video_Decode_Dpb = 12,
	Fragment_Density_Map = 9,
	Fragment_Shading_Rate_Attachment = 8,
	Video_Encode_Dst = 13,
	Video_Encode_Src = 14,
	Video_Encode_Dpb = 15,
	Attachment_Feedback_Loop = 19,
	Invocation_Mask_Bit_Huawei = 18,
	Sample_Weight_Bit_Qcom = 20,
	Sample_Block_Match_Bit_Qcom = 21,
	Video_Encode_Quantization_Delta_Map = 25,
	Video_Encode_Emphasis_Map = 26,
	Shading_Rate_Image = Fragment_Shading_Rate_Attachment,
}

Instance_Create_Flags :: distinct bit_set[Instance_Create_Flag; Flags]
Instance_Create_Flag :: enum Flags {
	Enumerate_Portability = 0,
}

Memory_Heap_Flags :: distinct bit_set[Memory_Heap_Flag; Flags]
Memory_Heap_Flag :: enum Flags {
	Device_Local = 0,
	Multi_Instance = 1,
}

Memory_Property_Flags :: distinct bit_set[Memory_Property_Flag; Flags]
Memory_Property_Flag :: enum Flags {
	Device_Local = 0,
	Host_Visible = 1,
	Host_Coherent = 2,
	Host_Cached = 3,
	Lazily_Allocated = 4,
	Protected = 5,
	Device_Coherent = 6,
	Device_Uncached = 7,
	Rdma_Capable = 8,
}

Queue_Flags :: distinct bit_set[Queue_Flag; Flags]
Queue_Flag :: enum Flags {
	Graphics = 0,
	Compute = 1,
	Transfer = 2,
	Sparse_Binding = 3,
	Protected = 4,
	Video_Decode = 5,
	Video_Encode = 6,
	Optical_Flow = 8,
}

Device_Queue_Create_Flags :: distinct bit_set[Device_Queue_Create_Flag; Flags]
Device_Queue_Create_Flag :: enum Flags {
	Protected = 0,
}

Pipeline_Stage_Flags :: distinct bit_set[Pipeline_Stage_Flag; Flags]
Pipeline_Stage_Flag :: enum Flags {
	Top_Of_Pipe = 0,
	Draw_Indirect = 1,
	Vertex_Input = 2,
	Vertex_Shader = 3,
	Tessellation_Control_Shader = 4,
	Tessellation_Evaluation_Shader = 5,
	Geometry_Shader = 6,
	Fragment_Shader = 7,
	Early_Fragment_Tests = 8,
	Late_Fragment_Tests = 9,
	Color_Attachment_Output = 10,
	Compute_Shader = 11,
	Transfer = 12,
	Bottom_Of_Pipe = 13,
	Host = 14,
	All_Graphics = 15,
	All_Commands = 16,
	None = 0,
	Transform_Feedback = 24,
	Conditional_Rendering = 18,
	Acceleration_Structure_Build = 25,
	Ray_Tracing_Shader = 21,
	Fragment_Density_Process = 23,
	Fragment_Shading_Rate_Attachment = 22,
	Command_Preprocess = 17,
	Task_Shader = 19,
	Mesh_Shader = 20,
	Shading_Rate_Image = Fragment_Shading_Rate_Attachment,
}

Memory_Map_Flags :: distinct bit_set[Memory_Map_Flag; Flags]
Memory_Map_Flag :: enum Flags {
	Placed = 0,
}

Sparse_Memory_Bind_Flags :: distinct bit_set[Sparse_Memory_Bind_Flag; Flags]
Sparse_Memory_Bind_Flag :: enum Flags {
	Metadata = 0,
}

Sparse_Image_Format_Flags :: distinct bit_set[Sparse_Image_Format_Flag; Flags]
Sparse_Image_Format_Flag :: enum Flags {
	Single_Miptail = 0,
	Aligned_Mip_Size = 1,
	Nonstandard_Block_Size = 2,
}

Fence_Create_Flags :: distinct bit_set[Fence_Create_Flag; Flags]
Fence_Create_Flag :: enum Flags {
	Signaled = 0,
}

Event_Create_Flags :: distinct bit_set[Event_Create_Flag; Flags]
Event_Create_Flag :: enum Flags {
	Device_Only = 0,
}

Query_Pipeline_Statistic_Flags :: distinct bit_set[Query_Pipeline_Statistic_Flag; Flags]
Query_Pipeline_Statistic_Flag :: enum Flags {
	Input_Assembly_Vertices = 0,
	Input_Assembly_Primitives = 1,
	Vertex_Shader_Invocations = 2,
	Geometry_Shader_Invocations = 3,
	Geometry_Shader_Primitives = 4,
	Clipping_Invocations = 5,
	Clipping_Primitives = 6,
	Fragment_Shader_Invocations = 7,
	Tessellation_Control_Shader_Patches = 8,
	Tessellation_Evaluation_Shader_Invocations = 9,
	Compute_Shader_Invocations = 10,
	Task_Shader_Invocations = 11,
	Mesh_Shader_Invocations = 12,
	Cluster_Culling_Shader_Invocations_Bit_Huawei = 13,
}

Query_Result_Flags :: distinct bit_set[Query_Result_Flag; Flags]
Query_Result_Flag :: enum Flags {
	_64 = 0,
	Wait = 1,
	With_Availability = 2,
	Partial = 3,
	With_Status = 4,
}

Buffer_Create_Flags :: distinct bit_set[Buffer_Create_Flag; Flags]
Buffer_Create_Flag :: enum Flags {
	Sparse_Binding = 0,
	Sparse_Residency = 1,
	Sparse_Aliased = 2,
	Protected = 3,
	Device_Address_Capture_Replay = 4,
	Descriptor_Buffer_Capture_Replay = 5,
	Video_Profile_Independent = 6,
}

Buffer_Usage_Flags :: distinct bit_set[Buffer_Usage_Flag; Flags]
Buffer_Usage_Flag :: enum Flags {
	Transfer_Src = 0,
	Transfer_Dst = 1,
	Uniform_Texel_Buffer = 2,
	Storage_Texel_Buffer = 3,
	Uniform_Buffer = 4,
	Storage_Buffer = 5,
	Index_Buffer = 6,
	Vertex_Buffer = 7,
	Indirect_Buffer = 8,
	Shader_Device_Address = 17,
	Video_Decode_Src = 13,
	Video_Decode_Dst = 14,
	Transform_Feedback_Buffer = 11,
	Transform_Feedback_Counter_Buffer = 12,
	Conditional_Rendering = 9,
	Execution_Graph_Scratch_Bit_Amdx = 25,
	Acceleration_Structure_Build_Input_Read_Only = 19,
	Acceleration_Structure_Storage = 20,
	Shader_Binding_Table = 10,
	Video_Encode_Dst = 15,
	Video_Encode_Src = 16,
	Sampler_Descriptor_Buffer = 21,
	Resource_Descriptor_Buffer = 22,
	Push_Descriptors_Descriptor_Buffer = 26,
	Micromap_Build_Input_Read_Only = 23,
	Micromap_Storage = 24,
	Ray_Tracing = Shader_Binding_Table,
}

Image_View_Create_Flags :: distinct bit_set[Image_View_Create_Flag; Flags]
Image_View_Create_Flag :: enum Flags {
	Fragment_Density_Map_Dynamic = 0,
	Descriptor_Buffer_Capture_Replay = 2,
	Fragment_Density_Map_Deferred = 1,
}

Pipeline_Cache_Create_Flags :: distinct bit_set[Pipeline_Cache_Create_Flag; Flags]
Pipeline_Cache_Create_Flag :: enum Flags {
	Externally_Synchronized = 0,
	Ernally_Synchronized = Externally_Synchronized,
}

Color_Component_Flags :: distinct bit_set[Color_Component_Flag; Flags]
Color_Component_Flag :: enum Flags {
	R = 0,
	G = 1,
	B = 2,
	A = 3,
}

Pipeline_Create_Flags :: distinct bit_set[Pipeline_Create_Flag; Flags]
Pipeline_Create_Flag :: enum Flags {
	Disable_Optimization = 0,
	Allow_Derivatives = 1,
	Derivative = 2,
	View_Index_From_Device_Index = 3,
	Dispatch_Base = 4,
	Fail_On_Pipeline_Compile_Required = 8,
	Early_Return_On_Failure = 9,
	No_Protected_Access = 27,
	Protected_Access_Only = 30,
	Ray_Tracing_No_Null_Any_Hit_Shaders = 14,
	Ray_Tracing_No_Null_Closest_Hit_Shaders = 15,
	Ray_Tracing_No_Null_Miss_Shaders = 16,
	Ray_Tracing_No_Null_Intersection_Shaders = 17,
	Ray_Tracing_Skip_Triangles = 12,
	Ray_Tracing_Skip_Aabbs = 13,
	Ray_Tracing_Shader_Group_Handle_Capture_Replay = 19,
	Defer_Compile = 5,
	Rendering_Fragment_Density_Map_Attachment = 22,
	Rendering_Fragment_Shading_Rate_Attachment = 21,
	Capture_Statistics = 6,
	Capture_Internal_Representations = 7,
	Indirect_Bindable = 18,
	Library = 11,
	Descriptor_Buffer = 29,
	Retain_Link_Time_Optimization_Info = 23,
	Link_Time_Optimization = 10,
	Ray_Tracing_Allow_Motion = 20,
	Color_Attachment_Feedback_Loop = 25,
	Depth_Stencil_Attachment_Feedback_Loop = 26,
	Ray_Tracing_Opacity_Micromap = 24,
	Ray_Tracing_Displacement_Micromap = 28,
	Pipeline_Rasterization_State_Create_Fragment_Density_Map_Attachment = Rendering_Fragment_Density_Map_Attachment,
	Pipeline_Rasterization_State_Create_Fragment_Shading_Rate_Attachment = Rendering_Fragment_Shading_Rate_Attachment,
}

Pipeline_Shader_Stage_Create_Flags :: distinct bit_set[Pipeline_Shader_Stage_Create_Flag; Flags]
Pipeline_Shader_Stage_Create_Flag :: enum Flags {
	Allow_Varying_Subgroup_Size = 0,
	Require_Full_Subgroups = 1,
}

Shader_Stage_Flags :: distinct bit_set[Shader_Stage_Flag; Flags]
Shader_Stage_Flag :: enum Flags {
	Vertex = 0,
	Tessellation_Control = 1,
	Tessellation_Evaluation = 2,
	Geometry = 3,
	Fragment = 4,
	Compute = 5,
	Raygen = 8,
	Any_Hit = 9,
	Closest_Hit = 10,
	Miss = 11,
	Intersection = 12,
	Callable = 13,
	Task = 6,
	Mesh = 7,
	Subpass_Shading_Bit_Huawei = 14,
	Cluster_Culling_Bit_Huawei = 19,
}

Cull_Mode_Flags :: distinct bit_set[Cull_Mode_Flag; Flags]
Cull_Mode_Flag :: enum Flags {
	None = 0,
	Front = 0,
	Back = 1,
}

Pipeline_Depth_Stencil_State_Create_Flags :: distinct bit_set[Pipeline_Depth_Stencil_State_Create_Flag; Flags]
Pipeline_Depth_Stencil_State_Create_Flag :: enum Flags {
	Rasterization_Order_Attachment_Depth_Access = 0,
	Rasterization_Order_Attachment_Stencil_Access = 1,
	Rasterization_Order_Attachment_Depth_Access_Bit_Arm = Rasterization_Order_Attachment_Depth_Access,
	Rasterization_Order_Attachment_Stencil_Access_Bit_Arm = Rasterization_Order_Attachment_Stencil_Access,
}

Pipeline_Color_Blend_State_Create_Flags :: distinct bit_set[Pipeline_Color_Blend_State_Create_Flag; Flags]
Pipeline_Color_Blend_State_Create_Flag :: enum Flags {
	Rasterization_Order_Attachment_Access = 0,
	Rasterization_Order_Attachment_Access_Bit_Arm = Rasterization_Order_Attachment_Access,
}

Pipeline_Layout_Create_Flags :: distinct bit_set[Pipeline_Layout_Create_Flag; Flags]
Pipeline_Layout_Create_Flag :: enum Flags {
	Independent_Sets = 1,
}

Sampler_Create_Flags :: distinct bit_set[Sampler_Create_Flag; Flags]
Sampler_Create_Flag :: enum Flags {
	Subsampled = 0,
	Subsampled_Coarse_Reconstruction = 1,
	Descriptor_Buffer_Capture_Replay = 3,
	Non_Seamless_Cube_Map = 2,
	Image_Processing_Bit_Qcom = 4,
}

Descriptor_Pool_Create_Flags :: distinct bit_set[Descriptor_Pool_Create_Flag; Flags]
Descriptor_Pool_Create_Flag :: enum Flags {
	Free_Descriptor_Set = 0,
	Update_After_Bind = 1,
	Host_Only = 2,
	Allow_Overallocation_Sets = 3,
	Allow_Overallocation_Pools = 4,
	Host_Only_Bit_Valve = Host_Only,
}

Descriptor_Set_Layout_Create_Flags :: distinct bit_set[Descriptor_Set_Layout_Create_Flag; Flags]
Descriptor_Set_Layout_Create_Flag :: enum Flags {
	Update_After_Bind_Pool = 1,
	Push_Descriptor = 0,
	Descriptor_Buffer = 4,
	Embedded_Immutable_Samplers = 5,
	Indirect_Bindable = 7,
	Host_Only_Pool = 2,
	Per_Stage = 6,
	Host_Only_Pool_Bit_Valve = Host_Only_Pool,
}

Attachment_Description_Flags :: distinct bit_set[Attachment_Description_Flag; Flags]
Attachment_Description_Flag :: enum Flags {
	May_Alias = 0,
}

Dependency_Flags :: distinct bit_set[Dependency_Flag; Flags]
Dependency_Flag :: enum Flags {
	By_Region = 0,
	Device_Group = 2,
	View_Local = 1,
	Feedback_Loop = 3,
}

Framebuffer_Create_Flags :: distinct bit_set[Framebuffer_Create_Flag; Flags]
Framebuffer_Create_Flag :: enum Flags {
	Imageless = 0,
}

Render_Pass_Create_Flags :: distinct bit_set[Render_Pass_Create_Flag; Flags]
Render_Pass_Create_Flag :: enum Flags {
	Transform_Bit_Qcom = 1,
}

Subpass_Description_Flags :: distinct bit_set[Subpass_Description_Flag; Flags]
Subpass_Description_Flag :: enum Flags {
	Per_View_Attributes = 0,
	Per_View_Position_X_Only = 1,
	Fragment_Region_Bit_Qcom = 2,
	Shader_Resolve_Bit_Qcom = 3,
	Rasterization_Order_Attachment_Color_Access = 4,
	Rasterization_Order_Attachment_Depth_Access = 5,
	Rasterization_Order_Attachment_Stencil_Access = 6,
	Enable_Legacy_Dithering = 7,
	Rasterization_Order_Attachment_Color_Access_Bit_Arm = Rasterization_Order_Attachment_Color_Access,
	Rasterization_Order_Attachment_Depth_Access_Bit_Arm = Rasterization_Order_Attachment_Depth_Access,
	Rasterization_Order_Attachment_Stencil_Access_Bit_Arm = Rasterization_Order_Attachment_Stencil_Access,
}

Command_Pool_Create_Flags :: distinct bit_set[Command_Pool_Create_Flag; Flags]
Command_Pool_Create_Flag :: enum Flags {
	Transient = 0,
	Reset_Command_Buffer = 1,
	Protected = 2,
}

Command_Pool_Reset_Flags :: distinct bit_set[Command_Pool_Reset_Flag; Flags]
Command_Pool_Reset_Flag :: enum Flags {
	Release_Resources = 0,
}

Command_Buffer_Usage_Flags :: distinct bit_set[Command_Buffer_Usage_Flag; Flags]
Command_Buffer_Usage_Flag :: enum Flags {
	One_Time_Submit = 0,
	Render_Pass_Continue = 1,
	Simultaneous_Use = 2,
}

Query_Control_Flags :: distinct bit_set[Query_Control_Flag; Flags]
Query_Control_Flag :: enum Flags {
	Precise = 0,
}

Command_Buffer_Reset_Flags :: distinct bit_set[Command_Buffer_Reset_Flag; Flags]
Command_Buffer_Reset_Flag :: enum Flags {
	Release_Resources = 0,
}

Stencil_Face_Flags :: distinct bit_set[Stencil_Face_Flag; Flags]
Stencil_Face_Flag :: enum Flags {
	Front = 0,
	Back = 1,
}

Subgroup_Feature_Flags :: distinct bit_set[Subgroup_Feature_Flag; Flags]
Subgroup_Feature_Flag :: enum Flags {
	Basic = 0,
	Vote = 1,
	Arithmetic = 2,
	Ballot = 3,
	Shuffle = 4,
	Shuffle_Relative = 5,
	Clustered = 6,
	Quad = 7,
	Rotate = 9,
	Rotate_Clustered = 10,
	Partitioned = 8,
}

Peer_Memory_Feature_Flags :: distinct bit_set[Peer_Memory_Feature_Flag; Flags]
Peer_Memory_Feature_Flag :: enum Flags {
	Copy_Src = 0,
	Copy_Dst = 1,
	Generic_Src = 2,
	Generic_Dst = 3,
}

Memory_Allocate_Flags :: distinct bit_set[Memory_Allocate_Flag; Flags]
Memory_Allocate_Flag :: enum Flags {
	Device_Mask = 0,
	Device_Address = 1,
	Device_Address_Capture_Replay = 2,
}

External_Memory_Handle_Type_Flags :: distinct bit_set[External_Memory_Handle_Type_Flag; Flags]
External_Memory_Handle_Type_Flag :: enum Flags {
	Opaque_Fd = 0,
	Opaque_Win32 = 1,
	Opaque_Win32_Kmt = 2,
	D3D11_Texture = 3,
	D3D11_Texture_Kmt = 4,
	D3D12_Heap = 5,
	D3D12_Resource = 6,
	Dma_Buf = 9,
	Android_Hardware_Buffer_Bit_Android = 10,
	Host_Allocation = 7,
	Host_Mapped_Foreign_Memory = 8,
	Zircon_Vmo_Bit_Fuchsia = 11,
	Rdma_Address = 12,
	Screen_Buffer_Bit_Qnx = 14,
}

External_Memory_Feature_Flags :: distinct bit_set[External_Memory_Feature_Flag; Flags]
External_Memory_Feature_Flag :: enum Flags {
	Dedicated_Only = 0,
	Exportable = 1,
	Importable = 2,
}

External_Fence_Handle_Type_Flags :: distinct bit_set[External_Fence_Handle_Type_Flag; Flags]
External_Fence_Handle_Type_Flag :: enum Flags {
	Opaque_Fd = 0,
	Opaque_Win32 = 1,
	Opaque_Win32_Kmt = 2,
	Sync_Fd = 3,
}

External_Fence_Feature_Flags :: distinct bit_set[External_Fence_Feature_Flag; Flags]
External_Fence_Feature_Flag :: enum Flags {
	Exportable = 0,
	Importable = 1,
}

Fence_Import_Flags :: distinct bit_set[Fence_Import_Flag; Flags]
Fence_Import_Flag :: enum Flags {
	Temporary = 0,
}

Semaphore_Import_Flags :: distinct bit_set[Semaphore_Import_Flag; Flags]
Semaphore_Import_Flag :: enum Flags {
	Temporary = 0,
}

External_Semaphore_Handle_Type_Flags :: distinct bit_set[External_Semaphore_Handle_Type_Flag; Flags]
External_Semaphore_Handle_Type_Flag :: enum Flags {
	Opaque_Fd = 0,
	Opaque_Win32 = 1,
	Opaque_Win32_Kmt = 2,
	D3D12_Fence = 3,
	Sync_Fd = 4,
	Zircon_Event_Bit_Fuchsia = 7,
	D3D11_Fence = D3D12_Fence,
}

External_Semaphore_Feature_Flags :: distinct bit_set[External_Semaphore_Feature_Flag; Flags]
External_Semaphore_Feature_Flag :: enum Flags {
	Exportable = 0,
	Importable = 1,
}

Resolve_Mode_Flags :: distinct bit_set[Resolve_Mode_Flag; Flags]
Resolve_Mode_Flag :: enum Flags {
	None = 0,
	Sample_Zero = 0,
	Average = 1,
	Min = 2,
	Max = 3,
	External_Format_Downsample_Android = 4,
}

Descriptor_Binding_Flags :: distinct bit_set[Descriptor_Binding_Flag; Flags]
Descriptor_Binding_Flag :: enum Flags {
	Update_After_Bind = 0,
	Update_Unused_While_Pending = 1,
	Partially_Bound = 2,
	Variable_Descriptor_Count = 3,
}

Semaphore_Wait_Flags :: distinct bit_set[Semaphore_Wait_Flag; Flags]
Semaphore_Wait_Flag :: enum Flags {
	Any = 0,
}

Pipeline_Creation_Feedback_Flags :: distinct bit_set[Pipeline_Creation_Feedback_Flag; Flags]
Pipeline_Creation_Feedback_Flag :: enum Flags {
	Valid = 0,
	Application_Pipeline_Cache_Hit = 1,
	Base_Pipeline_Acceleration = 2,
}

Tool_Purpose_Flags :: distinct bit_set[Tool_Purpose_Flag; Flags]
Tool_Purpose_Flag :: enum Flags {
	Validation = 0,
	Profiling = 1,
	Tracing = 2,
	Additional_Features = 3,
	Modifying_Features = 4,
	Debug_Reporting = 5,
	Debug_Markers = 6,
}

Submit_Flags :: distinct bit_set[Submit_Flag; Flags]
Submit_Flag :: enum Flags {
	Protected = 0,
}

Rendering_Flags :: distinct bit_set[Rendering_Flag; Flags]
Rendering_Flag :: enum Flags {
	Contents_Secondary_Command_Buffers = 0,
	Suspending = 1,
	Resuming = 2,
	Enable_Legacy_Dithering = 3,
	Contents_Inline = 4,
}

Memory_Unmap_Flags :: distinct bit_set[Memory_Unmap_Flag; Flags]
Memory_Unmap_Flag :: enum Flags {
	Reserve = 0,
}

Host_Image_Copy_Flags :: distinct bit_set[Host_Image_Copy_Flag; Flags]
Host_Image_Copy_Flag :: enum Flags {
	Memcpy = 0,
}

Surface_Transform_Flags :: distinct bit_set[Surface_Transform_Flag; Flags]
Surface_Transform_Flag :: enum Flags {
	Identity = 0,
	Rotate_90 = 1,
	Rotate_180 = 2,
	Rotate_270 = 3,
	Horizontal_Mirror = 4,
	Horizontal_Mirror_Rotate_90 = 5,
	Horizontal_Mirror_Rotate_180 = 6,
	Horizontal_Mirror_Rotate_270 = 7,
	Inherit = 8,
}

Composite_Alpha_Flags :: distinct bit_set[Composite_Alpha_Flag; Flags]
Composite_Alpha_Flag :: enum Flags {
	Opaque = 0,
	Pre_Multiplied = 1,
	Post_Multiplied = 2,
	Inherit = 3,
}

Swapchain_Create_Flags :: distinct bit_set[Swapchain_Create_Flag; Flags]
Swapchain_Create_Flag :: enum Flags {
	Split_Instance_Bind_Regions = 0,
	Protected = 1,
	Mutable_Format = 2,
	Deferred_Memory_Allocation = 3,
}

Device_Group_Present_Mode_Flags :: distinct bit_set[Device_Group_Present_Mode_Flag; Flags]
Device_Group_Present_Mode_Flag :: enum Flags {
	Local = 0,
	Remote = 1,
	Sum = 2,
	Local_Multi_Device = 3,
}

Display_Plane_Alpha_Flags :: distinct bit_set[Display_Plane_Alpha_Flag; Flags]
Display_Plane_Alpha_Flag :: enum Flags {
	Opaque = 0,
	Global = 1,
	Per_Pixel = 2,
	Per_Pixel_Premultiplied = 3,
}

Video_Codec_Operation_Flags :: distinct bit_set[Video_Codec_Operation_Flag; Flags]
Video_Codec_Operation_Flag :: enum Flags {
	None = 0,
	Encode_H264 = 16,
	Encode_H265 = 17,
	Decode_H264 = 0,
	Decode_H265 = 1,
	Decode_Av1 = 2,
	Encode_Av1 = 18,
}

Video_Chroma_Subsampling_Flags :: distinct bit_set[Video_Chroma_Subsampling_Flag; Flags]
Video_Chroma_Subsampling_Flag :: enum Flags {
	Invalid = 0,
	Monochrome = 0,
	_420 = 1,
	_422 = 2,
	_444 = 3,
}

Video_Component_Bit_Depth_Flags :: distinct bit_set[Video_Component_Bit_Depth_Flag; Flags]
Video_Component_Bit_Depth_Flag :: enum Flags {
	Invalid = 0,
	_8 = 0,
	_10 = 2,
	_12 = 4,
}

Video_Capability_Flags :: distinct bit_set[Video_Capability_Flag; Flags]
Video_Capability_Flag :: enum Flags {
	Protected_Content = 0,
	Separate_Reference_Images = 1,
}

Video_Session_Create_Flags :: distinct bit_set[Video_Session_Create_Flag; Flags]
Video_Session_Create_Flag :: enum Flags {
	Protected_Content = 0,
	Allow_Encode_Parameter_Optimizations = 1,
	Inline_Queries = 2,
	Allow_Encode_Quantization_Delta_Map = 3,
	Allow_Encode_Emphasis_Map = 4,
}

Video_Session_Parameters_Create_Flags :: distinct bit_set[Video_Session_Parameters_Create_Flag; Flags]
Video_Session_Parameters_Create_Flag :: enum Flags {
	Quantization_Map_Compatible = 0,
}

Video_Coding_Control_Flags :: distinct bit_set[Video_Coding_Control_Flag; Flags]
Video_Coding_Control_Flag :: enum Flags {
	Reset = 0,
	Encode_Rate_Control = 1,
	Encode_Quality_Level = 2,
}

Video_Decode_Capability_Flags :: distinct bit_set[Video_Decode_Capability_Flag; Flags]
Video_Decode_Capability_Flag :: enum Flags {
	Dpb_And_Output_Coincide = 0,
	Dpb_And_Output_Distinct = 1,
}

Video_Decode_Usage_Flags :: distinct bit_set[Video_Decode_Usage_Flag; Flags]
Video_Decode_Usage_Flag :: enum Flags {
	Default = 0,
	Transcoding = 0,
	Offline = 1,
	Streaming = 2,
}

Video_Encode_H264Capability_Flags :: distinct bit_set[Video_Encode_H264Capability_Flag; Flags]
Video_Encode_H264Capability_Flag :: enum Flags {
	Hrd_Compliance = 0,
	Prediction_Weight_Table_Generated = 1,
	Row_Unaligned_Slice = 2,
	Different_Slice_Type = 3,
	B_Frame_In_L0_List = 4,
	B_Frame_In_L1_List = 5,
	Per_Picture_Type_Min_Max_Qp = 6,
	Per_Slice_Constant_Qp = 7,
	Generate_Prefix_Nalu = 8,
	Mb_Qp_Diff_Wraparound = 9,
}

Video_Encode_H264Std_Flags :: distinct bit_set[Video_Encode_H264Std_Flag; Flags]
Video_Encode_H264Std_Flag :: enum Flags {
	Separate_Color_Plane_Flag_Set = 0,
	Qpprime_Y_Zero_Transform_Bypass_Flag_Set = 1,
	Scaling_Matrix_Present_Flag_Set = 2,
	Chroma_Qp_Index_Offset = 3,
	Second_Chroma_Qp_Index_Offset = 4,
	Pic_Init_Qp_Minus26 = 5,
	Weighted_Pred_Flag_Set = 6,
	Weighted_Bipred_Idc_Explicit = 7,
	Weighted_Bipred_Idc_Implicit = 8,
	Transform_8X8_Mode_Flag_Set = 9,
	Direct_Spatial_Mv_Pred_Flag_Unset = 10,
	Entropy_Coding_Mode_Flag_Unset = 11,
	Entropy_Coding_Mode_Flag_Set = 12,
	Direct_8X8_Inference_Flag_Unset = 13,
	Constrained_Intra_Pred_Flag_Set = 14,
	Deblocking_Filter_Disabled = 15,
	Deblocking_Filter_Enabled = 16,
	Deblocking_Filter_Partial = 17,
	Slice_Qp_Delta = 19,
	Different_Slice_Qp_Delta = 20,
}

Video_Encode_H264Rate_Control_Flags :: distinct bit_set[Video_Encode_H264Rate_Control_Flag; Flags]
Video_Encode_H264Rate_Control_Flag :: enum Flags {
	Attempt_Hrd_Compliance = 0,
	Regular_Gop = 1,
	Reference_Pattern_Flat = 2,
	Reference_Pattern_Dyadic = 3,
	Temporal_Layer_Pattern_Dyadic = 4,
}

Video_Encode_H265Capability_Flags :: distinct bit_set[Video_Encode_H265Capability_Flag; Flags]
Video_Encode_H265Capability_Flag :: enum Flags {
	Hrd_Compliance = 0,
	Prediction_Weight_Table_Generated = 1,
	Row_Unaligned_Slice_Segment = 2,
	Different_Slice_Segment_Type = 3,
	B_Frame_In_L0_List = 4,
	B_Frame_In_L1_List = 5,
	Per_Picture_Type_Min_Max_Qp = 6,
	Per_Slice_Segment_Constant_Qp = 7,
	Multiple_Tiles_Per_Slice_Segment = 8,
	Multiple_Slice_Segments_Per_Tile = 9,
	Cu_Qp_Diff_Wraparound = 10,
}

Video_Encode_H265Std_Flags :: distinct bit_set[Video_Encode_H265Std_Flag; Flags]
Video_Encode_H265Std_Flag :: enum Flags {
	Separate_Color_Plane_Flag_Set = 0,
	Sample_Adaptive_Offset_Enabled_Flag_Set = 1,
	Scaling_List_Data_Present_Flag_Set = 2,
	Pcm_Enabled_Flag_Set = 3,
	Sps_Temporal_Mvp_Enabled_Flag_Set = 4,
	Init_Qp_Minus26 = 5,
	Weighted_Pred_Flag_Set = 6,
	Weighted_Bipred_Flag_Set = 7,
	Log2_Parallel_Merge_Level_Minus2 = 8,
	Sign_Data_Hiding_Enabled_Flag_Set = 9,
	Transform_Skip_Enabled_Flag_Set = 10,
	Transform_Skip_Enabled_Flag_Unset = 11,
	Pps_Slice_Chroma_Qp_Offsets_Present_Flag_Set = 12,
	Transquant_Bypass_Enabled_Flag_Set = 13,
	Constrained_Intra_Pred_Flag_Set = 14,
	Entropy_Coding_Sync_Enabled_Flag_Set = 15,
	Deblocking_Filter_Override_Enabled_Flag_Set = 16,
	Dependent_Slice_Segments_Enabled_Flag_Set = 17,
	Dependent_Slice_Segment_Flag_Set = 18,
	Slice_Qp_Delta = 19,
	Different_Slice_Qp_Delta = 20,
}

Video_Encode_H265Ctb_Size_Flags :: distinct bit_set[Video_Encode_H265Ctb_Size_Flag; Flags]
Video_Encode_H265Ctb_Size_Flag :: enum Flags {
	_16 = 0,
	_32 = 1,
	_64 = 2,
}

Video_Encode_H265Transform_Block_Size_Flags :: distinct bit_set[Video_Encode_H265Transform_Block_Size_Flag; Flags]
Video_Encode_H265Transform_Block_Size_Flag :: enum Flags {
	_4 = 0,
	_8 = 1,
	_16 = 2,
	_32 = 3,
}

Video_Encode_H265Rate_Control_Flags :: distinct bit_set[Video_Encode_H265Rate_Control_Flag; Flags]
Video_Encode_H265Rate_Control_Flag :: enum Flags {
	Attempt_Hrd_Compliance = 0,
	Regular_Gop = 1,
	Reference_Pattern_Flat = 2,
	Reference_Pattern_Dyadic = 3,
	Temporal_Sub_Layer_Pattern_Dyadic = 4,
}

Video_Decode_H264Picture_Layout_Flags :: distinct bit_set[Video_Decode_H264Picture_Layout_Flag; Flags]
Video_Decode_H264Picture_Layout_Flag :: enum Flags {
	Progressive = 0,
	Interlaced_Interleaved_Lines = 0,
	Interlaced_Separate_Planes = 1,
}

Performance_Counter_Description_Flags :: distinct bit_set[Performance_Counter_Description_Flag; Flags]
Performance_Counter_Description_Flag :: enum Flags {
	Performance_Impacting = 0,
	Concurrently_Impacted = 1,
}

Acquire_Profiling_Lock_Flags :: distinct bit_set[Acquire_Profiling_Lock_Flag; Flags]
Acquire_Profiling_Lock_Flag :: enum Flags {
}

Video_Encode_Flags :: distinct bit_set[Video_Encode_Flag; Flags]
Video_Encode_Flag :: enum Flags {
	With_Quantization_Delta_Map = 0,
	With_Emphasis_Map = 1,
}

Video_Encode_Capability_Flags :: distinct bit_set[Video_Encode_Capability_Flag; Flags]
Video_Encode_Capability_Flag :: enum Flags {
	Preceding_Externally_Encoded_Bytes = 0,
	Insufficient_Bitstream_Buffer_Range_Detection = 1,
	Quantization_Delta_Map = 2,
	Emphasis_Map = 3,
}

Video_Encode_Rate_Control_Mode_Flags :: distinct bit_set[Video_Encode_Rate_Control_Mode_Flag; Flags]
Video_Encode_Rate_Control_Mode_Flag :: enum Flags {
	Default = 0,
	Disabled = 0,
	Cbr = 1,
	Vbr = 2,
}

Video_Encode_Feedback_Flags :: distinct bit_set[Video_Encode_Feedback_Flag; Flags]
Video_Encode_Feedback_Flag :: enum Flags {
	Bitstream_Buffer_Offset = 0,
	Bitstream_Bytes_Written = 1,
	Bitstream_Has_Overrides = 2,
}

Video_Encode_Usage_Flags :: distinct bit_set[Video_Encode_Usage_Flag; Flags]
Video_Encode_Usage_Flag :: enum Flags {
	Default = 0,
	Transcoding = 0,
	Streaming = 1,
	Recording = 2,
	Conferencing = 3,
}

Video_Encode_Content_Flags :: distinct bit_set[Video_Encode_Content_Flag; Flags]
Video_Encode_Content_Flag :: enum Flags {
	Default = 0,
	Camera = 0,
	Desktop = 1,
	Rendered = 2,
}

Video_Encode_Av1_Capability_Flags :: distinct bit_set[Video_Encode_Av1_Capability_Flag; Flags]
Video_Encode_Av1_Capability_Flag :: enum Flags {
	Per_Rate_Control_Group_Min_Max_Q_Index = 0,
	Generate_Obu_Extension_Header = 1,
	Primary_Reference_Cdf_Only = 2,
	Frame_Size_Override = 3,
	Motion_Vector_Scaling = 4,
}

Video_Encode_Av1_Std_Flags :: distinct bit_set[Video_Encode_Av1_Std_Flag; Flags]
Video_Encode_Av1_Std_Flag :: enum Flags {
	Uniform_Tile_Spacing_Flag_Set = 0,
	Skip_Mode_Present_Unset = 1,
	Primary_Ref_Frame = 2,
	Delta_Q = 3,
}

Video_Encode_Av1_Superblock_Size_Flags :: distinct bit_set[Video_Encode_Av1_Superblock_Size_Flag; Flags]
Video_Encode_Av1_Superblock_Size_Flag :: enum Flags {
	_64 = 0,
	_128 = 1,
}

Video_Encode_Av1_Rate_Control_Flags :: distinct bit_set[Video_Encode_Av1_Rate_Control_Flag; Flags]
Video_Encode_Av1_Rate_Control_Flag :: enum Flags {
	Regular_Gop = 0,
	Temporal_Layer_Pattern_Dyadic = 1,
	Reference_Pattern_Flat = 2,
	Reference_Pattern_Dyadic = 3,
}

Debug_Report_Flags :: distinct bit_set[Debug_Report_Flag; Flags]
Debug_Report_Flag :: enum Flags {
	Information = 0,
	Warning = 1,
	Performance_Warning = 2,
	Error = 3,
	Debug = 4,
}

Conditional_Rendering_Flags :: distinct bit_set[Conditional_Rendering_Flag; Flags]
Conditional_Rendering_Flag :: enum Flags {
	Inverted = 0,
}

Surface_Counter_Flags :: distinct bit_set[Surface_Counter_Flag; Flags]
Surface_Counter_Flag :: enum Flags {
	Vblank = 0,
}

Debug_Utils_Message_Severity_Flags :: distinct bit_set[Debug_Utils_Message_Severity_Flag; Flags]
Debug_Utils_Message_Severity_Flag :: enum Flags {
	Verbose = 0,
	Info = 4,
	Warning = 8,
	Error = 12,
}

Debug_Utils_Message_Type_Flags :: distinct bit_set[Debug_Utils_Message_Type_Flag; Flags]
Debug_Utils_Message_Type_Flag :: enum Flags {
	General = 0,
	Validation = 1,
	Performance = 2,
	Device_Address_Binding = 3,
}

Geometry_Flags :: distinct bit_set[Geometry_Flag; Flags]
Geometry_Flag :: enum Flags {
	Opaque = 0,
	No_Duplicate_Any_Hit_Invocation = 1,
	No_Duplicate_Any_Hit_Iocation = No_Duplicate_Any_Hit_Invocation,
}

Geometry_Instance_Flags :: distinct bit_set[Geometry_Instance_Flag; Flags]
Geometry_Instance_Flag :: enum Flags {
	Triangle_Facing_Cull_Disable = 0,
	Triangle_Flip_Facing = 1,
	Force_Opaque = 2,
	Force_No_Opaque = 3,
	Force_Opacity_Micromap_2_State = 4,
	Disable_Opacity_Micromaps = 5,
	Triangle_Front_Counterclockwise = Triangle_Flip_Facing,
}

Build_Acceleration_Structure_Flags :: distinct bit_set[Build_Acceleration_Structure_Flag; Flags]
Build_Acceleration_Structure_Flag :: enum Flags {
	Allow_Update = 0,
	Allow_Compaction = 1,
	Prefer_Fast_Trace = 2,
	Prefer_Fast_Build = 3,
	Low_Memory = 4,
	Motion = 5,
	Allow_Opacity_Micromap_Update = 6,
	Allow_Disable_Opacity_Micromaps = 7,
	Allow_Opacity_Micromap_Data_Update = 8,
	Allow_Displacement_Micromap_Update = 9,
	Allow_Data_Access = 11,
}

Pipeline_Compiler_Control_Flags :: distinct bit_set[Pipeline_Compiler_Control_Flag; Flags]
Pipeline_Compiler_Control_Flag :: enum Flags {
}

Shader_Core_Properties_Flags :: distinct bit_set[Shader_Core_Properties_Flag; Flags]
Shader_Core_Properties_Flag :: enum Flags {
}

Present_Scaling_Flags :: distinct bit_set[Present_Scaling_Flag; Flags]
Present_Scaling_Flag :: enum Flags {
	One_To_One = 0,
	Aspect_Ratio_Stretch = 1,
	Stretch = 2,
}

Present_Gravity_Flags :: distinct bit_set[Present_Gravity_Flag; Flags]
Present_Gravity_Flag :: enum Flags {
	Min = 0,
	Max = 1,
	Centered = 2,
}

Indirect_State_Flags :: distinct bit_set[Indirect_State_Flag; Flags]
Indirect_State_Flag :: enum Flags {
	Flag_Frontface = 0,
}

Indirect_Commands_Layout_Usage_Flags :: distinct bit_set[Indirect_Commands_Layout_Usage_Flag; Flags]
Indirect_Commands_Layout_Usage_Flag :: enum Flags {
	Explicit_Preprocess = 0,
	Indexed_Sequences = 1,
	Unordered_Sequences = 2,
}

Device_Diagnostics_Config_Flags :: distinct bit_set[Device_Diagnostics_Config_Flag; Flags]
Device_Diagnostics_Config_Flag :: enum Flags {
	Enable_Shader_Debug_Info = 0,
	Enable_Resource_Tracking = 1,
	Enable_Automatic_Checkpoints = 2,
	Enable_Shader_Error_Reporting = 3,
}

Graphics_Pipeline_Library_Flags :: distinct bit_set[Graphics_Pipeline_Library_Flag; Flags]
Graphics_Pipeline_Library_Flag :: enum Flags {
	Vertex_Input_Interface = 0,
	Pre_Rasterization_Shaders = 1,
	Fragment_Shader = 2,
	Fragment_Output_Interface = 3,
}

Image_Compression_Flags :: distinct bit_set[Image_Compression_Flag; Flags]
Image_Compression_Flag :: enum Flags {
	Default = 0,
	Fixed_Rate_Default = 0,
	Fixed_Rate_Explicit = 1,
	Disabled = 2,
}

Image_Compression_Fixed_Rate_Flags :: distinct bit_set[Image_Compression_Fixed_Rate_Flag; Flags]
Image_Compression_Fixed_Rate_Flag :: enum Flags {
	None = 0,
	_1Bpc = 0,
	_2Bpc = 1,
	_3Bpc = 2,
	_4Bpc = 3,
	_5Bpc = 4,
	_6Bpc = 5,
	_7Bpc = 6,
	_8Bpc = 7,
	_9Bpc = 8,
	_10Bpc = 9,
	_11Bpc = 10,
	_12Bpc = 11,
	_13Bpc = 12,
	_14Bpc = 13,
	_15Bpc = 14,
	_16Bpc = 15,
	_17Bpc = 16,
	_18Bpc = 17,
	_19Bpc = 18,
	_20Bpc = 19,
	_21Bpc = 20,
	_22Bpc = 21,
	_23Bpc = 22,
	_24Bpc = 23,
}

Device_Address_Binding_Flags :: distinct bit_set[Device_Address_Binding_Flag; Flags]
Device_Address_Binding_Flag :: enum Flags {
	Internal_Object = 0,
}

Frame_Boundary_Flags :: distinct bit_set[Frame_Boundary_Flag; Flags]
Frame_Boundary_Flag :: enum Flags {
	Frame_End = 0,
}

Build_Micromap_Flags :: distinct bit_set[Build_Micromap_Flag; Flags]
Build_Micromap_Flag :: enum Flags {
	Prefer_Fast_Trace = 0,
	Prefer_Fast_Build = 1,
	Allow_Compaction = 2,
}

Micromap_Create_Flags :: distinct bit_set[Micromap_Create_Flag; Flags]
Micromap_Create_Flag :: enum Flags {
	Device_Address_Capture_Replay = 0,
}

Optical_Flow_Grid_Size_Flags :: distinct bit_set[Optical_Flow_Grid_Size_Flag; Flags]
Optical_Flow_Grid_Size_Flag :: enum Flags {
	Unknown = 0,
	_1X1 = 0,
	_2X2 = 1,
	_4X4 = 2,
	_8X8 = 3,
}

Optical_Flow_Usage_Flags :: distinct bit_set[Optical_Flow_Usage_Flag; Flags]
Optical_Flow_Usage_Flag :: enum Flags {
	Unknown = 0,
	Input = 0,
	Output = 1,
	Hint = 2,
	Cost = 3,
	Global_Flow = 4,
}

Optical_Flow_Session_Create_Flags :: distinct bit_set[Optical_Flow_Session_Create_Flag; Flags]
Optical_Flow_Session_Create_Flag :: enum Flags {
	Enable_Hint = 0,
	Enable_Cost = 1,
	Enable_Global_Flow = 2,
	Allow_Regions = 3,
	Both_Directions = 4,
}

Optical_Flow_Execute_Flags :: distinct bit_set[Optical_Flow_Execute_Flag; Flags]
Optical_Flow_Execute_Flag :: enum Flags {
	Disable_Temporal_Hints = 0,
}

Shader_Create_Flags :: distinct bit_set[Shader_Create_Flag; Flags]
Shader_Create_Flag :: enum Flags {
	Link_Stage = 0,
	Allow_Varying_Subgroup_Size = 1,
	Require_Full_Subgroups = 2,
	No_Task_Shader = 3,
	Dispatch_Base = 4,
	Fragment_Shading_Rate_Attachment = 5,
	Fragment_Density_Map_Attachment = 6,
	Indirect_Bindable = 7,
}

Indirect_Commands_Input_Mode_Flags :: distinct bit_set[Indirect_Commands_Input_Mode_Flag; Flags]
Indirect_Commands_Input_Mode_Flag :: enum Flags {
	Vulkan_Index_Buffer = 0,
	Dxgi_Index_Buffer = 1,
}

Acceleration_Structure_Create_Flags :: distinct bit_set[Acceleration_Structure_Create_Flag; Flags]
Acceleration_Structure_Create_Flag :: enum Flags {
	Device_Address_Capture_Replay = 0,
	Descriptor_Buffer_Capture_Replay = 3,
	Motion = 2,
}

Export_Metal_Object_Type_Flags :: distinct bit_set[Export_Metal_Object_Type_Flag; Flags]
Export_Metal_Object_Type_Flag :: enum Flags {
	Metal_Device = 0,
	Metal_Command_Queue = 1,
	Metal_Buffer = 2,
	Metal_Ture = 3,
	Metal_Iosurface = 4,
	Metal_Shared_Event = 5,
}

Pipeline_Stage_Flags_2 :: distinct bit_set[Pipeline_Stage_Flag_2; Flags_64]
Pipeline_Stage_Flag_2 :: enum Flags_64 {
	None = 0,
	Top_Of_Pipe_Bit = 0,
	Draw_Indirect_Bit = 1,
	Vertex_Input_Bit = 2,
	Vertex_Shader_Bit = 3,
	Tessellation_Control_Shader_Bit = 4,
	Tessellation_Evaluation_Shader_Bit = 5,
	Geometry_Shader_Bit = 6,
	Fragment_Shader_Bit = 7,
	Early_Fragment_Tests_Bit = 8,
	Late_Fragment_Tests_Bit = 9,
	Color_Attachment_Output_Bit = 10,
	Compute_Shader_Bit = 11,
	All_Transfer_Bit = 12,
	Transfer_Bit = 12,
	Bottom_Of_Pipe_Bit = 13,
	Host_Bit = 14,
	All_Graphics_Bit = 15,
	All_Commands_Bit = 16,
	Copy_Bit = 32,
	Resolve_Bit = 33,
	Blit_Bit = 34,
	Clear_Bit = 35,
	Index_Input_Bit = 36,
	Vertex_Attribute_Input_Bit = 37,
	Pre_Rasterization_Shaders_Bit = 38,
	Video_Decode_Bit = 26,
	Video_Encode_Bit = 27,
	Transform_Feedback_Bit = 24,
	Conditional_Rendering_Bit = 18,
	Command_Preprocess_Bit = 17,
	Fragment_Shading_Rate_Attachment_Bit = 22,
	Shading_Rate_Image_Bit = 22,
	Acceleration_Structure_Build_Bit = 25,
	Ray_Tracing_Shader_Bit = 21,
	Fragment_Density_Process_Bit = 23,
	Task_Shader_Bit = 19,
	Mesh_Shader_Bit = 20,
	Subpass_Shader_Bit_Huawei = 39,
	Subpass_Shading_Bit_Huawei = 39,
	Invocation_Mask_Bit_Huawei = 40,
	Acceleration_Structure_Copy_Bit = 28,
	Micromap_Build_Bit = 30,
	Cluster_Culling_Shader_Bit_Huawei = 41,
	Optical_Flow_Bit = 29,
}

Access_Flags_2 :: distinct bit_set[Access_Flag_2; Flags_64]
Access_Flag_2 :: enum Flags_64 {
	None = 0,
	Indirect_Command_Read_Bit = 0,
	Index_Read_Bit = 1,
	Vertex_Attribute_Read_Bit = 2,
	Uniform_Read_Bit = 3,
	Input_Attachment_Read_Bit = 4,
	Shader_Read_Bit = 5,
	Shader_Write_Bit = 6,
	Color_Attachment_Read_Bit = 7,
	Color_Attachment_Write_Bit = 8,
	Depth_Stencil_Attachment_Read_Bit = 9,
	Depth_Stencil_Attachment_Write_Bit = 10,
	Transfer_Read_Bit = 11,
	Transfer_Write_Bit = 12,
	Host_Read_Bit = 13,
	Host_Write_Bit = 14,
	Memory_Read_Bit = 15,
	Memory_Write_Bit = 16,
	Shader_Sampled_Read_Bit = 32,
	Shader_Storage_Read_Bit = 33,
	Shader_Storage_Write_Bit = 34,
	Video_Decode_Read_Bit = 35,
	Video_Decode_Write_Bit = 36,
	Video_Encode_Read_Bit = 37,
	Video_Encode_Write_Bit = 38,
	Transform_Feedback_Write_Bit = 25,
	Transform_Feedback_Counter_Read_Bit = 26,
	Transform_Feedback_Counter_Write_Bit = 27,
	Conditional_Rendering_Read_Bit = 20,
	Command_Preprocess_Read_Bit = 17,
	Command_Preprocess_Write_Bit = 18,
	Fragment_Shading_Rate_Attachment_Read_Bit = 23,
	Shading_Rate_Image_Read_Bit = 23,
	Acceleration_Structure_Read_Bit = 21,
	Acceleration_Structure_Write_Bit = 22,
	Fragment_Density_Map_Read_Bit = 24,
	Color_Attachment_Read_Noncoherent_Bit = 19,
	Descriptor_Buffer_Read_Bit = 41,
	Invocation_Mask_Read_Bit_Huawei = 39,
	Shader_Binding_Table_Read_Bit = 40,
	Micromap_Read_Bit = 44,
	Micromap_Write_Bit = 45,
	Optical_Flow_Read_Bit = 42,
	Optical_Flow_Write_Bit = 43,
}

Format_Feature_Flags_2 :: distinct bit_set[Format_Feature_Flag_2; Flags_64]
Format_Feature_Flag_2 :: enum Flags_64 {
	Sampled_Image_Bit = 0,
	Storage_Image_Bit = 1,
	Storage_Image_Atomic_Bit = 2,
	Uniform_Texel_Buffer_Bit = 3,
	Storage_Texel_Buffer_Bit = 4,
	Storage_Texel_Buffer_Atomic_Bit = 5,
	Vertex_Buffer_Bit = 6,
	Color_Attachment_Bit = 7,
	Color_Attachment_Blend_Bit = 8,
	Depth_Stencil_Attachment_Bit = 9,
	Blit_Src_Bit = 10,
	Blit_Dst_Bit = 11,
	Sampled_Image_Filter_Linear_Bit = 12,
	Transfer_Src_Bit = 14,
	Transfer_Dst_Bit = 15,
	Sampled_Image_Filter_Minmax_Bit = 16,
	Midpoint_Chroma_Samples_Bit = 17,
	Sampled_Image_Ycbcr_Conversion_Linear_Filter_Bit = 18,
	Sampled_Image_Ycbcr_Conversion_Separate_Reconstruction_Filter_Bit = 19,
	Sampled_Image_Ycbcr_Conversion_Chroma_Reconstruction_Explicit_Bit = 20,
	Sampled_Image_Ycbcr_Conversion_Chroma_Reconstruction_Explicit_Forceable_Bit = 21,
	Disjoint_Bit = 22,
	Cosited_Chroma_Samples_Bit = 23,
	Storage_Read_Without_Format_Bit = 31,
	Storage_Write_Without_Format_Bit = 32,
	Sampled_Image_Depth_Comparison_Bit = 33,
	Sampled_Image_Filter_Cubic_Bit = 13,
	Host_Image_Transfer_Bit = 46,
	Video_Decode_Output_Bit = 25,
	Video_Decode_Dpb_Bit = 26,
	Acceleration_Structure_Vertex_Buffer_Bit = 29,
	Fragment_Density_Map_Bit = 24,
	Fragment_Shading_Rate_Attachment_Bit = 30,
	Video_Encode_Input_Bit = 27,
	Video_Encode_Dpb_Bit = 28,
	Linear_Color_Attachment_Bit = 38,
	Weight_Image_Bit_Qcom = 34,
	Weight_Sampled_Image_Bit_Qcom = 35,
	Block_Matching_Bit_Qcom = 36,
	Box_Filter_Sampled_Bit_Qcom = 37,
	Optical_Flow_Image_Bit = 40,
	Optical_Flow_Vector_Bit = 41,
	Optical_Flow_Cost_Bit = 42,
	Video_Encode_Quantization_Delta_Map_Bit = 49,
	Video_Encode_Emphasis_Map_Bit = 50,
}

Pipeline_Create_Flags_2 :: distinct bit_set[Pipeline_Create_Flag_2; Flags_64]
Pipeline_Create_Flag_2 :: enum Flags_64 {
	Disable_Optimization_Bit = 0,
	Allow_Derivatives_Bit = 1,
	Derivative_Bit = 2,
	View_Index_From_Device_Index_Bit = 3,
	Dispatch_Base_Bit = 4,
	Fail_On_Pipeline_Compile_Required_Bit = 8,
	Early_Return_On_Failure_Bit = 9,
	No_Protected_Access_Bit = 27,
	Protected_Access_Only_Bit = 30,
	Execution_Graph_Bit_Amdx = 32,
	Enable_Legacy_Dithering_Bit = 34,
	Defer_Compile_Bit = 5,
	Capture_Statistics_Bit = 6,
	Capture_Internal_Representations_Bit = 7,
	Link_Time_Optimization_Bit = 10,
	Retain_Link_Time_Optimization_Info_Bit = 23,
	Library_Bit = 11,
	Ray_Tracing_Skip_Triangles_Bit = 12,
	Ray_Tracing_Skip_Aabbs_Bit = 13,
	Ray_Tracing_No_Null_Any_Hit_Shaders_Bit = 14,
	Ray_Tracing_No_Null_Closest_Hit_Shaders_Bit = 15,
	Ray_Tracing_No_Null_Miss_Shaders_Bit = 16,
	Ray_Tracing_No_Null_Intersection_Shaders_Bit = 17,
	Ray_Tracing_Shader_Group_Handle_Capture_Replay_Bit = 19,
	Indirect_Bindable_Bit = 18,
	Ray_Tracing_Allow_Motion_Bit = 20,
	Rendering_Fragment_Shading_Rate_Attachment_Bit = 21,
	Rendering_Fragment_Density_Map_Attachment_Bit = 22,
	Ray_Tracing_Opacity_Micromap_Bit = 24,
	Color_Attachment_Feedback_Loop_Bit = 25,
	Depth_Stencil_Attachment_Feedback_Loop_Bit = 26,
	Ray_Tracing_Displacement_Micromap_Bit = 28,
	Descriptor_Buffer_Bit = 29,
	Capture_Data_Bit = 31,
}

Buffer_Usage_Flags_2 :: distinct bit_set[Buffer_Usage_Flag_2; Flags_64]
Buffer_Usage_Flag_2 :: enum Flags_64 {
	Transfer_Src_Bit = 0,
	Transfer_Dst_Bit = 1,
	Uniform_Texel_Buffer_Bit = 2,
	Storage_Texel_Buffer_Bit = 3,
	Uniform_Buffer_Bit = 4,
	Storage_Buffer_Bit = 5,
	Index_Buffer_Bit = 6,
	Vertex_Buffer_Bit = 7,
	Indirect_Buffer_Bit = 8,
	Shader_Device_Address_Bit = 17,
	Execution_Graph_Scratch_Bit_Amdx = 25,
	Conditional_Rendering_Bit = 9,
	Shader_Binding_Table_Bit = 10,
	Ray_Tracing_Bit = 10,
	Transform_Feedback_Buffer_Bit = 11,
	Transform_Feedback_Counter_Buffer_Bit = 12,
	Video_Decode_Src_Bit = 13,
	Video_Decode_Dst_Bit = 14,
	Video_Encode_Dst_Bit = 15,
	Video_Encode_Src_Bit = 16,
	Acceleration_Structure_Build_Input_Read_Only_Bit = 19,
	Acceleration_Structure_Storage_Bit = 20,
	Sampler_Descriptor_Buffer_Bit = 21,
	Resource_Descriptor_Buffer_Bit = 22,
	Push_Descriptors_Descriptor_Buffer_Bit = 26,
	Micromap_Build_Input_Read_Only_Bit = 23,
	Micromap_Storage_Bit = 24,
	Preprocess_Buffer_Bit = 31,
}

Device_Create_Flags :: Flags
Semaphore_Create_Flags :: Flags
Query_Pool_Create_Flags :: Flags
Buffer_View_Create_Flags :: Flags
Shader_Module_Create_Flags :: Flags
Pipeline_Vertex_Input_State_Create_Flags :: Flags
Pipeline_Input_Assembly_State_Create_Flags :: Flags
Pipeline_Tessellation_State_Create_Flags :: Flags
Pipeline_Viewport_State_Create_Flags :: Flags
Pipeline_Rasterization_State_Create_Flags :: Flags
Pipeline_Multisample_State_Create_Flags :: Flags
Pipeline_Dynamic_State_Create_Flags :: Flags
Descriptor_Pool_Reset_Flags :: Flags
Command_Pool_Trim_Flags :: Flags
Descriptor_Update_Template_Create_Flags :: Flags
Private_Data_Slot_Create_Flags :: Flags
Display_Mode_Create_Flags :: Flags
Display_Surface_Create_Flags :: Flags
Video_Begin_Coding_Flags :: Flags
Video_End_Coding_Flags :: Flags
Video_Decode_Flags :: Flags
Video_Encode_Rate_Control_Flags :: Flags
Pipeline_Rasterization_State_Stream_Create_Flags :: Flags
Pipeline_Viewport_Swizzle_State_Create_Flags :: Flags
Pipeline_Discard_Rectangle_State_Create_Flags :: Flags
Pipeline_Rasterization_Conservative_State_Create_Flags :: Flags
Pipeline_Rasterization_Depth_Clip_State_Create_Flags :: Flags
Debug_Utils_Messenger_Callback_Data_Flags :: Flags
Debug_Utils_Messenger_Create_Flags :: Flags
Pipeline_Coverage_To_Color_State_Create_Flags :: Flags
Pipeline_Coverage_Modulation_State_Create_Flags :: Flags
Validation_Cache_Create_Flags :: Flags
Pipeline_Coverage_Reduction_State_Create_Flags :: Flags
Headless_Surface_Create_Flags :: Flags
Device_Memory_Report_Flags :: Flags
Acceleration_Structure_Motion_Info_Flags :: Flags
Acceleration_Structure_Motion_Instance_Flags :: Flags
Physical_Device_Scheduling_Controls_Flags_Arm :: Flags_64
Memory_Decompression_Method_Flags :: Flags_64
Direct_Driver_Loading_Flags_Lunarg :: Flags
Win32_Surface_Create_Flags :: Flags
Metal_Surface_Create_Flags :: Flags
Macos_Surface_Create_Flags_Mvk :: Flags
Ios_Surface_Create_Flags_Mvk :: Flags
Wayland_Surface_Create_Flags :: Flags


