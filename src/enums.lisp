
(in-package :cvk)


(mcffi:with-doc-file (doc-file (asdf:system-relative-pathname "common-vulkan" "docs/api/enums.md"))


(more-cffi:def-foreign-enum doc-file "VkResult" ("VK_SUCCESS" 0)
                            ("VK_NOT_READY" 1) ("VK_TIMEOUT" 2)
                            ("VK_EVENT_SET" 3) ("VK_EVENT_RESET" 4)
                            ("VK_INCOMPLETE" 5)
                            ("VK_ERROR_OUT_OF_HOST_MEMORY" -1)
                            ("VK_ERROR_OUT_OF_DEVICE_MEMORY" -2)
                            ("VK_ERROR_INITIALIZATION_FAILED" -3)
                            ("VK_ERROR_DEVICE_LOST" -4)
                            ("VK_ERROR_MEMORY_MAP_FAILED" -5)
                            ("VK_ERROR_LAYER_NOT_PRESENT" -6)
                            ("VK_ERROR_EXTENSION_NOT_PRESENT" -7)
                            ("VK_ERROR_FEATURE_NOT_PRESENT" -8)
                            ("VK_ERROR_INCOMPATIBLE_DRIVER" -9)
                            ("VK_ERROR_TOO_MANY_OBJECTS" -10)
                            ("VK_ERROR_FORMAT_NOT_SUPPORTED" -11)
                            ("VK_ERROR_FRAGMENTED_POOL" -12)
                            ("VK_ERROR_UNKNOWN" -13)
                            ("VK_ERROR_OUT_OF_POOL_MEMORY" -1000069000)
                            ("VK_ERROR_INVALID_EXTERNAL_HANDLE" -1000072003)
                            ("VK_ERROR_FRAGMENTATION" -1000161000)
                            ("VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS"
                             -1000257000)
                            ("VK_PIPELINE_COMPILE_REQUIRED" 1000297000)
                            ("VK_ERROR_SURFACE_LOST_KHR" -1000000000)
                            ("VK_ERROR_NATIVE_WINDOW_IN_USE_KHR" -1000000001)
                            ("VK_SUBOPTIMAL_KHR" 1000001003)
                            ("VK_ERROR_OUT_OF_DATE_KHR" -1000001004)
                            ("VK_ERROR_INCOMPATIBLE_DISPLAY_KHR" -1000003001)
                            ("VK_ERROR_VALIDATION_FAILED_EXT" -1000011001)
                            ("VK_ERROR_INVALID_SHADER_NV" -1000012000)
                            ("VK_ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT"
                             -1000158000)
                            ("VK_ERROR_NOT_PERMITTED_KHR" -1000174001)
                            ("VK_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT"
                             -1000255000)
                            ("VK_THREAD_IDLE_KHR" 1000268000)
                            ("VK_THREAD_DONE_KHR" 1000268001)
                            ("VK_OPERATION_DEFERRED_KHR" 1000268002)
                            ("VK_OPERATION_NOT_DEFERRED_KHR" 1000268003)
                            ("VK_ERROR_COMPRESSION_EXHAUSTED_EXT" -1000338000)
                            ("VK_ERROR_OUT_OF_POOL_MEMORY_KHR"
                             vk_error_out_of_pool_memory)
                            ("VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR"
                             vk_error_invalid_external_handle)
                            ("VK_ERROR_FRAGMENTATION_EXT"
                             vk_error_fragmentation)
                            ("VK_ERROR_NOT_PERMITTED_EXT"
                             vk_error_not_permitted_khr)
                            ("VK_ERROR_INVALID_DEVICE_ADDRESS_EXT"
                             vk_error_invalid_opaque_capture_address)
                            ("VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR"
                             vk_error_invalid_opaque_capture_address)
                            ("VK_PIPELINE_COMPILE_REQUIRED_EXT"
                             vk_pipeline_compile_required)
                            ("VK_ERROR_PIPELINE_COMPILE_REQUIRED_EXT"
                             vk_pipeline_compile_required)
                            ("VK_RESULT_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkStructureType"
                            ("VK_STRUCTURE_TYPE_APPLICATION_INFO" 0)
                            ("VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO" 1)
                            ("VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO" 2)
                            ("VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO" 3)
                            ("VK_STRUCTURE_TYPE_SUBMIT_INFO" 4)
                            ("VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO" 5)
                            ("VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE" 6)
                            ("VK_STRUCTURE_TYPE_BIND_SPARSE_INFO" 7)
                            ("VK_STRUCTURE_TYPE_FENCE_CREATE_INFO" 8)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO" 9)
                            ("VK_STRUCTURE_TYPE_EVENT_CREATE_INFO" 10)
                            ("VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO" 11)
                            ("VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO" 12)
                            ("VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO" 13)
                            ("VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO" 14)
                            ("VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO" 15)
                            ("VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO" 16)
                            ("VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO" 17)
                            ("VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO"
                             18)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO"
                             19)
                            ("VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO"
                             20)
                            ("VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO"
                             21)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO"
                             22)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO"
                             23)
                            ("VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO"
                             24)
                            ("VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO"
                             25)
                            ("VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO"
                             26)
                            ("VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO"
                             27)
                            ("VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO"
                             28)
                            ("VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO"
                             29)
                            ("VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO"
                             30)
                            ("VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO" 31)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO"
                             32)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO"
                             33)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO"
                             34)
                            ("VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET" 35)
                            ("VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET" 36)
                            ("VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO" 37)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO" 38)
                            ("VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO" 39)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO"
                             40)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO"
                             41)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO" 42)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO" 43)
                            ("VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER" 44)
                            ("VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER" 45)
                            ("VK_STRUCTURE_TYPE_MEMORY_BARRIER" 46)
                            ("VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO"
                             47)
                            ("VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO" 48)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_PROPERTIES"
                             1000094000)
                            ("VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO"
                             1000157000)
                            ("VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO"
                             1000157001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES"
                             1000083000)
                            ("VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS"
                             1000127000)
                            ("VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO"
                             1000127001)
                            ("VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO"
                             1000060000)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO"
                             1000060003)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO"
                             1000060004)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO"
                             1000060005)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO"
                             1000060006)
                            ("VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO"
                             1000060013)
                            ("VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO"
                             1000060014)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES"
                             1000070000)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO"
                             1000070001)
                            ("VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2"
                             1000146000)
                            ("VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2"
                             1000146001)
                            ("VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2"
                             1000146002)
                            ("VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2"
                             1000146003)
                            ("VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2"
                             1000146004)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2"
                             1000059000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2"
                             1000059001)
                            ("VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2"
                             1000059002)
                            ("VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2"
                             1000059003)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2"
                             1000059004)
                            ("VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2"
                             1000059005)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2"
                             1000059006)
                            ("VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2"
                             1000059007)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2"
                             1000059008)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES"
                             1000117000)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO"
                             1000117001)
                            ("VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO"
                             1000117002)
                            ("VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO"
                             1000117003)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO"
                             1000053000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES"
                             1000053001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES"
                             1000053002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES"
                             1000120000)
                            ("VK_STRUCTURE_TYPE_PROTECTED_SUBMIT_INFO"
                             1000145000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_FEATURES"
                             1000145001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROTECTED_MEMORY_PROPERTIES"
                             1000145002)
                            ("VK_STRUCTURE_TYPE_DEVICE_QUEUE_INFO_2"
                             1000145003)
                            ("VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO"
                             1000156000)
                            ("VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO"
                             1000156001)
                            ("VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO"
                             1000156002)
                            ("VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO"
                             1000156003)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES"
                             1000156004)
                            ("VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES"
                             1000156005)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO"
                             1000085000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO"
                             1000071000)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES"
                             1000071001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO"
                             1000071002)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES"
                             1000071003)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES"
                             1000071004)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO"
                             1000072000)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO"
                             1000072001)
                            ("VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO"
                             1000072002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO"
                             1000112000)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES"
                             1000112001)
                            ("VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO"
                             1000113000)
                            ("VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO"
                             1000077000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO"
                             1000076000)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES"
                             1000076001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES"
                             1000168000)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT"
                             1000168001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETERS_FEATURES"
                             1000063000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_FEATURES"
                             49)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES"
                             50)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_FEATURES"
                             51)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES"
                             52)
                            ("VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO"
                             1000147000)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2"
                             1000109000)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2"
                             1000109001)
                            ("VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2"
                             1000109002)
                            ("VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2"
                             1000109003)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2"
                             1000109004)
                            ("VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO" 1000109005)
                            ("VK_STRUCTURE_TYPE_SUBPASS_END_INFO" 1000109006)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES"
                             1000177000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES"
                             1000196000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES"
                             1000180000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES"
                             1000082000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES"
                             1000197000)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO"
                             1000161000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES"
                             1000161001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES"
                             1000161002)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO"
                             1000161003)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT"
                             1000161004)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES"
                             1000199000)
                            ("VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE"
                             1000199001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES"
                             1000221000)
                            ("VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO"
                             1000246000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES"
                             1000130000)
                            ("VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO"
                             1000130001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES"
                             1000211000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES"
                             1000108000)
                            ("VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO"
                             1000108001)
                            ("VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO"
                             1000108002)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO"
                             1000108003)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES"
                             1000253000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES"
                             1000175000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES"
                             1000241000)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT"
                             1000241001)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT"
                             1000241002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES"
                             1000261000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES"
                             1000207000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES"
                             1000207001)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO"
                             1000207002)
                            ("VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO"
                             1000207003)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO"
                             1000207004)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO"
                             1000207005)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES"
                             1000257000)
                            ("VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO"
                             1000244001)
                            ("VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO"
                             1000257002)
                            ("VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO"
                             1000257003)
                            ("VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO"
                             1000257004)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_FEATURES"
                             53)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES"
                             54)
                            ("VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO"
                             1000192000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES"
                             1000215000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES"
                             1000245000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES"
                             1000276000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES"
                             1000295000)
                            ("VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO"
                             1000295001)
                            ("VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO"
                             1000295002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES"
                             1000297000)
                            ("VK_STRUCTURE_TYPE_MEMORY_BARRIER_2" 1000314000)
                            ("VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2"
                             1000314001)
                            ("VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2"
                             1000314002)
                            ("VK_STRUCTURE_TYPE_DEPENDENCY_INFO" 1000314003)
                            ("VK_STRUCTURE_TYPE_SUBMIT_INFO_2" 1000314004)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO"
                             1000314005)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO"
                             1000314006)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES"
                             1000314007)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES"
                             1000325000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES"
                             1000335000)
                            ("VK_STRUCTURE_TYPE_COPY_BUFFER_INFO_2" 1000337000)
                            ("VK_STRUCTURE_TYPE_COPY_IMAGE_INFO_2" 1000337001)
                            ("VK_STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2"
                             1000337002)
                            ("VK_STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2"
                             1000337003)
                            ("VK_STRUCTURE_TYPE_BLIT_IMAGE_INFO_2" 1000337004)
                            ("VK_STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2"
                             1000337005)
                            ("VK_STRUCTURE_TYPE_BUFFER_COPY_2" 1000337006)
                            ("VK_STRUCTURE_TYPE_IMAGE_COPY_2" 1000337007)
                            ("VK_STRUCTURE_TYPE_IMAGE_BLIT_2" 1000337008)
                            ("VK_STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2"
                             1000337009)
                            ("VK_STRUCTURE_TYPE_IMAGE_RESOLVE_2" 1000337010)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES"
                             1000225000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO"
                             1000225001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES"
                             1000225002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES"
                             1000138000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES"
                             1000138001)
                            ("VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK"
                             1000138002)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO"
                             1000138003)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES"
                             1000066000)
                            ("VK_STRUCTURE_TYPE_RENDERING_INFO" 1000044000)
                            ("VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO"
                             1000044001)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO"
                             1000044002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES"
                             1000044003)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO"
                             1000044004)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES"
                             1000280000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES"
                             1000280001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES"
                             1000281001)
                            ("VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_3"
                             1000360000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES"
                             1000413000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES"
                             1000413001)
                            ("VK_STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS"
                             1000413002)
                            ("VK_STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS"
                             1000413003)
                            ("VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR"
                             1000001000)
                            ("VK_STRUCTURE_TYPE_PRESENT_INFO_KHR" 1000001001)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR"
                             1000060007)
                            ("VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR"
                             1000060008)
                            ("VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR"
                             1000060009)
                            ("VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR"
                             1000060010)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR"
                             1000060011)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR"
                             1000060012)
                            ("VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR"
                             1000002000)
                            ("VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR"
                             1000002001)
                            ("VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR"
                             1000003000)
                            ("VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR"
                             1000004000)
                            ("VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR"
                             1000005000)
                            ("VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR"
                             1000006000)
                            ("VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR"
                             1000008000)
                            ("VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR"
                             1000009000)
                            ("VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT"
                             1000011000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD"
                             1000018000)
                            ("VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT"
                             1000022000)
                            ("VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT"
                             1000022001)
                            ("VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT"
                             1000022002)
                            ("VK_STRUCTURE_TYPE_VIDEO_PROFILE_KHR" 1000023000)
                            ("VK_STRUCTURE_TYPE_VIDEO_CAPABILITIES_KHR"
                             1000023001)
                            ("VK_STRUCTURE_TYPE_VIDEO_PICTURE_RESOURCE_KHR"
                             1000023002)
                            ("VK_STRUCTURE_TYPE_VIDEO_GET_MEMORY_PROPERTIES_KHR"
                             1000023003)
                            ("VK_STRUCTURE_TYPE_VIDEO_BIND_MEMORY_KHR"
                             1000023004)
                            ("VK_STRUCTURE_TYPE_VIDEO_SESSION_CREATE_INFO_KHR"
                             1000023005)
                            ("VK_STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_CREATE_INFO_KHR"
                             1000023006)
                            ("VK_STRUCTURE_TYPE_VIDEO_SESSION_PARAMETERS_UPDATE_INFO_KHR"
                             1000023007)
                            ("VK_STRUCTURE_TYPE_VIDEO_BEGIN_CODING_INFO_KHR"
                             1000023008)
                            ("VK_STRUCTURE_TYPE_VIDEO_END_CODING_INFO_KHR"
                             1000023009)
                            ("VK_STRUCTURE_TYPE_VIDEO_CODING_CONTROL_INFO_KHR"
                             1000023010)
                            ("VK_STRUCTURE_TYPE_VIDEO_REFERENCE_SLOT_KHR"
                             1000023011)
                            ("VK_STRUCTURE_TYPE_VIDEO_QUEUE_FAMILY_PROPERTIES_2_KHR"
                             1000023012)
                            ("VK_STRUCTURE_TYPE_VIDEO_PROFILES_KHR" 1000023013)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VIDEO_FORMAT_INFO_KHR"
                             1000023014)
                            ("VK_STRUCTURE_TYPE_VIDEO_FORMAT_PROPERTIES_KHR"
                             1000023015)
                            ("VK_STRUCTURE_TYPE_QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_2_KHR"
                             1000023016)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_INFO_KHR"
                             1000024000)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_CAPABILITIES_KHR"
                             1000024001)
                            ("VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV"
                             1000026000)
                            ("VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV"
                             1000026001)
                            ("VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV"
                             1000026002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_FEATURES_EXT"
                             1000028000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TRANSFORM_FEEDBACK_PROPERTIES_EXT"
                             1000028001)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT"
                             1000028002)
                            ("VK_STRUCTURE_TYPE_CU_MODULE_CREATE_INFO_NVX"
                             1000029000)
                            ("VK_STRUCTURE_TYPE_CU_FUNCTION_CREATE_INFO_NVX"
                             1000029001)
                            ("VK_STRUCTURE_TYPE_CU_LAUNCH_INFO_NVX" 1000029002)
                            ("VK_STRUCTURE_TYPE_IMAGE_VIEW_HANDLE_INFO_NVX"
                             1000030000)
                            ("VK_STRUCTURE_TYPE_IMAGE_VIEW_ADDRESS_PROPERTIES_NVX"
                             1000030001)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_CAPABILITIES_EXT"
                             1000038000)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_CREATE_INFO_EXT"
                             1000038001)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_SESSION_PARAMETERS_ADD_INFO_EXT"
                             1000038002)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_VCL_FRAME_INFO_EXT"
                             1000038003)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_DPB_SLOT_INFO_EXT"
                             1000038004)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_NALU_SLICE_EXT"
                             1000038005)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_EMIT_PICTURE_PARAMETERS_EXT"
                             1000038006)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_PROFILE_EXT"
                             1000038007)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_RATE_CONTROL_INFO_EXT"
                             1000038008)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_RATE_CONTROL_LAYER_INFO_EXT"
                             1000038009)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H264_REFERENCE_LISTS_EXT"
                             1000038010)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_CAPABILITIES_EXT"
                             1000039000)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_CREATE_INFO_EXT"
                             1000039001)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_SESSION_PARAMETERS_ADD_INFO_EXT"
                             1000039002)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_VCL_FRAME_INFO_EXT"
                             1000039003)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_DPB_SLOT_INFO_EXT"
                             1000039004)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_NALU_SLICE_SEGMENT_EXT"
                             1000039005)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_EMIT_PICTURE_PARAMETERS_EXT"
                             1000039006)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_PROFILE_EXT"
                             1000039007)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_REFERENCE_LISTS_EXT"
                             1000039008)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_INFO_EXT"
                             1000039009)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_H265_RATE_CONTROL_LAYER_INFO_EXT"
                             1000039010)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_CAPABILITIES_EXT"
                             1000040000)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_PICTURE_INFO_EXT"
                             1000040001)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_MVC_EXT"
                             1000040002)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_PROFILE_EXT"
                             1000040003)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_CREATE_INFO_EXT"
                             1000040004)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_SESSION_PARAMETERS_ADD_INFO_EXT"
                             1000040005)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H264_DPB_SLOT_INFO_EXT"
                             1000040006)
                            ("VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD"
                             1000041000)
                            ("VK_STRUCTURE_TYPE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR"
                             1000044006)
                            ("VK_STRUCTURE_TYPE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT"
                             1000044007)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_AMD"
                             1000044008)
                            ("VK_STRUCTURE_TYPE_MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX"
                             1000044009)
                            ("VK_STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP"
                             1000049000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV"
                             1000050000)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV"
                             1000056000)
                            ("VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV"
                             1000056001)
                            ("VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV"
                             1000057000)
                            ("VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV"
                             1000057001)
                            ("VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV"
                             1000058000)
                            ("VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT"
                             1000061000)
                            ("VK_STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN"
                             1000062000)
                            ("VK_STRUCTURE_TYPE_IMAGE_VIEW_ASTC_DECODE_MODE_EXT"
                             1000067000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ASTC_DECODE_FEATURES_EXT"
                             1000067001)
                            ("VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR"
                             1000073000)
                            ("VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR"
                             1000073001)
                            ("VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR"
                             1000073002)
                            ("VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR"
                             1000073003)
                            ("VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR"
                             1000074000)
                            ("VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR"
                             1000074001)
                            ("VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR"
                             1000074002)
                            ("VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR"
                             1000075000)
                            ("VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR"
                             1000078000)
                            ("VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR"
                             1000078001)
                            ("VK_STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHR"
                             1000078002)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR"
                             1000078003)
                            ("VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR"
                             1000079000)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR"
                             1000079001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR"
                             1000080000)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT"
                             1000081000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONDITIONAL_RENDERING_FEATURES_EXT"
                             1000081001)
                            ("VK_STRUCTURE_TYPE_CONDITIONAL_RENDERING_BEGIN_INFO_EXT"
                             1000081002)
                            ("VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR"
                             1000084000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV"
                             1000087000)
                            ("VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_EXT"
                             1000090000)
                            ("VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT"
                             1000091000)
                            ("VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT"
                             1000091001)
                            ("VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT"
                             1000091002)
                            ("VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT"
                             1000091003)
                            ("VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE"
                             1000092000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX"
                             1000097000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV"
                             1000098000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT"
                             1000099000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT"
                             1000099001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT"
                             1000101000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT"
                             1000101001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_ENABLE_FEATURES_EXT"
                             1000102000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT"
                             1000102001)
                            ("VK_STRUCTURE_TYPE_HDR_METADATA_EXT" 1000105000)
                            ("VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR"
                             1000111000)
                            ("VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR"
                             1000114000)
                            ("VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR"
                             1000114001)
                            ("VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR"
                             1000114002)
                            ("VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR"
                             1000115000)
                            ("VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR"
                             1000115001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR"
                             1000116000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR"
                             1000116001)
                            ("VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR"
                             1000116002)
                            ("VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR"
                             1000116003)
                            ("VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR"
                             1000116004)
                            ("VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR"
                             1000116005)
                            ("VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR"
                             1000116006)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR"
                             1000119000)
                            ("VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR"
                             1000119001)
                            ("VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR"
                             1000119002)
                            ("VK_STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR"
                             1000121000)
                            ("VK_STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR"
                             1000121001)
                            ("VK_STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR"
                             1000121002)
                            ("VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR"
                             1000121003)
                            ("VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR"
                             1000121004)
                            ("VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK"
                             1000122000)
                            ("VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK"
                             1000123000)
                            ("VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT"
                             1000128000)
                            ("VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT"
                             1000128001)
                            ("VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT"
                             1000128002)
                            ("VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT"
                             1000128003)
                            ("VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT"
                             1000128004)
                            ("VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_USAGE_ANDROID"
                             1000129000)
                            ("VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID"
                             1000129001)
                            ("VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID"
                             1000129002)
                            ("VK_STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID"
                             1000129003)
                            ("VK_STRUCTURE_TYPE_MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID"
                             1000129004)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID"
                             1000129005)
                            ("VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_2_ANDROID"
                             1000129006)
                            ("VK_STRUCTURE_TYPE_SAMPLE_LOCATIONS_INFO_EXT"
                             1000143000)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT"
                             1000143001)
                            ("VK_STRUCTURE_TYPE_PIPELINE_SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT"
                             1000143002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLE_LOCATIONS_PROPERTIES_EXT"
                             1000143003)
                            ("VK_STRUCTURE_TYPE_MULTISAMPLE_PROPERTIES_EXT"
                             1000143004)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_FEATURES_EXT"
                             1000148000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BLEND_OPERATION_ADVANCED_PROPERTIES_EXT"
                             1000148001)
                            ("VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT"
                             1000148002)
                            ("VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV"
                             1000149000)
                            ("VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR"
                             1000150007)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR"
                             1000150000)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR"
                             1000150002)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR"
                             1000150003)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR"
                             1000150004)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR"
                             1000150005)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_KHR"
                             1000150006)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_VERSION_INFO_KHR"
                             1000150009)
                            ("VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_INFO_KHR"
                             1000150010)
                            ("VK_STRUCTURE_TYPE_COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR"
                             1000150011)
                            ("VK_STRUCTURE_TYPE_COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR"
                             1000150012)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_FEATURES_KHR"
                             1000150013)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ACCELERATION_STRUCTURE_PROPERTIES_KHR"
                             1000150014)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_KHR"
                             1000150017)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR"
                             1000150020)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_FEATURES_KHR"
                             1000347000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PIPELINE_PROPERTIES_KHR"
                             1000347001)
                            ("VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_KHR"
                             1000150015)
                            ("VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR"
                             1000150016)
                            ("VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR"
                             1000150018)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_QUERY_FEATURES_KHR"
                             1000348013)
                            ("VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV"
                             1000152000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV"
                             1000154000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV"
                             1000154001)
                            ("VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT"
                             1000158000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT"
                             1000158002)
                            ("VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT"
                             1000158003)
                            ("VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT"
                             1000158004)
                            ("VK_STRUCTURE_TYPE_IMAGE_DRM_FORMAT_MODIFIER_PROPERTIES_EXT"
                             1000158005)
                            ("VK_STRUCTURE_TYPE_DRM_FORMAT_MODIFIER_PROPERTIES_LIST_2_EXT"
                             1000158006)
                            ("VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT"
                             1000160000)
                            ("VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT"
                             1000160001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_FEATURES_KHR"
                             1000163000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PORTABILITY_SUBSET_PROPERTIES_KHR"
                             1000163001)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV"
                             1000164000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_FEATURES_NV"
                             1000164001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADING_RATE_IMAGE_PROPERTIES_NV"
                             1000164002)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV"
                             1000164005)
                            ("VK_STRUCTURE_TYPE_RAY_TRACING_PIPELINE_CREATE_INFO_NV"
                             1000165000)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_CREATE_INFO_NV"
                             1000165001)
                            ("VK_STRUCTURE_TYPE_GEOMETRY_NV" 1000165003)
                            ("VK_STRUCTURE_TYPE_GEOMETRY_TRIANGLES_NV"
                             1000165004)
                            ("VK_STRUCTURE_TYPE_GEOMETRY_AABB_NV" 1000165005)
                            ("VK_STRUCTURE_TYPE_BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV"
                             1000165006)
                            ("VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV"
                             1000165007)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV"
                             1000165008)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_PROPERTIES_NV"
                             1000165009)
                            ("VK_STRUCTURE_TYPE_RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV"
                             1000165011)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_INFO_NV"
                             1000165012)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV"
                             1000166000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV"
                             1000166001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT"
                             1000170000)
                            ("VK_STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT"
                             1000170001)
                            ("VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT"
                             1000178000)
                            ("VK_STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT"
                             1000178001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT"
                             1000178002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CLOCK_FEATURES_KHR"
                             1000181000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_COMPILER_CONTROL_CREATE_INFO_AMD"
                             1000183000)
                            ("VK_STRUCTURE_TYPE_CALIBRATED_TIMESTAMP_INFO_EXT"
                             1000184000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_AMD"
                             1000185000)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_CAPABILITIES_EXT"
                             1000187000)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_EXT"
                             1000187001)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_SESSION_PARAMETERS_ADD_INFO_EXT"
                             1000187002)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_PROFILE_EXT"
                             1000187003)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_PICTURE_INFO_EXT"
                             1000187004)
                            ("VK_STRUCTURE_TYPE_VIDEO_DECODE_H265_DPB_SLOT_INFO_EXT"
                             1000187005)
                            ("VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_KHR"
                             1000174000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_KHR"
                             1000388000)
                            ("VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_KHR"
                             1000388001)
                            ("VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD"
                             1000189000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT"
                             1000190000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT"
                             1000190001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT"
                             1000190002)
                            ("VK_STRUCTURE_TYPE_PRESENT_FRAME_TOKEN_GGP"
                             1000191000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV"
                             1000201000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_NV"
                             1000202000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_NV"
                             1000202001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV"
                             1000204000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV"
                             1000205000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXCLUSIVE_SCISSOR_FEATURES_NV"
                             1000205002)
                            ("VK_STRUCTURE_TYPE_CHECKPOINT_DATA_NV" 1000206000)
                            ("VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV"
                             1000206001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL"
                             1000209000)
                            ("VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL"
                             1000210000)
                            ("VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL"
                             1000210001)
                            ("VK_STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL"
                             1000210002)
                            ("VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL"
                             1000210003)
                            ("VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL"
                             1000210004)
                            ("VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL"
                             1000210005)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PCI_BUS_INFO_PROPERTIES_EXT"
                             1000212000)
                            ("VK_STRUCTURE_TYPE_DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD"
                             1000213000)
                            ("VK_STRUCTURE_TYPE_SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD"
                             1000213001)
                            ("VK_STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA"
                             1000214000)
                            ("VK_STRUCTURE_TYPE_METAL_SURFACE_CREATE_INFO_EXT"
                             1000217000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_FEATURES_EXT"
                             1000218000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_PROPERTIES_EXT"
                             1000218001)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT"
                             1000218002)
                            ("VK_STRUCTURE_TYPE_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR"
                             1000226000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR"
                             1000226001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR"
                             1000226002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR"
                             1000226003)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_KHR"
                             1000226004)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_CORE_PROPERTIES_2_AMD"
                             1000227000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD"
                             1000229000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT"
                             1000234000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_BUDGET_PROPERTIES_EXT"
                             1000237000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT"
                             1000238000)
                            ("VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT"
                             1000238001)
                            ("VK_STRUCTURE_TYPE_SURFACE_PROTECTED_CAPABILITIES_KHR"
                             1000239000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV"
                             1000240000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_EXT"
                             1000244000)
                            ("VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT"
                             1000244002)
                            ("VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT"
                             1000247000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR"
                             1000248000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV"
                             1000249000)
                            ("VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV"
                             1000249001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV"
                             1000249002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV"
                             1000250000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV"
                             1000250001)
                            ("VK_STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV"
                             1000250002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT"
                             1000251000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_IMAGE_ARRAYS_FEATURES_EXT"
                             1000252000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT"
                             1000254000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT"
                             1000254001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT"
                             1000254002)
                            ("VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT"
                             1000255000)
                            ("VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT"
                             1000255002)
                            ("VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT"
                             1000255001)
                            ("VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT"
                             1000256000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT"
                             1000259000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT"
                             1000259001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_PROPERTIES_EXT"
                             1000259002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_FEATURES_EXT"
                             1000260000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INDEX_TYPE_UINT8_FEATURES_EXT"
                             1000265000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_FEATURES_EXT"
                             1000267000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR"
                             1000269000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR" 1000269001)
                            ("VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR"
                             1000269002)
                            ("VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR"
                             1000269003)
                            ("VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR"
                             1000269004)
                            ("VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR"
                             1000269005)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_FLOAT_2_FEATURES_EXT"
                             1000273000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_PROPERTIES_NV"
                             1000277000)
                            ("VK_STRUCTURE_TYPE_GRAPHICS_SHADER_GROUP_CREATE_INFO_NV"
                             1000277001)
                            ("VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV"
                             1000277002)
                            ("VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_TOKEN_NV"
                             1000277003)
                            ("VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV"
                             1000277004)
                            ("VK_STRUCTURE_TYPE_GENERATED_COMMANDS_INFO_NV"
                             1000277005)
                            ("VK_STRUCTURE_TYPE_GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV"
                             1000277006)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_GENERATED_COMMANDS_FEATURES_NV"
                             1000277007)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INHERITED_VIEWPORT_SCISSOR_FEATURES_NV"
                             1000278000)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_VIEWPORT_SCISSOR_INFO_NV"
                             1000278001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT"
                             1000281000)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM"
                             1000282000)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM"
                             1000282001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_MEMORY_REPORT_FEATURES_EXT"
                             1000284000)
                            ("VK_STRUCTURE_TYPE_DEVICE_DEVICE_MEMORY_REPORT_CREATE_INFO_EXT"
                             1000284001)
                            ("VK_STRUCTURE_TYPE_DEVICE_MEMORY_REPORT_CALLBACK_DATA_EXT"
                             1000284002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_FEATURES_EXT"
                             1000286000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ROBUSTNESS_2_PROPERTIES_EXT"
                             1000286001)
                            ("VK_STRUCTURE_TYPE_SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT"
                             1000287000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT"
                             1000287001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT"
                             1000287002)
                            ("VK_STRUCTURE_TYPE_PIPELINE_LIBRARY_CREATE_INFO_KHR"
                             1000290000)
                            ("VK_STRUCTURE_TYPE_PRESENT_ID_KHR" 1000294000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_ID_FEATURES_KHR"
                             1000294001)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_INFO_KHR"
                             1000299000)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_INFO_KHR"
                             1000299001)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_RATE_CONTROL_LAYER_INFO_KHR"
                             1000299002)
                            ("VK_STRUCTURE_TYPE_VIDEO_ENCODE_CAPABILITIES_KHR"
                             1000299003)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DIAGNOSTICS_CONFIG_FEATURES_NV"
                             1000300000)
                            ("VK_STRUCTURE_TYPE_DEVICE_DIAGNOSTICS_CONFIG_CREATE_INFO_NV"
                             1000300001)
                            ("VK_STRUCTURE_TYPE_QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV"
                             1000314008)
                            ("VK_STRUCTURE_TYPE_CHECKPOINT_DATA_2_NV"
                             1000314009)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT"
                             1000320000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT"
                             1000320001)
                            ("VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_LIBRARY_CREATE_INFO_EXT"
                             1000320002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD"
                             1000321000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR"
                             1000203000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR"
                             1000322000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR"
                             1000323000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV"
                             1000326000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV"
                             1000326001)
                            ("VK_STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_ENUM_STATE_CREATE_INFO_NV"
                             1000326002)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV"
                             1000327000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MOTION_BLUR_FEATURES_NV"
                             1000327001)
                            ("VK_STRUCTURE_TYPE_ACCELERATION_STRUCTURE_MOTION_INFO_NV"
                             1000327002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT"
                             1000330000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_FEATURES_EXT"
                             1000332000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT"
                             1000332001)
                            ("VK_STRUCTURE_TYPE_COPY_COMMAND_TRANSFORM_INFO_QCOM"
                             1000333000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR"
                             1000336000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_FEATURES_EXT"
                             1000338000)
                            ("VK_STRUCTURE_TYPE_IMAGE_COMPRESSION_CONTROL_EXT"
                             1000338001)
                            ("VK_STRUCTURE_TYPE_SUBRESOURCE_LAYOUT_2_EXT"
                             1000338002)
                            ("VK_STRUCTURE_TYPE_IMAGE_SUBRESOURCE_2_EXT"
                             1000338003)
                            ("VK_STRUCTURE_TYPE_IMAGE_COMPRESSION_PROPERTIES_EXT"
                             1000338004)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT"
                             1000340000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_ARM"
                             1000342000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT"
                             1000344000)
                            ("VK_STRUCTURE_TYPE_DIRECTFB_SURFACE_CREATE_INFO_EXT"
                             1000346000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_VALVE"
                             1000351000)
                            ("VK_STRUCTURE_TYPE_MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_VALVE"
                             1000351002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT"
                             1000352000)
                            ("VK_STRUCTURE_TYPE_VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT"
                             1000352001)
                            ("VK_STRUCTURE_TYPE_VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT"
                             1000352002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRM_PROPERTIES_EXT"
                             1000353000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_CLIP_CONTROL_FEATURES_EXT"
                             1000355000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_DEPTH_CLIP_CONTROL_CREATE_INFO_EXT"
                             1000355001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVE_TOPOLOGY_LIST_RESTART_FEATURES_EXT"
                             1000356000)
                            ("VK_STRUCTURE_TYPE_IMPORT_MEMORY_ZIRCON_HANDLE_INFO_FUCHSIA"
                             1000364000)
                            ("VK_STRUCTURE_TYPE_MEMORY_ZIRCON_HANDLE_PROPERTIES_FUCHSIA"
                             1000364001)
                            ("VK_STRUCTURE_TYPE_MEMORY_GET_ZIRCON_HANDLE_INFO_FUCHSIA"
                             1000364002)
                            ("VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_ZIRCON_HANDLE_INFO_FUCHSIA"
                             1000365000)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_GET_ZIRCON_HANDLE_INFO_FUCHSIA"
                             1000365001)
                            ("VK_STRUCTURE_TYPE_BUFFER_COLLECTION_CREATE_INFO_FUCHSIA"
                             1000366000)
                            ("VK_STRUCTURE_TYPE_IMPORT_MEMORY_BUFFER_COLLECTION_FUCHSIA"
                             1000366001)
                            ("VK_STRUCTURE_TYPE_BUFFER_COLLECTION_IMAGE_CREATE_INFO_FUCHSIA"
                             1000366002)
                            ("VK_STRUCTURE_TYPE_BUFFER_COLLECTION_PROPERTIES_FUCHSIA"
                             1000366003)
                            ("VK_STRUCTURE_TYPE_BUFFER_CONSTRAINTS_INFO_FUCHSIA"
                             1000366004)
                            ("VK_STRUCTURE_TYPE_BUFFER_COLLECTION_BUFFER_CREATE_INFO_FUCHSIA"
                             1000366005)
                            ("VK_STRUCTURE_TYPE_IMAGE_CONSTRAINTS_INFO_FUCHSIA"
                             1000366006)
                            ("VK_STRUCTURE_TYPE_IMAGE_FORMAT_CONSTRAINTS_INFO_FUCHSIA"
                             1000366007)
                            ("VK_STRUCTURE_TYPE_SYSMEM_COLOR_SPACE_FUCHSIA"
                             1000366008)
                            ("VK_STRUCTURE_TYPE_BUFFER_COLLECTION_CONSTRAINTS_INFO_FUCHSIA"
                             1000366009)
                            ("VK_STRUCTURE_TYPE_SUBPASS_SHADING_PIPELINE_CREATE_INFO_HUAWEI"
                             1000369000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_FEATURES_HUAWEI"
                             1000369001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_SHADING_PROPERTIES_HUAWEI"
                             1000369002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INVOCATION_MASK_FEATURES_HUAWEI"
                             1000370000)
                            ("VK_STRUCTURE_TYPE_MEMORY_GET_REMOTE_ADDRESS_INFO_NV"
                             1000371000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_RDMA_FEATURES_NV"
                             1000371001)
                            ("VK_STRUCTURE_TYPE_PIPELINE_PROPERTIES_IDENTIFIER_EXT"
                             1000372000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROPERTIES_FEATURES_EXT"
                             1000372001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT"
                             1000377000)
                            ("VK_STRUCTURE_TYPE_SCREEN_SURFACE_CREATE_INFO_QNX"
                             1000378000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COLOR_WRITE_ENABLE_FEATURES_EXT"
                             1000381000)
                            ("VK_STRUCTURE_TYPE_PIPELINE_COLOR_WRITE_CREATE_INFO_EXT"
                             1000381001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT"
                             1000382000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RAY_TRACING_MAINTENANCE_1_FEATURES_KHR"
                             1000386000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_MIN_LOD_FEATURES_EXT"
                             1000391000)
                            ("VK_STRUCTURE_TYPE_IMAGE_VIEW_MIN_LOD_CREATE_INFO_EXT"
                             1000391001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_FEATURES_EXT"
                             1000392000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTI_DRAW_PROPERTIES_EXT"
                             1000392001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT"
                             1000393000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BORDER_COLOR_SWIZZLE_FEATURES_EXT"
                             1000411000)
                            ("VK_STRUCTURE_TYPE_SAMPLER_BORDER_COLOR_COMPONENT_MAPPING_CREATE_INFO_EXT"
                             1000411001)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT"
                             1000412000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE"
                             1000420000)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_BINDING_REFERENCE_VALVE"
                             1000420001)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_HOST_MAPPING_INFO_VALVE"
                             1000420002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_QCOM"
                             1000425000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_QCOM"
                             1000425001)
                            ("VK_STRUCTURE_TYPE_SUBPASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_QCOM"
                             1000425002)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINEAR_COLOR_ATTACHMENT_FEATURES_NV"
                             1000430000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_FEATURES_EXT"
                             1000437000)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBPASS_MERGE_FEEDBACK_FEATURES_EXT"
                             1000458000)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_CREATION_CONTROL_EXT"
                             1000458001)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_CREATION_FEEDBACK_CREATE_INFO_EXT"
                             1000458002)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_SUBPASS_FEEDBACK_CREATE_INFO_EXT"
                             1000458003)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES"
                             vk_structure_type_physical_device_variable_pointers_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DRAW_PARAMETER_FEATURES"
                             vk_structure_type_physical_device_shader_draw_parameters_features)
                            ("VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT"
                             vk_structure_type_debug_report_callback_create_info_ext)
                            ("VK_STRUCTURE_TYPE_RENDERING_INFO_KHR"
                             vk_structure_type_rendering_info)
                            ("VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO_KHR"
                             vk_structure_type_rendering_attachment_info)
                            ("VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO_KHR"
                             vk_structure_type_pipeline_rendering_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DYNAMIC_RENDERING_FEATURES_KHR"
                             vk_structure_type_physical_device_dynamic_rendering_features)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_RENDERING_INFO_KHR"
                             vk_structure_type_command_buffer_inheritance_rendering_info)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_SAMPLE_COUNT_INFO_NV"
                             vk_structure_type_attachment_sample_count_info_amd)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR"
                             vk_structure_type_render_pass_multiview_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHR"
                             vk_structure_type_physical_device_multiview_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHR"
                             vk_structure_type_physical_device_multiview_properties)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2_KHR"
                             vk_structure_type_physical_device_features_2)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2_KHR"
                             vk_structure_type_physical_device_properties_2)
                            ("VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2_KHR"
                             vk_structure_type_format_properties_2)
                            ("VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2_KHR"
                             vk_structure_type_image_format_properties_2)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR"
                             vk_structure_type_physical_device_image_format_info_2)
                            ("VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2_KHR"
                             vk_structure_type_queue_family_properties_2)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR"
                             vk_structure_type_physical_device_memory_properties_2)
                            ("VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR"
                             vk_structure_type_sparse_image_format_properties_2)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR"
                             vk_structure_type_physical_device_sparse_image_format_info_2)
                            ("VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHR"
                             vk_structure_type_memory_allocate_flags_info)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHR"
                             vk_structure_type_device_group_render_pass_begin_info)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR"
                             vk_structure_type_device_group_command_buffer_begin_info)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHR"
                             vk_structure_type_device_group_submit_info)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHR"
                             vk_structure_type_device_group_bind_sparse_info)
                            ("VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR"
                             vk_structure_type_bind_buffer_memory_device_group_info)
                            ("VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR"
                             vk_structure_type_bind_image_memory_device_group_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT"
                             vk_structure_type_physical_device_texture_compression_astc_hdr_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES_KHR"
                             vk_structure_type_physical_device_group_properties)
                            ("VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO_KHR"
                             vk_structure_type_device_group_device_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHR"
                             vk_structure_type_physical_device_external_image_format_info)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR"
                             vk_structure_type_external_image_format_properties)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHR"
                             vk_structure_type_physical_device_external_buffer_info)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES_KHR"
                             vk_structure_type_external_buffer_properties)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR"
                             vk_structure_type_physical_device_id_properties)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR"
                             vk_structure_type_external_memory_buffer_create_info)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR"
                             vk_structure_type_external_memory_image_create_info)
                            ("VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_KHR"
                             vk_structure_type_export_memory_allocate_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR"
                             vk_structure_type_physical_device_external_semaphore_info)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR"
                             vk_structure_type_external_semaphore_properties)
                            ("VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR"
                             vk_structure_type_export_semaphore_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES_KHR"
                             vk_structure_type_physical_device_shader_float16_int8_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT16_INT8_FEATURES_KHR"
                             vk_structure_type_physical_device_shader_float16_int8_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES_KHR"
                             vk_structure_type_physical_device_16bit_storage_features)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR"
                             vk_structure_type_descriptor_update_template_create_info)
                            ("VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES2_EXT"
                             vk_structure_type_surface_capabilities_2_ext)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGELESS_FRAMEBUFFER_FEATURES_KHR"
                             vk_structure_type_physical_device_imageless_framebuffer_features)
                            ("VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR"
                             vk_structure_type_framebuffer_attachments_create_info)
                            ("VK_STRUCTURE_TYPE_FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR"
                             vk_structure_type_framebuffer_attachment_image_info)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR"
                             vk_structure_type_render_pass_attachment_begin_info)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_2_KHR"
                             vk_structure_type_attachment_description_2)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_2_KHR"
                             vk_structure_type_attachment_reference_2)
                            ("VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_2_KHR"
                             vk_structure_type_subpass_description_2)
                            ("VK_STRUCTURE_TYPE_SUBPASS_DEPENDENCY_2_KHR"
                             vk_structure_type_subpass_dependency_2)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO_2_KHR"
                             vk_structure_type_render_pass_create_info_2)
                            ("VK_STRUCTURE_TYPE_SUBPASS_BEGIN_INFO_KHR"
                             vk_structure_type_subpass_begin_info)
                            ("VK_STRUCTURE_TYPE_SUBPASS_END_INFO_KHR"
                             vk_structure_type_subpass_end_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO_KHR"
                             vk_structure_type_physical_device_external_fence_info)
                            ("VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES_KHR"
                             vk_structure_type_external_fence_properties)
                            ("VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO_KHR"
                             vk_structure_type_export_fence_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_POINT_CLIPPING_PROPERTIES_KHR"
                             vk_structure_type_physical_device_point_clipping_properties)
                            ("VK_STRUCTURE_TYPE_RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR"
                             vk_structure_type_render_pass_input_attachment_aspect_create_info)
                            ("VK_STRUCTURE_TYPE_IMAGE_VIEW_USAGE_CREATE_INFO_KHR"
                             vk_structure_type_image_view_usage_create_info)
                            ("VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR"
                             vk_structure_type_pipeline_tessellation_domain_origin_state_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR"
                             vk_structure_type_physical_device_variable_pointers_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES_KHR"
                             vk_structure_type_physical_device_variable_pointers_features_khr)
                            ("VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS_KHR"
                             vk_structure_type_memory_dedicated_requirements)
                            ("VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO_KHR"
                             vk_structure_type_memory_dedicated_allocate_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT"
                             vk_structure_type_physical_device_sampler_filter_minmax_properties)
                            ("VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT"
                             vk_structure_type_sampler_reduction_mode_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT"
                             vk_structure_type_physical_device_inline_uniform_block_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT"
                             vk_structure_type_physical_device_inline_uniform_block_properties)
                            ("VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT"
                             vk_structure_type_write_descriptor_set_inline_uniform_block)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT"
                             vk_structure_type_descriptor_pool_inline_uniform_block_create_info)
                            ("VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR"
                             vk_structure_type_buffer_memory_requirements_info_2)
                            ("VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR"
                             vk_structure_type_image_memory_requirements_info_2)
                            ("VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR"
                             vk_structure_type_image_sparse_memory_requirements_info_2)
                            ("VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR"
                             vk_structure_type_memory_requirements_2)
                            ("VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR"
                             vk_structure_type_sparse_image_memory_requirements_2)
                            ("VK_STRUCTURE_TYPE_IMAGE_FORMAT_LIST_CREATE_INFO_KHR"
                             vk_structure_type_image_format_list_create_info)
                            ("VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR"
                             vk_structure_type_sampler_ycbcr_conversion_create_info)
                            ("VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO_KHR"
                             vk_structure_type_sampler_ycbcr_conversion_info)
                            ("VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO_KHR"
                             vk_structure_type_bind_image_plane_memory_info)
                            ("VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR"
                             vk_structure_type_image_plane_memory_requirements_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR"
                             vk_structure_type_physical_device_sampler_ycbcr_conversion_features)
                            ("VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR"
                             vk_structure_type_sampler_ycbcr_conversion_image_format_properties)
                            ("VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO_KHR"
                             vk_structure_type_bind_buffer_memory_info)
                            ("VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO_KHR"
                             vk_structure_type_bind_image_memory_info)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT"
                             vk_structure_type_descriptor_set_layout_binding_flags_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT"
                             vk_structure_type_physical_device_descriptor_indexing_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES_EXT"
                             vk_structure_type_physical_device_descriptor_indexing_properties)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT"
                             vk_structure_type_descriptor_set_variable_descriptor_count_allocate_info)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT"
                             vk_structure_type_descriptor_set_variable_descriptor_count_layout_support)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_3_PROPERTIES_KHR"
                             vk_structure_type_physical_device_maintenance_3_properties)
                            ("VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR"
                             vk_structure_type_descriptor_set_layout_support)
                            ("VK_STRUCTURE_TYPE_DEVICE_QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT"
                             vk_structure_type_device_queue_global_priority_create_info_khr)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES_KHR"
                             vk_structure_type_physical_device_shader_subgroup_extended_types_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES_KHR"
                             vk_structure_type_physical_device_8bit_storage_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES_KHR"
                             vk_structure_type_physical_device_shader_atomic_int64_features)
                            ("VK_STRUCTURE_TYPE_PIPELINE_CREATION_FEEDBACK_CREATE_INFO_EXT"
                             vk_structure_type_pipeline_creation_feedback_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DRIVER_PROPERTIES_KHR"
                             vk_structure_type_physical_device_driver_properties)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT_CONTROLS_PROPERTIES_KHR"
                             vk_structure_type_physical_device_float_controls_properties)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR"
                             vk_structure_type_physical_device_depth_stencil_resolve_properties)
                            ("VK_STRUCTURE_TYPE_SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR"
                             vk_structure_type_subpass_description_depth_stencil_resolve)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV"
                             vk_structure_type_physical_device_fragment_shader_barycentric_features_khr)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_FEATURES_KHR"
                             vk_structure_type_physical_device_timeline_semaphore_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TIMELINE_SEMAPHORE_PROPERTIES_KHR"
                             vk_structure_type_physical_device_timeline_semaphore_properties)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_TYPE_CREATE_INFO_KHR"
                             vk_structure_type_semaphore_type_create_info)
                            ("VK_STRUCTURE_TYPE_TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR"
                             vk_structure_type_timeline_semaphore_submit_info)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_WAIT_INFO_KHR"
                             vk_structure_type_semaphore_wait_info)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_SIGNAL_INFO_KHR"
                             vk_structure_type_semaphore_signal_info)
                            ("VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL"
                             vk_structure_type_query_pool_performance_query_create_info_intel)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES_KHR"
                             vk_structure_type_physical_device_vulkan_memory_model_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_TERMINATE_INVOCATION_FEATURES_KHR"
                             vk_structure_type_physical_device_shader_terminate_invocation_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SCALAR_BLOCK_LAYOUT_FEATURES_EXT"
                             vk_structure_type_physical_device_scalar_block_layout_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT"
                             vk_structure_type_physical_device_subgroup_size_control_properties)
                            ("VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT"
                             vk_structure_type_pipeline_shader_stage_required_subgroup_size_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SUBGROUP_SIZE_CONTROL_FEATURES_EXT"
                             vk_structure_type_physical_device_subgroup_size_control_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR"
                             vk_structure_type_physical_device_separate_depth_stencil_layouts_features)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR"
                             vk_structure_type_attachment_reference_stencil_layout)
                            ("VK_STRUCTURE_TYPE_ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR"
                             vk_structure_type_attachment_description_stencil_layout)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_ADDRESS_FEATURES_EXT"
                             vk_structure_type_physical_device_buffer_device_address_features_ext)
                            ("VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_EXT"
                             vk_structure_type_buffer_device_address_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TOOL_PROPERTIES_EXT"
                             vk_structure_type_physical_device_tool_properties)
                            ("VK_STRUCTURE_TYPE_IMAGE_STENCIL_USAGE_CREATE_INFO_EXT"
                             vk_structure_type_image_stencil_usage_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR"
                             vk_structure_type_physical_device_uniform_buffer_standard_layout_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_KHR"
                             vk_structure_type_physical_device_buffer_device_address_features)
                            ("VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_KHR"
                             vk_structure_type_buffer_device_address_info)
                            ("VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR"
                             vk_structure_type_buffer_opaque_capture_address_create_info)
                            ("VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR"
                             vk_structure_type_memory_opaque_capture_address_allocate_info)
                            ("VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR"
                             vk_structure_type_device_memory_opaque_capture_address_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_HOST_QUERY_RESET_FEATURES_EXT"
                             vk_structure_type_physical_device_host_query_reset_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT"
                             vk_structure_type_physical_device_shader_demote_to_helper_invocation_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES_KHR"
                             vk_structure_type_physical_device_shader_integer_dot_product_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES_KHR"
                             vk_structure_type_physical_device_shader_integer_dot_product_properties)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT"
                             vk_structure_type_physical_device_texel_buffer_alignment_properties)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIVATE_DATA_FEATURES_EXT"
                             vk_structure_type_physical_device_private_data_features)
                            ("VK_STRUCTURE_TYPE_DEVICE_PRIVATE_DATA_CREATE_INFO_EXT"
                             vk_structure_type_device_private_data_create_info)
                            ("VK_STRUCTURE_TYPE_PRIVATE_DATA_SLOT_CREATE_INFO_EXT"
                             vk_structure_type_private_data_slot_create_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT"
                             vk_structure_type_physical_device_pipeline_creation_cache_control_features)
                            ("VK_STRUCTURE_TYPE_MEMORY_BARRIER_2_KHR"
                             vk_structure_type_memory_barrier_2)
                            ("VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER_2_KHR"
                             vk_structure_type_buffer_memory_barrier_2)
                            ("VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2_KHR"
                             vk_structure_type_image_memory_barrier_2)
                            ("VK_STRUCTURE_TYPE_DEPENDENCY_INFO_KHR"
                             vk_structure_type_dependency_info)
                            ("VK_STRUCTURE_TYPE_SUBMIT_INFO_2_KHR"
                             vk_structure_type_submit_info_2)
                            ("VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO_KHR"
                             vk_structure_type_semaphore_submit_info)
                            ("VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO_KHR"
                             vk_structure_type_command_buffer_submit_info)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SYNCHRONIZATION_2_FEATURES_KHR"
                             vk_structure_type_physical_device_synchronization_2_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES_KHR"
                             vk_structure_type_physical_device_zero_initialize_workgroup_memory_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_ROBUSTNESS_FEATURES_EXT"
                             vk_structure_type_physical_device_image_robustness_features)
                            ("VK_STRUCTURE_TYPE_COPY_BUFFER_INFO_2_KHR"
                             vk_structure_type_copy_buffer_info_2)
                            ("VK_STRUCTURE_TYPE_COPY_IMAGE_INFO_2_KHR"
                             vk_structure_type_copy_image_info_2)
                            ("VK_STRUCTURE_TYPE_COPY_BUFFER_TO_IMAGE_INFO_2_KHR"
                             vk_structure_type_copy_buffer_to_image_info_2)
                            ("VK_STRUCTURE_TYPE_COPY_IMAGE_TO_BUFFER_INFO_2_KHR"
                             vk_structure_type_copy_image_to_buffer_info_2)
                            ("VK_STRUCTURE_TYPE_BLIT_IMAGE_INFO_2_KHR"
                             vk_structure_type_blit_image_info_2)
                            ("VK_STRUCTURE_TYPE_RESOLVE_IMAGE_INFO_2_KHR"
                             vk_structure_type_resolve_image_info_2)
                            ("VK_STRUCTURE_TYPE_BUFFER_COPY_2_KHR"
                             vk_structure_type_buffer_copy_2)
                            ("VK_STRUCTURE_TYPE_IMAGE_COPY_2_KHR"
                             vk_structure_type_image_copy_2)
                            ("VK_STRUCTURE_TYPE_IMAGE_BLIT_2_KHR"
                             vk_structure_type_image_blit_2)
                            ("VK_STRUCTURE_TYPE_BUFFER_IMAGE_COPY_2_KHR"
                             vk_structure_type_buffer_image_copy_2)
                            ("VK_STRUCTURE_TYPE_IMAGE_RESOLVE_2_KHR"
                             vk_structure_type_image_resolve_2)
                            ("VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_3_KHR"
                             vk_structure_type_format_properties_3)
                            ("VK_STRUCTURE_TYPE_PIPELINE_INFO_EXT"
                             vk_structure_type_pipeline_info_khr)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GLOBAL_PRIORITY_QUERY_FEATURES_EXT"
                             vk_structure_type_physical_device_global_priority_query_features_khr)
                            ("VK_STRUCTURE_TYPE_QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_EXT"
                             vk_structure_type_queue_family_global_priority_properties_khr)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_FEATURES_KHR"
                             vk_structure_type_physical_device_maintenance_4_features)
                            ("VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MAINTENANCE_4_PROPERTIES_KHR"
                             vk_structure_type_physical_device_maintenance_4_properties)
                            ("VK_STRUCTURE_TYPE_DEVICE_BUFFER_MEMORY_REQUIREMENTS_KHR"
                             vk_structure_type_device_buffer_memory_requirements)
                            ("VK_STRUCTURE_TYPE_DEVICE_IMAGE_MEMORY_REQUIREMENTS_KHR"
                             vk_structure_type_device_image_memory_requirements)
                            ("VK_STRUCTURE_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPipelineCacheHeaderVersion"
                            ("VK_PIPELINE_CACHE_HEADER_VERSION_ONE" 1)
                            ("VK_PIPELINE_CACHE_HEADER_VERSION_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkImageLayout"
                            ("VK_IMAGE_LAYOUT_UNDEFINED" 0)
                            ("VK_IMAGE_LAYOUT_GENERAL" 1)
                            ("VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL" 2)
                            ("VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL"
                             3)
                            ("VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL"
                             4)
                            ("VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL" 5)
                            ("VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL" 6)
                            ("VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL" 7)
                            ("VK_IMAGE_LAYOUT_PREINITIALIZED" 8)
                            ("VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL"
                             1000117000)
                            ("VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL"
                             1000117001)
                            ("VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL"
                             1000241000)
                            ("VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL"
                             1000241001)
                            ("VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL"
                             1000241002)
                            ("VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL"
                             1000241003)
                            ("VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL" 1000314000)
                            ("VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL" 1000314001)
                            ("VK_IMAGE_LAYOUT_PRESENT_SRC_KHR" 1000001002)
                            ("VK_IMAGE_LAYOUT_VIDEO_DECODE_DST_KHR" 1000024000)
                            ("VK_IMAGE_LAYOUT_VIDEO_DECODE_SRC_KHR" 1000024001)
                            ("VK_IMAGE_LAYOUT_VIDEO_DECODE_DPB_KHR" 1000024002)
                            ("VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR" 1000111000)
                            ("VK_IMAGE_LAYOUT_FRAGMENT_DENSITY_MAP_OPTIMAL_EXT"
                             1000218000)
                            ("VK_IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR"
                             1000164003)
                            ("VK_IMAGE_LAYOUT_VIDEO_ENCODE_DST_KHR" 1000299000)
                            ("VK_IMAGE_LAYOUT_VIDEO_ENCODE_SRC_KHR" 1000299001)
                            ("VK_IMAGE_LAYOUT_VIDEO_ENCODE_DPB_KHR" 1000299002)
                            ("VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL_KHR"
                             vk_image_layout_depth_read_only_stencil_attachment_optimal)
                            ("VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL_KHR"
                             vk_image_layout_depth_attachment_stencil_read_only_optimal)
                            ("VK_IMAGE_LAYOUT_SHADING_RATE_OPTIMAL_NV"
                             vk_image_layout_fragment_shading_rate_attachment_optimal_khr)
                            ("VK_IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL_KHR"
                             vk_image_layout_depth_attachment_optimal)
                            ("VK_IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL_KHR"
                             vk_image_layout_depth_read_only_optimal)
                            ("VK_IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL_KHR"
                             vk_image_layout_stencil_attachment_optimal)
                            ("VK_IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL_KHR"
                             vk_image_layout_stencil_read_only_optimal)
                            ("VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL_KHR"
                             vk_image_layout_read_only_optimal)
                            ("VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL_KHR"
                             vk_image_layout_attachment_optimal)
                            ("VK_IMAGE_LAYOUT_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkObjectType"
                            ("VK_OBJECT_TYPE_UNKNOWN" 0)
                            ("VK_OBJECT_TYPE_INSTANCE" 1)
                            ("VK_OBJECT_TYPE_PHYSICAL_DEVICE" 2)
                            ("VK_OBJECT_TYPE_DEVICE" 3)
                            ("VK_OBJECT_TYPE_QUEUE" 4)
                            ("VK_OBJECT_TYPE_SEMAPHORE" 5)
                            ("VK_OBJECT_TYPE_COMMAND_BUFFER" 6)
                            ("VK_OBJECT_TYPE_FENCE" 7)
                            ("VK_OBJECT_TYPE_DEVICE_MEMORY" 8)
                            ("VK_OBJECT_TYPE_BUFFER" 9)
                            ("VK_OBJECT_TYPE_IMAGE" 10)
                            ("VK_OBJECT_TYPE_EVENT" 11)
                            ("VK_OBJECT_TYPE_QUERY_POOL" 12)
                            ("VK_OBJECT_TYPE_BUFFER_VIEW" 13)
                            ("VK_OBJECT_TYPE_IMAGE_VIEW" 14)
                            ("VK_OBJECT_TYPE_SHADER_MODULE" 15)
                            ("VK_OBJECT_TYPE_PIPELINE_CACHE" 16)
                            ("VK_OBJECT_TYPE_PIPELINE_LAYOUT" 17)
                            ("VK_OBJECT_TYPE_RENDER_PASS" 18)
                            ("VK_OBJECT_TYPE_PIPELINE" 19)
                            ("VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT" 20)
                            ("VK_OBJECT_TYPE_SAMPLER" 21)
                            ("VK_OBJECT_TYPE_DESCRIPTOR_POOL" 22)
                            ("VK_OBJECT_TYPE_DESCRIPTOR_SET" 23)
                            ("VK_OBJECT_TYPE_FRAMEBUFFER" 24)
                            ("VK_OBJECT_TYPE_COMMAND_POOL" 25)
                            ("VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION"
                             1000156000)
                            ("VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE"
                             1000085000)
                            ("VK_OBJECT_TYPE_PRIVATE_DATA_SLOT" 1000295000)
                            ("VK_OBJECT_TYPE_SURFACE_KHR" 1000000000)
                            ("VK_OBJECT_TYPE_SWAPCHAIN_KHR" 1000001000)
                            ("VK_OBJECT_TYPE_DISPLAY_KHR" 1000002000)
                            ("VK_OBJECT_TYPE_DISPLAY_MODE_KHR" 1000002001)
                            ("VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT"
                             1000011000)
                            ("VK_OBJECT_TYPE_VIDEO_SESSION_KHR" 1000023000)
                            ("VK_OBJECT_TYPE_VIDEO_SESSION_PARAMETERS_KHR"
                             1000023001)
                            ("VK_OBJECT_TYPE_CU_MODULE_NVX" 1000029000)
                            ("VK_OBJECT_TYPE_CU_FUNCTION_NVX" 1000029001)
                            ("VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT"
                             1000128000)
                            ("VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR"
                             1000150000)
                            ("VK_OBJECT_TYPE_VALIDATION_CACHE_EXT" 1000160000)
                            ("VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV"
                             1000165000)
                            ("VK_OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL"
                             1000210000)
                            ("VK_OBJECT_TYPE_DEFERRED_OPERATION_KHR"
                             1000268000)
                            ("VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV"
                             1000277000)
                            ("VK_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA"
                             1000366000)
                            ("VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR"
                             vk_object_type_descriptor_update_template)
                            ("VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR"
                             vk_object_type_sampler_ycbcr_conversion)
                            ("VK_OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT"
                             vk_object_type_private_data_slot)
                            ("VK_OBJECT_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkVendorId" ("VK_VENDOR_ID_VIV" 65537)
                            ("VK_VENDOR_ID_VSI" 65538)
                            ("VK_VENDOR_ID_KAZAN" 65539)
                            ("VK_VENDOR_ID_CODEPLAY" 65540)
                            ("VK_VENDOR_ID_MESA" 65541)
                            ("VK_VENDOR_ID_POCL" 65542)
                            ("VK_VENDOR_ID_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSystemAllocationScope"
                            ("VK_SYSTEM_ALLOCATION_SCOPE_COMMAND" 0)
                            ("VK_SYSTEM_ALLOCATION_SCOPE_OBJECT" 1)
                            ("VK_SYSTEM_ALLOCATION_SCOPE_CACHE" 2)
                            ("VK_SYSTEM_ALLOCATION_SCOPE_DEVICE" 3)
                            ("VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE" 4)
                            ("VK_SYSTEM_ALLOCATION_SCOPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkInternalAllocationType"
                            ("VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE" 0)
                            ("VK_INTERNAL_ALLOCATION_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkFormat" ("VK_FORMAT_UNDEFINED" 0)
                            ("VK_FORMAT_R4G4_UNORM_PACK8" 1)
                            ("VK_FORMAT_R4G4B4A4_UNORM_PACK16" 2)
                            ("VK_FORMAT_B4G4R4A4_UNORM_PACK16" 3)
                            ("VK_FORMAT_R5G6B5_UNORM_PACK16" 4)
                            ("VK_FORMAT_B5G6R5_UNORM_PACK16" 5)
                            ("VK_FORMAT_R5G5B5A1_UNORM_PACK16" 6)
                            ("VK_FORMAT_B5G5R5A1_UNORM_PACK16" 7)
                            ("VK_FORMAT_A1R5G5B5_UNORM_PACK16" 8)
                            ("VK_FORMAT_R8_UNORM" 9) ("VK_FORMAT_R8_SNORM" 10)
                            ("VK_FORMAT_R8_USCALED" 11)
                            ("VK_FORMAT_R8_SSCALED" 12)
                            ("VK_FORMAT_R8_UINT" 13) ("VK_FORMAT_R8_SINT" 14)
                            ("VK_FORMAT_R8_SRGB" 15)
                            ("VK_FORMAT_R8G8_UNORM" 16)
                            ("VK_FORMAT_R8G8_SNORM" 17)
                            ("VK_FORMAT_R8G8_USCALED" 18)
                            ("VK_FORMAT_R8G8_SSCALED" 19)
                            ("VK_FORMAT_R8G8_UINT" 20)
                            ("VK_FORMAT_R8G8_SINT" 21)
                            ("VK_FORMAT_R8G8_SRGB" 22)
                            ("VK_FORMAT_R8G8B8_UNORM" 23)
                            ("VK_FORMAT_R8G8B8_SNORM" 24)
                            ("VK_FORMAT_R8G8B8_USCALED" 25)
                            ("VK_FORMAT_R8G8B8_SSCALED" 26)
                            ("VK_FORMAT_R8G8B8_UINT" 27)
                            ("VK_FORMAT_R8G8B8_SINT" 28)
                            ("VK_FORMAT_R8G8B8_SRGB" 29)
                            ("VK_FORMAT_B8G8R8_UNORM" 30)
                            ("VK_FORMAT_B8G8R8_SNORM" 31)
                            ("VK_FORMAT_B8G8R8_USCALED" 32)
                            ("VK_FORMAT_B8G8R8_SSCALED" 33)
                            ("VK_FORMAT_B8G8R8_UINT" 34)
                            ("VK_FORMAT_B8G8R8_SINT" 35)
                            ("VK_FORMAT_B8G8R8_SRGB" 36)
                            ("VK_FORMAT_R8G8B8A8_UNORM" 37)
                            ("VK_FORMAT_R8G8B8A8_SNORM" 38)
                            ("VK_FORMAT_R8G8B8A8_USCALED" 39)
                            ("VK_FORMAT_R8G8B8A8_SSCALED" 40)
                            ("VK_FORMAT_R8G8B8A8_UINT" 41)
                            ("VK_FORMAT_R8G8B8A8_SINT" 42)
                            ("VK_FORMAT_R8G8B8A8_SRGB" 43)
                            ("VK_FORMAT_B8G8R8A8_UNORM" 44)
                            ("VK_FORMAT_B8G8R8A8_SNORM" 45)
                            ("VK_FORMAT_B8G8R8A8_USCALED" 46)
                            ("VK_FORMAT_B8G8R8A8_SSCALED" 47)
                            ("VK_FORMAT_B8G8R8A8_UINT" 48)
                            ("VK_FORMAT_B8G8R8A8_SINT" 49)
                            ("VK_FORMAT_B8G8R8A8_SRGB" 50)
                            ("VK_FORMAT_A8B8G8R8_UNORM_PACK32" 51)
                            ("VK_FORMAT_A8B8G8R8_SNORM_PACK32" 52)
                            ("VK_FORMAT_A8B8G8R8_USCALED_PACK32" 53)
                            ("VK_FORMAT_A8B8G8R8_SSCALED_PACK32" 54)
                            ("VK_FORMAT_A8B8G8R8_UINT_PACK32" 55)
                            ("VK_FORMAT_A8B8G8R8_SINT_PACK32" 56)
                            ("VK_FORMAT_A8B8G8R8_SRGB_PACK32" 57)
                            ("VK_FORMAT_A2R10G10B10_UNORM_PACK32" 58)
                            ("VK_FORMAT_A2R10G10B10_SNORM_PACK32" 59)
                            ("VK_FORMAT_A2R10G10B10_USCALED_PACK32" 60)
                            ("VK_FORMAT_A2R10G10B10_SSCALED_PACK32" 61)
                            ("VK_FORMAT_A2R10G10B10_UINT_PACK32" 62)
                            ("VK_FORMAT_A2R10G10B10_SINT_PACK32" 63)
                            ("VK_FORMAT_A2B10G10R10_UNORM_PACK32" 64)
                            ("VK_FORMAT_A2B10G10R10_SNORM_PACK32" 65)
                            ("VK_FORMAT_A2B10G10R10_USCALED_PACK32" 66)
                            ("VK_FORMAT_A2B10G10R10_SSCALED_PACK32" 67)
                            ("VK_FORMAT_A2B10G10R10_UINT_PACK32" 68)
                            ("VK_FORMAT_A2B10G10R10_SINT_PACK32" 69)
                            ("VK_FORMAT_R16_UNORM" 70)
                            ("VK_FORMAT_R16_SNORM" 71)
                            ("VK_FORMAT_R16_USCALED" 72)
                            ("VK_FORMAT_R16_SSCALED" 73)
                            ("VK_FORMAT_R16_UINT" 74) ("VK_FORMAT_R16_SINT" 75)
                            ("VK_FORMAT_R16_SFLOAT" 76)
                            ("VK_FORMAT_R16G16_UNORM" 77)
                            ("VK_FORMAT_R16G16_SNORM" 78)
                            ("VK_FORMAT_R16G16_USCALED" 79)
                            ("VK_FORMAT_R16G16_SSCALED" 80)
                            ("VK_FORMAT_R16G16_UINT" 81)
                            ("VK_FORMAT_R16G16_SINT" 82)
                            ("VK_FORMAT_R16G16_SFLOAT" 83)
                            ("VK_FORMAT_R16G16B16_UNORM" 84)
                            ("VK_FORMAT_R16G16B16_SNORM" 85)
                            ("VK_FORMAT_R16G16B16_USCALED" 86)
                            ("VK_FORMAT_R16G16B16_SSCALED" 87)
                            ("VK_FORMAT_R16G16B16_UINT" 88)
                            ("VK_FORMAT_R16G16B16_SINT" 89)
                            ("VK_FORMAT_R16G16B16_SFLOAT" 90)
                            ("VK_FORMAT_R16G16B16A16_UNORM" 91)
                            ("VK_FORMAT_R16G16B16A16_SNORM" 92)
                            ("VK_FORMAT_R16G16B16A16_USCALED" 93)
                            ("VK_FORMAT_R16G16B16A16_SSCALED" 94)
                            ("VK_FORMAT_R16G16B16A16_UINT" 95)
                            ("VK_FORMAT_R16G16B16A16_SINT" 96)
                            ("VK_FORMAT_R16G16B16A16_SFLOAT" 97)
                            ("VK_FORMAT_R32_UINT" 98) ("VK_FORMAT_R32_SINT" 99)
                            ("VK_FORMAT_R32_SFLOAT" 100)
                            ("VK_FORMAT_R32G32_UINT" 101)
                            ("VK_FORMAT_R32G32_SINT" 102)
                            ("VK_FORMAT_R32G32_SFLOAT" 103)
                            ("VK_FORMAT_R32G32B32_UINT" 104)
                            ("VK_FORMAT_R32G32B32_SINT" 105)
                            ("VK_FORMAT_R32G32B32_SFLOAT" 106)
                            ("VK_FORMAT_R32G32B32A32_UINT" 107)
                            ("VK_FORMAT_R32G32B32A32_SINT" 108)
                            ("VK_FORMAT_R32G32B32A32_SFLOAT" 109)
                            ("VK_FORMAT_R64_UINT" 110)
                            ("VK_FORMAT_R64_SINT" 111)
                            ("VK_FORMAT_R64_SFLOAT" 112)
                            ("VK_FORMAT_R64G64_UINT" 113)
                            ("VK_FORMAT_R64G64_SINT" 114)
                            ("VK_FORMAT_R64G64_SFLOAT" 115)
                            ("VK_FORMAT_R64G64B64_UINT" 116)
                            ("VK_FORMAT_R64G64B64_SINT" 117)
                            ("VK_FORMAT_R64G64B64_SFLOAT" 118)
                            ("VK_FORMAT_R64G64B64A64_UINT" 119)
                            ("VK_FORMAT_R64G64B64A64_SINT" 120)
                            ("VK_FORMAT_R64G64B64A64_SFLOAT" 121)
                            ("VK_FORMAT_B10G11R11_UFLOAT_PACK32" 122)
                            ("VK_FORMAT_E5B9G9R9_UFLOAT_PACK32" 123)
                            ("VK_FORMAT_D16_UNORM" 124)
                            ("VK_FORMAT_X8_D24_UNORM_PACK32" 125)
                            ("VK_FORMAT_D32_SFLOAT" 126)
                            ("VK_FORMAT_S8_UINT" 127)
                            ("VK_FORMAT_D16_UNORM_S8_UINT" 128)
                            ("VK_FORMAT_D24_UNORM_S8_UINT" 129)
                            ("VK_FORMAT_D32_SFLOAT_S8_UINT" 130)
                            ("VK_FORMAT_BC1_RGB_UNORM_BLOCK" 131)
                            ("VK_FORMAT_BC1_RGB_SRGB_BLOCK" 132)
                            ("VK_FORMAT_BC1_RGBA_UNORM_BLOCK" 133)
                            ("VK_FORMAT_BC1_RGBA_SRGB_BLOCK" 134)
                            ("VK_FORMAT_BC2_UNORM_BLOCK" 135)
                            ("VK_FORMAT_BC2_SRGB_BLOCK" 136)
                            ("VK_FORMAT_BC3_UNORM_BLOCK" 137)
                            ("VK_FORMAT_BC3_SRGB_BLOCK" 138)
                            ("VK_FORMAT_BC4_UNORM_BLOCK" 139)
                            ("VK_FORMAT_BC4_SNORM_BLOCK" 140)
                            ("VK_FORMAT_BC5_UNORM_BLOCK" 141)
                            ("VK_FORMAT_BC5_SNORM_BLOCK" 142)
                            ("VK_FORMAT_BC6H_UFLOAT_BLOCK" 143)
                            ("VK_FORMAT_BC6H_SFLOAT_BLOCK" 144)
                            ("VK_FORMAT_BC7_UNORM_BLOCK" 145)
                            ("VK_FORMAT_BC7_SRGB_BLOCK" 146)
                            ("VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK" 147)
                            ("VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK" 148)
                            ("VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK" 149)
                            ("VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK" 150)
                            ("VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK" 151)
                            ("VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK" 152)
                            ("VK_FORMAT_EAC_R11_UNORM_BLOCK" 153)
                            ("VK_FORMAT_EAC_R11_SNORM_BLOCK" 154)
                            ("VK_FORMAT_EAC_R11G11_UNORM_BLOCK" 155)
                            ("VK_FORMAT_EAC_R11G11_SNORM_BLOCK" 156)
                            ("VK_FORMAT_ASTC_4x4_UNORM_BLOCK" 157)
                            ("VK_FORMAT_ASTC_4x4_SRGB_BLOCK" 158)
                            ("VK_FORMAT_ASTC_5x4_UNORM_BLOCK" 159)
                            ("VK_FORMAT_ASTC_5x4_SRGB_BLOCK" 160)
                            ("VK_FORMAT_ASTC_5x5_UNORM_BLOCK" 161)
                            ("VK_FORMAT_ASTC_5x5_SRGB_BLOCK" 162)
                            ("VK_FORMAT_ASTC_6x5_UNORM_BLOCK" 163)
                            ("VK_FORMAT_ASTC_6x5_SRGB_BLOCK" 164)
                            ("VK_FORMAT_ASTC_6x6_UNORM_BLOCK" 165)
                            ("VK_FORMAT_ASTC_6x6_SRGB_BLOCK" 166)
                            ("VK_FORMAT_ASTC_8x5_UNORM_BLOCK" 167)
                            ("VK_FORMAT_ASTC_8x5_SRGB_BLOCK" 168)
                            ("VK_FORMAT_ASTC_8x6_UNORM_BLOCK" 169)
                            ("VK_FORMAT_ASTC_8x6_SRGB_BLOCK" 170)
                            ("VK_FORMAT_ASTC_8x8_UNORM_BLOCK" 171)
                            ("VK_FORMAT_ASTC_8x8_SRGB_BLOCK" 172)
                            ("VK_FORMAT_ASTC_10x5_UNORM_BLOCK" 173)
                            ("VK_FORMAT_ASTC_10x5_SRGB_BLOCK" 174)
                            ("VK_FORMAT_ASTC_10x6_UNORM_BLOCK" 175)
                            ("VK_FORMAT_ASTC_10x6_SRGB_BLOCK" 176)
                            ("VK_FORMAT_ASTC_10x8_UNORM_BLOCK" 177)
                            ("VK_FORMAT_ASTC_10x8_SRGB_BLOCK" 178)
                            ("VK_FORMAT_ASTC_10x10_UNORM_BLOCK" 179)
                            ("VK_FORMAT_ASTC_10x10_SRGB_BLOCK" 180)
                            ("VK_FORMAT_ASTC_12x10_UNORM_BLOCK" 181)
                            ("VK_FORMAT_ASTC_12x10_SRGB_BLOCK" 182)
                            ("VK_FORMAT_ASTC_12x12_UNORM_BLOCK" 183)
                            ("VK_FORMAT_ASTC_12x12_SRGB_BLOCK" 184)
                            ("VK_FORMAT_G8B8G8R8_422_UNORM" 1000156000)
                            ("VK_FORMAT_B8G8R8G8_422_UNORM" 1000156001)
                            ("VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM" 1000156002)
                            ("VK_FORMAT_G8_B8R8_2PLANE_420_UNORM" 1000156003)
                            ("VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM" 1000156004)
                            ("VK_FORMAT_G8_B8R8_2PLANE_422_UNORM" 1000156005)
                            ("VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM" 1000156006)
                            ("VK_FORMAT_R10X6_UNORM_PACK16" 1000156007)
                            ("VK_FORMAT_R10X6G10X6_UNORM_2PACK16" 1000156008)
                            ("VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16"
                             1000156009)
                            ("VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16"
                             1000156010)
                            ("VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16"
                             1000156011)
                            ("VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16"
                             1000156012)
                            ("VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16"
                             1000156013)
                            ("VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16"
                             1000156014)
                            ("VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16"
                             1000156015)
                            ("VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16"
                             1000156016)
                            ("VK_FORMAT_R12X4_UNORM_PACK16" 1000156017)
                            ("VK_FORMAT_R12X4G12X4_UNORM_2PACK16" 1000156018)
                            ("VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16"
                             1000156019)
                            ("VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16"
                             1000156020)
                            ("VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16"
                             1000156021)
                            ("VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16"
                             1000156022)
                            ("VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16"
                             1000156023)
                            ("VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16"
                             1000156024)
                            ("VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16"
                             1000156025)
                            ("VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16"
                             1000156026)
                            ("VK_FORMAT_G16B16G16R16_422_UNORM" 1000156027)
                            ("VK_FORMAT_B16G16R16G16_422_UNORM" 1000156028)
                            ("VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM"
                             1000156029)
                            ("VK_FORMAT_G16_B16R16_2PLANE_420_UNORM"
                             1000156030)
                            ("VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM"
                             1000156031)
                            ("VK_FORMAT_G16_B16R16_2PLANE_422_UNORM"
                             1000156032)
                            ("VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM"
                             1000156033)
                            ("VK_FORMAT_G8_B8R8_2PLANE_444_UNORM" 1000330000)
                            ("VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16"
                             1000330001)
                            ("VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16"
                             1000330002)
                            ("VK_FORMAT_G16_B16R16_2PLANE_444_UNORM"
                             1000330003)
                            ("VK_FORMAT_A4R4G4B4_UNORM_PACK16" 1000340000)
                            ("VK_FORMAT_A4B4G4R4_UNORM_PACK16" 1000340001)
                            ("VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK" 1000066000)
                            ("VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK" 1000066001)
                            ("VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK" 1000066002)
                            ("VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK" 1000066003)
                            ("VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK" 1000066004)
                            ("VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK" 1000066005)
                            ("VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK" 1000066006)
                            ("VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK" 1000066007)
                            ("VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK" 1000066008)
                            ("VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK" 1000066009)
                            ("VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK" 1000066010)
                            ("VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK" 1000066011)
                            ("VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK" 1000066012)
                            ("VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK" 1000066013)
                            ("VK_FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG"
                             1000054000)
                            ("VK_FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG"
                             1000054001)
                            ("VK_FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG"
                             1000054002)
                            ("VK_FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG"
                             1000054003)
                            ("VK_FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG" 1000054004)
                            ("VK_FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG" 1000054005)
                            ("VK_FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG" 1000054006)
                            ("VK_FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG" 1000054007)
                            ("VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK_EXT"
                             vk_format_astc_4x4_sfloat_block)
                            ("VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK_EXT"
                             vk_format_astc_5x4_sfloat_block)
                            ("VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK_EXT"
                             vk_format_astc_5x5_sfloat_block)
                            ("VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK_EXT"
                             vk_format_astc_6x5_sfloat_block)
                            ("VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK_EXT"
                             vk_format_astc_6x6_sfloat_block)
                            ("VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK_EXT"
                             vk_format_astc_8x5_sfloat_block)
                            ("VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK_EXT"
                             vk_format_astc_8x6_sfloat_block)
                            ("VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK_EXT"
                             vk_format_astc_8x8_sfloat_block)
                            ("VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK_EXT"
                             vk_format_astc_10x5_sfloat_block)
                            ("VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK_EXT"
                             vk_format_astc_10x6_sfloat_block)
                            ("VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK_EXT"
                             vk_format_astc_10x8_sfloat_block)
                            ("VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK_EXT"
                             vk_format_astc_10x10_sfloat_block)
                            ("VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK_EXT"
                             vk_format_astc_12x10_sfloat_block)
                            ("VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK_EXT"
                             vk_format_astc_12x12_sfloat_block)
                            ("VK_FORMAT_G8B8G8R8_422_UNORM_KHR"
                             vk_format_g8b8g8r8_422_unorm)
                            ("VK_FORMAT_B8G8R8G8_422_UNORM_KHR"
                             vk_format_b8g8r8g8_422_unorm)
                            ("VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR"
                             vk_format_g8_b8_r8_3plane_420_unorm)
                            ("VK_FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR"
                             vk_format_g8_b8r8_2plane_420_unorm)
                            ("VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR"
                             vk_format_g8_b8_r8_3plane_422_unorm)
                            ("VK_FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR"
                             vk_format_g8_b8r8_2plane_422_unorm)
                            ("VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR"
                             vk_format_g8_b8_r8_3plane_444_unorm)
                            ("VK_FORMAT_R10X6_UNORM_PACK16_KHR"
                             vk_format_r10x6_unorm_pack16)
                            ("VK_FORMAT_R10X6G10X6_UNORM_2PACK16_KHR"
                             vk_format_r10x6g10x6_unorm_2pack16)
                            ("VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR"
                             vk_format_r10x6g10x6b10x6a10x6_unorm_4pack16)
                            ("VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR"
                             vk_format_g10x6b10x6g10x6r10x6_422_unorm_4pack16)
                            ("VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR"
                             vk_format_b10x6g10x6r10x6g10x6_422_unorm_4pack16)
                            ("VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR"
                             vk_format_g10x6_b10x6_r10x6_3plane_420_unorm_3pack16)
                            ("VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR"
                             vk_format_g10x6_b10x6r10x6_2plane_420_unorm_3pack16)
                            ("VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR"
                             vk_format_g10x6_b10x6_r10x6_3plane_422_unorm_3pack16)
                            ("VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR"
                             vk_format_g10x6_b10x6r10x6_2plane_422_unorm_3pack16)
                            ("VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR"
                             vk_format_g10x6_b10x6_r10x6_3plane_444_unorm_3pack16)
                            ("VK_FORMAT_R12X4_UNORM_PACK16_KHR"
                             vk_format_r12x4_unorm_pack16)
                            ("VK_FORMAT_R12X4G12X4_UNORM_2PACK16_KHR"
                             vk_format_r12x4g12x4_unorm_2pack16)
                            ("VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR"
                             vk_format_r12x4g12x4b12x4a12x4_unorm_4pack16)
                            ("VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR"
                             vk_format_g12x4b12x4g12x4r12x4_422_unorm_4pack16)
                            ("VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR"
                             vk_format_b12x4g12x4r12x4g12x4_422_unorm_4pack16)
                            ("VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR"
                             vk_format_g12x4_b12x4_r12x4_3plane_420_unorm_3pack16)
                            ("VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR"
                             vk_format_g12x4_b12x4r12x4_2plane_420_unorm_3pack16)
                            ("VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR"
                             vk_format_g12x4_b12x4_r12x4_3plane_422_unorm_3pack16)
                            ("VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR"
                             vk_format_g12x4_b12x4r12x4_2plane_422_unorm_3pack16)
                            ("VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR"
                             vk_format_g12x4_b12x4_r12x4_3plane_444_unorm_3pack16)
                            ("VK_FORMAT_G16B16G16R16_422_UNORM_KHR"
                             vk_format_g16b16g16r16_422_unorm)
                            ("VK_FORMAT_B16G16R16G16_422_UNORM_KHR"
                             vk_format_b16g16r16g16_422_unorm)
                            ("VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR"
                             vk_format_g16_b16_r16_3plane_420_unorm)
                            ("VK_FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR"
                             vk_format_g16_b16r16_2plane_420_unorm)
                            ("VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR"
                             vk_format_g16_b16_r16_3plane_422_unorm)
                            ("VK_FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR"
                             vk_format_g16_b16r16_2plane_422_unorm)
                            ("VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR"
                             vk_format_g16_b16_r16_3plane_444_unorm)
                            ("VK_FORMAT_G8_B8R8_2PLANE_444_UNORM_EXT"
                             vk_format_g8_b8r8_2plane_444_unorm)
                            ("VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16_EXT"
                             vk_format_g10x6_b10x6r10x6_2plane_444_unorm_3pack16)
                            ("VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16_EXT"
                             vk_format_g12x4_b12x4r12x4_2plane_444_unorm_3pack16)
                            ("VK_FORMAT_G16_B16R16_2PLANE_444_UNORM_EXT"
                             vk_format_g16_b16r16_2plane_444_unorm)
                            ("VK_FORMAT_A4R4G4B4_UNORM_PACK16_EXT"
                             vk_format_a4r4g4b4_unorm_pack16)
                            ("VK_FORMAT_A4B4G4R4_UNORM_PACK16_EXT"
                             vk_format_a4b4g4r4_unorm_pack16)
                            ("VK_FORMAT_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkImageTiling"
                            ("VK_IMAGE_TILING_OPTIMAL" 0)
                            ("VK_IMAGE_TILING_LINEAR" 1)
                            ("VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT"
                             1000158000)
                            ("VK_IMAGE_TILING_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkImageType" ("VK_IMAGE_TYPE_1D" 0)
                            ("VK_IMAGE_TYPE_2D" 1) ("VK_IMAGE_TYPE_3D" 2)
                            ("VK_IMAGE_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPhysicalDeviceType"
                            ("VK_PHYSICAL_DEVICE_TYPE_OTHER" 0)
                            ("VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU" 1)
                            ("VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU" 2)
                            ("VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU" 3)
                            ("VK_PHYSICAL_DEVICE_TYPE_CPU" 4)
                            ("VK_PHYSICAL_DEVICE_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkQueryType"
                            ("VK_QUERY_TYPE_OCCLUSION" 0)
                            ("VK_QUERY_TYPE_PIPELINE_STATISTICS" 1)
                            ("VK_QUERY_TYPE_TIMESTAMP" 2)
                            ("VK_QUERY_TYPE_RESULT_STATUS_ONLY_KHR" 1000023000)
                            ("VK_QUERY_TYPE_TRANSFORM_FEEDBACK_STREAM_EXT"
                             1000028004)
                            ("VK_QUERY_TYPE_PERFORMANCE_QUERY_KHR" 1000116000)
                            ("VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_KHR"
                             1000150000)
                            ("VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_SIZE_KHR"
                             1000150001)
                            ("VK_QUERY_TYPE_ACCELERATION_STRUCTURE_COMPACTED_SIZE_NV"
                             1000165000)
                            ("VK_QUERY_TYPE_PERFORMANCE_QUERY_INTEL"
                             1000210000)
                            ("VK_QUERY_TYPE_VIDEO_ENCODE_BITSTREAM_BUFFER_RANGE_KHR"
                             1000299000)
                            ("VK_QUERY_TYPE_PRIMITIVES_GENERATED_EXT"
                             1000382000)
                            ("VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SERIALIZATION_BOTTOM_LEVEL_POINTERS_KHR"
                             1000386000)
                            ("VK_QUERY_TYPE_ACCELERATION_STRUCTURE_SIZE_KHR"
                             1000386001)
                            ("VK_QUERY_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSharingMode"
                            ("VK_SHARING_MODE_EXCLUSIVE" 0)
                            ("VK_SHARING_MODE_CONCURRENT" 1)
                            ("VK_SHARING_MODE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkComponentSwizzle"
                            ("VK_COMPONENT_SWIZZLE_IDENTITY" 0)
                            ("VK_COMPONENT_SWIZZLE_ZERO" 1)
                            ("VK_COMPONENT_SWIZZLE_ONE" 2)
                            ("VK_COMPONENT_SWIZZLE_R" 3)
                            ("VK_COMPONENT_SWIZZLE_G" 4)
                            ("VK_COMPONENT_SWIZZLE_B" 5)
                            ("VK_COMPONENT_SWIZZLE_A" 6)
                            ("VK_COMPONENT_SWIZZLE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkImageViewType"
                            ("VK_IMAGE_VIEW_TYPE_1D" 0)
                            ("VK_IMAGE_VIEW_TYPE_2D" 1)
                            ("VK_IMAGE_VIEW_TYPE_3D" 2)
                            ("VK_IMAGE_VIEW_TYPE_CUBE" 3)
                            ("VK_IMAGE_VIEW_TYPE_1D_ARRAY" 4)
                            ("VK_IMAGE_VIEW_TYPE_2D_ARRAY" 5)
                            ("VK_IMAGE_VIEW_TYPE_CUBE_ARRAY" 6)
                            ("VK_IMAGE_VIEW_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkBlendFactor" ("VK_BLEND_FACTOR_ZERO" 0)
                            ("VK_BLEND_FACTOR_ONE" 1)
                            ("VK_BLEND_FACTOR_SRC_COLOR" 2)
                            ("VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR" 3)
                            ("VK_BLEND_FACTOR_DST_COLOR" 4)
                            ("VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR" 5)
                            ("VK_BLEND_FACTOR_SRC_ALPHA" 6)
                            ("VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA" 7)
                            ("VK_BLEND_FACTOR_DST_ALPHA" 8)
                            ("VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA" 9)
                            ("VK_BLEND_FACTOR_CONSTANT_COLOR" 10)
                            ("VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR" 11)
                            ("VK_BLEND_FACTOR_CONSTANT_ALPHA" 12)
                            ("VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA" 13)
                            ("VK_BLEND_FACTOR_SRC_ALPHA_SATURATE" 14)
                            ("VK_BLEND_FACTOR_SRC1_COLOR" 15)
                            ("VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR" 16)
                            ("VK_BLEND_FACTOR_SRC1_ALPHA" 17)
                            ("VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA" 18)
                            ("VK_BLEND_FACTOR_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkBlendOp" ("VK_BLEND_OP_ADD" 0)
                            ("VK_BLEND_OP_SUBTRACT" 1)
                            ("VK_BLEND_OP_REVERSE_SUBTRACT" 2)
                            ("VK_BLEND_OP_MIN" 3) ("VK_BLEND_OP_MAX" 4)
                            ("VK_BLEND_OP_ZERO_EXT" 1000148000)
                            ("VK_BLEND_OP_SRC_EXT" 1000148001)
                            ("VK_BLEND_OP_DST_EXT" 1000148002)
                            ("VK_BLEND_OP_SRC_OVER_EXT" 1000148003)
                            ("VK_BLEND_OP_DST_OVER_EXT" 1000148004)
                            ("VK_BLEND_OP_SRC_IN_EXT" 1000148005)
                            ("VK_BLEND_OP_DST_IN_EXT" 1000148006)
                            ("VK_BLEND_OP_SRC_OUT_EXT" 1000148007)
                            ("VK_BLEND_OP_DST_OUT_EXT" 1000148008)
                            ("VK_BLEND_OP_SRC_ATOP_EXT" 1000148009)
                            ("VK_BLEND_OP_DST_ATOP_EXT" 1000148010)
                            ("VK_BLEND_OP_XOR_EXT" 1000148011)
                            ("VK_BLEND_OP_MULTIPLY_EXT" 1000148012)
                            ("VK_BLEND_OP_SCREEN_EXT" 1000148013)
                            ("VK_BLEND_OP_OVERLAY_EXT" 1000148014)
                            ("VK_BLEND_OP_DARKEN_EXT" 1000148015)
                            ("VK_BLEND_OP_LIGHTEN_EXT" 1000148016)
                            ("VK_BLEND_OP_COLORDODGE_EXT" 1000148017)
                            ("VK_BLEND_OP_COLORBURN_EXT" 1000148018)
                            ("VK_BLEND_OP_HARDLIGHT_EXT" 1000148019)
                            ("VK_BLEND_OP_SOFTLIGHT_EXT" 1000148020)
                            ("VK_BLEND_OP_DIFFERENCE_EXT" 1000148021)
                            ("VK_BLEND_OP_EXCLUSION_EXT" 1000148022)
                            ("VK_BLEND_OP_INVERT_EXT" 1000148023)
                            ("VK_BLEND_OP_INVERT_RGB_EXT" 1000148024)
                            ("VK_BLEND_OP_LINEARDODGE_EXT" 1000148025)
                            ("VK_BLEND_OP_LINEARBURN_EXT" 1000148026)
                            ("VK_BLEND_OP_VIVIDLIGHT_EXT" 1000148027)
                            ("VK_BLEND_OP_LINEARLIGHT_EXT" 1000148028)
                            ("VK_BLEND_OP_PINLIGHT_EXT" 1000148029)
                            ("VK_BLEND_OP_HARDMIX_EXT" 1000148030)
                            ("VK_BLEND_OP_HSL_HUE_EXT" 1000148031)
                            ("VK_BLEND_OP_HSL_SATURATION_EXT" 1000148032)
                            ("VK_BLEND_OP_HSL_COLOR_EXT" 1000148033)
                            ("VK_BLEND_OP_HSL_LUMINOSITY_EXT" 1000148034)
                            ("VK_BLEND_OP_PLUS_EXT" 1000148035)
                            ("VK_BLEND_OP_PLUS_CLAMPED_EXT" 1000148036)
                            ("VK_BLEND_OP_PLUS_CLAMPED_ALPHA_EXT" 1000148037)
                            ("VK_BLEND_OP_PLUS_DARKER_EXT" 1000148038)
                            ("VK_BLEND_OP_MINUS_EXT" 1000148039)
                            ("VK_BLEND_OP_MINUS_CLAMPED_EXT" 1000148040)
                            ("VK_BLEND_OP_CONTRAST_EXT" 1000148041)
                            ("VK_BLEND_OP_INVERT_OVG_EXT" 1000148042)
                            ("VK_BLEND_OP_RED_EXT" 1000148043)
                            ("VK_BLEND_OP_GREEN_EXT" 1000148044)
                            ("VK_BLEND_OP_BLUE_EXT" 1000148045)
                            ("VK_BLEND_OP_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkCompareOp" ("VK_COMPARE_OP_NEVER" 0)
                            ("VK_COMPARE_OP_LESS" 1) ("VK_COMPARE_OP_EQUAL" 2)
                            ("VK_COMPARE_OP_LESS_OR_EQUAL" 3)
                            ("VK_COMPARE_OP_GREATER" 4)
                            ("VK_COMPARE_OP_NOT_EQUAL" 5)
                            ("VK_COMPARE_OP_GREATER_OR_EQUAL" 6)
                            ("VK_COMPARE_OP_ALWAYS" 7)
                            ("VK_COMPARE_OP_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkDynamicState"
                            ("VK_DYNAMIC_STATE_VIEWPORT" 0)
                            ("VK_DYNAMIC_STATE_SCISSOR" 1)
                            ("VK_DYNAMIC_STATE_LINE_WIDTH" 2)
                            ("VK_DYNAMIC_STATE_DEPTH_BIAS" 3)
                            ("VK_DYNAMIC_STATE_BLEND_CONSTANTS" 4)
                            ("VK_DYNAMIC_STATE_DEPTH_BOUNDS" 5)
                            ("VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK" 6)
                            ("VK_DYNAMIC_STATE_STENCIL_WRITE_MASK" 7)
                            ("VK_DYNAMIC_STATE_STENCIL_REFERENCE" 8)
                            ("VK_DYNAMIC_STATE_CULL_MODE" 1000267000)
                            ("VK_DYNAMIC_STATE_FRONT_FACE" 1000267001)
                            ("VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY" 1000267002)
                            ("VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT" 1000267003)
                            ("VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT" 1000267004)
                            ("VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE"
                             1000267005)
                            ("VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE" 1000267006)
                            ("VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE" 1000267007)
                            ("VK_DYNAMIC_STATE_DEPTH_COMPARE_OP" 1000267008)
                            ("VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE"
                             1000267009)
                            ("VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE" 1000267010)
                            ("VK_DYNAMIC_STATE_STENCIL_OP" 1000267011)
                            ("VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE"
                             1000377001)
                            ("VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE" 1000377002)
                            ("VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE"
                             1000377004)
                            ("VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_NV"
                             1000087000)
                            ("VK_DYNAMIC_STATE_DISCARD_RECTANGLE_EXT"
                             1000099000)
                            ("VK_DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT"
                             1000143000)
                            ("VK_DYNAMIC_STATE_RAY_TRACING_PIPELINE_STACK_SIZE_KHR"
                             1000347000)
                            ("VK_DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV"
                             1000164004)
                            ("VK_DYNAMIC_STATE_VIEWPORT_COARSE_SAMPLE_ORDER_NV"
                             1000164006)
                            ("VK_DYNAMIC_STATE_EXCLUSIVE_SCISSOR_NV"
                             1000205001)
                            ("VK_DYNAMIC_STATE_FRAGMENT_SHADING_RATE_KHR"
                             1000226000)
                            ("VK_DYNAMIC_STATE_LINE_STIPPLE_EXT" 1000259000)
                            ("VK_DYNAMIC_STATE_VERTEX_INPUT_EXT" 1000352000)
                            ("VK_DYNAMIC_STATE_PATCH_CONTROL_POINTS_EXT"
                             1000377000)
                            ("VK_DYNAMIC_STATE_LOGIC_OP_EXT" 1000377003)
                            ("VK_DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT"
                             1000381000)
                            ("VK_DYNAMIC_STATE_CULL_MODE_EXT"
                             vk_dynamic_state_cull_mode)
                            ("VK_DYNAMIC_STATE_FRONT_FACE_EXT"
                             vk_dynamic_state_front_face)
                            ("VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY_EXT"
                             vk_dynamic_state_primitive_topology)
                            ("VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT_EXT"
                             vk_dynamic_state_viewport_with_count)
                            ("VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT_EXT"
                             vk_dynamic_state_scissor_with_count)
                            ("VK_DYNAMIC_STATE_VERTEX_INPUT_BINDING_STRIDE_EXT"
                             vk_dynamic_state_vertex_input_binding_stride)
                            ("VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE_EXT"
                             vk_dynamic_state_depth_test_enable)
                            ("VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE_EXT"
                             vk_dynamic_state_depth_write_enable)
                            ("VK_DYNAMIC_STATE_DEPTH_COMPARE_OP_EXT"
                             vk_dynamic_state_depth_compare_op)
                            ("VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE_EXT"
                             vk_dynamic_state_depth_bounds_test_enable)
                            ("VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE_EXT"
                             vk_dynamic_state_stencil_test_enable)
                            ("VK_DYNAMIC_STATE_STENCIL_OP_EXT"
                             vk_dynamic_state_stencil_op)
                            ("VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE_EXT"
                             vk_dynamic_state_rasterizer_discard_enable)
                            ("VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE_EXT"
                             vk_dynamic_state_depth_bias_enable)
                            ("VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE_EXT"
                             vk_dynamic_state_primitive_restart_enable)
                            ("VK_DYNAMIC_STATE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkFrontFace"
                            ("VK_FRONT_FACE_COUNTER_CLOCKWISE" 0)
                            ("VK_FRONT_FACE_CLOCKWISE" 1)
                            ("VK_FRONT_FACE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkVertexInputRate"
                            ("VK_VERTEX_INPUT_RATE_VERTEX" 0)
                            ("VK_VERTEX_INPUT_RATE_INSTANCE" 1)
                            ("VK_VERTEX_INPUT_RATE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPrimitiveTopology"
                            ("VK_PRIMITIVE_TOPOLOGY_POINT_LIST" 0)
                            ("VK_PRIMITIVE_TOPOLOGY_LINE_LIST" 1)
                            ("VK_PRIMITIVE_TOPOLOGY_LINE_STRIP" 2)
                            ("VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST" 3)
                            ("VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP" 4)
                            ("VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN" 5)
                            ("VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY"
                             6)
                            ("VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY"
                             7)
                            ("VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY"
                             8)
                            ("VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY"
                             9)
                            ("VK_PRIMITIVE_TOPOLOGY_PATCH_LIST" 10)
                            ("VK_PRIMITIVE_TOPOLOGY_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPolygonMode" ("VK_POLYGON_MODE_FILL" 0)
                            ("VK_POLYGON_MODE_LINE" 1)
                            ("VK_POLYGON_MODE_POINT" 2)
                            ("VK_POLYGON_MODE_FILL_RECTANGLE_NV" 1000153000)
                            ("VK_POLYGON_MODE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkStencilOp" ("VK_STENCIL_OP_KEEP" 0)
                            ("VK_STENCIL_OP_ZERO" 1)
                            ("VK_STENCIL_OP_REPLACE" 2)
                            ("VK_STENCIL_OP_INCREMENT_AND_CLAMP" 3)
                            ("VK_STENCIL_OP_DECREMENT_AND_CLAMP" 4)
                            ("VK_STENCIL_OP_INVERT" 5)
                            ("VK_STENCIL_OP_INCREMENT_AND_WRAP" 6)
                            ("VK_STENCIL_OP_DECREMENT_AND_WRAP" 7)
                            ("VK_STENCIL_OP_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkLogicOp" ("VK_LOGIC_OP_CLEAR" 0)
                            ("VK_LOGIC_OP_AND" 1) ("VK_LOGIC_OP_AND_REVERSE" 2)
                            ("VK_LOGIC_OP_COPY" 3)
                            ("VK_LOGIC_OP_AND_INVERTED" 4)
                            ("VK_LOGIC_OP_NO_OP" 5) ("VK_LOGIC_OP_XOR" 6)
                            ("VK_LOGIC_OP_OR" 7) ("VK_LOGIC_OP_NOR" 8)
                            ("VK_LOGIC_OP_EQUIVALENT" 9)
                            ("VK_LOGIC_OP_INVERT" 10)
                            ("VK_LOGIC_OP_OR_REVERSE" 11)
                            ("VK_LOGIC_OP_COPY_INVERTED" 12)
                            ("VK_LOGIC_OP_OR_INVERTED" 13)
                            ("VK_LOGIC_OP_NAND" 14) ("VK_LOGIC_OP_SET" 15)
                            ("VK_LOGIC_OP_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkBorderColor"
                            ("VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK" 0)
                            ("VK_BORDER_COLOR_INT_TRANSPARENT_BLACK" 1)
                            ("VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK" 2)
                            ("VK_BORDER_COLOR_INT_OPAQUE_BLACK" 3)
                            ("VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE" 4)
                            ("VK_BORDER_COLOR_INT_OPAQUE_WHITE" 5)
                            ("VK_BORDER_COLOR_FLOAT_CUSTOM_EXT" 1000287003)
                            ("VK_BORDER_COLOR_INT_CUSTOM_EXT" 1000287004)
                            ("VK_BORDER_COLOR_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkFilter" ("VK_FILTER_NEAREST" 0)
                            ("VK_FILTER_LINEAR" 1)
                            ("VK_FILTER_CUBIC_IMG" 1000015000)
                            ("VK_FILTER_CUBIC_EXT" vk_filter_cubic_img)
                            ("VK_FILTER_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSamplerAddressMode"
                            ("VK_SAMPLER_ADDRESS_MODE_REPEAT" 0)
                            ("VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT" 1)
                            ("VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE" 2)
                            ("VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER" 3)
                            ("VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE" 4)
                            ("VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE_KHR"
                             vk_sampler_address_mode_mirror_clamp_to_edge)
                            ("VK_SAMPLER_ADDRESS_MODE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSamplerMipmapMode"
                            ("VK_SAMPLER_MIPMAP_MODE_NEAREST" 0)
                            ("VK_SAMPLER_MIPMAP_MODE_LINEAR" 1)
                            ("VK_SAMPLER_MIPMAP_MODE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkDescriptorType"
                            ("VK_DESCRIPTOR_TYPE_SAMPLER" 0)
                            ("VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER" 1)
                            ("VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE" 2)
                            ("VK_DESCRIPTOR_TYPE_STORAGE_IMAGE" 3)
                            ("VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER" 4)
                            ("VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER" 5)
                            ("VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER" 6)
                            ("VK_DESCRIPTOR_TYPE_STORAGE_BUFFER" 7)
                            ("VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC" 8)
                            ("VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC" 9)
                            ("VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT" 10)
                            ("VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK"
                             1000138000)
                            ("VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_KHR"
                             1000150000)
                            ("VK_DESCRIPTOR_TYPE_ACCELERATION_STRUCTURE_NV"
                             1000165000)
                            ("VK_DESCRIPTOR_TYPE_MUTABLE_VALVE" 1000351000)
                            ("VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT"
                             vk_descriptor_type_inline_uniform_block)
                            ("VK_DESCRIPTOR_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkAttachmentLoadOp"
                            ("VK_ATTACHMENT_LOAD_OP_LOAD" 0)
                            ("VK_ATTACHMENT_LOAD_OP_CLEAR" 1)
                            ("VK_ATTACHMENT_LOAD_OP_DONT_CARE" 2)
                            ("VK_ATTACHMENT_LOAD_OP_NONE_EXT" 1000400000)
                            ("VK_ATTACHMENT_LOAD_OP_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkAttachmentStoreOp"
                            ("VK_ATTACHMENT_STORE_OP_STORE" 0)
                            ("VK_ATTACHMENT_STORE_OP_DONT_CARE" 1)
                            ("VK_ATTACHMENT_STORE_OP_NONE" 1000301000)
                            ("VK_ATTACHMENT_STORE_OP_NONE_KHR"
                             vk_attachment_store_op_none)
                            ("VK_ATTACHMENT_STORE_OP_NONE_QCOM"
                             vk_attachment_store_op_none)
                            ("VK_ATTACHMENT_STORE_OP_NONE_EXT"
                             vk_attachment_store_op_none)
                            ("VK_ATTACHMENT_STORE_OP_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPipelineBindPoint"
                            ("VK_PIPELINE_BIND_POINT_GRAPHICS" 0)
                            ("VK_PIPELINE_BIND_POINT_COMPUTE" 1)
                            ("VK_PIPELINE_BIND_POINT_RAY_TRACING_KHR"
                             1000165000)
                            ("VK_PIPELINE_BIND_POINT_SUBPASS_SHADING_HUAWEI"
                             1000369003)
                            ("VK_PIPELINE_BIND_POINT_RAY_TRACING_NV"
                             vk_pipeline_bind_point_ray_tracing_khr)
                            ("VK_PIPELINE_BIND_POINT_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkCommandBufferLevel"
                            ("VK_COMMAND_BUFFER_LEVEL_PRIMARY" 0)
                            ("VK_COMMAND_BUFFER_LEVEL_SECONDARY" 1)
                            ("VK_COMMAND_BUFFER_LEVEL_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkIndexType" ("VK_INDEX_TYPE_UINT16" 0)
                            ("VK_INDEX_TYPE_UINT32" 1)
                            ("VK_INDEX_TYPE_NONE_KHR" 1000165000)
                            ("VK_INDEX_TYPE_UINT8_EXT" 1000265000)
                            ("VK_INDEX_TYPE_NONE_NV" vk_index_type_none_khr)
                            ("VK_INDEX_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSubpassContents"
                            ("VK_SUBPASS_CONTENTS_INLINE" 0)
                            ("VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS" 1)
                            ("VK_SUBPASS_CONTENTS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkAccessFlagBits"
                            ("VK_ACCESS_INDIRECT_COMMAND_READ_BIT" 1)
                            ("VK_ACCESS_INDEX_READ_BIT" 2)
                            ("VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT" 4)
                            ("VK_ACCESS_UNIFORM_READ_BIT" 8)
                            ("VK_ACCESS_INPUT_ATTACHMENT_READ_BIT" 16)
                            ("VK_ACCESS_SHADER_READ_BIT" 32)
                            ("VK_ACCESS_SHADER_WRITE_BIT" 64)
                            ("VK_ACCESS_COLOR_ATTACHMENT_READ_BIT" 128)
                            ("VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT" 256)
                            ("VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT" 512)
                            ("VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT"
                             1024)
                            ("VK_ACCESS_TRANSFER_READ_BIT" 2048)
                            ("VK_ACCESS_TRANSFER_WRITE_BIT" 4096)
                            ("VK_ACCESS_HOST_READ_BIT" 8192)
                            ("VK_ACCESS_HOST_WRITE_BIT" 16384)
                            ("VK_ACCESS_MEMORY_READ_BIT" 32768)
                            ("VK_ACCESS_MEMORY_WRITE_BIT" 65536)
                            ("VK_ACCESS_NONE" 0)
                            ("VK_ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT"
                             33554432)
                            ("VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT"
                             67108864)
                            ("VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT"
                             134217728)
                            ("VK_ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT"
                             1048576)
                            ("VK_ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT"
                             524288)
                            ("VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR"
                             2097152)
                            ("VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR"
                             4194304)
                            ("VK_ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT"
                             16777216)
                            ("VK_ACCESS_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR"
                             8388608)
                            ("VK_ACCESS_COMMAND_PREPROCESS_READ_BIT_NV" 131072)
                            ("VK_ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV"
                             262144)
                            ("VK_ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV"
                             vk_access_fragment_shading_rate_attachment_read_bit_khr)
                            ("VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV"
                             vk_access_acceleration_structure_read_bit_khr)
                            ("VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV"
                             vk_access_acceleration_structure_write_bit_khr)
                            ("VK_ACCESS_NONE_KHR" vk_access_none)
                            ("VK_ACCESS_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkImageAspectFlagBits"
                            ("VK_IMAGE_ASPECT_COLOR_BIT" 1)
                            ("VK_IMAGE_ASPECT_DEPTH_BIT" 2)
                            ("VK_IMAGE_ASPECT_STENCIL_BIT" 4)
                            ("VK_IMAGE_ASPECT_METADATA_BIT" 8)
                            ("VK_IMAGE_ASPECT_PLANE_0_BIT" 16)
                            ("VK_IMAGE_ASPECT_PLANE_1_BIT" 32)
                            ("VK_IMAGE_ASPECT_PLANE_2_BIT" 64)
                            ("VK_IMAGE_ASPECT_NONE" 0)
                            ("VK_IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT" 128)
                            ("VK_IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT" 256)
                            ("VK_IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT" 512)
                            ("VK_IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT" 1024)
                            ("VK_IMAGE_ASPECT_PLANE_0_BIT_KHR"
                             vk_image_aspect_plane_0_bit)
                            ("VK_IMAGE_ASPECT_PLANE_1_BIT_KHR"
                             vk_image_aspect_plane_1_bit)
                            ("VK_IMAGE_ASPECT_PLANE_2_BIT_KHR"
                             vk_image_aspect_plane_2_bit)
                            ("VK_IMAGE_ASPECT_NONE_KHR" vk_image_aspect_none)
                            ("VK_IMAGE_ASPECT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkFormatFeatureFlagBits"
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT" 1)
                            ("VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT" 2)
                            ("VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT" 4)
                            ("VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT" 8)
                            ("VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT" 16)
                            ("VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT"
                             32)
                            ("VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT" 64)
                            ("VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT" 128)
                            ("VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT"
                             256)
                            ("VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT"
                             512)
                            ("VK_FORMAT_FEATURE_BLIT_SRC_BIT" 1024)
                            ("VK_FORMAT_FEATURE_BLIT_DST_BIT" 2048)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT"
                             4096)
                            ("VK_FORMAT_FEATURE_TRANSFER_SRC_BIT" 16384)
                            ("VK_FORMAT_FEATURE_TRANSFER_DST_BIT" 32768)
                            ("VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT"
                             131072)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT"
                             262144)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT"
                             524288)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT"
                             1048576)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT"
                             2097152)
                            ("VK_FORMAT_FEATURE_DISJOINT_BIT" 4194304)
                            ("VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT"
                             8388608)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT"
                             65536)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG"
                             8192)
                            ("VK_FORMAT_FEATURE_VIDEO_DECODE_OUTPUT_BIT_KHR"
                             33554432)
                            ("VK_FORMAT_FEATURE_VIDEO_DECODE_DPB_BIT_KHR"
                             67108864)
                            ("VK_FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR"
                             536870912)
                            ("VK_FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT"
                             16777216)
                            ("VK_FORMAT_FEATURE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR"
                             1073741824)
                            ("VK_FORMAT_FEATURE_VIDEO_ENCODE_INPUT_BIT_KHR"
                             134217728)
                            ("VK_FORMAT_FEATURE_VIDEO_ENCODE_DPB_BIT_KHR"
                             268435456)
                            ("VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR"
                             vk_format_feature_transfer_src_bit)
                            ("VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR"
                             vk_format_feature_transfer_dst_bit)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT"
                             vk_format_feature_sampled_image_filter_minmax_bit)
                            ("VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR"
                             vk_format_feature_midpoint_chroma_samples_bit)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR"
                             vk_format_feature_sampled_image_ycbcr_conversion_linear_filter_bit)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR"
                             vk_format_feature_sampled_image_ycbcr_conversion_separate_reconstruction_filter_bit)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR"
                             vk_format_feature_sampled_image_ycbcr_conversion_chroma_reconstruction_explicit_bit)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR"
                             vk_format_feature_sampled_image_ycbcr_conversion_chroma_reconstruction_explicit_forceable_bit)
                            ("VK_FORMAT_FEATURE_DISJOINT_BIT_KHR"
                             vk_format_feature_disjoint_bit)
                            ("VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR"
                             vk_format_feature_cosited_chroma_samples_bit)
                            ("VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT"
                             vk_format_feature_sampled_image_filter_cubic_bit_img)
                            ("VK_FORMAT_FEATURE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkImageCreateFlagBits"
                            ("VK_IMAGE_CREATE_SPARSE_BINDING_BIT" 1)
                            ("VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT" 2)
                            ("VK_IMAGE_CREATE_SPARSE_ALIASED_BIT" 4)
                            ("VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT" 8)
                            ("VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT" 16)
                            ("VK_IMAGE_CREATE_ALIAS_BIT" 1024)
                            ("VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT"
                             64)
                            ("VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT" 32)
                            ("VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT"
                             128)
                            ("VK_IMAGE_CREATE_EXTENDED_USAGE_BIT" 256)
                            ("VK_IMAGE_CREATE_PROTECTED_BIT" 2048)
                            ("VK_IMAGE_CREATE_DISJOINT_BIT" 512)
                            ("VK_IMAGE_CREATE_CORNER_SAMPLED_BIT_NV" 8192)
                            ("VK_IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT"
                             4096)
                            ("VK_IMAGE_CREATE_SUBSAMPLED_BIT_EXT" 16384)
                            ("VK_IMAGE_CREATE_2D_VIEW_COMPATIBLE_BIT_EXT"
                             131072)
                            ("VK_IMAGE_CREATE_FRAGMENT_DENSITY_MAP_OFFSET_BIT_QCOM"
                             32768)
                            ("VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR"
                             vk_image_create_split_instance_bind_regions_bit)
                            ("VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR"
                             vk_image_create_2d_array_compatible_bit)
                            ("VK_IMAGE_CREATE_BLOCK_TEXEL_VIEW_COMPATIBLE_BIT_KHR"
                             vk_image_create_block_texel_view_compatible_bit)
                            ("VK_IMAGE_CREATE_EXTENDED_USAGE_BIT_KHR"
                             vk_image_create_extended_usage_bit)
                            ("VK_IMAGE_CREATE_DISJOINT_BIT_KHR"
                             vk_image_create_disjoint_bit)
                            ("VK_IMAGE_CREATE_ALIAS_BIT_KHR"
                             vk_image_create_alias_bit)
                            ("VK_IMAGE_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSampleCountFlagBits"
                            ("VK_SAMPLE_COUNT_1_BIT" 1)
                            ("VK_SAMPLE_COUNT_2_BIT" 2)
                            ("VK_SAMPLE_COUNT_4_BIT" 4)
                            ("VK_SAMPLE_COUNT_8_BIT" 8)
                            ("VK_SAMPLE_COUNT_16_BIT" 16)
                            ("VK_SAMPLE_COUNT_32_BIT" 32)
                            ("VK_SAMPLE_COUNT_64_BIT" 64)
                            ("VK_SAMPLE_COUNT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkImageUsageFlagBits"
                            ("VK_IMAGE_USAGE_TRANSFER_SRC_BIT" 1)
                            ("VK_IMAGE_USAGE_TRANSFER_DST_BIT" 2)
                            ("VK_IMAGE_USAGE_SAMPLED_BIT" 4)
                            ("VK_IMAGE_USAGE_STORAGE_BIT" 8)
                            ("VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT" 16)
                            ("VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT" 32)
                            ("VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT" 64)
                            ("VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT" 128)
                            ("VK_IMAGE_USAGE_VIDEO_DECODE_DST_BIT_KHR" 1024)
                            ("VK_IMAGE_USAGE_VIDEO_DECODE_SRC_BIT_KHR" 2048)
                            ("VK_IMAGE_USAGE_VIDEO_DECODE_DPB_BIT_KHR" 4096)
                            ("VK_IMAGE_USAGE_FRAGMENT_DENSITY_MAP_BIT_EXT" 512)
                            ("VK_IMAGE_USAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR"
                             256)
                            ("VK_IMAGE_USAGE_VIDEO_ENCODE_DST_BIT_KHR" 8192)
                            ("VK_IMAGE_USAGE_VIDEO_ENCODE_SRC_BIT_KHR" 16384)
                            ("VK_IMAGE_USAGE_VIDEO_ENCODE_DPB_BIT_KHR" 32768)
                            ("VK_IMAGE_USAGE_INVOCATION_MASK_BIT_HUAWEI"
                             262144)
                            ("VK_IMAGE_USAGE_SHADING_RATE_IMAGE_BIT_NV"
                             vk_image_usage_fragment_shading_rate_attachment_bit_khr)
                            ("VK_IMAGE_USAGE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkInstanceCreateFlagBits"
                            ("VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR"
                             1)
                            ("VK_INSTANCE_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkMemoryHeapFlagBits"
                            ("VK_MEMORY_HEAP_DEVICE_LOCAL_BIT" 1)
                            ("VK_MEMORY_HEAP_MULTI_INSTANCE_BIT" 2)
                            ("VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR"
                             vk_memory_heap_multi_instance_bit)
                            ("VK_MEMORY_HEAP_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkMemoryPropertyFlagBits"
                            ("VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT" 1)
                            ("VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT" 2)
                            ("VK_MEMORY_PROPERTY_HOST_COHERENT_BIT" 4)
                            ("VK_MEMORY_PROPERTY_HOST_CACHED_BIT" 8)
                            ("VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT" 16)
                            ("VK_MEMORY_PROPERTY_PROTECTED_BIT" 32)
                            ("VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD" 64)
                            ("VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD" 128)
                            ("VK_MEMORY_PROPERTY_RDMA_CAPABLE_BIT_NV" 256)
                            ("VK_MEMORY_PROPERTY_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkQueueFlagBits"
                            ("VK_QUEUE_GRAPHICS_BIT" 1)
                            ("VK_QUEUE_COMPUTE_BIT" 2)
                            ("VK_QUEUE_TRANSFER_BIT" 4)
                            ("VK_QUEUE_SPARSE_BINDING_BIT" 8)
                            ("VK_QUEUE_PROTECTED_BIT" 16)
                            ("VK_QUEUE_VIDEO_DECODE_BIT_KHR" 32)
                            ("VK_QUEUE_VIDEO_ENCODE_BIT_KHR" 64)
                            ("VK_QUEUE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkDeviceQueueCreateFlagBits"
                            ("VK_DEVICE_QUEUE_CREATE_PROTECTED_BIT" 1)
                            ("VK_DEVICE_QUEUE_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPipelineStageFlagBits"
                            ("VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT" 1)
                            ("VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT" 2)
                            ("VK_PIPELINE_STAGE_VERTEX_INPUT_BIT" 4)
                            ("VK_PIPELINE_STAGE_VERTEX_SHADER_BIT" 8)
                            ("VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT"
                             16)
                            ("VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT"
                             32)
                            ("VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT" 64)
                            ("VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT" 128)
                            ("VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT" 256)
                            ("VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT" 512)
                            ("VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT"
                             1024)
                            ("VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT" 2048)
                            ("VK_PIPELINE_STAGE_TRANSFER_BIT" 4096)
                            ("VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT" 8192)
                            ("VK_PIPELINE_STAGE_HOST_BIT" 16384)
                            ("VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT" 32768)
                            ("VK_PIPELINE_STAGE_ALL_COMMANDS_BIT" 65536)
                            ("VK_PIPELINE_STAGE_NONE" 0)
                            ("VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT"
                             16777216)
                            ("VK_PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT"
                             262144)
                            ("VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR"
                             33554432)
                            ("VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR"
                             2097152)
                            ("VK_PIPELINE_STAGE_TASK_SHADER_BIT_NV" 524288)
                            ("VK_PIPELINE_STAGE_MESH_SHADER_BIT_NV" 1048576)
                            ("VK_PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT"
                             8388608)
                            ("VK_PIPELINE_STAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR"
                             4194304)
                            ("VK_PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV"
                             131072)
                            ("VK_PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV"
                             vk_pipeline_stage_fragment_shading_rate_attachment_bit_khr)
                            ("VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV"
                             vk_pipeline_stage_ray_tracing_shader_bit_khr)
                            ("VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV"
                             vk_pipeline_stage_acceleration_structure_build_bit_khr)
                            ("VK_PIPELINE_STAGE_NONE_KHR"
                             vk_pipeline_stage_none)
                            ("VK_PIPELINE_STAGE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSparseMemoryBindFlagBits"
                            ("VK_SPARSE_MEMORY_BIND_METADATA_BIT" 1)
                            ("VK_SPARSE_MEMORY_BIND_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSparseImageFormatFlagBits"
                            ("VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT" 1)
                            ("VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT" 2)
                            ("VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT"
                             4)
                            ("VK_SPARSE_IMAGE_FORMAT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkFenceCreateFlagBits"
                            ("VK_FENCE_CREATE_SIGNALED_BIT" 1)
                            ("VK_FENCE_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkEventCreateFlagBits"
                            ("VK_EVENT_CREATE_DEVICE_ONLY_BIT" 1)
                            ("VK_EVENT_CREATE_DEVICE_ONLY_BIT_KHR"
                             vk_event_create_device_only_bit)
                            ("VK_EVENT_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkQueryPipelineStatisticFlagBits"
                            ("VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT"
                             1)
                            ("VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT"
                             2)
                            ("VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT"
                             4)
                            ("VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT"
                             8)
                            ("VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT"
                             16)
                            ("VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT"
                             32)
                            ("VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT"
                             64)
                            ("VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT"
                             128)
                            ("VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT"
                             256)
                            ("VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT"
                             512)
                            ("VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT"
                             1024)
                            ("VK_QUERY_PIPELINE_STATISTIC_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkQueryResultFlagBits"
                            ("VK_QUERY_RESULT_64_BIT" 1)
                            ("VK_QUERY_RESULT_WAIT_BIT" 2)
                            ("VK_QUERY_RESULT_WITH_AVAILABILITY_BIT" 4)
                            ("VK_QUERY_RESULT_PARTIAL_BIT" 8)
                            ("VK_QUERY_RESULT_WITH_STATUS_BIT_KHR" 16)
                            ("VK_QUERY_RESULT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkBufferCreateFlagBits"
                            ("VK_BUFFER_CREATE_SPARSE_BINDING_BIT" 1)
                            ("VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT" 2)
                            ("VK_BUFFER_CREATE_SPARSE_ALIASED_BIT" 4)
                            ("VK_BUFFER_CREATE_PROTECTED_BIT" 8)
                            ("VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT"
                             16)
                            ("VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT"
                             vk_buffer_create_device_address_capture_replay_bit)
                            ("VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR"
                             vk_buffer_create_device_address_capture_replay_bit)
                            ("VK_BUFFER_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkBufferUsageFlagBits"
                            ("VK_BUFFER_USAGE_TRANSFER_SRC_BIT" 1)
                            ("VK_BUFFER_USAGE_TRANSFER_DST_BIT" 2)
                            ("VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT" 4)
                            ("VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT" 8)
                            ("VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT" 16)
                            ("VK_BUFFER_USAGE_STORAGE_BUFFER_BIT" 32)
                            ("VK_BUFFER_USAGE_INDEX_BUFFER_BIT" 64)
                            ("VK_BUFFER_USAGE_VERTEX_BUFFER_BIT" 128)
                            ("VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT" 256)
                            ("VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT"
                             131072)
                            ("VK_BUFFER_USAGE_VIDEO_DECODE_SRC_BIT_KHR" 8192)
                            ("VK_BUFFER_USAGE_VIDEO_DECODE_DST_BIT_KHR" 16384)
                            ("VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT"
                             2048)
                            ("VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT"
                             4096)
                            ("VK_BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT"
                             512)
                            ("VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR"
                             524288)
                            ("VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR"
                             1048576)
                            ("VK_BUFFER_USAGE_SHADER_BINDING_TABLE_BIT_KHR"
                             1024)
                            ("VK_BUFFER_USAGE_VIDEO_ENCODE_DST_BIT_KHR" 32768)
                            ("VK_BUFFER_USAGE_VIDEO_ENCODE_SRC_BIT_KHR" 65536)
                            ("VK_BUFFER_USAGE_RAY_TRACING_BIT_NV"
                             vk_buffer_usage_shader_binding_table_bit_khr)
                            ("VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT"
                             vk_buffer_usage_shader_device_address_bit)
                            ("VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR"
                             vk_buffer_usage_shader_device_address_bit)
                            ("VK_BUFFER_USAGE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkImageViewCreateFlagBits"
                            ("VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT"
                             1)
                            ("VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DEFERRED_BIT_EXT"
                             2)
                            ("VK_IMAGE_VIEW_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPipelineCacheCreateFlagBits"
                            ("VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT"
                             1)
                            ("VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT"
                             vk_pipeline_cache_create_externally_synchronized_bit)
                            ("VK_PIPELINE_CACHE_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkColorComponentFlagBits"
                            ("VK_COLOR_COMPONENT_R_BIT" 1)
                            ("VK_COLOR_COMPONENT_G_BIT" 2)
                            ("VK_COLOR_COMPONENT_B_BIT" 4)
                            ("VK_COLOR_COMPONENT_A_BIT" 8)
                            ("VK_COLOR_COMPONENT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPipelineCreateFlagBits"
                            ("VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT" 1)
                            ("VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT" 2)
                            ("VK_PIPELINE_CREATE_DERIVATIVE_BIT" 4)
                            ("VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT"
                             8)
                            ("VK_PIPELINE_CREATE_DISPATCH_BASE_BIT" 16)
                            ("VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT"
                             256)
                            ("VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT"
                             512)
                            ("VK_PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR"
                             2097152)
                            ("VK_PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT"
                             4194304)
                            ("VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR"
                             16384)
                            ("VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR"
                             32768)
                            ("VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR"
                             65536)
                            ("VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR"
                             131072)
                            ("VK_PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR"
                             4096)
                            ("VK_PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR"
                             8192)
                            ("VK_PIPELINE_CREATE_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR"
                             524288)
                            ("VK_PIPELINE_CREATE_DEFER_COMPILE_BIT_NV" 32)
                            ("VK_PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR"
                             64)
                            ("VK_PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR"
                             128)
                            ("VK_PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV"
                             262144)
                            ("VK_PIPELINE_CREATE_LIBRARY_BIT_KHR" 2048)
                            ("VK_PIPELINE_CREATE_RETAIN_LINK_TIME_OPTIMIZATION_INFO_BIT_EXT"
                             8388608)
                            ("VK_PIPELINE_CREATE_LINK_TIME_OPTIMIZATION_BIT_EXT"
                             1024)
                            ("VK_PIPELINE_CREATE_RAY_TRACING_ALLOW_MOTION_BIT_NV"
                             1048576)
                            ("VK_PIPELINE_CREATE_DISPATCH_BASE"
                             vk_pipeline_create_dispatch_base_bit)
                            ("VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR"
                             vk_pipeline_create_rendering_fragment_shading_rate_attachment_bit_khr)
                            ("VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT"
                             vk_pipeline_create_rendering_fragment_density_map_attachment_bit_ext)
                            ("VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR"
                             vk_pipeline_create_view_index_from_device_index_bit)
                            ("VK_PIPELINE_CREATE_DISPATCH_BASE_KHR"
                             vk_pipeline_create_dispatch_base)
                            ("VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT"
                             vk_pipeline_create_fail_on_pipeline_compile_required_bit)
                            ("VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT"
                             vk_pipeline_create_early_return_on_failure_bit)
                            ("VK_PIPELINE_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPipelineShaderStageCreateFlagBits"
                            ("VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT"
                             1)
                            ("VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT"
                             2)
                            ("VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT"
                             vk_pipeline_shader_stage_create_allow_varying_subgroup_size_bit)
                            ("VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT"
                             vk_pipeline_shader_stage_create_require_full_subgroups_bit)
                            ("VK_PIPELINE_SHADER_STAGE_CREATE_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkShaderStageFlagBits"
                            ("VK_SHADER_STAGE_VERTEX_BIT" 1)
                            ("VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT" 2)
                            ("VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT" 4)
                            ("VK_SHADER_STAGE_GEOMETRY_BIT" 8)
                            ("VK_SHADER_STAGE_FRAGMENT_BIT" 16)
                            ("VK_SHADER_STAGE_COMPUTE_BIT" 32)
                            ("VK_SHADER_STAGE_ALL_GRAPHICS" 1)
                            ("VK_SHADER_STAGE_ALL" 7)
                            ("VK_SHADER_STAGE_RAYGEN_BIT_KHR" 256)
                            ("VK_SHADER_STAGE_ANY_HIT_BIT_KHR" 512)
                            ("VK_SHADER_STAGE_CLOSEST_HIT_BIT_KHR" 1024)
                            ("VK_SHADER_STAGE_MISS_BIT_KHR" 2048)
                            ("VK_SHADER_STAGE_INTERSECTION_BIT_KHR" 4096)
                            ("VK_SHADER_STAGE_CALLABLE_BIT_KHR" 8192)
                            ("VK_SHADER_STAGE_TASK_BIT_NV" 64)
                            ("VK_SHADER_STAGE_MESH_BIT_NV" 128)
                            ("VK_SHADER_STAGE_SUBPASS_SHADING_BIT_HUAWEI"
                             16384)
                            ("VK_SHADER_STAGE_RAYGEN_BIT_NV"
                             vk_shader_stage_raygen_bit_khr)
                            ("VK_SHADER_STAGE_ANY_HIT_BIT_NV"
                             vk_shader_stage_any_hit_bit_khr)
                            ("VK_SHADER_STAGE_CLOSEST_HIT_BIT_NV"
                             vk_shader_stage_closest_hit_bit_khr)
                            ("VK_SHADER_STAGE_MISS_BIT_NV"
                             vk_shader_stage_miss_bit_khr)
                            ("VK_SHADER_STAGE_INTERSECTION_BIT_NV"
                             vk_shader_stage_intersection_bit_khr)
                            ("VK_SHADER_STAGE_CALLABLE_BIT_NV"
                             vk_shader_stage_callable_bit_khr)
                            ("VK_SHADER_STAGE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkCullModeFlagBits"
                            ("VK_CULL_MODE_NONE" 0)
                            ("VK_CULL_MODE_FRONT_BIT" 1)
                            ("VK_CULL_MODE_BACK_BIT" 2)
                            ("VK_CULL_MODE_FRONT_AND_BACK" 3)
                            ("VK_CULL_MODE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file
                            "VkPipelineDepthStencilStateCreateFlagBits"
                            ("VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_ARM"
                             1)
                            ("VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_ARM"
                             2)
                            ("VK_PIPELINE_DEPTH_STENCIL_STATE_CREATE_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkPipelineColorBlendStateCreateFlagBits"
                            ("VK_PIPELINE_COLOR_BLEND_STATE_CREATE_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_BIT_ARM"
                             1)
                            ("VK_PIPELINE_COLOR_BLEND_STATE_CREATE_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkPipelineLayoutCreateFlagBits"
                            ("VK_PIPELINE_LAYOUT_CREATE_INDEPENDENT_SETS_BIT_EXT"
                             2)
                            ("VK_PIPELINE_LAYOUT_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSamplerCreateFlagBits"
                            ("VK_SAMPLER_CREATE_SUBSAMPLED_BIT_EXT" 1)
                            ("VK_SAMPLER_CREATE_SUBSAMPLED_COARSE_RECONSTRUCTION_BIT_EXT"
                             2)
                            ("VK_SAMPLER_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkDescriptorPoolCreateFlagBits"
                            ("VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT"
                             1)
                            ("VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT"
                             2)
                            ("VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_VALVE" 4)
                            ("VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT"
                             vk_descriptor_pool_create_update_after_bind_bit)
                            ("VK_DESCRIPTOR_POOL_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkDescriptorSetLayoutCreateFlagBits"
                            ("VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT"
                             2)
                            ("VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR"
                             1)
                            ("VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_VALVE"
                             4)
                            ("VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT"
                             vk_descriptor_set_layout_create_update_after_bind_pool_bit)
                            ("VK_DESCRIPTOR_SET_LAYOUT_CREATE_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkAttachmentDescriptionFlagBits"
                            ("VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT" 1)
                            ("VK_ATTACHMENT_DESCRIPTION_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkDependencyFlagBits"
                            ("VK_DEPENDENCY_BY_REGION_BIT" 1)
                            ("VK_DEPENDENCY_DEVICE_GROUP_BIT" 4)
                            ("VK_DEPENDENCY_VIEW_LOCAL_BIT" 2)
                            ("VK_DEPENDENCY_VIEW_LOCAL_BIT_KHR"
                             vk_dependency_view_local_bit)
                            ("VK_DEPENDENCY_DEVICE_GROUP_BIT_KHR"
                             vk_dependency_device_group_bit)
                            ("VK_DEPENDENCY_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkFramebufferCreateFlagBits"
                            ("VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT" 1)
                            ("VK_FRAMEBUFFER_CREATE_IMAGELESS_BIT_KHR"
                             vk_framebuffer_create_imageless_bit)
                            ("VK_FRAMEBUFFER_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkRenderPassCreateFlagBits"
                            ("VK_RENDER_PASS_CREATE_TRANSFORM_BIT_QCOM" 2)
                            ("VK_RENDER_PASS_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSubpassDescriptionFlagBits"
                            ("VK_SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX"
                             1)
                            ("VK_SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX"
                             2)
                            ("VK_SUBPASS_DESCRIPTION_FRAGMENT_REGION_BIT_QCOM"
                             4)
                            ("VK_SUBPASS_DESCRIPTION_SHADER_RESOLVE_BIT_QCOM"
                             8)
                            ("VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_COLOR_ACCESS_BIT_ARM"
                             16)
                            ("VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_DEPTH_ACCESS_BIT_ARM"
                             32)
                            ("VK_SUBPASS_DESCRIPTION_RASTERIZATION_ORDER_ATTACHMENT_STENCIL_ACCESS_BIT_ARM"
                             64)
                            ("VK_SUBPASS_DESCRIPTION_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkCommandPoolCreateFlagBits"
                            ("VK_COMMAND_POOL_CREATE_TRANSIENT_BIT" 1)
                            ("VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT"
                             2)
                            ("VK_COMMAND_POOL_CREATE_PROTECTED_BIT" 4)
                            ("VK_COMMAND_POOL_CREATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkCommandPoolResetFlagBits"
                            ("VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT" 1)
                            ("VK_COMMAND_POOL_RESET_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkCommandBufferUsageFlagBits"
                            ("VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT" 1)
                            ("VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT"
                             2)
                            ("VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT" 4)
                            ("VK_COMMAND_BUFFER_USAGE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkQueryControlFlagBits"
                            ("VK_QUERY_CONTROL_PRECISE_BIT" 1)
                            ("VK_QUERY_CONTROL_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkCommandBufferResetFlagBits"
                            ("VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT" 1)
                            ("VK_COMMAND_BUFFER_RESET_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkStencilFaceFlagBits"
                            ("VK_STENCIL_FACE_FRONT_BIT" 1)
                            ("VK_STENCIL_FACE_BACK_BIT" 2)
                            ("VK_STENCIL_FACE_FRONT_AND_BACK" 3)
                            ("VK_STENCIL_FRONT_AND_BACK"
                             vk_stencil_face_front_and_back)
                            ("VK_STENCIL_FACE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPointClippingBehavior"
                            ("VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES" 0)
                            ("VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY"
                             1)
                            ("VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES_KHR"
                             vk_point_clipping_behavior_all_clip_planes)
                            ("VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY_KHR"
                             vk_point_clipping_behavior_user_clip_planes_only)
                            ("VK_POINT_CLIPPING_BEHAVIOR_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkTessellationDomainOrigin"
                            ("VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT" 0)
                            ("VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT" 1)
                            ("VK_TESSELLATION_DOMAIN_ORIGIN_UPPER_LEFT_KHR"
                             vk_tessellation_domain_origin_upper_left)
                            ("VK_TESSELLATION_DOMAIN_ORIGIN_LOWER_LEFT_KHR"
                             vk_tessellation_domain_origin_lower_left)
                            ("VK_TESSELLATION_DOMAIN_ORIGIN_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSamplerYcbcrModelConversion"
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY"
                             0)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY"
                             1)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709" 2)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601" 3)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020" 4)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY_KHR"
                             vk_sampler_ycbcr_model_conversion_rgb_identity)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY_KHR"
                             vk_sampler_ycbcr_model_conversion_ycbcr_identity)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709_KHR"
                             vk_sampler_ycbcr_model_conversion_ycbcr_709)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601_KHR"
                             vk_sampler_ycbcr_model_conversion_ycbcr_601)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020_KHR"
                             vk_sampler_ycbcr_model_conversion_ycbcr_2020)
                            ("VK_SAMPLER_YCBCR_MODEL_CONVERSION_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSamplerYcbcrRange"
                            ("VK_SAMPLER_YCBCR_RANGE_ITU_FULL" 0)
                            ("VK_SAMPLER_YCBCR_RANGE_ITU_NARROW" 1)
                            ("VK_SAMPLER_YCBCR_RANGE_ITU_FULL_KHR"
                             vk_sampler_ycbcr_range_itu_full)
                            ("VK_SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR"
                             vk_sampler_ycbcr_range_itu_narrow)
                            ("VK_SAMPLER_YCBCR_RANGE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkChromaLocation"
                            ("VK_CHROMA_LOCATION_COSITED_EVEN" 0)
                            ("VK_CHROMA_LOCATION_MIDPOINT" 1)
                            ("VK_CHROMA_LOCATION_COSITED_EVEN_KHR"
                             vk_chroma_location_cosited_even)
                            ("VK_CHROMA_LOCATION_MIDPOINT_KHR"
                             vk_chroma_location_midpoint)
                            ("VK_CHROMA_LOCATION_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkDescriptorUpdateTemplateType"
                            ("VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET"
                             0)
                            ("VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR"
                             1)
                            ("VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR"
                             vk_descriptor_update_template_type_descriptor_set)
                            ("VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSubgroupFeatureFlagBits"
                            ("VK_SUBGROUP_FEATURE_BASIC_BIT" 1)
                            ("VK_SUBGROUP_FEATURE_VOTE_BIT" 2)
                            ("VK_SUBGROUP_FEATURE_ARITHMETIC_BIT" 4)
                            ("VK_SUBGROUP_FEATURE_BALLOT_BIT" 8)
                            ("VK_SUBGROUP_FEATURE_SHUFFLE_BIT" 16)
                            ("VK_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT" 32)
                            ("VK_SUBGROUP_FEATURE_CLUSTERED_BIT" 64)
                            ("VK_SUBGROUP_FEATURE_QUAD_BIT" 128)
                            ("VK_SUBGROUP_FEATURE_PARTITIONED_BIT_NV" 256)
                            ("VK_SUBGROUP_FEATURE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPeerMemoryFeatureFlagBits"
                            ("VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT" 1)
                            ("VK_PEER_MEMORY_FEATURE_COPY_DST_BIT" 2)
                            ("VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT" 4)
                            ("VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT" 8)
                            ("VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR"
                             vk_peer_memory_feature_copy_src_bit)
                            ("VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR"
                             vk_peer_memory_feature_copy_dst_bit)
                            ("VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR"
                             vk_peer_memory_feature_generic_src_bit)
                            ("VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR"
                             vk_peer_memory_feature_generic_dst_bit)
                            ("VK_PEER_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkMemoryAllocateFlagBits"
                            ("VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT" 1)
                            ("VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT" 2)
                            ("VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT"
                             4)
                            ("VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR"
                             vk_memory_allocate_device_mask_bit)
                            ("VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR"
                             vk_memory_allocate_device_address_bit)
                            ("VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR"
                             vk_memory_allocate_device_address_capture_replay_bit)
                            ("VK_MEMORY_ALLOCATE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkExternalMemoryHandleTypeFlagBits"
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT" 1)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT"
                             2)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT"
                             4)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT"
                             8)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT"
                             16)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT"
                             32)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT"
                             64)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_DMA_BUF_BIT_EXT"
                             512)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID"
                             1024)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT"
                             128)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT"
                             256)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_ZIRCON_VMO_BIT_FUCHSIA"
                             2048)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_RDMA_ADDRESS_BIT_NV"
                             4096)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR"
                             vk_external_memory_handle_type_opaque_fd_bit)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR"
                             vk_external_memory_handle_type_opaque_win32_bit)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR"
                             vk_external_memory_handle_type_opaque_win32_kmt_bit)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR"
                             vk_external_memory_handle_type_d3d11_texture_bit)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR"
                             vk_external_memory_handle_type_d3d11_texture_kmt_bit)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR"
                             vk_external_memory_handle_type_d3d12_heap_bit)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR"
                             vk_external_memory_handle_type_d3d12_resource_bit)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkExternalMemoryFeatureFlagBits"
                            ("VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT" 1)
                            ("VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT" 2)
                            ("VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT" 4)
                            ("VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR"
                             vk_external_memory_feature_dedicated_only_bit)
                            ("VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR"
                             vk_external_memory_feature_exportable_bit)
                            ("VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR"
                             vk_external_memory_feature_importable_bit)
                            ("VK_EXTERNAL_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkExternalFenceHandleTypeFlagBits"
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT" 1)
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT"
                             2)
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT"
                             4)
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT" 8)
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR"
                             vk_external_fence_handle_type_opaque_fd_bit)
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR"
                             vk_external_fence_handle_type_opaque_win32_bit)
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR"
                             vk_external_fence_handle_type_opaque_win32_kmt_bit)
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR"
                             vk_external_fence_handle_type_sync_fd_bit)
                            ("VK_EXTERNAL_FENCE_HANDLE_TYPE_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkExternalFenceFeatureFlagBits"
                            ("VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT" 1)
                            ("VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT" 2)
                            ("VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR"
                             vk_external_fence_feature_exportable_bit)
                            ("VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR"
                             vk_external_fence_feature_importable_bit)
                            ("VK_EXTERNAL_FENCE_FEATURE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkFenceImportFlagBits"
                            ("VK_FENCE_IMPORT_TEMPORARY_BIT" 1)
                            ("VK_FENCE_IMPORT_TEMPORARY_BIT_KHR"
                             vk_fence_import_temporary_bit)
                            ("VK_FENCE_IMPORT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSemaphoreImportFlagBits"
                            ("VK_SEMAPHORE_IMPORT_TEMPORARY_BIT" 1)
                            ("VK_SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR"
                             vk_semaphore_import_temporary_bit)
                            ("VK_SEMAPHORE_IMPORT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkExternalSemaphoreHandleTypeFlagBits"
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT"
                             1)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT"
                             2)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT"
                             4)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT"
                             8)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT"
                             16)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_ZIRCON_EVENT_BIT_FUCHSIA"
                             128)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D11_FENCE_BIT"
                             vk_external_semaphore_handle_type_d3d12_fence_bit)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR"
                             vk_external_semaphore_handle_type_opaque_fd_bit)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR"
                             vk_external_semaphore_handle_type_opaque_win32_bit)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR"
                             vk_external_semaphore_handle_type_opaque_win32_kmt_bit)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR"
                             vk_external_semaphore_handle_type_d3d12_fence_bit)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR"
                             vk_external_semaphore_handle_type_sync_fd_bit)
                            ("VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkExternalSemaphoreFeatureFlagBits"
                            ("VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT" 1)
                            ("VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT" 2)
                            ("VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR"
                             vk_external_semaphore_feature_exportable_bit)
                            ("VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR"
                             vk_external_semaphore_feature_importable_bit)
                            ("VK_EXTERNAL_SEMAPHORE_FEATURE_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkDriverId"
                            ("VK_DRIVER_ID_AMD_PROPRIETARY" 1)
                            ("VK_DRIVER_ID_AMD_OPEN_SOURCE" 2)
                            ("VK_DRIVER_ID_MESA_RADV" 3)
                            ("VK_DRIVER_ID_NVIDIA_PROPRIETARY" 4)
                            ("VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS" 5)
                            ("VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA" 6)
                            ("VK_DRIVER_ID_IMAGINATION_PROPRIETARY" 7)
                            ("VK_DRIVER_ID_QUALCOMM_PROPRIETARY" 8)
                            ("VK_DRIVER_ID_ARM_PROPRIETARY" 9)
                            ("VK_DRIVER_ID_GOOGLE_SWIFTSHADER" 10)
                            ("VK_DRIVER_ID_GGP_PROPRIETARY" 11)
                            ("VK_DRIVER_ID_BROADCOM_PROPRIETARY" 12)
                            ("VK_DRIVER_ID_MESA_LLVMPIPE" 13)
                            ("VK_DRIVER_ID_MOLTENVK" 14)
                            ("VK_DRIVER_ID_COREAVI_PROPRIETARY" 15)
                            ("VK_DRIVER_ID_JUICE_PROPRIETARY" 16)
                            ("VK_DRIVER_ID_VERISILICON_PROPRIETARY" 17)
                            ("VK_DRIVER_ID_MESA_TURNIP" 18)
                            ("VK_DRIVER_ID_MESA_V3DV" 19)
                            ("VK_DRIVER_ID_MESA_PANVK" 20)
                            ("VK_DRIVER_ID_SAMSUNG_PROPRIETARY" 21)
                            ("VK_DRIVER_ID_MESA_VENUS" 22)
                            ("VK_DRIVER_ID_AMD_PROPRIETARY_KHR"
                             vk_driver_id_amd_proprietary)
                            ("VK_DRIVER_ID_AMD_OPEN_SOURCE_KHR"
                             vk_driver_id_amd_open_source)
                            ("VK_DRIVER_ID_MESA_RADV_KHR"
                             vk_driver_id_mesa_radv)
                            ("VK_DRIVER_ID_NVIDIA_PROPRIETARY_KHR"
                             vk_driver_id_nvidia_proprietary)
                            ("VK_DRIVER_ID_INTEL_PROPRIETARY_WINDOWS_KHR"
                             vk_driver_id_intel_proprietary_windows)
                            ("VK_DRIVER_ID_INTEL_OPEN_SOURCE_MESA_KHR"
                             vk_driver_id_intel_open_source_mesa)
                            ("VK_DRIVER_ID_IMAGINATION_PROPRIETARY_KHR"
                             vk_driver_id_imagination_proprietary)
                            ("VK_DRIVER_ID_QUALCOMM_PROPRIETARY_KHR"
                             vk_driver_id_qualcomm_proprietary)
                            ("VK_DRIVER_ID_ARM_PROPRIETARY_KHR"
                             vk_driver_id_arm_proprietary)
                            ("VK_DRIVER_ID_GOOGLE_SWIFTSHADER_KHR"
                             vk_driver_id_google_swiftshader)
                            ("VK_DRIVER_ID_GGP_PROPRIETARY_KHR"
                             vk_driver_id_ggp_proprietary)
                            ("VK_DRIVER_ID_BROADCOM_PROPRIETARY_KHR"
                             vk_driver_id_broadcom_proprietary)
                            ("VK_DRIVER_ID_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkShaderFloatControlsIndependence"
                            ("VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY"
                             0)
                            ("VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL" 1)
                            ("VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE" 2)
                            ("VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR"
                             vk_shader_float_controls_independence_32_bit_only)
                            ("VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR"
                             vk_shader_float_controls_independence_all)
                            ("VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR"
                             vk_shader_float_controls_independence_none)
                            ("VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkSamplerReductionMode"
                            ("VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE" 0)
                            ("VK_SAMPLER_REDUCTION_MODE_MIN" 1)
                            ("VK_SAMPLER_REDUCTION_MODE_MAX" 2)
                            ("VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT"
                             vk_sampler_reduction_mode_weighted_average)
                            ("VK_SAMPLER_REDUCTION_MODE_MIN_EXT"
                             vk_sampler_reduction_mode_min)
                            ("VK_SAMPLER_REDUCTION_MODE_MAX_EXT"
                             vk_sampler_reduction_mode_max)
                            ("VK_SAMPLER_REDUCTION_MODE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSemaphoreType"
                            ("VK_SEMAPHORE_TYPE_BINARY" 0)
                            ("VK_SEMAPHORE_TYPE_TIMELINE" 1)
                            ("VK_SEMAPHORE_TYPE_BINARY_KHR"
                             vk_semaphore_type_binary)
                            ("VK_SEMAPHORE_TYPE_TIMELINE_KHR"
                             vk_semaphore_type_timeline)
                            ("VK_SEMAPHORE_TYPE_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkResolveModeFlagBits"
                            ("VK_RESOLVE_MODE_NONE" 0)
                            ("VK_RESOLVE_MODE_SAMPLE_ZERO_BIT" 1)
                            ("VK_RESOLVE_MODE_AVERAGE_BIT" 2)
                            ("VK_RESOLVE_MODE_MIN_BIT" 4)
                            ("VK_RESOLVE_MODE_MAX_BIT" 8)
                            ("VK_RESOLVE_MODE_NONE_KHR" vk_resolve_mode_none)
                            ("VK_RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR"
                             vk_resolve_mode_sample_zero_bit)
                            ("VK_RESOLVE_MODE_AVERAGE_BIT_KHR"
                             vk_resolve_mode_average_bit)
                            ("VK_RESOLVE_MODE_MIN_BIT_KHR"
                             vk_resolve_mode_min_bit)
                            ("VK_RESOLVE_MODE_MAX_BIT_KHR"
                             vk_resolve_mode_max_bit)
                            ("VK_RESOLVE_MODE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkDescriptorBindingFlagBits"
                            ("VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT" 1)
                            ("VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT"
                             2)
                            ("VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT" 4)
                            ("VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT"
                             8)
                            ("VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT"
                             vk_descriptor_binding_update_after_bind_bit)
                            ("VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT_EXT"
                             vk_descriptor_binding_update_unused_while_pending_bit)
                            ("VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT"
                             vk_descriptor_binding_partially_bound_bit)
                            ("VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT"
                             vk_descriptor_binding_variable_descriptor_count_bit)
                            ("VK_DESCRIPTOR_BINDING_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSemaphoreWaitFlagBits"
                            ("VK_SEMAPHORE_WAIT_ANY_BIT" 1)
                            ("VK_SEMAPHORE_WAIT_ANY_BIT_KHR"
                             vk_semaphore_wait_any_bit)
                            ("VK_SEMAPHORE_WAIT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPipelineCreationFeedbackFlagBits"
                            ("VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT" 1)
                            ("VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT"
                             2)
                            ("VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT"
                             4)
                            ("VK_PIPELINE_CREATION_FEEDBACK_VALID_BIT_EXT"
                             vk_pipeline_creation_feedback_valid_bit)
                            ("VK_PIPELINE_CREATION_FEEDBACK_APPLICATION_PIPELINE_CACHE_HIT_BIT_EXT"
                             vk_pipeline_creation_feedback_application_pipeline_cache_hit_bit)
                            ("VK_PIPELINE_CREATION_FEEDBACK_BASE_PIPELINE_ACCELERATION_BIT_EXT"
                             vk_pipeline_creation_feedback_base_pipeline_acceleration_bit)
                            ("VK_PIPELINE_CREATION_FEEDBACK_FLAG_BITS_MAX_ENUM"
                             7))

(more-cffi:def-foreign-enum doc-file "VkToolPurposeFlagBits"
                            ("VK_TOOL_PURPOSE_VALIDATION_BIT" 1)
                            ("VK_TOOL_PURPOSE_PROFILING_BIT" 2)
                            ("VK_TOOL_PURPOSE_TRACING_BIT" 4)
                            ("VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT" 8)
                            ("VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT" 16)
                            ("VK_TOOL_PURPOSE_DEBUG_REPORTING_BIT_EXT" 32)
                            ("VK_TOOL_PURPOSE_DEBUG_MARKERS_BIT_EXT" 64)
                            ("VK_TOOL_PURPOSE_VALIDATION_BIT_EXT"
                             vk_tool_purpose_validation_bit)
                            ("VK_TOOL_PURPOSE_PROFILING_BIT_EXT"
                             vk_tool_purpose_profiling_bit)
                            ("VK_TOOL_PURPOSE_TRACING_BIT_EXT"
                             vk_tool_purpose_tracing_bit)
                            ("VK_TOOL_PURPOSE_ADDITIONAL_FEATURES_BIT_EXT"
                             vk_tool_purpose_additional_features_bit)
                            ("VK_TOOL_PURPOSE_MODIFYING_FEATURES_BIT_EXT"
                             vk_tool_purpose_modifying_features_bit)
                            ("VK_TOOL_PURPOSE_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkSubmitFlagBits"
                            ("VK_SUBMIT_PROTECTED_BIT" 1)
                            ("VK_SUBMIT_PROTECTED_BIT_KHR"
                             vk_submit_protected_bit)
                            ("VK_SUBMIT_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkRenderingFlagBits"
                            ("VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT"
                             1)
                            ("VK_RENDERING_SUSPENDING_BIT" 2)
                            ("VK_RENDERING_RESUMING_BIT" 4)
                            ("VK_RENDERING_CONTENTS_SECONDARY_COMMAND_BUFFERS_BIT_KHR"
                             vk_rendering_contents_secondary_command_buffers_bit)
                            ("VK_RENDERING_SUSPENDING_BIT_KHR"
                             vk_rendering_suspending_bit)
                            ("VK_RENDERING_RESUMING_BIT_KHR"
                             vk_rendering_resuming_bit)
                            ("VK_RENDERING_FLAG_BITS_MAX_ENUM" 7))

(more-cffi:def-foreign-enum doc-file "VkPresentModeKHR"
                            ("VK_PRESENT_MODE_IMMEDIATE_KHR" 0)
                            ("VK_PRESENT_MODE_MAILBOX_KHR" 1)
                            ("VK_PRESENT_MODE_FIFO_KHR" 2)
                            ("VK_PRESENT_MODE_FIFO_RELAXED_KHR" 3)
                            ("VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR"
                             1000111000)
                            ("VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR"
                             1000111001)
                            ("VK_PRESENT_MODE_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkColorSpaceKHR"
                            ("VK_COLOR_SPACE_SRGB_NONLINEAR_KHR" 0)
                            ("VK_COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT"
                             1000104001)
                            ("VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT"
                             1000104002)
                            ("VK_COLOR_SPACE_DISPLAY_P3_LINEAR_EXT" 1000104003)
                            ("VK_COLOR_SPACE_DCI_P3_NONLINEAR_EXT" 1000104004)
                            ("VK_COLOR_SPACE_BT709_LINEAR_EXT" 1000104005)
                            ("VK_COLOR_SPACE_BT709_NONLINEAR_EXT" 1000104006)
                            ("VK_COLOR_SPACE_BT2020_LINEAR_EXT" 1000104007)
                            ("VK_COLOR_SPACE_HDR10_ST2084_EXT" 1000104008)
                            ("VK_COLOR_SPACE_DOLBYVISION_EXT" 1000104009)
                            ("VK_COLOR_SPACE_HDR10_HLG_EXT" 1000104010)
                            ("VK_COLOR_SPACE_ADOBERGB_LINEAR_EXT" 1000104011)
                            ("VK_COLOR_SPACE_ADOBERGB_NONLINEAR_EXT"
                             1000104012)
                            ("VK_COLOR_SPACE_PASS_THROUGH_EXT" 1000104013)
                            ("VK_COLOR_SPACE_EXTENDED_SRGB_NONLINEAR_EXT"
                             1000104014)
                            ("VK_COLOR_SPACE_DISPLAY_NATIVE_AMD" 1000213000)
                            ("VK_COLORSPACE_SRGB_NONLINEAR_KHR"
                             vk_color_space_srgb_nonlinear_khr)
                            ("VK_COLOR_SPACE_DCI_P3_LINEAR_EXT"
                             vk_color_space_display_p3_linear_ext)
                            ("VK_COLOR_SPACE_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkSurfaceTransformFlagBitsKHR"
                            ("VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR" 1)
                            ("VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR" 2)
                            ("VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR" 4)
                            ("VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR" 8)
                            ("VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR"
                             16)
                            ("VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR"
                             32)
                            ("VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR"
                             64)
                            ("VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR"
                             128)
                            ("VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR" 256)
                            ("VK_SURFACE_TRANSFORM_FLAG_BITS_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkCompositeAlphaFlagBitsKHR"
                            ("VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR" 1)
                            ("VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR" 2)
                            ("VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR" 4)
                            ("VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR" 8)
                            ("VK_COMPOSITE_ALPHA_FLAG_BITS_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkSwapchainCreateFlagBitsKHR"
                            ("VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR"
                             1)
                            ("VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR" 2)
                            ("VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR" 4)
                            ("VK_SWAPCHAIN_CREATE_FLAG_BITS_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkDeviceGroupPresentModeFlagBitsKHR"
                            ("VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR" 1)
                            ("VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR" 2)
                            ("VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR" 4)
                            ("VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR"
                             8)
                            ("VK_DEVICE_GROUP_PRESENT_MODE_FLAG_BITS_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkDisplayPlaneAlphaFlagBitsKHR"
                            ("VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR" 1)
                            ("VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR" 2)
                            ("VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR" 4)
                            ("VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR"
                             8)
                            ("VK_DISPLAY_PLANE_ALPHA_FLAG_BITS_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkPerformanceCounterUnitKHR"
                            ("VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR" 0)
                            ("VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR" 1)
                            ("VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR" 2)
                            ("VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR" 3)
                            ("VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR"
                             4)
                            ("VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR" 5)
                            ("VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR" 6)
                            ("VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR" 7)
                            ("VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR" 8)
                            ("VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR" 9)
                            ("VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR" 10)
                            ("VK_PERFORMANCE_COUNTER_UNIT_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkPerformanceCounterScopeKHR"
                            ("VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR"
                             0)
                            ("VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR" 1)
                            ("VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR" 2)
                            ("VK_QUERY_SCOPE_COMMAND_BUFFER_KHR"
                             vk_performance_counter_scope_command_buffer_khr)
                            ("VK_QUERY_SCOPE_RENDER_PASS_KHR"
                             vk_performance_counter_scope_render_pass_khr)
                            ("VK_QUERY_SCOPE_COMMAND_KHR"
                             vk_performance_counter_scope_command_khr)
                            ("VK_PERFORMANCE_COUNTER_SCOPE_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkPerformanceCounterStorageKHR"
                            ("VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR" 0)
                            ("VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR" 1)
                            ("VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR" 2)
                            ("VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR" 3)
                            ("VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR" 4)
                            ("VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR" 5)
                            ("VK_PERFORMANCE_COUNTER_STORAGE_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file
                            "VkPerformanceCounterDescriptionFlagBitsKHR"
                            ("VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_BIT_KHR"
                             1)
                            ("VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_BIT_KHR"
                             2)
                            ("VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR"
                             vk_performance_counter_description_performance_impacting_bit_khr)
                            ("VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR"
                             vk_performance_counter_description_concurrently_impacted_bit_khr)
                            ("VK_PERFORMANCE_COUNTER_DESCRIPTION_FLAG_BITS_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkAcquireProfilingLockFlagBitsKHR"
                            ("VK_ACQUIRE_PROFILING_LOCK_FLAG_BITS_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkQueueGlobalPriorityKHR"
                            ("VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR" 128)
                            ("VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR" 256)
                            ("VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR" 512)
                            ("VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR" 1024)
                            ("VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT"
                             vk_queue_global_priority_low_khr)
                            ("VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT"
                             vk_queue_global_priority_medium_khr)
                            ("VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT"
                             vk_queue_global_priority_high_khr)
                            ("VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT"
                             vk_queue_global_priority_realtime_khr)
                            ("VK_QUEUE_GLOBAL_PRIORITY_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkFragmentShadingRateCombinerOpKHR"
                            ("VK_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR" 0)
                            ("VK_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR"
                             1)
                            ("VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR" 2)
                            ("VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR" 3)
                            ("VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR" 4)
                            ("VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkPipelineExecutableStatisticFormatKHR"
                            ("VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR"
                             0)
                            ("VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR"
                             1)
                            ("VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR"
                             2)
                            ("VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR"
                             3)
                            ("VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkDebugReportObjectTypeEXT"
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT" 0)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT" 1)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT"
                             2)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT" 3)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT" 4)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT" 5)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT"
                             6)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT" 7)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT" 8)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT" 9)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT" 10)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT" 11)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT" 12)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT" 13)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT" 14)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT"
                             15)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT"
                             16)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT"
                             17)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT" 18)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT" 19)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT"
                             20)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT" 21)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT"
                             22)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT"
                             23)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT" 24)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT" 25)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT" 26)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT"
                             27)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT"
                             28)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT" 29)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT"
                             30)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT"
                             33)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT"
                             1000156000)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT"
                             1000085000)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_CU_MODULE_NVX_EXT"
                             1000029000)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_CU_FUNCTION_NVX_EXT"
                             1000029001)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT"
                             1000150000)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT"
                             1000165000)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA_EXT"
                             1000366000)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT"
                             vk_debug_report_object_type_debug_report_callback_ext_ext)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT"
                             vk_debug_report_object_type_validation_cache_ext_ext)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT"
                             vk_debug_report_object_type_descriptor_update_template_ext)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT"
                             vk_debug_report_object_type_sampler_ycbcr_conversion_ext)
                            ("VK_DEBUG_REPORT_OBJECT_TYPE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkDebugReportFlagBitsEXT"
                            ("VK_DEBUG_REPORT_INFORMATION_BIT_EXT" 1)
                            ("VK_DEBUG_REPORT_WARNING_BIT_EXT" 2)
                            ("VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT" 4)
                            ("VK_DEBUG_REPORT_ERROR_BIT_EXT" 8)
                            ("VK_DEBUG_REPORT_DEBUG_BIT_EXT" 16)
                            ("VK_DEBUG_REPORT_FLAG_BITS_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkRasterizationOrderAMD"
                            ("VK_RASTERIZATION_ORDER_STRICT_AMD" 0)
                            ("VK_RASTERIZATION_ORDER_RELAXED_AMD" 1)
                            ("VK_RASTERIZATION_ORDER_MAX_ENUM_AMD" 7))

(more-cffi:def-foreign-enum doc-file "VkShaderInfoTypeAMD"
                            ("VK_SHADER_INFO_TYPE_STATISTICS_AMD" 0)
                            ("VK_SHADER_INFO_TYPE_BINARY_AMD" 1)
                            ("VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD" 2)
                            ("VK_SHADER_INFO_TYPE_MAX_ENUM_AMD" 7))

(more-cffi:def-foreign-enum doc-file "VkExternalMemoryHandleTypeFlagBitsNV"
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV"
                             1)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV"
                             2)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV"
                             4)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV"
                             8)
                            ("VK_EXTERNAL_MEMORY_HANDLE_TYPE_FLAG_BITS_MAX_ENUM_NV"
                             7))

(more-cffi:def-foreign-enum doc-file "VkExternalMemoryFeatureFlagBitsNV"
                            ("VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV"
                             1)
                            ("VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV" 2)
                            ("VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV" 4)
                            ("VK_EXTERNAL_MEMORY_FEATURE_FLAG_BITS_MAX_ENUM_NV"
                             7))

(more-cffi:def-foreign-enum doc-file "VkValidationCheckEXT"
                            ("VK_VALIDATION_CHECK_ALL_EXT" 0)
                            ("VK_VALIDATION_CHECK_SHADERS_EXT" 1)
                            ("VK_VALIDATION_CHECK_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkConditionalRenderingFlagBitsEXT"
                            ("VK_CONDITIONAL_RENDERING_INVERTED_BIT_EXT" 1)
                            ("VK_CONDITIONAL_RENDERING_FLAG_BITS_MAX_ENUM_EXT"
                             7))

(more-cffi:def-foreign-enum doc-file "VkSurfaceCounterFlagBitsEXT"
                            ("VK_SURFACE_COUNTER_VBLANK_BIT_EXT" 1)
                            ("VK_SURFACE_COUNTER_VBLANK_EXT"
                             vk_surface_counter_vblank_bit_ext)
                            ("VK_SURFACE_COUNTER_FLAG_BITS_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkDisplayPowerStateEXT"
                            ("VK_DISPLAY_POWER_STATE_OFF_EXT" 0)
                            ("VK_DISPLAY_POWER_STATE_SUSPEND_EXT" 1)
                            ("VK_DISPLAY_POWER_STATE_ON_EXT" 2)
                            ("VK_DISPLAY_POWER_STATE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkDeviceEventTypeEXT"
                            ("VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT" 0)
                            ("VK_DEVICE_EVENT_TYPE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkDisplayEventTypeEXT"
                            ("VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT" 0)
                            ("VK_DISPLAY_EVENT_TYPE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkViewportCoordinateSwizzleNV"
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV" 0)
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV" 1)
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV" 2)
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV" 3)
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV" 4)
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV" 5)
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV" 6)
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV" 7)
                            ("VK_VIEWPORT_COORDINATE_SWIZZLE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkDiscardRectangleModeEXT"
                            ("VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT" 0)
                            ("VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT" 1)
                            ("VK_DISCARD_RECTANGLE_MODE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkConservativeRasterizationModeEXT"
                            ("VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT"
                             0)
                            ("VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT"
                             1)
                            ("VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT"
                             2)
                            ("VK_CONSERVATIVE_RASTERIZATION_MODE_MAX_ENUM_EXT"
                             7))

(more-cffi:def-foreign-enum doc-file "VkDebugUtilsMessageSeverityFlagBitsEXT"
                            ("VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT"
                             1)
                            ("VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT" 16)
                            ("VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT"
                             256)
                            ("VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT"
                             4096)
                            ("VK_DEBUG_UTILS_MESSAGE_SEVERITY_FLAG_BITS_MAX_ENUM_EXT"
                             7))

(more-cffi:def-foreign-enum doc-file "VkDebugUtilsMessageTypeFlagBitsEXT"
                            ("VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT" 1)
                            ("VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT"
                             2)
                            ("VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT"
                             4)
                            ("VK_DEBUG_UTILS_MESSAGE_TYPE_FLAG_BITS_MAX_ENUM_EXT"
                             7))

(more-cffi:def-foreign-enum doc-file "VkBlendOverlapEXT"
                            ("VK_BLEND_OVERLAP_UNCORRELATED_EXT" 0)
                            ("VK_BLEND_OVERLAP_DISJOINT_EXT" 1)
                            ("VK_BLEND_OVERLAP_CONJOINT_EXT" 2)
                            ("VK_BLEND_OVERLAP_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkCoverageModulationModeNV"
                            ("VK_COVERAGE_MODULATION_MODE_NONE_NV" 0)
                            ("VK_COVERAGE_MODULATION_MODE_RGB_NV" 1)
                            ("VK_COVERAGE_MODULATION_MODE_ALPHA_NV" 2)
                            ("VK_COVERAGE_MODULATION_MODE_RGBA_NV" 3)
                            ("VK_COVERAGE_MODULATION_MODE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkValidationCacheHeaderVersionEXT"
                            ("VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT" 1)
                            ("VK_VALIDATION_CACHE_HEADER_VERSION_MAX_ENUM_EXT"
                             7))

(more-cffi:def-foreign-enum doc-file "VkShadingRatePaletteEntryNV"
                            ("VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV"
                             0)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV"
                             1)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV"
                             2)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV"
                             3)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV"
                             4)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV"
                             5)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV"
                             6)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV"
                             7)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV"
                             8)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV"
                             9)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV"
                             10)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV"
                             11)
                            ("VK_SHADING_RATE_PALETTE_ENTRY_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkCoarseSampleOrderTypeNV"
                            ("VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV" 0)
                            ("VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV" 1)
                            ("VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV" 2)
                            ("VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV" 3)
                            ("VK_COARSE_SAMPLE_ORDER_TYPE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkRayTracingShaderGroupTypeKHR"
                            ("VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR" 0)
                            ("VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR"
                             1)
                            ("VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR"
                             2)
                            ("VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV"
                             vk_ray_tracing_shader_group_type_general_khr)
                            ("VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV"
                             vk_ray_tracing_shader_group_type_triangles_hit_group_khr)
                            ("VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV"
                             vk_ray_tracing_shader_group_type_procedural_hit_group_khr)
                            ("VK_RAY_TRACING_SHADER_GROUP_TYPE_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkGeometryTypeKHR"
                            ("VK_GEOMETRY_TYPE_TRIANGLES_KHR" 0)
                            ("VK_GEOMETRY_TYPE_AABBS_KHR" 1)
                            ("VK_GEOMETRY_TYPE_INSTANCES_KHR" 2)
                            ("VK_GEOMETRY_TYPE_TRIANGLES_NV"
                             vk_geometry_type_triangles_khr)
                            ("VK_GEOMETRY_TYPE_AABBS_NV"
                             vk_geometry_type_aabbs_khr)
                            ("VK_GEOMETRY_TYPE_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkAccelerationStructureTypeKHR"
                            ("VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR" 0)
                            ("VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR"
                             1)
                            ("VK_ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR" 2)
                            ("VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV"
                             vk_acceleration_structure_type_top_level_khr)
                            ("VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV"
                             vk_acceleration_structure_type_bottom_level_khr)
                            ("VK_ACCELERATION_STRUCTURE_TYPE_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkCopyAccelerationStructureModeKHR"
                            ("VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR" 0)
                            ("VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR"
                             1)
                            ("VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR"
                             2)
                            ("VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR"
                             3)
                            ("VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV"
                             vk_copy_acceleration_structure_mode_clone_khr)
                            ("VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV"
                             vk_copy_acceleration_structure_mode_compact_khr)
                            ("VK_COPY_ACCELERATION_STRUCTURE_MODE_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file
                            "VkAccelerationStructureMemoryRequirementsTypeNV"
                            ("VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV"
                             0)
                            ("VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV"
                             1)
                            ("VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV"
                             2)
                            ("VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_MAX_ENUM_NV"
                             7))

(more-cffi:def-foreign-enum doc-file "VkGeometryFlagBitsKHR"
                            ("VK_GEOMETRY_OPAQUE_BIT_KHR" 1)
                            ("VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR"
                             2)
                            ("VK_GEOMETRY_OPAQUE_BIT_NV"
                             vk_geometry_opaque_bit_khr)
                            ("VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV"
                             vk_geometry_no_duplicate_any_hit_invocation_bit_khr)
                            ("VK_GEOMETRY_FLAG_BITS_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkGeometryInstanceFlagBitsKHR"
                            ("VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR"
                             1)
                            ("VK_GEOMETRY_INSTANCE_TRIANGLE_FLIP_FACING_BIT_KHR"
                             2)
                            ("VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR" 4)
                            ("VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR" 8)
                            ("VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR"
                             vk_geometry_instance_triangle_flip_facing_bit_khr)
                            ("VK_GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV"
                             vk_geometry_instance_triangle_facing_cull_disable_bit_khr)
                            ("VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV"
                             vk_geometry_instance_triangle_front_counterclockwise_bit_khr)
                            ("VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV"
                             vk_geometry_instance_force_opaque_bit_khr)
                            ("VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV"
                             vk_geometry_instance_force_no_opaque_bit_khr)
                            ("VK_GEOMETRY_INSTANCE_FLAG_BITS_MAX_ENUM_KHR" 7))

(more-cffi:def-foreign-enum doc-file "VkBuildAccelerationStructureFlagBitsKHR"
                            ("VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_KHR"
                             1)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_KHR"
                             2)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_KHR"
                             4)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_KHR"
                             8)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_KHR"
                             16)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_MOTION_BIT_NV"
                             32)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_UPDATE_BIT_NV"
                             vk_build_acceleration_structure_allow_update_bit_khr)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_ALLOW_COMPACTION_BIT_NV"
                             vk_build_acceleration_structure_allow_compaction_bit_khr)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_TRACE_BIT_NV"
                             vk_build_acceleration_structure_prefer_fast_trace_bit_khr)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_PREFER_FAST_BUILD_BIT_NV"
                             vk_build_acceleration_structure_prefer_fast_build_bit_khr)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_LOW_MEMORY_BIT_NV"
                             vk_build_acceleration_structure_low_memory_bit_khr)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_FLAG_BITS_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkPipelineCompilerControlFlagBitsAMD"
                            ("VK_PIPELINE_COMPILER_CONTROL_FLAG_BITS_MAX_ENUM_AMD"
                             7))

(more-cffi:def-foreign-enum doc-file "VkTimeDomainEXT"
                            ("VK_TIME_DOMAIN_DEVICE_EXT" 0)
                            ("VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT" 1)
                            ("VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT" 2)
                            ("VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT" 3)
                            ("VK_TIME_DOMAIN_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkMemoryOverallocationBehaviorAMD"
                            ("VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD" 0)
                            ("VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD" 1)
                            ("VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD"
                             2)
                            ("VK_MEMORY_OVERALLOCATION_BEHAVIOR_MAX_ENUM_AMD"
                             7))

(more-cffi:def-foreign-enum doc-file "VkPerformanceConfigurationTypeINTEL"
                            ("VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL"
                             0)
                            ("VK_PERFORMANCE_CONFIGURATION_TYPE_MAX_ENUM_INTEL"
                             7))

(more-cffi:def-foreign-enum doc-file "VkQueryPoolSamplingModeINTEL"
                            ("VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL" 0)
                            ("VK_QUERY_POOL_SAMPLING_MODE_MAX_ENUM_INTEL" 7))

(more-cffi:def-foreign-enum doc-file "VkPerformanceOverrideTypeINTEL"
                            ("VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL"
                             0)
                            ("VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL"
                             1)
                            ("VK_PERFORMANCE_OVERRIDE_TYPE_MAX_ENUM_INTEL" 7))

(more-cffi:def-foreign-enum doc-file "VkPerformanceParameterTypeINTEL"
                            ("VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL"
                             0)
                            ("VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL"
                             1)
                            ("VK_PERFORMANCE_PARAMETER_TYPE_MAX_ENUM_INTEL" 7))

(more-cffi:def-foreign-enum doc-file "VkPerformanceValueTypeINTEL"
                            ("VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL" 0)
                            ("VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL" 1)
                            ("VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL" 2)
                            ("VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL" 3)
                            ("VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL" 4)
                            ("VK_PERFORMANCE_VALUE_TYPE_MAX_ENUM_INTEL" 7))

(more-cffi:def-foreign-enum doc-file "VkShaderCorePropertiesFlagBitsAMD"
                            ("VK_SHADER_CORE_PROPERTIES_FLAG_BITS_MAX_ENUM_AMD"
                             7))

(more-cffi:def-foreign-enum doc-file "VkValidationFeatureEnableEXT"
                            ("VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT" 0)
                            ("VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT"
                             1)
                            ("VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT"
                             2)
                            ("VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT" 3)
                            ("VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT"
                             4)
                            ("VK_VALIDATION_FEATURE_ENABLE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkValidationFeatureDisableEXT"
                            ("VK_VALIDATION_FEATURE_DISABLE_ALL_EXT" 0)
                            ("VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT" 1)
                            ("VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT"
                             2)
                            ("VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT"
                             3)
                            ("VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT"
                             4)
                            ("VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT" 5)
                            ("VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT"
                             6)
                            ("VK_VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT"
                             7)
                            ("VK_VALIDATION_FEATURE_DISABLE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkComponentTypeNV"
                            ("VK_COMPONENT_TYPE_FLOAT16_NV" 0)
                            ("VK_COMPONENT_TYPE_FLOAT32_NV" 1)
                            ("VK_COMPONENT_TYPE_FLOAT64_NV" 2)
                            ("VK_COMPONENT_TYPE_SINT8_NV" 3)
                            ("VK_COMPONENT_TYPE_SINT16_NV" 4)
                            ("VK_COMPONENT_TYPE_SINT32_NV" 5)
                            ("VK_COMPONENT_TYPE_SINT64_NV" 6)
                            ("VK_COMPONENT_TYPE_UINT8_NV" 7)
                            ("VK_COMPONENT_TYPE_UINT16_NV" 8)
                            ("VK_COMPONENT_TYPE_UINT32_NV" 9)
                            ("VK_COMPONENT_TYPE_UINT64_NV" 10)
                            ("VK_COMPONENT_TYPE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkScopeNV" ("VK_SCOPE_DEVICE_NV" 1)
                            ("VK_SCOPE_WORKGROUP_NV" 2)
                            ("VK_SCOPE_SUBGROUP_NV" 3)
                            ("VK_SCOPE_QUEUE_FAMILY_NV" 5)
                            ("VK_SCOPE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkCoverageReductionModeNV"
                            ("VK_COVERAGE_REDUCTION_MODE_MERGE_NV" 0)
                            ("VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV" 1)
                            ("VK_COVERAGE_REDUCTION_MODE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkProvokingVertexModeEXT"
                            ("VK_PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT" 0)
                            ("VK_PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT" 1)
                            ("VK_PROVOKING_VERTEX_MODE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkLineRasterizationModeEXT"
                            ("VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT" 0)
                            ("VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT" 1)
                            ("VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT" 2)
                            ("VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT"
                             3)
                            ("VK_LINE_RASTERIZATION_MODE_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkIndirectCommandsTokenTypeNV"
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_SHADER_GROUP_NV"
                             0)
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_STATE_FLAGS_NV"
                             1)
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NV"
                             2)
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NV"
                             3)
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NV"
                             4)
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NV"
                             5)
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NV" 6)
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_TASKS_NV" 7)
                            ("VK_INDIRECT_COMMANDS_TOKEN_TYPE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkIndirectStateFlagBitsNV"
                            ("VK_INDIRECT_STATE_FLAG_FRONTFACE_BIT_NV" 1)
                            ("VK_INDIRECT_STATE_FLAG_BITS_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkIndirectCommandsLayoutUsageFlagBitsNV"
                            ("VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EXPLICIT_PREPROCESS_BIT_NV"
                             1)
                            ("VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NV"
                             2)
                            ("VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NV"
                             4)
                            ("VK_INDIRECT_COMMANDS_LAYOUT_USAGE_FLAG_BITS_MAX_ENUM_NV"
                             7))

(more-cffi:def-foreign-enum doc-file "VkDeviceMemoryReportEventTypeEXT"
                            ("VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT"
                             0)
                            ("VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT" 1)
                            ("VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT" 2)
                            ("VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT"
                             3)
                            ("VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT"
                             4)
                            ("VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_MAX_ENUM_EXT"
                             7))

(more-cffi:def-foreign-enum doc-file "VkDeviceDiagnosticsConfigFlagBitsNV"
                            ("VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_DEBUG_INFO_BIT_NV"
                             1)
                            ("VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_RESOURCE_TRACKING_BIT_NV"
                             2)
                            ("VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_AUTOMATIC_CHECKPOINTS_BIT_NV"
                             4)
                            ("VK_DEVICE_DIAGNOSTICS_CONFIG_ENABLE_SHADER_ERROR_REPORTING_BIT_NV"
                             8)
                            ("VK_DEVICE_DIAGNOSTICS_CONFIG_FLAG_BITS_MAX_ENUM_NV"
                             7))

(more-cffi:def-foreign-enum doc-file "VkGraphicsPipelineLibraryFlagBitsEXT"
                            ("VK_GRAPHICS_PIPELINE_LIBRARY_VERTEX_INPUT_INTERFACE_BIT_EXT"
                             1)
                            ("VK_GRAPHICS_PIPELINE_LIBRARY_PRE_RASTERIZATION_SHADERS_BIT_EXT"
                             2)
                            ("VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_SHADER_BIT_EXT"
                             4)
                            ("VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_OUTPUT_INTERFACE_BIT_EXT"
                             8)
                            ("VK_GRAPHICS_PIPELINE_LIBRARY_FLAG_BITS_MAX_ENUM_EXT"
                             7))

(more-cffi:def-foreign-enum doc-file "VkFragmentShadingRateTypeNV"
                            ("VK_FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV"
                             0)
                            ("VK_FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV" 1)
                            ("VK_FRAGMENT_SHADING_RATE_TYPE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file "VkFragmentShadingRateNV"
                            ("VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV"
                             0)
                            ("VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV"
                             1)
                            ("VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV"
                             4)
                            ("VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV"
                             5)
                            ("VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV"
                             6)
                            ("VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV"
                             9)
                            ("VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV"
                             10)
                            ("VK_FRAGMENT_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV"
                             11)
                            ("VK_FRAGMENT_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV"
                             12)
                            ("VK_FRAGMENT_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV"
                             13)
                            ("VK_FRAGMENT_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV"
                             14)
                            ("VK_FRAGMENT_SHADING_RATE_NO_INVOCATIONS_NV" 15)
                            ("VK_FRAGMENT_SHADING_RATE_MAX_ENUM_NV" 7))

(more-cffi:def-foreign-enum doc-file
                            "VkAccelerationStructureMotionInstanceTypeNV"
                            ("VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV"
                             0)
                            ("VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV"
                             1)
                            ("VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV"
                             2)
                            ("VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MAX_ENUM_NV"
                             7))

(more-cffi:def-foreign-enum doc-file "VkImageCompressionFlagBitsEXT"
                            ("VK_IMAGE_COMPRESSION_DEFAULT_EXT" 0)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_DEFAULT_EXT" 1)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_EXPLICIT_EXT" 2)
                            ("VK_IMAGE_COMPRESSION_DISABLED_EXT" 4)
                            ("VK_IMAGE_COMPRESSION_FLAG_BITS_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkImageCompressionFixedRateFlagBitsEXT"
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_NONE_EXT" 0)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_1BPC_BIT_EXT" 1)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_2BPC_BIT_EXT" 2)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_3BPC_BIT_EXT" 4)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_4BPC_BIT_EXT" 8)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_5BPC_BIT_EXT" 16)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_6BPC_BIT_EXT" 32)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_7BPC_BIT_EXT" 64)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_8BPC_BIT_EXT"
                             128)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_9BPC_BIT_EXT"
                             256)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_10BPC_BIT_EXT"
                             512)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_11BPC_BIT_EXT"
                             1024)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_12BPC_BIT_EXT"
                             2048)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_13BPC_BIT_EXT"
                             4096)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_14BPC_BIT_EXT"
                             8192)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_15BPC_BIT_EXT"
                             16384)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_16BPC_BIT_EXT"
                             32768)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_17BPC_BIT_EXT"
                             65536)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_18BPC_BIT_EXT"
                             131072)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_19BPC_BIT_EXT"
                             262144)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_20BPC_BIT_EXT"
                             524288)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_21BPC_BIT_EXT"
                             1048576)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_22BPC_BIT_EXT"
                             2097152)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_23BPC_BIT_EXT"
                             4194304)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_24BPC_BIT_EXT"
                             8388608)
                            ("VK_IMAGE_COMPRESSION_FIXED_RATE_FLAG_BITS_MAX_ENUM_EXT"
                             7))

(more-cffi:def-foreign-enum doc-file "VkSubpassMergeStatusEXT"
                            ("VK_SUBPASS_MERGE_STATUS_MERGED_EXT" 0)
                            ("VK_SUBPASS_MERGE_STATUS_DISALLOWED_EXT" 1)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SIDE_EFFECTS_EXT"
                             2)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SAMPLES_MISMATCH_EXT"
                             3)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_VIEWS_MISMATCH_EXT"
                             4)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_ALIASING_EXT"
                             5)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPENDENCIES_EXT"
                             6)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INCOMPATIBLE_INPUT_ATTACHMENT_EXT"
                             7)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_TOO_MANY_ATTACHMENTS_EXT"
                             8)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_INSUFFICIENT_STORAGE_EXT"
                             9)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_DEPTH_STENCIL_COUNT_EXT"
                             10)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_RESOLVE_ATTACHMENT_REUSE_EXT"
                             11)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_SINGLE_SUBPASS_EXT"
                             12)
                            ("VK_SUBPASS_MERGE_STATUS_NOT_MERGED_UNSPECIFIED_EXT"
                             13)
                            ("VK_SUBPASS_MERGE_STATUS_MAX_ENUM_EXT" 7))

(more-cffi:def-foreign-enum doc-file "VkBuildAccelerationStructureModeKHR"
                            ("VK_BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR"
                             0)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR"
                             1)
                            ("VK_BUILD_ACCELERATION_STRUCTURE_MODE_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkAccelerationStructureBuildTypeKHR"
                            ("VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR" 0)
                            ("VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR"
                             1)
                            ("VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR"
                             2)
                            ("VK_ACCELERATION_STRUCTURE_BUILD_TYPE_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkAccelerationStructureCompatibilityKHR"
                            ("VK_ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR"
                             0)
                            ("VK_ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR"
                             1)
                            ("VK_ACCELERATION_STRUCTURE_COMPATIBILITY_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkAccelerationStructureCreateFlagBitsKHR"
                            ("VK_ACCELERATION_STRUCTURE_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR"
                             1)
                            ("VK_ACCELERATION_STRUCTURE_CREATE_MOTION_BIT_NV"
                             4)
                            ("VK_ACCELERATION_STRUCTURE_CREATE_FLAG_BITS_MAX_ENUM_KHR"
                             7))

(more-cffi:def-foreign-enum doc-file "VkShaderGroupShaderKHR"
                            ("VK_SHADER_GROUP_SHADER_GENERAL_KHR" 0)
                            ("VK_SHADER_GROUP_SHADER_CLOSEST_HIT_KHR" 1)
                            ("VK_SHADER_GROUP_SHADER_ANY_HIT_KHR" 2)
                            ("VK_SHADER_GROUP_SHADER_INTERSECTION_KHR" 3)
                            ("VK_SHADER_GROUP_SHADER_MAX_ENUM_KHR" 7)))