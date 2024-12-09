import re
import urllib.request as req
from tokenize import tokenize
from io import BytesIO
import string
import os.path
import math

file_and_urls = [
    ("vk_platform.h",    'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vk_platform.h',    True),
    ("vulkan_core.h",    'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vulkan_core.h',    False),
    ("vk_layer.h",       'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vk_layer.h',       True),
    ("vk_icd.h",         'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vk_icd.h',         True),
    ("vulkan_win32.h",   'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vulkan_win32.h',   False),
    ("vulkan_metal.h",   'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vulkan_metal.h',   False),
    ("vulkan_macos.h",   'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vulkan_macos.h',   False),
    ("vulkan_ios.h",     'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vulkan_ios.h',     False),
    ("vulkan_wayland.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vulkan/vulkan_wayland.h', False),
    # Vulkan Video
    ("vulkan_video_codec_av1std.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_av1std.h', False),
    ("vulkan_video_codec_h264std.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_h264std.h', False),
    ("vulkan_video_codec_h265std.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_h265std.h', False),
    ("vulkan_video_codec_av1std_decode.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_av1std_decode.h', False),
    ("vulkan_video_codec_h264std_decode.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_h264std_decode.h', False),
    ("vulkan_video_codec_h265std_decode.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_h265std_decode.h', False),
    ("vulkan_video_codec_av1std_encode.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_av1std_encode.h', False),
    ("vulkan_video_codec_h264std_encode.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_h264std_encode.h', False),
    ("vulkan_video_codec_h265std_encode.h", 'https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/main/include/vk_video/vulkan_video_codec_h265std_encode.h', False),
]

for file, url, _ in file_and_urls:
    if not os.path.isfile(file):
        print("getting file from internet:", file)
        with open(file, 'w', encoding='utf-8') as f:
            f.write(req.urlopen(url).read().decode('utf-8'))

# --- UTILITY FUNCTIONS ---

src = ""
for file, _, skip in file_and_urls:
    if skip: continue
    with open(file, 'r', encoding='utf-8') as f:
        src += f.read()

# remove "vk_" prefixes from an identifier
def no_vk(t):
    t = t.replace('PFN_vk_icd', 'Procicd')
    t = t.replace('PFN_vk', 'Proc')
    t = t.replace('PFN_', 'Proc')
    t = t.replace('PFN_', 'Proc')

    t = re.sub(r"^(Vk|VK|vk)_?", '', t)
    # Vulkan Video

    t = re.sub(r"^(Std|STD)_?", '', t)
    return t

defined = set()
def new_definition(name):
    if name in defined:
        return False
    else:
        defined.add(name)
        return True

# takes a type and an array suffix (like "[43] or [VK_CONSTANT_NAME]")
# and prepends it to the type. (like "[43]t" or "[CONSTANT_NAME]t")
def prepend_array_if_nescessary(t, type_array_suffix):
    if not type_array_suffix:
        return t

    type_array_suffix = type_array_suffix[1:-1]
    type_array_suffix = no_vk(type_array_suffix)
    return "[{}]{}".format(type_array_suffix, t)


def convert_type(t, prev_name="", curr_name=""):
    special_cases = {
        "VkBool32":    'b32',
        "float":       'f32',
        "double":      'f64',
        "uint32_t":    'u32',
        "uint64_t":    'u64',
        "size_t":      'int',
        'int16_t':     'i16',
        'int32_t':     'i32',
        'int64_t':     'i64',
        'int':         'c.int',
        'uint8_t':     'u8',
        'int8_t':      'i8',
        "uint16_t":    'u16',
        "char":        "byte",
        "void":        "void",
        "void*":       "[^]u8",
        "void*":      "[^]u8",
        "char*":       'cstring',
        "const uint32_t* const*": "^[^]u32",
        "const void*": 'rawptr',
        "const char*": 'cstring',
        "const char* const*": '[^]cstring',
        "const ObjectTableEntryNVX* const*": "^^Object_Table_Entry",
        "const void* const *": "[^]rawptr",
        "const VkAccelerationStructureGeometryKHR* const*": 
            "^[^]Acceleration_Structure_Geometry",
        "const VkAccelerationStructureBuildRangeInfoKHR* const*": 
            "^[^]Acceleration_Structure_Build_Range_Info",
        "const VkMicromapUsageEXT* const*": "^[^]Micromap_Usage",
        "struct VkBaseOutStructure": "Base_Out_Structure",
        "struct VkBaseInStructure":  "Base_In_Structure",
        "wl_display": "wl_display",
        "wl_surface": "wl_surface",
        "HINSTANCE": "HINSTANCE",
        "HWND": "HWND",
        "HMONITOR": "HMONITOR",
        "HANDLE": "HANDLE",
        "LPCWSTR": "LPCWSTR",
        "SECURITY_ATTRIBUTES": "SECURITY_ATTRIBUTES",
        "DWORD": "DWORD",
        "LONG": "LONG",
        "LUID": "LUID",
        'v': '',
    }

    if t in special_cases.keys():
        return special_cases[t]

    elif "<" in t or ">" in t:
        # generics... only used in the metal API, for id types (id<N>). these
        # are always void pointers.
        return "rawptr"

    elif t.startswith("const"):
        return convert_type(t[6:], prev_name, curr_name)

    elif t.startswith("struct"):
        return convert_type(t[7:], prev_name, curr_name)

    elif t == "":
        return t

    elif t.endswith("*"):
        pointer = "^"

        elem = convert_type(t[:-1], prev_name, curr_name)    

        if curr_name.endswith("s") or curr_name.endswith("table"):
            if prev_name.endswith("count") or prev_name.endswith("counts"):
                pointer = "[^]"
            elif curr_name.startswith("pp"):
                if elem.startswith("[^]"):
                    pass
                else:
                    pointer = "[^]"

        if curr_name and elem.endswith("Flags"):
            pointer = "[^]"

        return pointer + elem

    return clean_type_name(t)

def remove_prefix(text, prefix):
    if text.startswith(prefix):
        return text[len(prefix):]
    return text
def remove_suffix(text, suffix):
    if text.endswith(suffix):
        return text[:-len(suffix)]
    return text
def remove_prefix_and_suffix(text, prefix, suffix):
    text = remove_prefix(text, prefix)
    text = remove_suffix(text, prefix)
    return text


def to_upper_snake_case(name):
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
    return re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).upper()

def to_ada_case(name): # Ada_Case
    # special replacements for odd names
    if "_" not in name:
        name = re.sub('([a-z])([0-9A-Z])', r'\1_\2', name)
        name = name.replace("Win_32", "Win32_")
        name = name.replace("Win_32", "Win32_")
        name = name.replace("Mac_OS", "Macos_")
        name = name.replace("IOSS", "Ios_S")
        name = name.replace("AV1", "AV1_")

    return name.title()

ext_suffixes = ["KHR", "EXT", "AMD", "NV", "NVX", "GOOGLE", "KHX"]
ext_suffixes_title = [ext.title() for ext in ext_suffixes]
def remove_suffixes(name):
    for ext in ext_suffixes:
        if name.endswith(ext):
            name = name.replace("_"+ext, "")
            return name.replace(ext, "")

    return name

# used generally for names_like_this
def clean_var_name(name):
    name = no_vk(name)

    name = re.sub(r"([0-9])D$", r"_\1d", name)

    if re.search(r'[A-Z]', name):
        name = re.sub('([a-z0-9])([A-Z])', r'\1_\2', name)
        name = name.lower()

    # Remove useless pointer identifier in field name
    for p in ('pp_', 'p_', 'pfn_'):
        if name.lower().startswith(p):
            name = name[len(p)::]

    name = name.replace("__", "_")
    name = name.replace("matrix", "mat")

    return name

# used generally for NamesLikeThis, but specifically for enums, where prefixes
# and suffixes have to be removed.
def clean_enum_field_name(name, prefix, suffix):
    name = remove_prefix_and_suffix(name, prefix, suffix)

    if re.match("^[0-9]D", name):
        name = "D" + name[0]
    elif re.match("^[0-9]+", name):
        name = "_" + name

    name = clean_type_name(name)

    name = re.sub(r"_Bit$", "", name)

    return name

def clean_var_name_no_suffix(name):
    name = remove_suffixes(name)
    name = clean_var_name(name)
    return name

# used generally for NamesLikeThis
def clean_type_name(name):
    name = no_vk(name)
    name = remove_suffixes(name)

    name = name.replace("FlagBits", "Flags")
    name = to_ada_case(name)

    return name

# used generally for NAMES_LIIE_THIS
def clean_constant_name(name):
    name = no_vk(name)
    name = remove_suffixes(name)
    return name

def is_int(x):
    try:
        int(x)
        return True
    except ValueError:
        return False

def is_power_of_two(n):
    return (n & (n - 1)) == 0

def is_word_plural(word):
    return word.endswith("s") and \
            word not in ("pass", "requirements", "properties", "features", "capabilities")

# --- PARSERS (things that actually do the work) ---

def parse_handles_def(f):
    f.write("// Handles types\n")
    handles = re.findall(r"VK_DEFINE(_NON_DISPATCHABLE)?_HANDLE\((\w+)\)", src, re.S)

    for nondisp, h in handles:
        h = clean_type_name(h)

        if not new_definition(h):
            continue

        handle_type = "Non_Dispatchable_Handle" if nondisp else "Handle"
        f.write(f"{h} :: distinct {handle_type}\n")

flags_defs = set()

def parse_flags_typedefs(f):
    names = [n for n in re.findall(r"typedef VkFlags Vk(\w+?);", src)]
    flags_defs = set(names)

def parse_constants(f):
    f.write("// General Constants\n")

    all_data = re.findall(r"#define VK_(\w+)\s*(.*?)U?\n", src, re.S)
    allowed_names = (
        "HEADER_VERSION",
        "MAX_DRIVER_NAME_SIZE",
        "MAX_DRIVER_INFO_SIZE",
    )
    allowed_data = [nv for nv in all_data if nv[0] in allowed_names]
    for name, value in allowed_data:
        f.write("{} :: {}\n".format(name, value))

    f.write("\n// Vulkan Video Constants\n")
    vulkan_video_data = re.findall(r"#define STD_(\w+)\s*(.*?)U?\n", src, re.S)
    for name, value in vulkan_video_data:
        f.write("{} :: {}\n".format(name, value))

    f.write("\n// Vendor Constants\n")
    fixes = '|'.join(ext_suffixes)
    inner = r"((?:(?:" + fixes + r")\w+)|(?:\w+" + fixes + r"))"
    pattern = r"#define\s+VK_" + inner + r"\s*(.*?)\n"
    data = re.findall(pattern, src, re.S)

    number_suffix_re = re.compile(r"(\d+)[UuLlFf]")

    max_len = max(len(name) for name, value in data)
    for name, value in data:
        value = remove_prefix(value, 'VK_')
        v = number_suffix_re.findall(value)
        if v:
            value = v[0]
        f.write("{}{} :: {}\n".format(name, "".rjust(max_len-len(name)), value))
    f.write("\n")

# convert an enum like "VkEnumNameKHR" to ("VK_ENUM_NAME_", "_KHR")
# or an enum name like "VkEnumName" to ("VK_ENUM_NAME_", None)
# these are the prefixes & suffixes used for variants, for instance:
#
# VK_ENUM_NAME_VARIANT_ONE_KHR
# *************           ****
def separate_enum_prefix_suffix(name):
    upper_name = to_upper_snake_case(name)
    for ext in ext_suffixes:
        upper_name_no_ext = remove_suffix(upper_name, "_"+ext)
        if upper_name_no_ext != upper_name:
            return (upper_name_no_ext + "_", "_" + ext)

    return (upper_name + "_", None)


# take all of the enums, structured like this:
# typedef enum VkEnumNameKHR {
#     VK_ENUM_NAME_VARIANT_ONE_KHR = 0,
#     VK_ENUM_NAME_VARIANT_TWO_KHR = 1,
#     VK_ENUM_NAME_VARIANT_THREE_KHR = 0xAAA,
# }
#
# and convert them to:
# Enum_Name :: enum {
#     One = 0,
#     Two = 0,
#     Three = 0xAAA,
# }
def parse_enums(f):
    f.write("import \"core:c\"\n\n")
    f.write("// Enums\n")

    data = re.findall(r"typedef enum (\w+) {(.+?)} \w+;", src, re.S)
    data = [(n, f) for n, f in data if "FlagBits" not in n]
    data.sort(key=lambda x: x[0])

    for enum_name, fields in data:
        odin_name = clean_type_name(enum_name)

        if not new_definition(odin_name):
            continue

        f.write(f"{odin_name} :: enum c.int {{\n")

        prefix, suffix = separate_enum_prefix_suffix(enum_name)

        field_names_and_values = re.findall(r"(\w+?) = (.*?),", fields, re.S)

        formatted_fields = []
        used_variant_names = set()
        for field_name, field_value in field_names_and_values:
            field_name = clean_enum_field_name(field_name, prefix, suffix)

            if not is_int(field_value):
                # if a field value isn't an integer, it is defined in terms of
                # the value of another field, and we should format it as such.
                field_value = field_name
            
            if field_name == field_value:
                # the listed value sometimes has the same name as the field.
                # this is done when a field is deprecated.
                # we can skip these.
                continue

            while field_name in used_variant_names:
                # sometimes there are duplicates of the same variant name, with
                # different values. not sure why this is...
                field_name += "_" 

            used_variant_names.add(field_name)
            
            formatted_fields.append((field_name, field_value))

        for n, v in formatted_fields:
            f.write(f"\t{n} = {v},\n")

        f.write("}\n\n")

# same as above, but *specifically* for flags.
def parse_flags(f):
    data = re.findall(r"typedef enum (\w+) {(.+?)} \w+;", src, re.S)
    data = [(n, f) for n, f in data if "FlagBits" in n]

    for type_name, fields in data:
        flags_name = clean_type_name(type_name.replace("FlagBits", "Flags"))
        enum_name = clean_type_name(type_name.replace("FlagBits", "Flag"))

        if not new_definition(flags_name) or not new_definition(enum_name):
            continue

        f.write(f"{flags_name} :: distinct bit_set[{enum_name}; Flags]\n")
        f.write(f"{enum_name} :: enum Flags {{\n")

        prefix, suffix = separate_enum_prefix_suffix(to_upper_snake_case(type_name))
        prefix = prefix.replace("_FLAG_BITS", "")

        formatted_fields = []
        defined_fields = set()

        fields = re.findall(r"(\w+?) = (.*?),", fields, re.S)

        for field_name, field_value in fields:
            field_name = clean_enum_field_name(field_name, prefix, suffix)

            if field_name in defined_fields:
                continue
            defined_fields.add(field_name)

            field_value = field_value.replace("ULL", "")

            if field_value.startswith("0x"):
                i = int(field_value, 16)

                if not is_power_of_two(i):
                    # this is a group, like FRONT_AND_BACK. these are easily
                    # used without constants in odin, (e.g. {.Front, .Back}),
                    # so we don't need them.
                    continue
                elif i == 0:
                    print(field_value)
                    continue

                log = int(math.log2(i))
                field_value = str(log)
            elif not is_int(field_value):
                field_value = clean_enum_field_name(field_value, prefix, suffix)

            formatted_fields.append((field_name, field_value))
        
        flag_names = set([n for n, v in formatted_fields])

        for n, v in formatted_fields:
            if not is_int(v) and v not in flag_names:
                # skipped for one of the reasons above
                continue
            f.write(f"\t{n} = {v},")
            f.write("\n")

        f.write("}\n\n")

def parse_flag_bits2(f):
    data = re.findall(r"static const (\w+FlagBits2) (\w+?) = (\w+);", src, re.S)

    fake_enums = {}

    for type_name, name, value in data:
        if type_name in fake_enums:
            fake_enums[type_name].append((name,value))
        else:
            fake_enums[type_name] = [(name, value)]

    for type_name, fields in fake_enums.items():
        flags_name = clean_type_name(type_name.replace("FlagBits", "Flags"))
        enum_name = clean_type_name(type_name.replace("FlagBits", "Flag"))

        if not new_definition(flags_name) or not new_definition(enum_name):
            continue

        f.write("{} :: distinct bit_set[{}; Flags_64]\n".format(flags_name, enum_name))
        f.write("{} :: enum Flags_64 {{\n".format(enum_name))

        prefix, suffix = separate_enum_prefix_suffix(to_upper_snake_case(type_name))
        prefix = prefix.replace("_FLAG_BITS2", "_2")

        formatted_fields = []
        defined_fields = set()

        for field_name, field_value in fields:
            field_name = remove_prefix_and_suffix(field_name, prefix, suffix)
            field_name = clean_type_name(field_name)

            if field_name in defined_fields:
                continue
            defined_fields.add(field_name)

            field_value = field_value.replace("ULL", "")

            if field_value.startswith("0x"):
                i = int(field_value, 16)

                log = int(math.log2(i))
                field_value = str(log)
            elif not is_int(field_value):
                field_value = clean_type_name(field_value)

            formatted_fields.append((field_name, field_value))
        
        flag_names = set([n for n, v in formatted_fields])

        for n, v in formatted_fields:
            if not is_int(v) and v not in flag_names:
                # skipped for one of the reasons listed above 
                continue
            f.write(f"\t{n} = {v},\n")

        f.write("}\n\n")

def parse_empty_flags(f):
    flags_without_enums = re.findall(r"typedef VkFlags(64)? (\w+);", src, re.S)

    for is_64, name in flags_without_enums:
        name = clean_type_name(name.replace("FlagBits", "Flags"))
        if new_definition(name):
            f.write("{} :: {}\n".format(name, "Flags_64" if is_64 else "Flags"))

# used for idiomatic procedure expansion later on
structs_with_fields = {}

def parse_structs(f):
    data = re.findall(r"typedef (struct|union) (\w+?) {(.+?)} \w+?;", src, re.S)

    for kind, name, fields in data:
        name = clean_type_name(name)

        if not new_definition(name):
            continue

        fields = re.findall(r"\s+(.+?)\s+(\w+)(\[\w+\])?(\s*:\s*\w+)?;", fields)

        is_bitfield = any([width for _,_,_,width in fields])

        if is_bitfield:
            # TODO: the code is here to support bitfields, but i'm not sure if
            # odin's bitfield layout is compatibable with C's, or what to do
            # if it isn't.
            f.write("{} :: u64\n".format(name))
            continue

        f.write("{} :: {} {} {{\n".format(
            name, 
            "bit_field" if is_bitfield else "struct",
            "#raw_union" if kind == "union" else "",
        ))

        prev_name = ""
        field_names = set()
        cleaned_fields = []
        for type_, fname, type_array_suffix, bit_width_suffix in fields:
            cleaned_name = clean_var_name(fname)
            cleaned_type = convert_type(type_, prev_name, fname)
            cleaned_type = prepend_array_if_nescessary(cleaned_type, type_array_suffix)

            if bit_width_suffix:
                bit_width_suffix = bit_width_suffix.replace(":", "|")
                cleaned_type = cleaned_type + bit_width_suffix

            prev_name = cleaned_name

            if cleaned_name in field_names:
                if "^" in cleaned_type:
                    cleaned_name = "p_" + cleaned_name
                else:
                    cleaned_name = "_" + cleaned_name
            else:
                field_names.add(cleaned_name)

            cleaned_fields.append((cleaned_name, cleaned_type))
            f.write("\t{}: {},\n".format(cleaned_name, cleaned_type))

        f.write("}\n\n")

        structs_with_fields[name] = cleaned_fields

def parse_aliases(f):
    f.write("// Aliases\n")
    data = re.findall(r"^typedef ([^\n]+) (\w+);$", src, re.MULTILINE)
    aliases = []
    for type_, name in data:
        name = clean_type_name(name)

        if name.endswith("Flag2") or name.endswith("Flags2") or name == "Flags":
            # TODO: why are we ignoring this?
            continue

        if not new_definition(name):
            continue

        type_ = convert_type(type_)

        f.write("{} :: {}\n".format(name, type_))

# grouped_functions uses a tuple format of 
# ("name_in_variable_format", "Name_In_Type_Format", "PFN_vkOriginalName", type signature)

def parse_procedures(f):
    data = re.findall(r"typedef (\w+\*?) \(\w+ \*(\w+)\)\((.+?)\);", src, re.S)

    grouped_functions = {"Loader":[], "Misc":[], "Instance":[], "Device":[]}

    for return_type, original_name, fields in data:
        formatted_parameters = []
        prev_name = ""

        function_sig = "proc \"system\" ("

        parameters = re.findall(r"\s*(.+?)\s+(\w+)(\[\d+\])?(?:,|$)", fields)
        for type_, parameter_name, type_array_suffix in parameters:
            parameter_name = clean_var_name_no_suffix(parameter_name)
            type_ = convert_type(type_, prev_name, parameter_name)
            if type_array_suffix != "":
                type_ = "^" + type_array_suffix + type_
            formatted_parameters.append((type_, parameter_name))
            prev_name = parameter_name

            function_sig += parameter_name + ": " + type_ + ", "

        function_sig += ")"
        return_type = convert_type(return_type)
        if return_type != "void":
            function_sig += " -> " + return_type

        first_type_name = no_vk(parameters[0][0]) if parameters else ""

        type_name = clean_type_name(original_name)

        original_name = remove_prefix(original_name, "PFN_")

        var_name = clean_var_name_no_suffix(original_name)

        items = (var_name, type_name, original_name, function_sig)
        function_category = ""
        if original_name == "vkGetDeviceProcAddr":
            function_category = "Instance"
        elif original_name == "vkGetInstanceProcAddr":
            function_category = "Misc"
        elif first_type_name in ("Instance", "PhysicalDevice"):
            function_category = "Instance"
        elif first_type_name in ("Device", "Queue", "CommandBuffer"):
            function_category = "Device"
        elif first_type_name in ("void*", "", "DebugReportFlagsEXT"):
            function_category = "Misc"
        else:
            function_category = "Loader"

        already_found = False
        for other_var_name, _, _, _ in grouped_functions[function_category]:
            if other_var_name == var_name:
                already_found = True
                break

        if not already_found:
            grouped_functions[function_category].append(items)


    f.write("import \"core:c\"\n\n")
    for group_name, functions in grouped_functions.items():
        functions.sort()
        f.write("// {} Procedure Types\n".format(group_name))
        for _, type_name, _, sig in functions:
            f.write("{} :: #type {}\n".format(type_name, sig))
        f.write("\n")

    return grouped_functions

def write_loaders(f, grouped_functions):
    for group_name, functions in grouped_functions.items():
        f.write("// {} Procedures\n".format(group_name))
        max_len = max(len(n) for n, _, _, _ in functions)
        for var_name, type_name, _, _ in functions:
            f.write('{}: {}\n'.format(var_name.ljust(max_len), type_name))
        f.write("\n")

    f.write("load_proc_addresses_custom :: proc(set_proc_address: Set_Proc_Address_Type) {\n")
    for group_name, functions in grouped_functions.items():
        f.write("\t// {} Procedures\n".format(group_name))
        for var_name, _, original_name, _ in functions:
            f.write('\tset_proc_address(&{}, "{}")\n'.format(var_name, original_name))
        f.write("\n")
    f.write("}\n\n")

    f.write("load_proc_addresses_device :: proc(device: Device) {\n")
    for var_name, _, original_name, _ in grouped_functions["Device"]:
        f.write('\t{} = auto_cast get_device_proc_addr(device, "{}")\n'.format(
            var_name, original_name,
        ))
    f.write("}\n\n")

    f.write("load_proc_addresses_instance :: proc(instance: Instance) {\n")
    for var_name, _, original_name, _ in grouped_functions["Instance"]:
        f.write('\t{} = auto_cast get_instance_proc_addr(instance, "{}")\n'.format(
            var_name, original_name,
        ))
    f.write("\n\t// Device Procedures (may call into dispatch)\n")
    for var_name, _, original_name, _ in grouped_functions["Device"]:
        f.write('\t{} = auto_cast get_instance_proc_addr(instance, "{}")\n'.format(
            var_name, original_name,
        ))
    f.write("}\n\n")


    f.write("load_proc_addresses_global :: proc(vk_get_instance_proc_addr: rawptr) {\n")
    f.write("\tget_instance_proc_addr = auto_cast vk_get_instance_proc_addr\n\n")
    for var_name, _, original_name, _ in grouped_functions["Loader"]:
        f.write('\t{} = auto_cast get_instance_proc_addr(nil, "{}")\n'.format(
            var_name, original_name,
        ))
    f.write("}\n\n")

    f.write("""
load_proc_addresses :: proc {
\tload_proc_addresses_global,
\tload_proc_addresses_instance,
\tload_proc_addresses_device,
\tload_proc_addresses_custom,
}\n
"""[1::])

def add_return_type_to_sig(sig, new_ret_name, new_ret_type):
    if "->" in sig:
        return_type = re.search(r'\) -> (\w+)', sig).groups()[0]

        new_return_sig = "-> ({}: {}, {}: {})".format(
            new_ret_name, new_ret_type,
            clean_var_name_no_suffix(return_type),
            return_type,
        )

        sig = re.sub(r'-> (\w+)', new_return_sig, sig)
    else:
        sig = sig.replace(")", ") -> ({}: {})".format(
            new_ret_name, new_ret_type,
        ))

    return sig

def pop_last_argument_from_sig(sig):
    return re.sub(r"(\w+: [^,]+?, )\) ->", ") ->", sig)

def add_argument_to_sig(sig, new_arg):
    return sig.replace(") ->", new_arg + ", ) ->")

def write_idiomatic_procedures(f, grouped_functions):
    f.write("import \"core:c\"\n\n")

    special_cases = [
        "get_device_proc_addr",
        "get_instance_proc_addr",
    ]

    for group_name, functions in grouped_functions.items():
        new_function_list = []
        f.write("// {} Procedure Helpers\n".format(group_name))
        for var_name, type_name, original_name, sig in functions:
            args = re.findall(r"(\w+): (.+?),", sig)

            # checking if any changes have to be made
            add_global_device = re.search(r"(\(| )device: Device", sig) and \
                var_name != "destroy_device"
            default_flags = re.search(r"flags: \w+Flags", sig)
            default_layers = "layers: u32" in sig
            add_default_layer_name = "layer_name: cstring" in sig
            add_allocator = "allocator: ^Allocation_Callbacks" in sig
            default_offset = "_offset: Device_Size" in sig

            last_arg_plural = args and is_word_plural(args[-1][0].split("_")[-1])
            return_without_ptr = var_name.startswith("create") and not last_arg_plural

            returns_slice = False

            if len(args) >= 2:
                last_arg1, last_arg1_type = args[-2]
                last_arg2, _ = args[-1]

                returns_slice = \
                    (last_arg1.endswith("_count") or last_arg1.endswith("_size")) and \
                    (last_arg2.endswith("s") or last_arg2 == "data") and \
                    (last_arg1_type == "^u32" or last_arg1_type == "^int")

            if not returns_slice and \
              (var_name.startswith("get") or var_name.startswith("allocate") or var_name.startswith("acquire") or var_name.startswith("map")):
                _, last_arg1_type = args[-1]
                return_without_ptr = bool(re.match(r"\^\[?\^?\]?\w+$", last_arg1_type)) \
                    and not last_arg_plural

            assert not (returns_slice and return_without_ptr)

            structs_to_separate = set()
            for arg_name, arg_type in args:
                if return_without_ptr and arg_name == args[-1][0]:
                    continue
                if returns_slice and (arg_name == last_arg1 or arg_name == last_arg2):
                    continue

                fields = structs_with_fields.get(arg_type.replace("^", ""))

                if fields == None:
                    continue

                sig_field_count = 0

                for field_name, field_type in fields:
                    if field_name == "s_type" or field_name == "next" or \
                        field_name == "flags" or field_name == "layers" \
                        or field_name.endswith("_count"):
                        continue
                    sig_field_count += 1

                sig_threshold = 4 if arg_type.endswith("_Info") else 2

                if sig_field_count <= sig_threshold:
                    structs_to_separate.add(arg_type)

            slices_to_combine = re.search(r"(\w+?)_count: u32, \1s: \[\^\](\w+?),", sig)
    
            can_stay_the_same = not add_global_device and not add_allocator \
                and not returns_slice and not return_without_ptr \
                and not add_default_layer_name and not structs_to_separate \
                and not default_offset and not slices_to_combine \
                and not default_flags 
            if can_stay_the_same or var_name in special_cases:
                # NO CHANGES HAVE TO BE MADE.
                new_function_list.append((var_name, type_name, original_name, sig))
                continue

            # making changes!

            returns_value = "->" in sig

            argument_replacements = []

            idiosig = sig
            if add_global_device:
                idiosig = idiosig.replace("device: Device,", "")
                argument_replacements.append(("device", "global_device"))

            if add_default_layer_name:
                idiosig = idiosig.replace("cstring,", "cstring = nil,")

            if add_allocator:
                idiosig = idiosig.replace("^Allocation_Callbacks", "^Allocation_Callbacks = nil")

            if default_offset:
                idiosig = idiosig.replace("_offset: Device_Size,", "_offset: Device_Size = 0,")

            if structs_to_separate:
                for arg_name, arg_type in args:
                    if arg_type not in structs_to_separate:
                        continue
                    struct_name = arg_type.replace("^", "")
                    fields = structs_with_fields[struct_name]
                    idiofields = []
                    separated_args = ""

                    for field_name, field_type in fields:
                        if field_name in idiosig:
                            # this is a duplicate.
                            idiofields.append((field_name, "_"+field_name, field_type))
                        else:
                            idiofields.append((field_name, field_name, field_type))

                    for field_name, field_var_name, field_type in idiofields:
                        if field_name == "s_type" or field_name == "next":
                            continue
                        separated_args += "{}: {}, ".format(field_var_name, field_type)

                    args_in_sig = "{}: {}, ".format(arg_name, arg_type)
                    idiosig = idiosig.replace(args_in_sig, separated_args)

                    struct_lit = "{}{} {{ ".format("&" if "^" in arg_type else "", struct_name)

                    for field_name, field_var_name, field_type in idiofields:
                        if field_name == "s_type":
                            struct_lit += "s_type = .{}, ".format(struct_name)
                        elif field_name == "next":
                            continue
                        else:
                            struct_lit += "{} = {}, ".format(field_name, field_var_name)

                    struct_lit += "}"

                    argument_replacements.append((arg_name, struct_lit))

            slices_to_combine = re.findall(r" (((\w+?)..)_count: u32, \3(..\w+): \[\^\](\w+?),)", idiosig)
            default_slice = " = {}" if len(slices_to_combine) > 1 else ""
            for full_match, full_prefix, prefix, plural_suffix, type_ in slices_to_combine:
                idiosig = idiosig.replace(full_match, "{}{}: []{}{},".format(
                    prefix, plural_suffix, type_, default_slice
                ))

                argument_replacements.append((full_prefix+"_count", "u32(len("+prefix+plural_suffix+"))"))
                argument_replacements.append((prefix+plural_suffix, "raw_data("+prefix+plural_suffix+")"))

            if slices_to_combine:
                for arg_name, arg_type in args:
                    if arg_name not in structs_to_separate:
                        continue

            if return_without_ptr:
                last_param = re.search(r'(\w+): \^(\[?\^?\]?\w+), \)', idiosig)

                assert last_param

                last_param_name, last_param_type = last_param.groups()

                idiosig = add_return_type_to_sig(idiosig, last_param_name, last_param_type)
                idiosig = pop_last_argument_from_sig(idiosig)

                argument_replacements.append((last_param_name, "&" + last_param_name))
                

            if returns_slice:
                count_var_name, count_var_type, ptr_var_name, ptr_var_type = \
                    re.search(r'(\w+): \^(u32|int), (\w+): \[\^\](\w+), \)', idiosig).groups()

                new_slice_ret_type = "[]" + ptr_var_type

                idiosig = add_return_type_to_sig(idiosig, ptr_var_name, new_slice_ret_type)
                idiosig = pop_last_argument_from_sig(idiosig)
                idiosig = pop_last_argument_from_sig(idiosig)
                idiosig = add_argument_to_sig(idiosig, "allocator := context.allocator")
                idiosig = idiosig.replace('"system" ', "")

                argument_replacements.append((count_var_name, "&" + count_var_name))
                argument_replacements.append((ptr_var_name, "raw_data({})".format(ptr_var_name)))

            idiosig = re.sub(r"(flags: \w+Flags\w*),", r"\1 = {},", idiosig)
            idiosig = idiosig.replace("layers: u32,", "layers: u32 = 1,")

            idiosig_args = re.match(r".+?\((.+?)\)", idiosig).groups()[0]
            idiosig_args = [arg for arg in idiosig_args.split(", ") if arg != ""]
            defaulted_args = [arg for arg in idiosig_args if "=" in arg]
            non_defaulted_args = [arg for arg in idiosig_args if "=" not in arg]
            reordered_args = non_defaulted_args + defaulted_args
            idiosig = re.sub(r"(.+?)\(.+?\)(.*)", r"\1(" + ", ".join(reordered_args) + r")\2", idiosig)

            f.write("""{} :: #force_inline {} {{\n""".format(
                var_name, idiosig,
            ))

            arguments = "( " + "".join([n+", " for n, _ in args]) + ")"

            for find, replace in argument_replacements:
                arguments = arguments.replace(" "+find+", ", " "+replace+", ")

            if return_without_ptr:
                if returns_value:
                    (function_result_name,) = re.search(r"->.+?, (\w+):.+?\)", idiosig).groups()
                    f.write("\t{} = raw_{}{}\n".format(
                        function_result_name, var_name, arguments
                    ))
                else:
                    f.write("\traw_{}{}\n".format(var_name, arguments))

                f.write("\treturn\n")
            elif returns_slice:
                arguments_without_ptr = re.sub(r"raw_data\(\w+\)", "nil", arguments)

                if returns_value:
                    (function_result_name,) = re.search(r"->.+?, (\w+):.+?\)", idiosig).groups()

                    f.write("\t{}: {}\n".format(count_var_name, count_var_type))
                    f.write("\t{} = raw_{}{}\n".format(
                        function_result_name, var_name, arguments_without_ptr
                    ))
                    f.write("\tif {} {} == 0 do return\n".format(
                        "result != .Success ||" if function_result_name == "result" else "",
                        count_var_name, 
                    ))
                    f.write("\t{} = make([]{}, {}, allocator)\n".format(
                        ptr_var_name, ptr_var_type, count_var_name,
                    ))
                    f.write("\t{} = raw_{}{}\n".format(
                        function_result_name, var_name, arguments
                    ))
                else:
                    f.write("\t{}: u32\n".format(count_var_name))
                    f.write("\traw_{}{}\n".format(var_name, arguments_without_ptr))
                    f.write("\tif {} == 0 do return\n".format(count_var_name))
                    f.write("\t{} = make([]{}, {}, allocator)\n".format(
                        ptr_var_name, ptr_var_type, count_var_name,
                    ))
                    f.write("\traw_{}{}\n".format(var_name, arguments))

                f.write("\treturn\n")
            else:
                if returns_value:
                    f.write("\treturn raw_{}{}\n".format(var_name, arguments))
                else:
                    f.write("\traw_{}{}\n".format(var_name, arguments))


            f.write("}\n")
            f.write("\n")


            new_function_list.append(("raw_"+var_name, type_name, original_name, sig))
        f.write("\n")

        grouped_functions[group_name] = new_function_list

    return grouped_functions
    

# --- WRITING EVERYTHING ---

def register_definitions_from_string(contents):
    for name in re.findall(r"(\w+)\s+::", contents, re.MULTILINE):
        new_definition(name)


BASE = """
//
// Vulkan wrapper generated from "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Headers/master/include/vulkan/vulkan_core.h"
//
package idiomatic_odin_vulkan_bindings
"""[1::]


with open("../core.odin", 'w', encoding='utf-8') as f:
    f.write(BASE)
    CORE_BASE = """
API_VERSION_1_0 :: (1<<22) | (0<<12) | (0)
API_VERSION_1_1 :: (1<<22) | (1<<12) | (0)
API_VERSION_1_2 :: (1<<22) | (2<<12) | (0)
API_VERSION_1_3 :: (1<<22) | (3<<12) | (0)

MAKE_VERSION :: proc(major, minor, patch: u32) -> u32 {
\treturn (major<<22) | (minor<<12) | (patch)
}

// Base types
Flags         :: distinct u32
Flags_64       :: distinct u64
Device_Size    :: distinct u64
Device_Address :: distinct u64
Sample_Mask    :: distinct u32

Handle                :: distinct rawptr
Non_Dispatchable_Handle :: distinct u64

Set_Proc_Address_Type :: #type proc(p: rawptr, name: cstring)


Remove_Address :: distinct rawptr // Declared inline before MemoryGetRemoteAddressInfoNV

// Base constants
LOD_CLAMP_NONE                        :: 1000.0
REMAINING_MIP_LEVELS                  :: ~u32(0)
REMAINING_ARRAY_LAYERS                :: ~u32(0)
WHOLE_SIZE                            :: ~u64(0)
ATTACHMENT_UNUSED                     :: ~u32(0)
TRUE                                  :: 1
FALSE                                 :: 0
QUEUE_FAMILY_IGNORED                  :: ~u32(0)
SUBPASS_EXTERNAL                      :: ~u32(0)
MAX_PHYSICAL_DEVICE_NAME_SIZE         :: 256
MAX_SHADER_MODULE_IDENTIFIER_SIZE_EXT :: 32
UUID_SIZE                             :: 16
MAX_MEMORY_TYPES                      :: 32
MAX_MEMORY_HEAPS                      :: 16
MAX_EXTENSION_NAME_SIZE               :: 256
MAX_DESCRIPTION_SIZE                  :: 256
MAX_DEVICE_GROUP_SIZE                 :: 32
LUID_SIZE_KHX                         :: 8
LUID_SIZE                             :: 8
MAX_QUEUE_FAMILY_EXTERNAL             :: ~u32(1)
MAX_GLOBAL_PRIORITY_SIZE              :: 16
QUEUE_FAMILY_EXTERNAL                 :: MAX_QUEUE_FAMILY_EXTERNAL
"""[1::]
    register_definitions_from_string(CORE_BASE)
    f.write(CORE_BASE)
    parse_constants(f)
    parse_handles_def(f)
    f.write("\n\n")
    parse_flags_typedefs(f)
with open("../enums.odin", 'w', encoding='utf-8') as f:
    f.write(BASE)
    f.write("\n")
    parse_enums(f)
    parse_flags(f)
    parse_flag_bits2(f)
    parse_empty_flags(f)
    f.write("\n\n")
with open("../structs.odin", 'w', encoding='utf-8') as f:
    f.write(BASE)
    STRUCTS_BASE = """
import "core:c"

import win32 "core:sys/windows"
_ :: win32
when ODIN_OS == .Windows {
\tHINSTANCE           :: win32.HINSTANCE
\tHWND                :: win32.HWND
\tHMONITOR            :: win32.HMONITOR
\tHANDLE              :: win32.HANDLE
\tLPCWSTR             :: win32.LPCWSTR
\tSECURITY_ATTRIBUTES :: win32.SECURITY_ATTRIBUTES
\tDWORD               :: win32.DWORD
\tLONG                :: win32.LONG
\tLUID                :: win32.LUID
} else {
\tHINSTANCE           :: distinct rawptr
\tHWND                :: distinct rawptr
\tHMONITOR            :: distinct rawptr
\tHANDLE              :: distinct rawptr
\tLPCWSTR             :: ^u16
\tSECURITY_ATTRIBUTES :: struct {}
\tDWORD               :: u32
\tLONG                :: c.long
\tLUID :: struct {
\t\tLowPart:  DWORD,
\t\tHighPart: LONG,
\t}
}

// TODO: these names are kind of messed up... improve to_ada_case converter
Cametal_Layer :: struct {}
Mtldevice_Id :: rawptr
Mtlcommandqueue_Id :: rawptr
Mtlbuffer_Id :: rawptr
Mtltexture_Id :: rawptr
Mtlsharedevent_Id :: rawptr

/********************************/
"""
    register_definitions_from_string(STRUCTS_BASE)
    f.write(STRUCTS_BASE)
    f.write("\n")
    parse_structs(f)
    OPAQUE_STRUCTS = """
wl_surface   :: struct {} // Opaque struct defined by Wayland
wl_display   :: struct {} // Opaque struct defined by Wayland
Iosurface_Ref :: struct {} // Opaque struct defined by Apple’s CoreGraphics framework
""" 
    register_definitions_from_string(OPAQUE_STRUCTS)
    f.write(OPAQUE_STRUCTS)
    parse_aliases(f)
    f.write("\n\n")
with open("../raw_procedures.odin", 'w', encoding='utf-8') as f:
    f.write(BASE)
    f.write("\n")
    grouped_functions = parse_procedures(f)
with open("../idiomatic_procedures.odin", 'w', encoding='utf-8') as f:
    f.write(BASE)
    f.write("\n")
    IDIOMATIC_PROC_BASE = """
global_device: Device
set_global_device :: proc(device: Device) {
    global_device = device
}

global_instance: Instance
set_global_instance :: proc(instance: Instance) {
    global_instance = instance
}
"""
    register_definitions_from_string(IDIOMATIC_PROC_BASE)
    f.write(IDIOMATIC_PROC_BASE)
    grouped_raw_functions = write_idiomatic_procedures(f, grouped_functions)
with open("../loaders.odin", 'w', encoding='utf-8') as f:
    f.write(BASE)
    f.write("\n")
    write_loaders(f, grouped_raw_functions)
with open("../misc.odin", "w", encoding="utf-8") as f:
    f.write(BASE)
    f.write("\n")
    f.write("""
COMPLETE_COLOR_IMAGE_RANGE :: Image_Subresource_Range { { .Color }, 0, 1, 0, 1 }
COMPLETE_DEPTH_IMAGE_RANGE :: Image_Subresource_Range { { .Depth }, 0, 1, 0, 1 }
ALL_LAYERS :: Image_Subresource_Layers { { .Color }, 0, 0, 1 }
""")
