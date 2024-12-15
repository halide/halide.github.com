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
    [ "Testing", "md_doc_2_testing.html", [
      [ "Organization", "md_doc_2_testing.html#organization", null ],
      [ "Debugging with LLDB", "md_doc_2_testing.html#debugging-with-lldb", null ]
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
        [ "Enumerations", "globals_enum.html", null ],
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
"_halide_runtime_8h.html#aba16e170cc9aa30b78ff703e101a448ca0fb6033e4cda78003a8e3e224fce8834",
"_i_r_equality_8h.html#ac59065f04bcf4e664007d95affa7ce3f",
"_i_r_operator_8h.html#a1958cefef9a2049dbfbd2da66d6eb392",
"_i_r_printer_8h.html#a523ae8336558d8709f4510731bd2a298",
"_partition_loops_8h.html",
"_type_8h.html#af24a2fd384c53d040a1f0f2a18067f54",
"cl__functions_8h.html#a4868c93818a26ac2c12dd60c755f3caa",
"class_halide_1_1_derivative.html#a55f139ba3fff43f5b2a5343b3675ec59",
"class_halide_1_1_func.html#aba5d2ac731fc872d129f2f301f484f56",
"class_halide_1_1_generator_input.html#aa632718c2bd0a5daed2b03ae7c902abc",
"class_halide_1_1_internal_1_1_autoscheduler_1_1_load_jacobian.html#a4c53d3e268d03c713a4ecba0189ee5cb",
"class_halide_1_1_internal_1_1_code_gen___c.html#a00541f7eab8b36568c7a6f9cb5c5f88da83ff060fbd8993a7b95ad3d01960c96d",
"class_halide_1_1_internal_1_1_code_gen___g_p_u___c.html#a53525a60843b0de22b88c83238c51bc0a04f41a104976e22d96fca55fcf2525ee",
"class_halide_1_1_internal_1_1_code_gen___l_l_v_m.html#a6f63d40641f1ec5b47e159efe8233702",
"class_halide_1_1_internal_1_1_code_gen___posix.html#a2e03d7ecc708ceb97015b15cfe526ad9",
"class_halide_1_1_internal_1_1_elf_1_1_object.html#a28c54e6889defc08f86b245c03e6a6bb",
"class_halide_1_1_internal_1_1_elf_1_1_symbol.html#a57da792ab7c8da6558afefbf1db8f012a6be6bd376bf72fe6891c984fc0a1f028",
"class_halide_1_1_internal_1_1_function.html#ac0e9947994c28f3528980cf1d082480e",
"class_halide_1_1_internal_1_1_generator_base.html#abcb86950d7adacb36e05519875b213ee",
"class_halide_1_1_internal_1_1_generator_input_base.html#ac5a195709196c29b973673b4160ff6c3",
"class_halide_1_1_internal_1_1_generator_param___synthetic.html#ac074d14723d186f33a337637ed6efb1e",
"class_halide_1_1_internal_1_1_i_r_graph_visitor.html#aec81b0fb2b2190e7352b5501a67f5ab2",
"class_halide_1_1_internal_1_1_i_r_visitor.html",
"class_halide_1_1_internal_1_1_scope.html#a85adec9dda5b48bf48b5bc5a55138f08",
"class_halide_1_1_internal_1_1_stage_schedule.html#a3be2c7d533fb2d62762bfe7989c7b4fc",
"class_halide_1_1_names_interface.html#a14f50750abe61fe59248538697e689dc",
"class_halide_1_1_parameter.html#ad4f01f5674f7eddf9f86980b334bdbc1",
"class_halide_1_1_runtime_1_1_buffer.html#a322194470b66eb517e20197d613909d2",
"class_halide_1_1_runtime_1_1_internal_1_1_block_storage.html#a1123294087d800b0984686f121248268",
"class_halide_1_1_runtime_1_1_internal_1_1_printer_base.html#a63170af2e0e2ffbe1a22b34fc0beefc0",
"class_halide_1_1_simd_op_check_test.html#a10a93e76cf84d32b7d32abfbe595a4f2",
"classcmdline_1_1parser.html#a9bcaaea243a949bf30a40d938480d303",
"globals_defs.html",
"md_doc_2_hexagon.html#to-build-and-run-the-blur-example-in-halideappsblur-on-android",
"mini__cl_8h.html#a4c788abed6ae64b37a5ab67245818d59",
"mini__cl_8h.html#ad98cdc72ca4405d5bdeedc433b3dc451",
"mini__d3d12_8h.html#a08f451882c70651bf03b22f07b1bf3bc",
"mini__d3d12_8h.html#a4f93931522bd0e58fb36c7b6b051fc6f",
"mini__d3d12_8h.html#a6b39131a2c1f6a2d37c4e993830531e4aa4085d918a98693247d99be237b231a7",
"mini__d3d12_8h.html#aa4b3819acf0cdbf7d52237cefa072248",
"mini__d3d12_8h.html#ae72956f5480f6ff0253f2bf65234419b",
"mini__qurt_8h.html#a9d18929e7ccc94a057188c26648c5872",
"mini__webgpu_8h.html#a1e5919896900a9736ad0283e915ffa5a",
"mini__webgpu_8h.html#a57a04e266142c3e6f3fd131481b2ec3fa5c9bd51dc17f0c091013ab8978ecbea9",
"mini__webgpu_8h.html#a888fd9313e875375b326e258ba920286",
"mini__webgpu_8h.html#ad80bc05c752b91d52aedd613b5eb497ba8ab4584fccb3557f2ab8150c0939e51e",
"namespace_halide.html#a3fcc2cb5052cc21ff4819dad8d62c86f",
"namespace_halide.html#ac350d72e774314bb32beeb718d53c09e",
"namespace_halide_1_1_internal.html#a328a1d6d3f0c78ffdc58ac5df812f05a",
"namespace_halide_1_1_internal.html#a984524908e4478131a952e4a9230f0cb",
"namespace_halide_1_1_internal.html#aee9e0b8e5376e2294d74ded8e7de9ef2afdb0c388de01d545017cdf9ccf00eb72",
"namespace_halide_1_1_internal_1_1_i_r_matcher.html#abee4635f15fea18f2d48ba34c09be31c",
"namespace_halide_1_1_runtime_1_1_internal_1_1_cuda.html#a8d682a57aa5dfbe436b90597c48a5a3faeff621d89b7e2f1c702515e90b8d374d",
"pages.html",
"struct_d3_d12___d_e_p_t_h___s_t_e_n_c_i_l_o_p___d_e_s_c.html#a9fa3e56566fa06c50916893e6b3424ba",
"struct_d3_d12___s_t_a_t_i_c___s_a_m_p_l_e_r___d_e_s_c.html#a8e6498b9a74f656fa76c90ea082708a1",
"struct_halide_1_1_auto_scheduler_results.html#ab306aa07036c7a8283653f70c33434a9",
"struct_halide_1_1_internal_1_1_apply_split_result.html",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_function_d_a_g.html#a58564393f76b1c2b8f61240817e514eb",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_loop_nest.html",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_loop_nest.html#ae4ae3127de5ab1b893c399ddf68ef9f7",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_scoped_timer.html",
"struct_halide_1_1_internal_1_1_autoscheduler_1_1_statistics.html#a0cae5c5079ce2fca4b6263b5349cef02",
"struct_halide_1_1_internal_1_1_buffer_contents.html#aef7d1ccd635d170f5e7e20f31c72469c",
"struct_halide_1_1_internal_1_1_closure_1_1_buffer.html#a581401bcd8968496af127355ad591924",
"struct_halide_1_1_internal_1_1_execute_generator_args.html#a44ab8ba3bd5188a527702200912c0cf4",
"struct_halide_1_1_internal_1_1_i_r_matcher_1_1_cmp_op.html#a969edd01759b76dd6ad9c2d3e9d80560",
"struct_halide_1_1_internal_1_1_i_r_matcher_1_1_rewriter.html#ab122a1772b4c8e946017d0c21e950f8b",
"struct_halide_1_1_internal_1_1_is_halide_buffer_3_01const_01halide__buffer__t_01_5_01_4.html",
"struct_halide_1_1_internal_1_1_pipeline_features.html#a24dd570f5cbc57c750aca4c0d82f418da139afe5ea0809a05b424163e0354a164",
"struct_halide_1_1_internal_1_1_pipeline_features.html#adaa87ad3f6bc6304773b00e5b5be438caf48bc18cc087ea1ceeab29e93ede07af",
"struct_halide_1_1_internal_1_1_schedule_features.html#a0ee535b03eb18ab6270d83ba5f3e5958",
"struct_halide_1_1_internal_1_1_select.html#a966ea8086aa9156c1c33824bf4256663",
"struct_halide_1_1_internal_1_1_weights.html#a84203da85dc42d641ece839f49736fdb",
"struct_halide_1_1_runtime_1_1_internal_1_1_cache_entry.html",
"struct_halide_1_1_runtime_1_1_internal_1_1_scoped_spin_lock.html#a97ab792861c5e56a6d855f78a0082703",
"struct_halide_1_1_runtime_1_1_internal_1_1work.html#a12c39b0dba492514c802f0c1a6526538",
"struct_halide_1_1_target.html#a9398276edd5784185e1a08f8a4dfc43fa77c151e388125519528caf75193145ee",
"struct_halide_1_1_type.html#aae297f5dc6d3f42b54f826800bff8883",
"struct_i_d3_d12_device_child_vtbl.html#a821f905c79de5c5190062062c20292cf",
"struct_i_d3_d12_graphics_command_list_vtbl.html#a89867af5e32ecceb27481115e1647b94",
"struct_i_d_x_g_i_object_vtbl.html#a2843cae109c565c5750f3a5836038d9a",
"struct_w_g_p_u_device_descriptor.html#a80b74a5c5109fc9ef3038cc42bdb1050",
"struct_w_g_p_u_sampler_descriptor.html#a126828cff32632299c93e47cfb0a6a57",
"structhalide__buffer__t.html",
"test_8h.html#a88dc99bf3d15c7234c72d2a5935969f2"
];

var SYNCONMSG = 'click to disable panel synchronisation';
var SYNCOFFMSG = 'click to enable panel synchronisation';