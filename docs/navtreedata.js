/*
 @licstart  The following is the entire license notice for the JavaScript code in this file.

 The MIT License (MIT)

 Copyright (C) 1997-2020 by Dimitri van Heesch

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software
 and associated documentation files (the "Software"), to deal in the Software without restriction,
 including without limitation the rights to use, copy, modify, merge, publish, distribute,
 sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all copies or
 substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
 BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 @licend  The above is the entire license notice for the JavaScript code in this file
*/
var NAVTREE =
[
  [ "Halide", "index.html", [
    [ "Building Halide with CMake", "md_doc_2_building_halide_with_c_make.html", [
      [ "Installing CMake", "md_doc_2_building_halide_with_c_make.html#installing-cmake", [
        [ "Cross-platform", "md_doc_2_building_halide_with_c_make.html#cross-platform", null ],
        [ "Windows", "md_doc_2_building_halide_with_c_make.html#windows", null ],
        [ "macOS", "md_doc_2_building_halide_with_c_make.html#macos", null ],
        [ "Ubuntu Linux", "md_doc_2_building_halide_with_c_make.html#ubuntu-linux", null ],
        [ "Optional: Install Ninja", "md_doc_2_building_halide_with_c_make.html#optional-install-ninja", null ]
      ] ],
      [ "Dependencies", "md_doc_2_building_halide_with_c_make.html#dependencies", [
        [ "Summary", "md_doc_2_building_halide_with_c_make.html#summary", null ],
        [ "Installing dependencies", "md_doc_2_building_halide_with_c_make.html#installing-dependencies", [
          [ "vcpkg", "md_doc_2_building_halide_with_c_make.html#vcpkg", null ],
          [ "Windows", "md_doc_2_building_halide_with_c_make.html#windows-1", null ],
          [ "Homebrew", "md_doc_2_building_halide_with_c_make.html#homebrew", null ],
          [ "Ubuntu / Debian", "md_doc_2_building_halide_with_c_make.html#ubuntu--debian", null ],
          [ "Python", "md_doc_2_building_halide_with_c_make.html#python", null ]
        ] ]
      ] ],
      [ "Building Halide", "md_doc_2_building_halide_with_c_make.html#building-halide", [
        [ "Basic build", "md_doc_2_building_halide_with_c_make.html#basic-build", [
          [ "Windows", "md_doc_2_building_halide_with_c_make.html#windows-2", null ],
          [ "macOS and Linux", "md_doc_2_building_halide_with_c_make.html#macos-and-linux", null ]
        ] ],
        [ "CMake Presets", "md_doc_2_building_halide_with_c_make.html#cmake-presets", [
          [ "Common presets", "md_doc_2_building_halide_with_c_make.html#common-presets", null ],
          [ "Vcpkg presets", "md_doc_2_building_halide_with_c_make.html#vcpkg-presets", null ],
          [ "Sanitizer presets", "md_doc_2_building_halide_with_c_make.html#sanitizer-presets", null ]
        ] ],
        [ "Build options", "md_doc_2_building_halide_with_c_make.html#build-options", null ],
        [ "Installing", "md_doc_2_building_halide_with_c_make.html#installing", null ]
      ] ],
      [ "Building Halide with pip", "md_doc_2_building_halide_with_c_make.html#building-halide-with-pip", null ]
    ] ],
    [ "Contributing CMake code to Halide", "md_doc_2_code_style_c_make.html", [
      [ "General guidelines and best practices", "md_doc_2_code_style_c_make.html#general-guidelines-and-best-practices", [
        [ "Prohibited commands list", "md_doc_2_code_style_c_make.html#prohibited-commands-list", null ],
        [ "Prohibited variables list", "md_doc_2_code_style_c_make.html#prohibited-variables-list", null ]
      ] ],
      [ "Adding tests", "md_doc_2_code_style_c_make.html#adding-tests", null ],
      [ "Adding apps", "md_doc_2_code_style_c_make.html#adding-apps", null ]
    ] ],
    [ "Fuzz testing", "md_doc_2_fuzz_testing.html", [
      [ "Building fuzz tests", "md_doc_2_fuzz_testing.html#building-fuzz-tests", null ],
      [ "Using the fuzz-harnesses", "md_doc_2_fuzz_testing.html#using-the-fuzz-harnesses", null ],
      [ "Reproducing crashes", "md_doc_2_fuzz_testing.html#reproducing-crashes", null ],
      [ "Adding new fuzz tests", "md_doc_2_fuzz_testing.html#adding-new-fuzz-tests", null ],
      [ "Other useful materials", "md_doc_2_fuzz_testing.html#other-useful-materials", null ]
    ] ],
    [ "Using Halide from your CMake build", "md_doc_2_halide_c_make_package.html", [
      [ "A basic CMake project", "md_doc_2_halide_c_make_package.html#a-basic-cmake-project", [
        [ "JIT mode", "md_doc_2_halide_c_make_package.html#jit-mode", null ],
        [ "AOT mode", "md_doc_2_halide_c_make_package.html#aot-mode", [
          [ "Autoschedulers", "md_doc_2_halide_c_make_package.html#autoschedulers", null ],
          [ "RunGenMain", "md_doc_2_halide_c_make_package.html#rungenmain", null ]
        ] ]
      ] ],
      [ "Halide package documentation", "md_doc_2_halide_c_make_package.html#halide-package-documentation", [
        [ "Components", "md_doc_2_halide_c_make_package.html#components", null ],
        [ "Variables", "md_doc_2_halide_c_make_package.html#variables", null ],
        [ "Imported targets", "md_doc_2_halide_c_make_package.html#imported-targets", null ],
        [ "Functions", "md_doc_2_halide_c_make_package.html#functions", [
          [ "add_halide_generator", "md_doc_2_halide_c_make_package.html#add_halide_generator", null ],
          [ "add_halide_library", "md_doc_2_halide_c_make_package.html#add_halide_library", null ],
          [ "add_halide_python_extension_library", "md_doc_2_halide_c_make_package.html#add_halide_python_extension_library", null ],
          [ "add_halide_runtime", "md_doc_2_halide_c_make_package.html#add_halide_runtime", null ]
        ] ]
      ] ],
      [ "Cross compiling", "md_doc_2_halide_c_make_package.html#cross-compiling", [
        [ "Use add_halide_generator", "md_doc_2_halide_c_make_package.html#use-add_halide_generator", null ],
        [ "Use a super-build", "md_doc_2_halide_c_make_package.html#use-a-super-build", null ],
        [ "Use ExternalProject directly", "md_doc_2_halide_c_make_package.html#use-externalproject-directly", null ],
        [ "Use an emulator or run on device", "md_doc_2_halide_c_make_package.html#use-an-emulator-or-run-on-device", null ],
        [ "Bypass CMake", "md_doc_2_halide_c_make_package.html#bypass-cmake", null ]
      ] ]
    ] ],
    [ "Halide for Hexagon HVX", "md_doc_2_hexagon.html", [
      [ "Obtain and build trunk LLVM and Clang", "md_doc_2_hexagon.html#autotoc_md1-obtain-and-build-trunk-llvm-and-clang", null ],
      [ "Download and install the Hexagon SDK and Hexagon Tools", "md_doc_2_hexagon.html#autotoc_md2-download-and-install-the-hexagon-sdk-and-hexagon-tools", null ],
      [ "Build and run an example for Hexagon HVX", "md_doc_2_hexagon.html#autotoc_md3-build-and-run-an-example-for-hexagon-hvx", null ],
      [ "To build and run the blur example in Halide/apps/blur on Android:", "md_doc_2_hexagon.html#to-build-and-run-the-blur-example-in-halideappsblur-on-android", null ]
    ] ],
    [ "Halide Bindings for Python", "md_doc_2_python.html", [
      [ "Acquiring the Python bindings", "md_doc_2_python.html#acquiring-the-python-bindings", null ],
      [ "Building the Python bindings", "md_doc_2_python.html#building-the-python-bindings", [
        [ "Using CMake directly", "md_doc_2_python.html#using-cmake-directly", null ],
        [ "Using wheel infrastructure", "md_doc_2_python.html#using-wheel-infrastructure", null ]
      ] ],
      [ "Documentation and Examples", "md_doc_2_python.html#documentation-and-examples", null ],
      [ "Differences from C++ API", "md_doc_2_python.html#differences-from-c-api", null ],
      [ "Example of Simple Usage", "md_doc_2_python.html#example-of-simple-usage", null ],
      [ "Halide Generators In Python", "md_doc_2_python.html#halide-generators-in-python", [
        [ "Writing a Generator in Python", "md_doc_2_python.html#writing-a-generator-in-python", [
          [ "hl.generator(\"name\")", "md_doc_2_python.html#hlgeneratorname", null ],
          [ "hl.GeneratorParam", "md_doc_2_python.html#hlgeneratorparam", null ],
          [ "hl.InputBuffer, hl.InputScalar", "md_doc_2_python.html#hlinputbuffer-hlinputscalar", null ],
          [ "hl.OutputBuffer, hl.OutputScalar", "md_doc_2_python.html#hloutputbuffer-hloutputscalar", null ],
          [ "Names", "md_doc_2_python.html#names", null ],
          [ "generate() method", "md_doc_2_python.html#generate-method", null ],
          [ "Types for Inputs and Outputs", "md_doc_2_python.html#types-for-inputs-and-outputs", null ]
        ] ],
        [ "Using a Generator for JIT compilation", "md_doc_2_python.html#using-a-generator-for-jit-compilation", null ],
        [ "Using a Generator for AOT compilation", "md_doc_2_python.html#using-a-generator-for-aot-compilation", null ],
        [ "Calling Generator-Produced code from Python", "md_doc_2_python.html#calling-generator-produced-code-from-python", null ],
        [ "Advanced Generator-Related Topics", "md_doc_2_python.html#advanced-generator-related-topics", [
          [ "Generator Aliases", "md_doc_2_python.html#generator-aliases", null ],
          [ "Dynamic Inputs and Outputs", "md_doc_2_python.html#dynamic-inputs-and-outputs", null ],
          [ "Calling a Generator Directly", "md_doc_2_python.html#calling-a-generator-directly", null ],
          [ "The Lifecycle Of A Generator", "md_doc_2_python.html#the-lifecycle-of-a-generator", null ],
          [ "Notable Differences Between C++ and Python Generators", "md_doc_2_python.html#notable-differences-between-c-and-python-generators", null ]
        ] ]
      ] ],
      [ "Keeping Up To Date", "md_doc_2_python.html#keeping-up-to-date", null ],
      [ "License", "md_doc_2_python.html#license", null ]
    ] ],
    [ "Running and Benchmarking Halide Generators", "md_doc_2_run_gen.html", [
      [ "Overview", "md_doc_2_run_gen.html#overview", null ],
      [ "Benchmarking", "md_doc_2_run_gen.html#benchmarking", null ],
      [ "Measuring Memory Usage", "md_doc_2_run_gen.html#measuring-memory-usage", null ],
      [ "Using RunGen in Make", "md_doc_2_run_gen.html#using-rungen-in-make", null ],
      [ "Known Issues & Caveats", "md_doc_2_run_gen.html#known-issues--caveats", null ]
    ] ],
    [ "Vulkan Support for Halide", "md_doc_2_vulkan.html", [
      [ "Compiling Halide w/Vulkan Support", "md_doc_2_vulkan.html#compiling-halide-wvulkan-support", null ],
      [ "Vulkan Runtime Environment:", "md_doc_2_vulkan.html#vulkan-runtime-environment", [
        [ "Windows", "md_doc_2_vulkan.html#windows-3", null ],
        [ "Linux", "md_doc_2_vulkan.html#linux", null ],
        [ "Mac", "md_doc_2_vulkan.html#mac", null ]
      ] ],
      [ "Testing Your Vulkan Environment", "md_doc_2_vulkan.html#testing-your-vulkan-environment", null ],
      [ "Targetting Vulkan", "md_doc_2_vulkan.html#targetting-vulkan", null ],
      [ "Useful Runtime Environment Variables", "md_doc_2_vulkan.html#useful-runtime-environment-variables", null ],
      [ "Debug Environment Variables", "md_doc_2_vulkan.html#debug-environment-variables", null ],
      [ "Current Status", "md_doc_2_vulkan.html#current-status", null ],
      [ "Caveats:", "md_doc_2_vulkan.html#caveats", null ],
      [ "Known TODO:", "md_doc_2_vulkan.html#known-todo", null ]
    ] ],
    [ "WebAssembly Support for Halide", "md_doc_2_web_assembly.html", [
      [ "Additional Tooling Requirements:", "md_doc_2_web_assembly.html#additional-tooling-requirements", null ],
      [ "AOT Limitations", "md_doc_2_web_assembly.html#aot-limitations", null ],
      [ "JIT Limitations", "md_doc_2_web_assembly.html#jit-limitations", [
        [ "Using V8 as the interpreter", "md_doc_2_web_assembly.html#using-v8-as-the-interpreter", null ]
      ] ],
      [ "To Use Halide For WebAssembly:", "md_doc_2_web_assembly.html#to-use-halide-for-webassembly", [
        [ "Enabling wasm JIT", "md_doc_2_web_assembly.html#enabling-wasm-jit", null ],
        [ "Enabling wasm AOT", "md_doc_2_web_assembly.html#enabling-wasm-aot", null ]
      ] ],
      [ "Running benchmarks", "md_doc_2_web_assembly.html#running-benchmarks", null ],
      [ "Using Threads", "md_doc_2_web_assembly.html#using-threads", null ],
      [ "Known Limitations And Caveats", "md_doc_2_web_assembly.html#known-limitations-and-caveats", null ],
      [ "Known TODO:", "md_doc_2_web_assembly.html#known-todo-1", null ]
    ] ],
    [ "WebGPU support for Halide", "md_doc_2_web_g_p_u.html", [
      [ "Known limitations", "md_doc_2_web_g_p_u.html#known-limitations", null ],
      [ "Running with WebAssembly via Emscripten: HL_TARGET=wasm-32-wasmrt-webgpu", "md_doc_2_web_g_p_u.html#running-with-webassembly-via-emscripten-hl_targetwasm-32-wasmrt-webgpu", null ],
      [ "Running natively: HL_TARGET=host-webgpu", "md_doc_2_web_g_p_u.html#running-natively-hl_targethost-webgpu", null ],
      [ "Setting up Dawn", "md_doc_2_web_g_p_u.html#setting-up-dawn", null ],
      [ "Updating mini_webgpu.h", "md_doc_2_web_g_p_u.html#updating-mini_webgpuh", null ]
    ] ],
    [ "Topics", "topics.html", "topics" ],
    [ "Namespaces", "namespaces.html", [
      [ "Namespace List", "namespaces.html", "namespaces_dup" ],
      [ "Namespace Members", "namespacemembers.html", [
        [ "All", "namespacemembers.html", "namespacemembers_dup" ],
        [ "Functions", "namespacemembers_func.html", "namespacemembers_func" ],
        [ "Variables", "namespacemembers_vars.html", null ],
        [ "Typedefs", "namespacemembers_type.html", null ],
        [ "Enumerations", "namespacemembers_enum.html", null ],
        [ "Enumerator", "namespacemembers_eval.html", null ]
      ] ]
    ] ],
    [ "Classes", "annotated.html", [
      [ "Class List", "annotated.html", "annotated_dup" ],
      [ "Class Hierarchy", "hierarchy.html", "hierarchy" ],
      [ "Class Members", "functions.html", [
        [ "All", "functions.html", "functions_dup" ],
        [ "Functions", "functions_func.html", "functions_func" ],
        [ "Variables", "functions_vars.html", "functions_vars" ],
        [ "Typedefs", "functions_type.html", null ],
        [ "Enumerations", "functions_enum.html", null ],
        [ "Enumerator", "functions_eval.html", "functions_eval" ],
        [ "Related Symbols", "functions_rela.html", null ]
      ] ]
    ] ],
    [ "Files", "files.html", [
      [ "File List", "files.html", "files_dup" ],
      [ "File Members", "globals.html", [
        [ "All", "globals.html", "globals_dup" ],
        [ "Functions", "globals_func.html", "globals_func" ],
        [ "Variables", "globals_vars.html", null ],
        [ "Typedefs", "globals_type.html", "globals_type" ],
        [ "Enumerations", "globals_enum.html", "globals_enum" ],
        [ "Enumerator", "globals_eval.html", "globals_eval" ],
        [ "Macros", "globals_defs.html", "globals_defs" ]
      ] ]
    ] ],
    [ "Examples", "examples.html", "examples" ]
  ] ]
];

var NAVTREEINDEX =
[
"_a_s_log_8h.html",
"_concise_casts_8h.html#aa489e644d91200dac34c620f1c4a1261",
"_expr_8h.html#af28f02315017283b26196866c92d4da9a2187e1021a911b3807cc1bea2eb1a9ca",
"_halide_runtime_8h.html#a187d0100ae8d267bbcb6e840433c0f72",
"_halide_runtime_8h.html#aba16e170cc9aa30b78ff703e101a448ca180c55e696deec0e26fc4b82fadefd4c",
"_i_r_match_8h.html",
"_i_r_operator_8h.html#a203d6d8d57fa495db5d63a2824ea4dd8",
"_i_r_printer_8h.html#ac5c84fe3f99dd05b0ffa69af2f042ff5",
"_pipeline_8h_source.html",
"_unpack_buffers_8h_source.html",
"cl__functions_8h.html#a9f2ba767224a0d2cb094aa5ce5144999",
"class_halide_1_1_eviction_key.html#ad83974bd52593010ab5eec6fa010da3d",
"class_halide_1_1_func.html#ac5834ded586e70e65b93850d7cafed54",
"class_halide_1_1_generator_output.html#a3d3194701d5cd88ca6483b2758c2d7bd",
"class_halide_1_1_internal_1_1_autoscheduler_1_1_load_jacobian.html#a912c5ab21fd58378e73bdfb91115b070",
"class_halide_1_1_internal_1_1_code_gen___c.html#a09c5cc33473aecea84deb02ec30d810e",
"class_halide_1_1_internal_1_1_code_gen___g_p_u___c.html#a5fc9700d37516ecac29b4beb104de5a3",
"class_halide_1_1_internal_1_1_code_gen___l_l_v_m.html#a7b7e186e1aee1d0a313f7a7c89a58909",
"class_halide_1_1_internal_1_1_code_gen___posix.html#a59e33f468f9c83e0a845621d42489450",
"class_halide_1_1_internal_1_1_elf_1_1_object.html#a724776a3c8734308a6437ab6797addcb",
"class_halide_1_1_internal_1_1_elf_1_1_symbol.html#ab46a93b26ecbf369181520356d6b5c21a32e10dccf7938aa3a04e1f8191474013",
"class_halide_1_1_internal_1_1_function.html#ad9cb19bf847e2900fc7c6157f62933a4",
"class_halide_1_1_internal_1_1_generator_base.html#ad861b877f89b923bf599767fddd09354",
"class_halide_1_1_internal_1_1_generator_input_impl.html#a704fe855aac26e30718887de98c56852",
"class_halide_1_1_internal_1_1_generator_param___target.html#ac9b0e9d3cef9d3108035b993332e6581",
"class_halide_1_1_internal_1_1_i_r_mutator.html#a0f1f3709cce02f99cd856645254a8181",
"class_halide_1_1_internal_1_1_i_r_visitor.html#a3aa29ab9cd5d2dd7797b53e0782a4c9a",
"class_halide_1_1_internal_1_1_scope.html#aeb8d5b8da9c47a636f9255dc72aeef5d",
"class_halide_1_1_internal_1_1_stage_schedule.html#a8a8047739e46cbff633d5eb48a99e207",
"class_halide_1_1_names_interface.html#a4bdf4f285a5393a9845414f82fa5e4c3",
"class_halide_1_1_parameter.html#aff66f9385a60410e1e7f1a8c0b7a11e2",
"class_halide_1_1_runtime_1_1_buffer.html#a39ded27b11bc20297176a52832f14180",
"class_halide_1_1_runtime_1_1_internal_1_1_block_storage.html#a3e5416e04b02f6920f67950b694362e7",
"class_halide_1_1_runtime_1_1_internal_1_1_printer_base.html#a9c38e0c4e7863bc2afdd2521d2926e8f",
"class_halide_1_1_simd_op_check_test.html#a4ef1afede0e96fc7d498d59b2adf545c",
"classcmdline_1_1parser.html#afdf4cb8deaead2d735c7803ede5b6b6a",
"globals_defs_q.html",
"md_doc_2_python.html#calling-generator-produced-code-from-python",
"mini__cl_8h.html#a555cdd8caca76d4efa8de84a8b59e716",
"mini__cl_8h.html#add4bf6cc38c83c9952fdd7ea721546b9",
"mini__d3d12_8h.html#a0a9e8e2a312666310309916b14134bfb",
"mini__d3d12_8h.html#a513a291100449ffb8d68dde9c8baafaface325d7c5d454c4ca9050d62813dcf93",
"mini__d3d12_8h.html#a6db32ce9dff006a69f4e24a2ddb1949a",
"mini__d3d12_8h.html#aa734844b1a12873e554e3f946afe8424",
"mini__d3d12_8h.html#ae72956f5480f6ff0253f2bf65234419ba73279241812889645a308685204fc652",
"mini__qurt_8h.html#afe97ee1b6f259a77966c8d41c90c2e07",
"mini__vulkan_8h.html#a18f2b8de8e276d300e9f7640d2fc1722",
"mini__vulkan_8h.html#a41b1640525e44e808d126944426fa161",
"mini__vulkan_8h.html#a64615847e85afcc5e5377f2b3edce47a",
"mini__vulkan_8h.html#a8266c3bdfbd3bf1dbbdc2d4f2890d1d7a9a77dbbdc5c0441e0ae324b3093dcf13",
"mini__vulkan_8h.html#a9c70cc3a3bf67c5c54dac8fe91bde6f5",
"mini__vulkan_8h.html#abb4939c51565e9dba4cb237c36884ddaa1757d6848af4827c4f904fa06417e20a",
"mini__vulkan_8h.html#acffce36f3b174efff8c8824edb840ea0ae2276b9fffaf4e3c77cc7c6de8fd283b",
"mini__vulkan_8h.html#ad61b5b94a526d0f9ae0db97072cf6b3fafc5882804245e5b3a1f4031723d32f9a",
"mini__vulkan_8h.html#aedd73c8a5d7a0db799484e02d9d717b2",
"mini__vulkan_8h.html#aff9f2b99398eb80a2b5a146bc5534ce8aa5bf7303466a9fa86feef9cdc4a191d9",
"mini__webgpu_8h.html#a0e3a2414a79225161636aabf85871035ae639555f3e77c77d6f5659d811653eb7",
"mini__webgpu_8h.html#a4c0bd182269c9bd26b823e5f457f3103",
"mini__webgpu_8h.html#a7c5ac537e7058c87c8f572028680a2a6aea1dcef915ad35c2288319e5e5f6cec7",
"mini__webgpu_8h.html#ac80893d203a4776cdc2bd1838de255f0",
"namespace_halide.html#a172db5c21e58bfed0793b7152657623c",
"namespace_halide.html#aa26c7f430d2b1c44ba3e1d3f6df2ba6ea7982b09a852b37f2afb1227eaf552e47",
"namespace_halide_1_1_internal.html#a120045d61aae3bbe15e3da7b81bbb821",
"namespace_halide_1_1_internal.html#a82c64641e261b5596a2ab6d7da7f8ef8",
"namespace_halide_1_1_internal.html#aecd75538cec762a0ec020c81708260b6",
"namespace_halide_1_1_internal_1_1_i_r_matcher.html#a7110bb296528fe0b4cd90b8a969fbf9c",
"namespace_halide_1_1_runtime_1_1_internal_1_1_cuda.html#a2f191c22706ed27f2c64f0e1ab3d4ab9a69b8a6421d0e6dd9ca267689128820b2",
"namespacemembers_func_q.html",
"struct_d3_d12___c_o_m_m_a_n_d___q_u_e_u_e___d_e_s_c.html",
"struct_d3_d12___r_o_o_t___s_i_g_n_a_t_u_r_e___d_e_s_c1.html#a87aeef9c2d0942d1436f2c72bc0c66a7",
"struct_halide_1_1_argument.html#a473219a781a7a48455b3d2d4dcf1cc70",
"struct_halide_1_1_internal_1_1_abstract_generator_1_1_arg_info.html#ae8886015c0a3ba68413833674241371e",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_bound_contents.html#ac1bb856704cbdf7a99e38c25a6e59a6c",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_function_d_a_g_1_1_node_1_1_stage.html#acf58fc5bfd47eff879f4484bf5d9526e",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_loop_nest.html#ac14b1dcccf2d067391be02f4306b2c97",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_optional_rational.html#a0230f7968d6755797c16a3ed1e85f70b",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_state.html#a84330edcf8e22b418e8e1391c6b998e4",
"struct_halide_1_1_internal_1_1_box.html#a2d4179fbfa55a6c2e5722d54c9a72dc5",
"struct_halide_1_1_internal_1_1_call.html#a3643a3e5cf73435e07215fca17949974af579100fd330056df1b98083a317235a",
"struct_halide_1_1_internal_1_1_device_argument.html#ae922a109d18f000be9ca74e4a9f9eb01",
"struct_halide_1_1_internal_1_1_i_r_matcher_1_1_bin_op.html",
"struct_halide_1_1_internal_1_1_i_r_matcher_1_1_not_op.html#a9ad766f48215b2b9101a446a1fb94b27",
"struct_halide_1_1_internal_1_1_interval.html#a5eaddf8b2109493b95e6e05696961702",
"struct_halide_1_1_internal_1_1_modulus_remainder.html#a7d1fab01314790c22f5cd6944cedd9c3",
"struct_halide_1_1_internal_1_1_pipeline_features.html#a6148de8de76fb2db5f507e38bdb6909e",
"struct_halide_1_1_internal_1_1_region_costs.html#a571d98c41d112ce4f638f68350762827",
"struct_halide_1_1_internal_1_1_scoped_binding.html#a9b0aee6160d0ec440a02eea60e17c7d1",
"struct_halide_1_1_internal_1_1_vector_reduce.html",
"struct_halide_1_1_runtime_1_1_internal_1_1_block_allocator_1_1_config.html",
"struct_halide_1_1_runtime_1_1_internal_1_1_memory_region.html#a3adbafb46a4465bd4cc59eded66b3fa2",
"struct_halide_1_1_runtime_1_1_internal_1_1_vulkan_1_1_vulkan_shared_memory_allocation.html#aa34478d2251d3c6f32d4c64a4f72e357",
"struct_halide_1_1_target.html#a9398276edd5784185e1a08f8a4dfc43fa58d95b1dcba192fb5d4641ffff36432a",
"struct_halide_1_1_type.html#a41043f858a928335631d9b178b937625",
"struct_i_d3_d12_command_queue_vtbl.html#aae35402c3d82f873e08eb367d70466f1",
"struct_i_d3_d12_graphics_command_list_vtbl.html#a638d9eecb7a94d1c25dc789f405438b7",
"struct_i_d_x_g_i_factory1_vtbl.html#a733070f5680c4f522fbba4dd740d7d36",
"struct_vk_compute_pipeline_create_info.html#a4771703e46235156a47c1b3388b9a384",
"struct_vk_draw_indexed_indirect_command.html#a701fd8e0db993fda253c11b8bfb39dab",
"struct_vk_indirect_commands_layout_create_info_n_v_x.html#a5d9b79511cec5f7632af49acf36729d1",
"struct_vk_physical_device_i_d_properties_k_h_r.html",
"struct_vk_pipeline_depth_stencil_state_create_info.html",
"struct_vk_shader_module_validation_cache_create_info_e_x_t.html",
"struct_w_g_p_u_bind_group_layout_descriptor.html",
"struct_w_g_p_u_limits.html",
"struct_w_g_p_u_shared_texture_memory_d_x_g_i_shared_handle_descriptor.html#aab523c805c977c3acff7cdc0de8416e0",
"structhalide__filter__argument__t.html#a1ab0a970c371d6754af432a31378f46a",
"union_vk_clear_color_value.html"
];

var SYNCONMSG = 'click to disable panel synchronisation';
var SYNCOFFMSG = 'click to enable panel synchronisation';