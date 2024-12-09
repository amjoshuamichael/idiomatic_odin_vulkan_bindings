![doctors HATE this ONE WEIRD TRICK. WATCH the Lines of Code FLY OFF with Idiomatic Odin Vulkan Bindings](https://i.postimg.cc/XNCrMJh3/weirdtrick.jpg)

# Idiomatic Odin-Vulkan Bindings

## Quick Start

These can be used as a typical Odin package. `git clone` this into a folder, and be on your way. See [`worlds_best_vulkan_triangle`](https://github.com/amjoshuamichael/worlds_best_vulkan_triangle) for the classic triangle example done using this library.

## Introduction

Odin's `vendor` libraries use the same calling & naming convention as their original C/C++ codebases. So, even though it is commonplace to use `snake_case` and return-by-value in Odin libraries, the shipped SDL bindings [do not](https://pkg.odin-lang.org/vendor/sdl2/#Vulkan_GetDrawableSize). Despite the fact that this can make code a little uglier, the decision is reasonable: maintaing bespoke, opinionated bindings for each of these libraries is not worth the minor improvement in code readability. In addition, the "Odin Philosophy" is such that external libraries aren't called very often. In a large game, you might only make a dozen references to SDL, so it just isn't worth it to spend the time conforming the API.

But Vulkan is different. My personal small game project references Vulkan 458 times (`grep vk\.`), and that graphics code is constantly changing. My game interfaces directly with Vulkan, so productivity with the API is paramount to my efficiency, creativity, and flexibility when working game visuals. Originally, I wrapped all the functions myself with proper names and calling conventions, but after using that for months, I decided to do the whole thing "properly", by making my own set of bindings. 

Note that the goal of this project is *not* to create a graphics library for Odin, or to do any extra work like the Rust [vulkano](https://crates.io/crates/vulkano) crate. All helper functions are marked as `#force_inline`, and only minor changes are made (changes are listed below). I've paid very close attention to keeping voodoo down: there's no code here that you wouldn't have had to write yourself. Given compiler optimizations, the output should be exactly the same. If you're *really* doing something specific, all the original functions are available with the `raw_` prefix, so, for example, the original `create_device` is available via `raw_create_device`.

The core of this project is a cleaned-up, modified version of the [original Vulkan binding generator script from the Odin compiler](https://github.com/odin-lang/Odin/blob/master/vendor/vulkan/_gen/create_vulkan_odin_wrapper.py). This script figures out everything on its own: there are no hand-written changes to specific funcitons or types. All you really need is the script, since it downloads the header files and generates the Odin code on its own. This bash script will do the trick:

```bash
mkdir -p _gen && cd _gen
curl https://codeberg.org/aaaash/idiomatic_odin_vulkan_bindings/raw/branch/main/_gen/create_idiomatic_vulkan_odin_wrapper.py | python -
```

You can also just clone this repository.

## Changes

The script does the following:

### Name Changes
- Function names like `CreateRenderPass` become `create_render_pass`, in snake case.
- Type names like `SurfaceCapabilities` become `Surface_Capabilities`, in ada case. The same goes for enum & flag names.

### Global Device
A function called `set_global_device` sets a `global_device` static variable, which is used as the `device` parameter in all of the calls where you'd have to pass a reference to the GPU anyway.

### Default arguments
- `Allocation_Callbacks` defaults to nil.
- `*_offset` defaults to 0.
- Slices default to `{}`.
- Flags default to `{}`.
- `layer_name` defaults to nil.
- `layers` defualts to 0.

### Return by value
- Functions like `GetDeviceQueue`, with the signature: `(queue_family_index: u32, queue_index: u32, queue: ^Queue)` become `(queue_family_index: u32, queue_index: u32) -> Queue`.
- Functions like `CreateImage`, with the signature: `(pCreateInfo: ^ImageCreateInfo, pImage: ^Image) -> Result` become: `(create_info: ^Image_Create_Info) -> (image: Image, result: Result)`. This (value, err) packing is common in Odin APIs.
- Functions like `GetSwapchainImages`, with the signature `(swapchain: Swapchain, swapchain_image_count: ^u32, swapchain_images: [^]Image) -> Result` become `(swapchain: Swapchain, allocator := context.allocator) -> (swapchain_images: []Image, result: Result)`. Now, the wrapper calls the function once to get the length, allocates a slice, and then calls again to get the data. This removes the very tedious process which is usually done manually at callsites.

### Slices are combined
Passing multiple values is done with slices, so `(region_count: u32, regions: [^]Buffer_Copy)` becomes `(regions: []Buffer_Copy)`. The slice is broken into `len` and `raw_data` inside of the wrapper.

### Structs are separated
Structs like `CreateInfo`s are separated into arguments.

```odin
buffer_info := vk.BufferCreateInfo {
    sType = .BUFFER_CREATE_INFO,
    size  = size,
    usage = usage,
    sharingMode = .EXCLUSIVE,
}

buffer: vk.Buffer

vk.CreateBuffer(device, &buffer_info, nil, &buffer)
```

Becomes:

```odin
buffer := vk.create_buffer(size, usage, .Exclusive, {}))
```

This works with the all the above, so if a struct has slices, they are combined and default to {}.

### Friendly Constants
I find these constants useful, so I decided to include them with the bindings:
```
COMPLETE_COLOR_IMAGE_RANGE :: Image_Subresource_Range { { .Color }, 0, 1, 0, 1 }
COMPLETE_DEPTH_IMAGE_RANGE :: Image_Subresource_Range { { .Depth }, 0, 1, 0, 1 }
ALL_LAYERS :: Image_Subresource_Layers { { .Color }, 0, 0, 1 }
```

## Conclusion
These may seem like small changes, but when they're all put together, they can radically morph the feel of working with Vulkan. Combined with Odin's fantasic syntax and features, and the fact that structs are zeroed by default, this library has been, for me, the best way to do hobbyist, high-performance graphics programming. Again, take a look at the simplicity of the [triangle example](https://github.com/amjoshuamichael/worlds_best_vulkan_triangle). If you have any (small and simple) suggestions, please file an issue!
