
(in-package :cvk)

(defconstant VK_VERSION_1_0 1)

(cffi:defctype handle :pointer)

(cffi:defctype null-handle (cffi:null-pointer))

(if (= 8 (cffi:foreign-type-size :pointer))
    (cffi:defctype non-dispatchable-handle :pointer)
    (cffi:defctype non-dispatchable-handle :uint64))

(defmacro make-api-version (variant major minor patch)
  `(logior (ash ,variant 29) (ash ,major 22) (ash ,minor 12) ,patch))

;; Vulkan 1.0 version number
(defconstant VK_API_VERSION_1_0 (make-api-version 0 1 0 0))

;; Version of this file
(defconstant VK_HEADER_VERSION 216)

;; Complete version of this file
(defconstant VK_HEADER_VERSION_COMPLETE (make-api-version 0 1 3 VK_HEADER_VERSION))

(defmacro api-version-variant (version)
  `(ash ,version 29))

(defmacro api-version-major (version)
  `(logand (ash ,version 22) #x7F))

(defmacro api-version-minor (version)
  `(logand (ash ,variant 12) #x3FF))

(defmacro api-version-patch (version)
  `(logand (ash ,version) #xFFF))

(cffi:defctype VkBool32 :uint32)
(cffi:defctype VkDeviceAddress :uint64)
(cffi:defctype VkDeviceSize :uint64)
(cffi:defctype VkFlags :uint32)
(cffi:defctype VkSampleMask :uint32)
(cffi:defctype VkBuffer non_dispatchable_handle)
(cffi:defctype VkImage non_dispatchable_handle)
(cffi:defctype VkInstance handle)
(cffi:defctype VkPhysicalDevice handle)
(cffi:defctype VkDevice handle)
(cffi:defctype VkQueue handle)
(cffi:defctype VkSemaphore non_dispatchable_handle)
(cffi:defctype VkCommandBuffer handle)
(cffi:defctype VkFence non_dispatchable_handle)
(cffi:defctype VkDeviceMemory non_dispatchable_handle)
(cffi:defctype VkEvent non_dispatchable_handle)
(cffi:defctype VkQueryPool non_dispatchable_handle)
(cffi:defctype VkBufferView non_dispatchable_handle)
(cffi:defctype VkImageView non_dispatchable_handle)
(cffi:defctype VkShaderModule non_dispatchable_handle)
(cffi:defctype VkPipelineCache non_dispatchable_handle)
(cffi:defctype VkPipelineLayout non_dispatchable_handle)
(cffi:defctype VkPipeline non_dispatchable_handle)
(cffi:defctype VkRenderPass non_dispatchable_handle)
(cffi:defctype VkDescriptorSetLayout non_dispatchable_handle)
(cffi:defctype VkSampler non_dispatchable_handle)
(cffi:defctype VkDescriptorSet non_dispatchable_handle)
(cffi:defctype VkDescriptorPool non_dispatchable_handle)
(cffi:defctype VkFramebuffer non_dispatchable_handle)
(cffi:defctype VkCommandPool non_dispatchable_handle)

(defconstant UINT64_MAX #.(1- (expt 2 64)))
(defconstant UINT32_MAX #.(1- (expt 2 32)))
(defconstant VK_ATTACHMENT_UNUSED              UINT32_MAX)
(defconstant VK_FALSE                          0)
(defconstant VK_LOD_CLAMP_NONE                 1000.0)
(defconstant VK_QUEUE_FAMILY_IGNORED           UINT32_MAX)
(defconstant VK_REMAINING_ARRAY_LAYERS         UINT32_MAX)
(defconstant VK_REMAINING_MIP_LEVELS           UINT32_MAX)
(defconstant VK_SUBPASS_EXTERNAL               UINT32_MAX)
(defconstant VK_TRUE                           1)
(defconstant VK_WHOLE_SIZE                     UINT64_MAX)
(defconstant VK_MAX_MEMORY_TYPES               32)
(defconstant VK_MAX_PHYSICAL_DEVICE_NAME_SIZE  256)
(defconstant VK_UUID_SIZE                      16)
(defconstant VK_MAX_EXTENSION_NAME_SIZE        256)
(defconstant VK_MAX_DESCRIPTION_SIZE           256)
(defconstant VK_MAX_MEMORY_HEAPS               16)

(cffi:defctype VkAccessFlags VkFlags)

(cffi:defctype VkImageAspectFlags VkFlags)

(cffi:defctype VkFormatFeatureFlags VkFlags)

(cffi:defctype VkImageCreateFlags VkFlags)

(cffi:defctype VkSampleCountFlags VkFlags)

(cffi:defctype VkImageUsageFlags VkFlags)

(cffi:defctype VkInstanceCreateFlags VkFlags)

(cffi:defctype VkMemoryHeapFlags VkFlags)

(cffi:defctype VkMemoryPropertyFlags VkFlags)

(cffi:defctype VkQueueFlags VkFlags)

(cffi:defctype VkDeviceCreateFlags VkFlags)

(cffi:defctype VkDeviceQueueCreateFlags VkFlags)

(cffi:defctype VkPipelineStageFlags VkFlags)

(cffi:defctype VkMemoryMapFlags VkFlags)

(cffi:defctype VkSparseMemoryBindFlags VkFlags)

(cffi:defctype VkSparseImageFormatFlags VkFlags)

(cffi:defctype VkFenceCreateFlags VkFlags)

(cffi:defctype VkSemaphoreCreateFlags VkFlags)

(cffi:defctype VkEventCreateFlags VkFlags)

(cffi:defctype VkQueryPipelineStatisticFlags VkFlags)

(cffi:defctype VkQueryPoolCreateFlags VkFlags)

(cffi:defctype VkQueryResultFlags VkFlags)

(cffi:defctype VkBufferCreateFlags VkFlags)

(cffi:defctype VkBufferUsageFlags VkFlags)

(cffi:defctype VkBufferViewCreateFlags VkFlags)

(cffi:defctype VkImageViewCreateFlags VkFlags)

(cffi:defctype VkShaderModuleCreateFlags VkFlags)

(cffi:defctype VkPipelineCacheCreateFlags VkFlags)

(cffi:defctype VkColorComponentFlags VkFlags)

(cffi:defctype VkPipelineCreateFlags VkFlags)

(cffi:defctype VkPipelineShaderStageCreateFlags VkFlags)

(cffi:defctype VkCullModeFlags VkFlags)

(cffi:defctype VkPipelineVertexInputStateCreateFlags VkFlags)

(cffi:defctype VkPipelineInputAssemblyStateCreateFlags VkFlags)

(cffi:defctype VkPipelineTessellationStateCreateFlags VkFlags)

(cffi:defctype VkPipelineViewportStateCreateFlags VkFlags)

(cffi:defctype VkPipelineRasterizationStateCreateFlags VkFlags)

(cffi:defctype VkPipelineMultisampleStateCreateFlags VkFlags)

(cffi:defctype VkPipelineDepthStencilStateCreateFlags VkFlags)

(cffi:defctype VkPipelineColorBlendStateCreateFlags VkFlags)

(cffi:defctype VkPipelineDynamicStateCreateFlags VkFlags)

(cffi:defctype VkPipelineLayoutCreateFlags VkFlags)

(cffi:defctype VkShaderStageFlags VkFlags)

(cffi:defctype VkSamplerCreateFlags VkFlags)

(cffi:defctype VkDescriptorPoolCreateFlags VkFlags)

(cffi:defctype VkDescriptorPoolResetFlags VkFlags)

(cffi:defctype VkDescriptorSetLayoutCreateFlags VkFlags)

(cffi:defctype VkAttachmentDescriptionFlags VkFlags)

(cffi:defctype VkDependencyFlags VkFlags)

(cffi:defctype VkFramebufferCreateFlags VkFlags)

(cffi:defctype VkRenderPassCreateFlags VkFlags)

(cffi:defctype VkSubpassDescriptionFlags VkFlags)

(cffi:defctype VkCommandPoolCreateFlags VkFlags)

(cffi:defctype VkCommandPoolResetFlags VkFlags)

(cffi:defctype VkCommandBufferUsageFlags VkFlags)

(cffi:defctype VkQueryControlFlags VkFlags)

(cffi:defctype VkCommandBufferResetFlags VkFlags)

(cffi:defctype VkStencilFaceFlags VkFlags)

(cffi:defctype VkSamplerYcbcrConversion non_dispatchable_handle)
(cffi:defctype VkDescriptorUpdateTemplate non_dispatchable_handle)

(cffi:defctype VkSubgroupFeatureFlags VkFlags)

(cffi:defctype VkPeerMemoryFeatureFlags VkFlags)

(cffi:defctype VkMemoryAllocateFlags VkFlags)

(cffi:defctype VkCommandPoolTrimFlags VkFlags)

(cffi:defctype VkDescriptorUpdateTemplateCreateFlags VkFlags)

(cffi:defctype VkExternalMemoryHandleTypeFlags VkFlags)

(cffi:defctype VkExternalMemoryFeatureFlags VkFlags)

(cffi:defctype VkExternalFenceHandleTypeFlags VkFlags)

(cffi:defctype VkExternalFenceFeatureFlags VkFlags)

(cffi:defctype VkFenceImportFlags VkFlags)

(cffi:defctype VkSemaphoreImportFlags VkFlags)

(cffi:defctype VkExternalSemaphoreHandleTypeFlags VkFlags)

(cffi:defctype VkExternalSemaphoreFeatureFlags VkFlags)

(cffi:defctype VkPhysicalDeviceVariablePointerFeatures VkPhysicalDeviceVariablePointersFeatures)

(cffi:defctype VkPhysicalDeviceShaderDrawParameterFeatures VkPhysicalDeviceShaderDrawParametersFeatures)





(cffi:defctype VkResolveModeFlags VkFlags)

(cffi:defctype VkDescriptorBindingFlags VkFlags)

(cffi:defctype VkSemaphoreWaitFlags VkFlags)





(cffi:defctype VkFlags64 :uint64)
(cffi:defctype VkPrivateDataSlot non_dispatchable_handle)

(cffi:defctype VkPipelineCreationFeedbackFlags VkFlags)

(cffi:defctype VkToolPurposeFlags VkFlags)

(cffi:defctype VkPrivateDataSlotCreateFlags VkFlags)

(cffi:defctype VkPipelineStageFlags2 VkFlags64)


(cffi:defctype VkPipelineStageFlagBits2 VkFlags64)
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_NONE = 0ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_NONE_KHR = 0ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT = 0x00000001ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT_KHR = 0x00000001ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT = 0x00000002ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT_KHR = 0x00000002ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT = 0x00000004ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT_KHR = 0x00000004ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT = 0x00000008ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT_KHR = 0x00000008ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT = 0x00000010ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT_KHR = 0x00000010ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT = 0x00000020ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT_KHR = 0x00000020ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT = 0x00000040ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT_KHR = 0x00000040ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT = 0x00000080ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT_KHR = 0x00000080ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT = 0x00000100ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT_KHR = 0x00000100ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT = 0x00000200ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT_KHR = 0x00000200ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT = 0x00000400ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT_KHR = 0x00000400ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT = 0x00000800ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT_KHR = 0x00000800ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT = 0x00001000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT_KHR = 0x00001000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TRANSFER_BIT = 0x00001000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TRANSFER_BIT_KHR = 0x00001000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT = 0x00002000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT_KHR = 0x00002000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_HOST_BIT = 0x00004000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_HOST_BIT_KHR = 0x00004000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT = 0x00008000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT_KHR = 0x00008000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT = 0x00010000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT_KHR = 0x00010000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COPY_BIT = 0x100000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COPY_BIT_KHR = 0x100000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_RESOLVE_BIT = 0x200000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_RESOLVE_BIT_KHR = 0x200000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_BLIT_BIT = 0x400000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_BLIT_BIT_KHR = 0x400000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_CLEAR_BIT = 0x800000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_CLEAR_BIT_KHR = 0x800000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT = 0x1000000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT_KHR = 0x1000000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT = 0x2000000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT_KHR = 0x2000000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT = 0x4000000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT_KHR = 0x4000000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VIDEO_DECODE_BIT_KHR = 0x04000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_VIDEO_ENCODE_BIT_KHR = 0x08000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TRANSFORM_FEEDBACK_BIT_EXT = 0x01000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_CONDITIONAL_RENDERING_BIT_EXT = 0x00040000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_COMMAND_PREPROCESS_BIT_NV = 0x00020000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x00400000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_SHADING_RATE_IMAGE_BIT_NV = 0x00400000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_KHR = 0x02000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_KHR = 0x00200000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_NV = 0x00200000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_NV = 0x02000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_FRAGMENT_DENSITY_PROCESS_BIT_EXT = 0x00800000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_NV = 0x00080000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_NV = 0x00100000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_SUBPASS_SHADING_BIT_HUAWEI = 0x8000000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_INVOCATION_MASK_BIT_HUAWEI = 0x10000000000ULL;
static const VkPipelineStageFlagBits2 VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_COPY_BIT_KHR = 0x10000000ULL;

(cffi:defctype VkAccessFlags2 VkFlags64)


(cffi:defctype VkAccessFlagBits2 VkFlags64)
static const VkAccessFlagBits2 VK_ACCESS_2_NONE = 0ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_NONE_KHR = 0ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT = 0x00000001ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT_KHR = 0x00000001ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_INDEX_READ_BIT = 0x00000002ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_INDEX_READ_BIT_KHR = 0x00000002ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT = 0x00000004ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT_KHR = 0x00000004ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_UNIFORM_READ_BIT = 0x00000008ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_UNIFORM_READ_BIT_KHR = 0x00000008ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT = 0x00000010ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT_KHR = 0x00000010ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_READ_BIT = 0x00000020ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_READ_BIT_KHR = 0x00000020ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_WRITE_BIT = 0x00000040ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_WRITE_BIT_KHR = 0x00000040ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT = 0x00000080ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT_KHR = 0x00000080ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT = 0x00000100ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT_KHR = 0x00000100ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 0x00000200ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT_KHR = 0x00000200ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 0x00000400ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT_KHR = 0x00000400ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_TRANSFER_READ_BIT = 0x00000800ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_TRANSFER_READ_BIT_KHR = 0x00000800ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_TRANSFER_WRITE_BIT = 0x00001000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_TRANSFER_WRITE_BIT_KHR = 0x00001000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_HOST_READ_BIT = 0x00002000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_HOST_READ_BIT_KHR = 0x00002000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_HOST_WRITE_BIT = 0x00004000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_HOST_WRITE_BIT_KHR = 0x00004000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_MEMORY_READ_BIT = 0x00008000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_MEMORY_READ_BIT_KHR = 0x00008000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_MEMORY_WRITE_BIT = 0x00010000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_MEMORY_WRITE_BIT_KHR = 0x00010000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_SAMPLED_READ_BIT = 0x100000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_SAMPLED_READ_BIT_KHR = 0x100000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_STORAGE_READ_BIT = 0x200000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_STORAGE_READ_BIT_KHR = 0x200000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT = 0x400000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT_KHR = 0x400000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_VIDEO_DECODE_READ_BIT_KHR = 0x800000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_VIDEO_DECODE_WRITE_BIT_KHR = 0x1000000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_VIDEO_ENCODE_READ_BIT_KHR = 0x2000000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_VIDEO_ENCODE_WRITE_BIT_KHR = 0x4000000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_TRANSFORM_FEEDBACK_WRITE_BIT_EXT = 0x02000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT = 0x04000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT = 0x08000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_CONDITIONAL_RENDERING_READ_BIT_EXT = 0x00100000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_COMMAND_PREPROCESS_READ_BIT_NV = 0x00020000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_COMMAND_PREPROCESS_WRITE_BIT_NV = 0x00040000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR = 0x00800000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADING_RATE_IMAGE_READ_BIT_NV = 0x00800000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_KHR = 0x00200000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_KHR = 0x00400000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_NV = 0x00200000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_NV = 0x00400000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_FRAGMENT_DENSITY_MAP_READ_BIT_EXT = 0x01000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT = 0x00080000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_INVOCATION_MASK_READ_BIT_HUAWEI = 0x8000000000ULL;
static const VkAccessFlagBits2 VK_ACCESS_2_SHADER_BINDING_TABLE_READ_BIT_KHR = 0x10000000000ULL;

(cffi:defctype VkSubmitFlags VkFlags)

(cffi:defctype VkRenderingFlags VkFlags)

(cffi:defctype VkFormatFeatureFlags2 VkFlags64)


(cffi:defctype VkFormatFeatureFlagBits2 VkFlags64)
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT = 0x00000001ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT_KHR = 0x00000001ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT = 0x00000002ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT_KHR = 0x00000002ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT = 0x00000004ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT_KHR = 0x00000004ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT = 0x00000008ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT_KHR = 0x00000008ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT = 0x00000010ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT_KHR = 0x00000010ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 0x00000020ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT_KHR = 0x00000020ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT = 0x00000040ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT_KHR = 0x00000040ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT = 0x00000080ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT_KHR = 0x00000080ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT = 0x00000100ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT_KHR = 0x00000100ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT = 0x00000200ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT_KHR = 0x00000200ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_BLIT_SRC_BIT = 0x00000400ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_BLIT_SRC_BIT_KHR = 0x00000400ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_BLIT_DST_BIT = 0x00000800ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_BLIT_DST_BIT_KHR = 0x00000800ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 0x00001000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT_KHR = 0x00001000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT = 0x00002000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT = 0x00002000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT = 0x00004000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT_KHR = 0x00004000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT = 0x00008000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT_KHR = 0x00008000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT = 0x00010000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT_KHR = 0x00010000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT = 0x00020000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT_KHR = 0x00020000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT = 0x00040000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR = 0x00040000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT = 0x00080000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR = 0x00080000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT = 0x00100000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR = 0x00100000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT = 0x00200000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR = 0x00200000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_DISJOINT_BIT = 0x00400000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_DISJOINT_BIT_KHR = 0x00400000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT = 0x00800000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT_KHR = 0x00800000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT = 0x80000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT_KHR = 0x80000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT = 0x100000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT_KHR = 0x100000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT = 0x200000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT_KHR = 0x200000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_VIDEO_DECODE_OUTPUT_BIT_KHR = 0x02000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_VIDEO_DECODE_DPB_BIT_KHR = 0x04000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR = 0x20000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_FRAGMENT_DENSITY_MAP_BIT_EXT = 0x01000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 0x40000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_VIDEO_ENCODE_INPUT_BIT_KHR = 0x08000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_VIDEO_ENCODE_DPB_BIT_KHR = 0x10000000ULL;
static const VkFormatFeatureFlagBits2 VK_FORMAT_FEATURE_2_LINEAR_COLOR_ATTACHMENT_BIT_NV = 0x4000000000ULL;

(cffi:defctype VkSurfaceKHR non_dispatchable_handle)

(cffi:defctype VkCompositeAlphaFlagsKHR VkFlags)

(cffi:defctype VkSurfaceTransformFlagsKHR VkFlags)

(cffi:defctype VkSwapchainKHR non_dispatchable_handle)

(cffi:defctype VkSwapchainCreateFlagsKHR VkFlags)

(cffi:defctype VkDeviceGroupPresentModeFlagsKHR VkFlags)

(cffi:defctype VkDisplayKHR non_dispatchable_handle)
(cffi:defctype VkDisplayModeKHR non_dispatchable_handle)

(cffi:defctype VkDisplayModeCreateFlagsKHR VkFlags)

(cffi:defctype VkDisplayPlaneAlphaFlagsKHR VkFlags)

(cffi:defctype VkDisplaySurfaceCreateFlagsKHR VkFlags)

(cffi:defctype VkRenderingFlagsKHR VkRenderingFlags)

(cffi:defctype VkRenderingFlagBitsKHR VkRenderingFlagBits)

(cffi:defctype VkRenderingInfoKHR VkRenderingInfo)

(cffi:defctype VkRenderingAttachmentInfoKHR VkRenderingAttachmentInfo)

(cffi:defctype VkPipelineRenderingCreateInfoKHR VkPipelineRenderingCreateInfo)

(cffi:defctype VkPhysicalDeviceDynamicRenderingFeaturesKHR VkPhysicalDeviceDynamicRenderingFeatures)

(cffi:defctype VkCommandBufferInheritanceRenderingInfoKHR VkCommandBufferInheritanceRenderingInfo)

(cffi:defctype VkAttachmentSampleCountInfoNV VkAttachmentSampleCountInfoAMD)

(cffi:defctype VkRenderPassMultiviewCreateInfoKHR VkRenderPassMultiviewCreateInfo)

(cffi:defctype VkPhysicalDeviceMultiviewFeaturesKHR VkPhysicalDeviceMultiviewFeatures)

(cffi:defctype VkPhysicalDeviceMultiviewPropertiesKHR VkPhysicalDeviceMultiviewProperties)

(cffi:defctype VkPhysicalDeviceFeatures2KHR VkPhysicalDeviceFeatures2)

(cffi:defctype VkPhysicalDeviceProperties2KHR VkPhysicalDeviceProperties2)

(cffi:defctype VkFormatProperties2KHR VkFormatProperties2)

(cffi:defctype VkImageFormatProperties2KHR VkImageFormatProperties2)

(cffi:defctype VkPhysicalDeviceImageFormatInfo2KHR VkPhysicalDeviceImageFormatInfo2)

(cffi:defctype VkQueueFamilyProperties2KHR VkQueueFamilyProperties2)

(cffi:defctype VkPhysicalDeviceMemoryProperties2KHR VkPhysicalDeviceMemoryProperties2)

(cffi:defctype VkSparseImageFormatProperties2KHR VkSparseImageFormatProperties2)

(cffi:defctype VkPhysicalDeviceSparseImageFormatInfo2KHR VkPhysicalDeviceSparseImageFormatInfo2)

(cffi:defctype VkPeerMemoryFeatureFlagsKHR VkPeerMemoryFeatureFlags)

(cffi:defctype VkPeerMemoryFeatureFlagBitsKHR VkPeerMemoryFeatureFlagBits)

(cffi:defctype VkMemoryAllocateFlagsKHR VkMemoryAllocateFlags)

(cffi:defctype VkMemoryAllocateFlagBitsKHR VkMemoryAllocateFlagBits)

(cffi:defctype VkMemoryAllocateFlagsInfoKHR VkMemoryAllocateFlagsInfo)

(cffi:defctype VkDeviceGroupRenderPassBeginInfoKHR VkDeviceGroupRenderPassBeginInfo)

(cffi:defctype VkDeviceGroupCommandBufferBeginInfoKHR VkDeviceGroupCommandBufferBeginInfo)

(cffi:defctype VkDeviceGroupSubmitInfoKHR VkDeviceGroupSubmitInfo)

(cffi:defctype VkDeviceGroupBindSparseInfoKHR VkDeviceGroupBindSparseInfo)

(cffi:defctype VkBindBufferMemoryDeviceGroupInfoKHR VkBindBufferMemoryDeviceGroupInfo)

(cffi:defctype VkBindImageMemoryDeviceGroupInfoKHR VkBindImageMemoryDeviceGroupInfo)

(cffi:defctype VkCommandPoolTrimFlagsKHR VkCommandPoolTrimFlags)

(cffi:defctype VkPhysicalDeviceGroupPropertiesKHR VkPhysicalDeviceGroupProperties)

(cffi:defctype VkDeviceGroupDeviceCreateInfoKHR VkDeviceGroupDeviceCreateInfo)

(cffi:defctype VkExternalMemoryHandleTypeFlagsKHR VkExternalMemoryHandleTypeFlags)

(cffi:defctype VkExternalMemoryHandleTypeFlagBitsKHR VkExternalMemoryHandleTypeFlagBits)

(cffi:defctype VkExternalMemoryFeatureFlagsKHR VkExternalMemoryFeatureFlags)

(cffi:defctype VkExternalMemoryFeatureFlagBitsKHR VkExternalMemoryFeatureFlagBits)

(cffi:defctype VkExternalMemoryPropertiesKHR VkExternalMemoryProperties)

(cffi:defctype VkPhysicalDeviceExternalImageFormatInfoKHR VkPhysicalDeviceExternalImageFormatInfo)

(cffi:defctype VkExternalImageFormatPropertiesKHR VkExternalImageFormatProperties)

(cffi:defctype VkPhysicalDeviceExternalBufferInfoKHR VkPhysicalDeviceExternalBufferInfo)

(cffi:defctype VkExternalBufferPropertiesKHR VkExternalBufferProperties)

(cffi:defctype VkPhysicalDeviceIDPropertiesKHR VkPhysicalDeviceIDProperties)

(cffi:defctype VkExternalMemoryImageCreateInfoKHR VkExternalMemoryImageCreateInfo)

(cffi:defctype VkExternalMemoryBufferCreateInfoKHR VkExternalMemoryBufferCreateInfo)

(cffi:defctype VkExportMemoryAllocateInfoKHR VkExportMemoryAllocateInfo)

(cffi:defctype VkExternalSemaphoreHandleTypeFlagsKHR VkExternalSemaphoreHandleTypeFlags)

(cffi:defctype VkExternalSemaphoreHandleTypeFlagBitsKHR VkExternalSemaphoreHandleTypeFlagBits)

(cffi:defctype VkExternalSemaphoreFeatureFlagsKHR VkExternalSemaphoreFeatureFlags)

(cffi:defctype VkExternalSemaphoreFeatureFlagBitsKHR VkExternalSemaphoreFeatureFlagBits)

(cffi:defctype VkPhysicalDeviceExternalSemaphoreInfoKHR VkPhysicalDeviceExternalSemaphoreInfo)

(cffi:defctype VkExternalSemaphorePropertiesKHR VkExternalSemaphoreProperties)

(cffi:defctype VkSemaphoreImportFlagsKHR VkSemaphoreImportFlags)

(cffi:defctype VkSemaphoreImportFlagBitsKHR VkSemaphoreImportFlagBits)

(cffi:defctype VkExportSemaphoreCreateInfoKHR VkExportSemaphoreCreateInfo)

(cffi:defctype VkPhysicalDeviceShaderFloat16Int8FeaturesKHR VkPhysicalDeviceShaderFloat16Int8Features)

(cffi:defctype VkPhysicalDeviceFloat16Int8FeaturesKHR VkPhysicalDeviceShaderFloat16Int8Features)

(cffi:defctype VkPhysicalDevice16BitStorageFeaturesKHR VkPhysicalDevice16BitStorageFeatures)

(cffi:defctype VkDescriptorUpdateTemplateKHR VkDescriptorUpdateTemplate)

(cffi:defctype VkDescriptorUpdateTemplateTypeKHR VkDescriptorUpdateTemplateType)

(cffi:defctype VkDescriptorUpdateTemplateCreateFlagsKHR VkDescriptorUpdateTemplateCreateFlags)

(cffi:defctype VkDescriptorUpdateTemplateEntryKHR VkDescriptorUpdateTemplateEntry)

(cffi:defctype VkDescriptorUpdateTemplateCreateInfoKHR VkDescriptorUpdateTemplateCreateInfo)

(cffi:defctype VkPhysicalDeviceImagelessFramebufferFeaturesKHR VkPhysicalDeviceImagelessFramebufferFeatures)

(cffi:defctype VkFramebufferAttachmentsCreateInfoKHR VkFramebufferAttachmentsCreateInfo)

(cffi:defctype VkFramebufferAttachmentImageInfoKHR VkFramebufferAttachmentImageInfo)

(cffi:defctype VkRenderPassAttachmentBeginInfoKHR VkRenderPassAttachmentBeginInfo)

(cffi:defctype VkRenderPassCreateInfo2KHR VkRenderPassCreateInfo2)

(cffi:defctype VkAttachmentDescription2KHR VkAttachmentDescription2)

(cffi:defctype VkAttachmentReference2KHR VkAttachmentReference2)

(cffi:defctype VkSubpassDescription2KHR VkSubpassDescription2)

(cffi:defctype VkSubpassDependency2KHR VkSubpassDependency2)

(cffi:defctype VkSubpassBeginInfoKHR VkSubpassBeginInfo)

(cffi:defctype VkSubpassEndInfoKHR VkSubpassEndInfo)

(cffi:defctype VkExternalFenceHandleTypeFlagsKHR VkExternalFenceHandleTypeFlags)

(cffi:defctype VkExternalFenceHandleTypeFlagBitsKHR VkExternalFenceHandleTypeFlagBits)

(cffi:defctype VkExternalFenceFeatureFlagsKHR VkExternalFenceFeatureFlags)

(cffi:defctype VkExternalFenceFeatureFlagBitsKHR VkExternalFenceFeatureFlagBits)

(cffi:defctype VkPhysicalDeviceExternalFenceInfoKHR VkPhysicalDeviceExternalFenceInfo)

(cffi:defctype VkExternalFencePropertiesKHR VkExternalFenceProperties)

(cffi:defctype VkFenceImportFlagsKHR VkFenceImportFlags)

(cffi:defctype VkFenceImportFlagBitsKHR VkFenceImportFlagBits)

(cffi:defctype VkExportFenceCreateInfoKHR VkExportFenceCreateInfo)

(cffi:defctype VkPerformanceCounterDescriptionFlagsKHR VkFlags)

(cffi:defctype VkAcquireProfilingLockFlagsKHR VkFlags)

(cffi:defctype VkPointClippingBehaviorKHR VkPointClippingBehavior)

(cffi:defctype VkTessellationDomainOriginKHR VkTessellationDomainOrigin)

(cffi:defctype VkPhysicalDevicePointClippingPropertiesKHR VkPhysicalDevicePointClippingProperties)

(cffi:defctype VkRenderPassInputAttachmentAspectCreateInfoKHR VkRenderPassInputAttachmentAspectCreateInfo)

(cffi:defctype VkInputAttachmentAspectReferenceKHR VkInputAttachmentAspectReference)

(cffi:defctype VkImageViewUsageCreateInfoKHR VkImageViewUsageCreateInfo)

(cffi:defctype VkPipelineTessellationDomainOriginStateCreateInfoKHR VkPipelineTessellationDomainOriginStateCreateInfo)

(cffi:defctype VkPhysicalDeviceVariablePointerFeaturesKHR VkPhysicalDeviceVariablePointersFeatures)

(cffi:defctype VkPhysicalDeviceVariablePointersFeaturesKHR VkPhysicalDeviceVariablePointersFeatures)

(cffi:defctype VkMemoryDedicatedRequirementsKHR VkMemoryDedicatedRequirements)

(cffi:defctype VkMemoryDedicatedAllocateInfoKHR VkMemoryDedicatedAllocateInfo)

(cffi:defctype VkBufferMemoryRequirementsInfo2KHR VkBufferMemoryRequirementsInfo2)

(cffi:defctype VkImageMemoryRequirementsInfo2KHR VkImageMemoryRequirementsInfo2)

(cffi:defctype VkImageSparseMemoryRequirementsInfo2KHR VkImageSparseMemoryRequirementsInfo2)

(cffi:defctype VkMemoryRequirements2KHR VkMemoryRequirements2)

(cffi:defctype VkSparseImageMemoryRequirements2KHR VkSparseImageMemoryRequirements2)

(cffi:defctype VkImageFormatListCreateInfoKHR VkImageFormatListCreateInfo)

(cffi:defctype VkSamplerYcbcrConversionKHR VkSamplerYcbcrConversion)

(cffi:defctype VkSamplerYcbcrModelConversionKHR VkSamplerYcbcrModelConversion)

(cffi:defctype VkSamplerYcbcrRangeKHR VkSamplerYcbcrRange)

(cffi:defctype VkChromaLocationKHR VkChromaLocation)

(cffi:defctype VkSamplerYcbcrConversionCreateInfoKHR VkSamplerYcbcrConversionCreateInfo)

(cffi:defctype VkSamplerYcbcrConversionInfoKHR VkSamplerYcbcrConversionInfo)

(cffi:defctype VkBindImagePlaneMemoryInfoKHR VkBindImagePlaneMemoryInfo)

(cffi:defctype VkImagePlaneMemoryRequirementsInfoKHR VkImagePlaneMemoryRequirementsInfo)

(cffi:defctype VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR VkPhysicalDeviceSamplerYcbcrConversionFeatures)

(cffi:defctype VkSamplerYcbcrConversionImageFormatPropertiesKHR VkSamplerYcbcrConversionImageFormatProperties)

(cffi:defctype VkBindBufferMemoryInfoKHR VkBindBufferMemoryInfo)

(cffi:defctype VkBindImageMemoryInfoKHR VkBindImageMemoryInfo)

(cffi:defctype VkPhysicalDeviceMaintenance3PropertiesKHR VkPhysicalDeviceMaintenance3Properties)

(cffi:defctype VkDescriptorSetLayoutSupportKHR VkDescriptorSetLayoutSupport)

(cffi:defctype VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures)

(cffi:defctype VkPhysicalDevice8BitStorageFeaturesKHR VkPhysicalDevice8BitStorageFeatures)

(cffi:defctype VkPhysicalDeviceShaderAtomicInt64FeaturesKHR VkPhysicalDeviceShaderAtomicInt64Features)

(cffi:defctype VkDriverIdKHR VkDriverId)

(cffi:defctype VkConformanceVersionKHR VkConformanceVersion)

(cffi:defctype VkPhysicalDeviceDriverPropertiesKHR VkPhysicalDeviceDriverProperties)

(cffi:defctype VkShaderFloatControlsIndependenceKHR VkShaderFloatControlsIndependence)

(cffi:defctype VkPhysicalDeviceFloatControlsPropertiesKHR VkPhysicalDeviceFloatControlsProperties)

(cffi:defctype VkResolveModeFlagBitsKHR VkResolveModeFlagBits)

(cffi:defctype VkResolveModeFlagsKHR VkResolveModeFlags)

(cffi:defctype VkSubpassDescriptionDepthStencilResolveKHR VkSubpassDescriptionDepthStencilResolve)

(cffi:defctype VkPhysicalDeviceDepthStencilResolvePropertiesKHR VkPhysicalDeviceDepthStencilResolveProperties)

(cffi:defctype VkSemaphoreTypeKHR VkSemaphoreType)

(cffi:defctype VkSemaphoreWaitFlagBitsKHR VkSemaphoreWaitFlagBits)

(cffi:defctype VkSemaphoreWaitFlagsKHR VkSemaphoreWaitFlags)

(cffi:defctype VkPhysicalDeviceTimelineSemaphoreFeaturesKHR VkPhysicalDeviceTimelineSemaphoreFeatures)

(cffi:defctype VkPhysicalDeviceTimelineSemaphorePropertiesKHR VkPhysicalDeviceTimelineSemaphoreProperties)

(cffi:defctype VkSemaphoreTypeCreateInfoKHR VkSemaphoreTypeCreateInfo)

(cffi:defctype VkTimelineSemaphoreSubmitInfoKHR VkTimelineSemaphoreSubmitInfo)

(cffi:defctype VkSemaphoreWaitInfoKHR VkSemaphoreWaitInfo)

(cffi:defctype VkSemaphoreSignalInfoKHR VkSemaphoreSignalInfo)

(cffi:defctype VkPhysicalDeviceVulkanMemoryModelFeaturesKHR VkPhysicalDeviceVulkanMemoryModelFeatures)

(cffi:defctype VkPhysicalDeviceShaderTerminateInvocationFeaturesKHR VkPhysicalDeviceShaderTerminateInvocationFeatures)

(cffi:defctype VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures)

(cffi:defctype VkAttachmentReferenceStencilLayoutKHR VkAttachmentReferenceStencilLayout)

(cffi:defctype VkAttachmentDescriptionStencilLayoutKHR VkAttachmentDescriptionStencilLayout)

(cffi:defctype VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR VkPhysicalDeviceUniformBufferStandardLayoutFeatures)

(cffi:defctype VkPhysicalDeviceBufferDeviceAddressFeaturesKHR VkPhysicalDeviceBufferDeviceAddressFeatures)

(cffi:defctype VkBufferDeviceAddressInfoKHR VkBufferDeviceAddressInfo)

(cffi:defctype VkBufferOpaqueCaptureAddressCreateInfoKHR VkBufferOpaqueCaptureAddressCreateInfo)

(cffi:defctype VkMemoryOpaqueCaptureAddressAllocateInfoKHR VkMemoryOpaqueCaptureAddressAllocateInfo)

(cffi:defctype VkDeviceMemoryOpaqueCaptureAddressInfoKHR VkDeviceMemoryOpaqueCaptureAddressInfo)

(cffi:defctype VkDeferredOperationKHR non_dispatchable_handle)

(cffi:defctype VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR VkPhysicalDeviceShaderIntegerDotProductFeatures)

(cffi:defctype VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR VkPhysicalDeviceShaderIntegerDotProductProperties)

(cffi:defctype VkPipelineStageFlags2KHR VkPipelineStageFlags2)

(cffi:defctype VkPipelineStageFlagBits2KHR VkPipelineStageFlagBits2)

(cffi:defctype VkAccessFlags2KHR VkAccessFlags2)

(cffi:defctype VkAccessFlagBits2KHR VkAccessFlagBits2)

(cffi:defctype VkSubmitFlagBitsKHR VkSubmitFlagBits)

(cffi:defctype VkSubmitFlagsKHR VkSubmitFlags)

(cffi:defctype VkMemoryBarrier2KHR VkMemoryBarrier2)

(cffi:defctype VkBufferMemoryBarrier2KHR VkBufferMemoryBarrier2)

(cffi:defctype VkImageMemoryBarrier2KHR VkImageMemoryBarrier2)

(cffi:defctype VkDependencyInfoKHR VkDependencyInfo)

(cffi:defctype VkSubmitInfo2KHR VkSubmitInfo2)

(cffi:defctype VkSemaphoreSubmitInfoKHR VkSemaphoreSubmitInfo)

(cffi:defctype VkCommandBufferSubmitInfoKHR VkCommandBufferSubmitInfo)

(cffi:defctype VkPhysicalDeviceSynchronization2FeaturesKHR VkPhysicalDeviceSynchronization2Features)

(cffi:defctype VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeatures)

(cffi:defctype VkCopyBufferInfo2KHR VkCopyBufferInfo2)

(cffi:defctype VkCopyImageInfo2KHR VkCopyImageInfo2)

(cffi:defctype VkCopyBufferToImageInfo2KHR VkCopyBufferToImageInfo2)

(cffi:defctype VkCopyImageToBufferInfo2KHR VkCopyImageToBufferInfo2)

(cffi:defctype VkBlitImageInfo2KHR VkBlitImageInfo2)

(cffi:defctype VkResolveImageInfo2KHR VkResolveImageInfo2)

(cffi:defctype VkBufferCopy2KHR VkBufferCopy2)

(cffi:defctype VkImageCopy2KHR VkImageCopy2)

(cffi:defctype VkImageBlit2KHR VkImageBlit2)

(cffi:defctype VkBufferImageCopy2KHR VkBufferImageCopy2)

(cffi:defctype VkImageResolve2KHR VkImageResolve2)

(cffi:defctype VkFormatFeatureFlags2KHR VkFormatFeatureFlags2)

(cffi:defctype VkFormatFeatureFlagBits2KHR VkFormatFeatureFlagBits2)

(cffi:defctype VkFormatProperties3KHR VkFormatProperties3)

(cffi:defctype VkPhysicalDeviceMaintenance4FeaturesKHR VkPhysicalDeviceMaintenance4Features)

(cffi:defctype VkPhysicalDeviceMaintenance4PropertiesKHR VkPhysicalDeviceMaintenance4Properties)

(cffi:defctype VkDeviceBufferMemoryRequirementsKHR VkDeviceBufferMemoryRequirements)

(cffi:defctype VkDeviceImageMemoryRequirementsKHR VkDeviceImageMemoryRequirements)

(cffi:defctype VkDebugReportCallbackEXT non_dispatchable_handle)

(cffi:defctype VkDebugReportFlagsEXT VkFlags)

(cffi:defctype VkPipelineRasterizationStateStreamCreateFlagsEXT VkFlags)

(cffi:defctype VkCuModuleNVX non_dispatchable_handle)
(cffi:defctype VkCuFunctionNVX non_dispatchable_handle)

(cffi:defctype VkExternalMemoryHandleTypeFlagsNV VkFlags)

(cffi:defctype VkExternalMemoryFeatureFlagsNV VkFlags)

(cffi:defctype VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT VkPhysicalDeviceTextureCompressionASTCHDRFeatures)

(cffi:defctype VkConditionalRenderingFlagsEXT VkFlags)

(cffi:defctype VkSurfaceCounterFlagsEXT VkFlags)

(cffi:defctype VkPipelineViewportSwizzleStateCreateFlagsNV VkFlags)

(cffi:defctype VkPipelineDiscardRectangleStateCreateFlagsEXT VkFlags)

(cffi:defctype VkPipelineRasterizationConservativeStateCreateFlagsEXT VkFlags)

(cffi:defctype VkPipelineRasterizationDepthClipStateCreateFlagsEXT VkFlags)

(cffi:defctype VkDebugUtilsMessengerEXT non_dispatchable_handle)

(cffi:defctype VkDebugUtilsMessengerCallbackDataFlagsEXT VkFlags)

(cffi:defctype VkDebugUtilsMessageTypeFlagsEXT VkFlags)

(cffi:defctype VkDebugUtilsMessageSeverityFlagsEXT VkFlags)

(cffi:defctype VkDebugUtilsMessengerCreateFlagsEXT VkFlags)

(cffi:defctype VkSamplerReductionModeEXT VkSamplerReductionMode)

(cffi:defctype VkSamplerReductionModeCreateInfoEXT VkSamplerReductionModeCreateInfo)

(cffi:defctype VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT VkPhysicalDeviceSamplerFilterMinmaxProperties)

(cffi:defctype VkPhysicalDeviceInlineUniformBlockFeaturesEXT VkPhysicalDeviceInlineUniformBlockFeatures)

(cffi:defctype VkPhysicalDeviceInlineUniformBlockPropertiesEXT VkPhysicalDeviceInlineUniformBlockProperties)

(cffi:defctype VkWriteDescriptorSetInlineUniformBlockEXT VkWriteDescriptorSetInlineUniformBlock)

(cffi:defctype VkDescriptorPoolInlineUniformBlockCreateInfoEXT VkDescriptorPoolInlineUniformBlockCreateInfo)

(cffi:defctype VkPipelineCoverageToColorStateCreateFlagsNV VkFlags)

(cffi:defctype VkPipelineCoverageModulationStateCreateFlagsNV VkFlags)

(cffi:defctype VkValidationCacheEXT non_dispatchable_handle)

(cffi:defctype VkValidationCacheCreateFlagsEXT VkFlags)

(cffi:defctype VkDescriptorBindingFlagBitsEXT VkDescriptorBindingFlagBits)

(cffi:defctype VkDescriptorBindingFlagsEXT VkDescriptorBindingFlags)

(cffi:defctype VkDescriptorSetLayoutBindingFlagsCreateInfoEXT VkDescriptorSetLayoutBindingFlagsCreateInfo)

(cffi:defctype VkPhysicalDeviceDescriptorIndexingFeaturesEXT VkPhysicalDeviceDescriptorIndexingFeatures)

(cffi:defctype VkPhysicalDeviceDescriptorIndexingPropertiesEXT VkPhysicalDeviceDescriptorIndexingProperties)

(cffi:defctype VkDescriptorSetVariableDescriptorCountAllocateInfoEXT VkDescriptorSetVariableDescriptorCountAllocateInfo)

(cffi:defctype VkDescriptorSetVariableDescriptorCountLayoutSupportEXT VkDescriptorSetVariableDescriptorCountLayoutSupport)

(cffi:defctype VkAccelerationStructureNV non_dispatchable_handle)

(cffi:defctype VkRayTracingShaderGroupTypeNV VkRayTracingShaderGroupTypeKHR)

(cffi:defctype VkGeometryTypeNV VkGeometryTypeKHR)

(cffi:defctype VkAccelerationStructureTypeNV VkAccelerationStructureTypeKHR)

(cffi:defctype VkCopyAccelerationStructureModeNV VkCopyAccelerationStructureModeKHR)

(cffi:defctype VkGeometryFlagsKHR VkFlags)

(cffi:defctype VkGeometryFlagsNV VkGeometryFlagsKHR)

(cffi:defctype VkGeometryFlagBitsNV VkGeometryFlagBitsKHR)

(cffi:defctype VkGeometryInstanceFlagsKHR VkFlags)

(cffi:defctype VkGeometryInstanceFlagsNV VkGeometryInstanceFlagsKHR)

(cffi:defctype VkGeometryInstanceFlagBitsNV VkGeometryInstanceFlagBitsKHR)

(cffi:defctype VkBuildAccelerationStructureFlagsKHR VkFlags)

(cffi:defctype VkBuildAccelerationStructureFlagsNV VkBuildAccelerationStructureFlagsKHR)

(cffi:defctype VkBuildAccelerationStructureFlagBitsNV VkBuildAccelerationStructureFlagBitsKHR)

(cffi:defctype VkTransformMatrixNV VkTransformMatrixKHR)

(cffi:defctype VkAabbPositionsNV VkAabbPositionsKHR)

(cffi:defctype VkAccelerationStructureInstanceNV VkAccelerationStructureInstanceKHR)

(cffi:defctype VkQueueGlobalPriorityEXT VkQueueGlobalPriorityKHR)

(cffi:defctype VkDeviceQueueGlobalPriorityCreateInfoEXT VkDeviceQueueGlobalPriorityCreateInfoKHR)

(cffi:defctype VkPipelineCompilerControlFlagsAMD VkFlags)

(cffi:defctype VkPipelineCreationFeedbackFlagBitsEXT VkPipelineCreationFeedbackFlagBits)

(cffi:defctype VkPipelineCreationFeedbackFlagsEXT VkPipelineCreationFeedbackFlags)

(cffi:defctype VkPipelineCreationFeedbackCreateInfoEXT VkPipelineCreationFeedbackCreateInfo)

(cffi:defctype VkPipelineCreationFeedbackEXT VkPipelineCreationFeedback)

(cffi:defctype VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR)

(cffi:defctype VkPerformanceConfigurationINTEL non_dispatchable_handle)

(cffi:defctype VkQueryPoolCreateInfoINTEL VkQueryPoolPerformanceQueryCreateInfoINTEL)

(cffi:defctype VkPhysicalDeviceScalarBlockLayoutFeaturesEXT VkPhysicalDeviceScalarBlockLayoutFeatures)

(cffi:defctype VkPhysicalDeviceSubgroupSizeControlFeaturesEXT VkPhysicalDeviceSubgroupSizeControlFeatures)

(cffi:defctype VkPhysicalDeviceSubgroupSizeControlPropertiesEXT VkPhysicalDeviceSubgroupSizeControlProperties)

(cffi:defctype VkPipelineShaderStageRequiredSubgroupSizeCreateInfoEXT VkPipelineShaderStageRequiredSubgroupSizeCreateInfo)

(cffi:defctype VkShaderCorePropertiesFlagsAMD VkFlags)

(cffi:defctype VkPhysicalDeviceBufferAddressFeaturesEXT VkPhysicalDeviceBufferDeviceAddressFeaturesEXT)

(cffi:defctype VkBufferDeviceAddressInfoEXT VkBufferDeviceAddressInfo)

(cffi:defctype VkToolPurposeFlagBitsEXT VkToolPurposeFlagBits)

(cffi:defctype VkToolPurposeFlagsEXT VkToolPurposeFlags)

(cffi:defctype VkPhysicalDeviceToolPropertiesEXT VkPhysicalDeviceToolProperties)

(cffi:defctype VkImageStencilUsageCreateInfoEXT VkImageStencilUsageCreateInfo)

(cffi:defctype VkPipelineCoverageReductionStateCreateFlagsNV VkFlags)

(cffi:defctype VkHeadlessSurfaceCreateFlagsEXT VkFlags)

(cffi:defctype VkPhysicalDeviceHostQueryResetFeaturesEXT VkPhysicalDeviceHostQueryResetFeatures)

(cffi:defctype VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT VkPhysicalDeviceShaderDemoteToHelperInvocationFeatures)

(cffi:defctype VkIndirectCommandsLayoutNV non_dispatchable_handle)

(cffi:defctype VkIndirectStateFlagsNV VkFlags)

(cffi:defctype VkIndirectCommandsLayoutUsageFlagsNV VkFlags)

(cffi:defctype VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT VkPhysicalDeviceTexelBufferAlignmentProperties)

(cffi:defctype VkDeviceMemoryReportFlagsEXT VkFlags)

(cffi:defctype VkPrivateDataSlotEXT VkPrivateDataSlot)

(cffi:defctype VkPrivateDataSlotCreateFlagsEXT VkPrivateDataSlotCreateFlags)

(cffi:defctype VkPhysicalDevicePrivateDataFeaturesEXT VkPhysicalDevicePrivateDataFeatures)

(cffi:defctype VkDevicePrivateDataCreateInfoEXT VkDevicePrivateDataCreateInfo)

(cffi:defctype VkPrivateDataSlotCreateInfoEXT VkPrivateDataSlotCreateInfo)

(cffi:defctype VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT VkPhysicalDevicePipelineCreationCacheControlFeatures)

(cffi:defctype VkDeviceDiagnosticsConfigFlagsNV VkFlags)

(cffi:defctype VkGraphicsPipelineLibraryFlagsEXT VkFlags)

(cffi:defctype VkAccelerationStructureMotionInfoFlagsNV VkFlags)

(cffi:defctype VkAccelerationStructureMotionInstanceFlagsNV VkFlags)

(cffi:defctype VkPhysicalDeviceImageRobustnessFeaturesEXT VkPhysicalDeviceImageRobustnessFeatures)

(cffi:defctype VkImageCompressionFlagsEXT VkFlags)

(cffi:defctype VkImageCompressionFixedRateFlagsEXT VkFlags)

(cffi:defctype VkRemoteAddressNV void*)

(cffi:defctype VkPipelineInfoEXT VkPipelineInfoKHR)

(cffi:defctype VkPhysicalDeviceGlobalPriorityQueryFeaturesEXT VkPhysicalDeviceGlobalPriorityQueryFeaturesKHR)

(cffi:defctype VkQueueFamilyGlobalPriorityPropertiesEXT VkQueueFamilyGlobalPriorityPropertiesKHR)

(cffi:defctype VkAccelerationStructureKHR non_dispatchable_handle)

(cffi:defctype VkAccelerationStructureCreateFlagsKHR VkFlags)



