var memory__resources_8h =
[
    [ "Halide::Runtime::Internal::MemoryProperties", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_properties.html", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_properties" ],
    [ "Halide::Runtime::Internal::MemoryBlock", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_block.html", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_block" ],
    [ "Halide::Runtime::Internal::MemoryRegion", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_region.html", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_region" ],
    [ "Halide::Runtime::Internal::MemoryRequest", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_request.html", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_request" ],
    [ "Halide::Runtime::Internal::BlockResource", "struct_halide_1_1_runtime_1_1_internal_1_1_block_resource.html", "struct_halide_1_1_runtime_1_1_internal_1_1_block_resource" ],
    [ "Halide::Runtime::Internal::BlockRegion", "struct_halide_1_1_runtime_1_1_internal_1_1_block_region.html", "struct_halide_1_1_runtime_1_1_internal_1_1_block_region" ],
    [ "Halide::Runtime::Internal::SystemMemoryAllocatorFns", "struct_halide_1_1_runtime_1_1_internal_1_1_system_memory_allocator_fns.html", "struct_halide_1_1_runtime_1_1_internal_1_1_system_memory_allocator_fns" ],
    [ "Halide::Runtime::Internal::HalideSystemAllocatorFns", "struct_halide_1_1_runtime_1_1_internal_1_1_halide_system_allocator_fns.html", "struct_halide_1_1_runtime_1_1_internal_1_1_halide_system_allocator_fns" ],
    [ "Halide::Runtime::Internal::MemoryBlockAllocatorFns", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_block_allocator_fns.html", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_block_allocator_fns" ],
    [ "Halide::Runtime::Internal::MemoryRegionAllocatorFns", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_region_allocator_fns.html", "struct_halide_1_1_runtime_1_1_internal_1_1_memory_region_allocator_fns" ],
    [ "AllocateSystemFn", "memory__resources_8h.html#a0ce213f87fd64ee3f8e4571ab28708ac", null ],
    [ "DeallocateSystemFn", "memory__resources_8h.html#a987fa33209277caa7ba6b9c43ba624a5", null ],
    [ "AllocateBlockFn", "memory__resources_8h.html#a3f2a3ee4ad19a7945f2fb50de795f2d5", null ],
    [ "DeallocateBlockFn", "memory__resources_8h.html#ac04ed0fe14617eb45a4994e2b12d39d4", null ],
    [ "AllocateRegionFn", "memory__resources_8h.html#ad339b77226ed1bfa8927fe6d4b5b7d23", null ],
    [ "DeallocateRegionFn", "memory__resources_8h.html#acf7320acffc65e47c596fc763ca4021a", null ],
    [ "AllocationStatus", "memory__resources_8h.html#a5e2cba819a244ae4e1790aa60789d595", [
      [ "InvalidStatus", "memory__resources_8h.html#a5e2cba819a244ae4e1790aa60789d595a1afaa3ef1f35311510464f49903aa6ae", null ],
      [ "InUse", "memory__resources_8h.html#a5e2cba819a244ae4e1790aa60789d595ad19e0242c51b633ff754f5b3c032f9bf", null ],
      [ "Available", "memory__resources_8h.html#a5e2cba819a244ae4e1790aa60789d595a78945de8de090e90045d299651a68a9b", null ],
      [ "Purgeable", "memory__resources_8h.html#a5e2cba819a244ae4e1790aa60789d595af35e5e5dde655fcc7ec0b3e86b832d4c", null ],
      [ "Dedicated", "memory__resources_8h.html#a5e2cba819a244ae4e1790aa60789d595abc0aa83a4bd4bfbdb427d58519b5f627", null ]
    ] ],
    [ "MemoryVisibility", "memory__resources_8h.html#aaae569f16e0ae2af89833442fde44fe2", [
      [ "InvalidVisibility", "memory__resources_8h.html#aaae569f16e0ae2af89833442fde44fe2a62a0b2713a5c4777a991527e1d28dfe1", null ],
      [ "HostOnly", "memory__resources_8h.html#aaae569f16e0ae2af89833442fde44fe2ada40424fea3128a16bfed59b56f5a980", null ],
      [ "DeviceOnly", "memory__resources_8h.html#aaae569f16e0ae2af89833442fde44fe2ae0e8c457908303e72e47e3edb31470e3", null ],
      [ "DeviceToHost", "memory__resources_8h.html#aaae569f16e0ae2af89833442fde44fe2a6170220e5a9b44706ce35a6ff1dc37fd", null ],
      [ "HostToDevice", "memory__resources_8h.html#aaae569f16e0ae2af89833442fde44fe2aa9988afceee3dbd1517b549bbe0f5e92", null ],
      [ "DefaultVisibility", "memory__resources_8h.html#aaae569f16e0ae2af89833442fde44fe2a4fde9e8374b5f82784600dc4a75a78d5", null ]
    ] ],
    [ "MemoryUsage", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928", [
      [ "InvalidUsage", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928aa524b35e5f186bcacbedd2b6661224aa", null ],
      [ "StaticStorage", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928aa589254e0e9814cbbbea0c3dd0e1aec9", null ],
      [ "DynamicStorage", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928a4a7fd22ec9dd772a4a534f5259e133f2", null ],
      [ "UniformStorage", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928a5a52672cf71da0d81c32adc42b8f014c", null ],
      [ "TransferSrc", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928ac1b703f2c13fac2fff3e72d3e307d4c0", null ],
      [ "TransferDst", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928afc2b74588602de2090079ac53957dfdd", null ],
      [ "TransferSrcDst", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928a3f46d5f8c9d239c54c7ffca5df2a94b4", null ],
      [ "DefaultUsage", "memory__resources_8h.html#a4ae5ddcedebd9a0a3018451feec01928a4640a118f9b71596ca649836208dfef1", null ]
    ] ],
    [ "MemoryCaching", "memory__resources_8h.html#ab62b3d4b16886fa6efd2d61d64c4c66c", [
      [ "InvalidCaching", "memory__resources_8h.html#ab62b3d4b16886fa6efd2d61d64c4c66ca3355f9a3f150e726c37f48d61b61b528", null ],
      [ "Cached", "memory__resources_8h.html#ab62b3d4b16886fa6efd2d61d64c4c66ca064bede9a565190bdde35f978e1b7193", null ],
      [ "Uncached", "memory__resources_8h.html#ab62b3d4b16886fa6efd2d61d64c4c66caab47215a1173a0ee7b4740f249a7ca2c", null ],
      [ "CachedCoherent", "memory__resources_8h.html#ab62b3d4b16886fa6efd2d61d64c4c66caac699d07e9c66767d910f610799fa816", null ],
      [ "UncachedCoherent", "memory__resources_8h.html#ab62b3d4b16886fa6efd2d61d64c4c66ca74577631805720f0d0af3bc39b9ceea0", null ],
      [ "DefaultCaching", "memory__resources_8h.html#ab62b3d4b16886fa6efd2d61d64c4c66ca7b96e60f4373c7d41b65df0705d606f9", null ]
    ] ],
    [ "aligned_offset", "memory__resources_8h.html#afd2c21329a7cc51d6dbd1879b248a9d4", null ],
    [ "aligned_size", "memory__resources_8h.html#a8be12e8da56330ce7174bec581959b30", null ],
    [ "clamped_size", "memory__resources_8h.html#a89cd677b312e5cda7d8855fb605e2f33", null ],
    [ "offset_address", "memory__resources_8h.html#acc33d877ee0a5ad9766483e0e97e267a", null ],
    [ "offset_address", "memory__resources_8h.html#a0fa6b99a4ffbf7db3b3e8516caa63692", null ],
    [ "native_system_malloc", "memory__resources_8h.html#a19405925f6b55b6b7ec78089420a73c2", null ],
    [ "native_system_free", "memory__resources_8h.html#a703c16dbbbb355cba8cc3c94f4f11c7d", null ],
    [ "halide_memory_visibility_name", "memory__resources_8h.html#a80fa1f0a614980aa57cf090a33eb810f", null ],
    [ "halide_memory_usage_name", "memory__resources_8h.html#a27b9ddd4bcd8b3868b62adb085c76804", null ],
    [ "halide_memory_caching_name", "memory__resources_8h.html#a16986dce259899d3f1b0eab2994590c3", null ]
];