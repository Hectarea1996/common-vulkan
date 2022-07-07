
(defpackage "common-vulkan"
  (:use :cl :iterate :alexandria)
  (:nicknames :cvk)
  (:export

   ;; Helper
   #:make-version
   
   ;; Instance
   #:create-application-info
   #:destroy-application-info
   #:with-application-info
   #:application-info-sType
   #:application-info-pNext
   #:application-info-pApplicationName
   #:application-info-applicationVersion
   #:application-info-pEngineName
   #:application-info-engineVersion
   #:application-info-apiVersion
   #:create-instance-create-info
   #:destroy-instance-create-info
   #:with-instance-create-info
   #:instance-create-info-sType
   #:instance-create-info-pNExt
   #:instance-create-info-flags
   #:instance-create-info-pApplicationInfo
   #:instance-create-info-enabledLayerCount
   #:instance-create-info-ppEnabledLayerNames
   #:instance-create-info-enabledExtensionCount
   #:instance-create-info-ppEnabledExtensionNames
   #:extension-properties-extensionName
   #:extension-properties-specVersion
   #:layer-properties-layerName
   #:layer-properties-specVersion
   #:layer-properties-implementationVersion
   #:layer-properties-description
   #:create-instance
   #:destroy-instance
   #:with-instance
   #:create-enumerate-instance-extension-properties
   #:destroy-enumerate-instance-extension-properties
   #:with-enumerate-instance-extension-properties
   #:enumerate-instance-layer-properties
   #:create-enumerate-instance-layer-properties
   #:destroy-enumerate-instance-layer-properties
   #:with-enumerate-instance-layer-properties
   #:get-instance-proc-addr

   ;; Debug messenger
   #:create-debug-utils-messenger-create-info
   #:destroy-debug-utils-messenger-create-info
   #:with-debug-utils-messenger-create-info
   #:debug-utils-messenger-create-info-sType
   #:debug-utils-messenger-create-info-pNext
   #:debug-utils-messenger-create-info-flags
   #:debug-utils-messenger-create-info-messageSeverity
   #:debug-utils-messenger-create-info-messageType
   #:debug-utils-messenger-create-info-pfnUserCallback
   #:debug-utils-messenger-create-info-pUserData
   #:def-debug-utils-messenger-callback
   #:debug-utils-messenger-callback-data-sType
   #:debug-utils-messenger-callback-data-pNext
   #:debug-utils-messenger-callback-data-flags
   #:debug-utils-messenger-callback-data-pMessageIdName
   #:debug-utils-messenger-callback-data-messageIdNumber
   #:debug-utils-messenger-callback-data-pMessage
   #:debug-utils-messenger-callback-data-queueLabelCount
   #:debug-utils-messenger-callback-data-pQueueLabels
   #:debug-utils-messenger-callback-data-cmdBufLabelCount
   #:debug-utils-messenger-callback-data-pCmdBufLabels
   #:debug-utils-messenger-callback-data-objectCount
   #:debug-utils-messenger-callback-data-pObjects
   #:debug-utils-label-sType
   #:debug-utils-label-pNext
   #:debug-utils-label-pLabelName
   #:debug-utils-label-color
   #:debug-utils-object-name-info-sType
   #:debug-utils-object-name-info-pNext
   #:debug-utils-object-name-info-objectType
   #:debug-utils-object-name-info-objectHandle
   #:debug-utils-object-name-info-pObjectName

   ;; Physical device
   #:physical-device-properties-apiVersion
   #:physical-device-properties-driverVersion
   #:physical-device-properties-vendorID
   #:physical-device-properties-deviceID
   #:physical-device-properties-deviceType
   #:physical-device-properties-deviceName
   #:physical-device-properties-pipelineCacheUUID
   #:physical-device-properties-limits
   #:physical-device-properties-sparseProperties
   #:physical-device-limits-maxImageDimension1D
   #:physical-device-limits-maxImageDimension2D
   #:physical-device-limits-maxImageDimension3D
   #:physical-device-limits-maxImageDimensionCube
   #:physical-device-limits-maxImageArrayLayers
   #:physical-device-limits-maxTexelBufferElements
   #:physical-device-limits-maxUniformBufferRange
   #:physical-device-limits-maxStorageBufferRange
   #:physical-device-limits-maxPushConstantsSize
   #:physical-device-limits-maxMemoryAllocationCount
   #:physical-device-limits-maxSamplerAllocationCount
   #:physical-device-limits-bufferImageGranularity
   #:physical-device-limits-sparseAddressSpaceSize
   #:physical-device-limits-maxBoundDescriptorSets
   #:physical-device-limits-maxPerStageDescriptorSamplers
   #:physical-device-limits-maxPerStageDescriptorUniformBuffers
   #:physical-device-limits-maxPerStageDescriptorStorageBuffers
   #:physical-device-limits-maxPerStageDescriptorSampledImages
   #:physical-device-limits-maxPerStageDescriptorStorageImages
   #:physical-device-limits-maxPerStageDescriptorInputAttachments
   #:physical-device-limits-maxPerStageResources
   #:physical-device-limits-maxDescriptorSetSamplers
   #:physical-device-limits-maxDescriptorSetUniformBuffers
   #:physical-device-limits-maxDescriptorSetUniformBuffersDynamic
   #:physical-device-limits-maxDescriptorSetStorageBuffers
   #:physical-device-limits-maxDescriptorSetStorageBuffersDynamic
   #:physical-device-limits-maxDescriptorSetSampledImages
   #:physical-device-limits-maxDescriptorSetStorageImages
   #:physical-device-limits-maxDescriptorSetInputAttachments
   #:physical-device-limits-maxVertexInputAttributes
   #:physical-device-limits-maxVertexInputBindings
   #:physical-device-limits-maxVertexInputAttributeOffset
   #:physical-device-limits-maxVertexInputBindingStride
   #:physical-device-limits-maxVertexOutputComponents
   #:physical-device-limits-maxTessellationGenerationLevel
   #:physical-device-limits-maxTessellationPatchSize
   #:physical-device-limits-maxTessellationControlPerVertexInputComponents
   #:physical-device-limits-maxTessellationControlPerVertexOutputComponents
   #:physical-device-limits-maxTessellationControlPerPatchOutputComponents
   #:physical-device-limits-maxTessellationControlTotalOutputComponents
   #:physical-device-limits-maxTessellationEvaluationInputComponents
   #:physical-device-limits-maxTessellationEvaluationOutputComponents
   #:physical-device-limits-maxGeometryShaderInvocations
   #:physical-device-limits-maxGeometryInputComponents
   #:physical-device-limits-maxGeometryOutputComponents
   #:physical-device-limits-maxGeometryOutputVertices
   #:physical-device-limits-maxGeometryTotalOutputComponents
   #:physical-device-limits-maxFragmentInputComponents
   #:physical-device-limits-maxFragmentOutputAttachments
   #:physical-device-limits-maxFragmentDualSrcAttachments
   #:physical-device-limits-maxFragmentCombinedOutputResources
   #:physical-device-limits-maxComputeSharedMemorySize
   #:physical-device-limits-maxComputeWorkGroupCount
   #:physical-device-limits-maxComputeWorkGroupInvocations
   #:physical-device-limits-maxComputeWorkGroupSize
   #:physical-device-limits-subPixelPrecisionBits
   #:physical-device-limits-subTexelPrecisionBits
   #:physical-device-limits-mipmapPrecisionBits
   #:physical-device-limits-maxDrawIndexedIndexValue
   #:physical-device-limits-maxDrawIndirectCount
   #:physical-device-limits-maxSamplerLodBias
   #:physical-device-limits-maxSamplerAnisotropy
   #:physical-device-limits-maxViewports
   #:physical-device-limits-maxViewportDimensions
   #:physical-device-limits-viewportBoundsRange
   #:physical-device-limits-viewportSubPixelBits
   #:physical-device-limits-minMemoryMapAlignment
   #:physical-device-limits-minTexelBufferOffsetAlignment
   #:physical-device-limits-minUniformBufferOffsetAlignment
   #:physical-device-limits-minStorageBufferOffsetAlignment
   #:physical-device-limits-minTexelOffset
   #:physical-device-limits-maxTexelOffset
   #:physical-device-limits-minTexelGatherOffset
   #:physical-device-limits-maxTexelGatherOffset
   #:physical-device-limits-minInterpolationOffset
   #:physical-device-limits-maxInterpolationOffset
   #:physical-device-limits-subPixelInterpolationOffsetBits
   #:physical-device-limits-maxFramebufferWidth
   #:physical-device-limits-maxFramebufferHeight
   #:physical-device-limits-maxFramebufferLayers
   #:physical-device-limits-framebufferColorSampleCounts
   #:physical-device-limits-framebufferDepthSampleCounts
   #:physical-device-limits-framebufferStencilSampleCounts
   #:physical-device-limits-framebufferNoAttachmentsSampleCounts
   #:physical-device-limits-maxColorAttachments
   #:physical-device-limits-sampledImageColorSampleCounts
   #:physical-device-limits-sampledImageIntegerSampleCounts
   #:physical-device-limits-sampledImageDepthSampleCounts
   #:physical-device-limits-sampledImageStencilSampleCounts
   #:physical-device-limits-storageImageSampleCounts
   #:physical-device-limits-maxSampleMaskWords
   #:physical-device-limits-timestampComputeAndGraphics
   #:physical-device-limits-timestampPeriod
   #:physical-device-limits-maxClipDistances
   #:physical-device-limits-maxCullDistances
   #:physical-device-limits-maxCombinedClipAndCullDistances
   #:physical-device-limits-discreteQueuePriorities
   #:physical-device-limits-pointSizeRange
   #:physical-device-limits-lineWidthRange
   #:physical-device-limits-pointSizeGranularity
   #:physical-device-limits-lineWidthGranularity
   #:physical-device-limits-strictLines
   #:physical-device-limits-standardSampleLocations
   #:physical-device-limits-optimalBufferCopyOffsetAlignment
   #:physical-device-limits-optimalBufferCopyRowPitchAlignment
   #:physical-device-limits-nonCoherentAtomSize
   #:physical-device-sparse-properties-residencyStandard2DBlockShape
   #:physical-device-sparse-properties-residencyStandard2DMultisampleBlockShape
   #:physical-device-sparse-properties-residencyStandard3DBlockShape
   #:physical-device-sparse-properties-residencyAlignedMipSize
   #:physical-device-sparse-properties-residencyNonResidentStrict
   #:create-physical-device-features
   #:destroy-physical-device-features
   #:with-physical-device-features
   #:physical-device-features-robustBufferAccess
   #:physical-device-features-fullDrawIndexUint32
   #:physical-device-features-imageCubeArray
   #:physical-device-features-independentBlend
   #:physical-device-features-geometryShader
   #:physical-device-features-tessellationShader
   #:physical-device-features-sampleRateShading
   #:physical-device-features-dualSrcBlend
   #:physical-device-features-logicOp
   #:physical-device-features-multiDrawIndirect
   #:physical-device-features-drawIndirectFirstInstance
   #:physical-device-features-depthClamp
   #:physical-device-features-depthBiasClamp
   #:physical-device-features-fillModeNonSolid
   #:physical-device-features-depthBounds
   #:physical-device-features-wideLines
   #:physical-device-features-largePoints
   #:physical-device-features-alphaToOne
   #:physical-device-features-multiViewport
   #:physical-device-features-samplerAnisotropy
   #:physical-device-features-textureCompressionETC2
   #:physical-device-features-textureCompressionASTC_LDR
   #:physical-device-features-textureCompressionBC
   #:physical-device-features-occlusionQueryPrecise
   #:physical-device-features-pipelineStatisticsQuery
   #:physical-device-features-vertexPipelineStoresAndAtomics
   #:physical-device-features-fragmentStoresAndAtomics
   #:physical-device-features-shaderTessellationAndGeometryPointSize
   #:physical-device-features-shaderImageGatherExtended
   #:physical-device-features-shaderStorageImageExtendedFormats
   #:physical-device-features-shaderStorageImageMultisample
   #:physical-device-features-shaderStorageImageReadWithoutFormat
   #:physical-device-features-shaderStorageImageWriteWithoutFormat
   #:physical-device-features-shaderUniformBufferArrayDynamicIndexing
   #:physical-device-features-shaderSampledImageArrayDynamicIndexing
   #:physical-device-features-shaderStorageBufferArrayDynamicIndexing
   #:physical-device-features-shaderStorageImageArrayDynamicIndexing
   #:physical-device-features-shaderClipDistance
   #:physical-device-features-shaderCullDistance
   #:physical-device-features-shaderFloat64
   #:physical-device-features-shaderInt64
   #:physical-device-features-shaderInt16
   #:physical-device-features-shaderResourceResidency
   #:physical-device-features-shaderResourceMinLod
   #:physical-device-features-sparseBinding
   #:physical-device-features-sparseResidencyBuffer
   #:physical-device-features-sparseResidencyImage2D
   #:physical-device-features-sparseResidencyImage3D
   #:physical-device-features-sparseResidency2Samples
   #:physical-device-features-sparseResidency4Samples
   #:physical-device-features-sparseResidency8Samples
   #:physical-device-features-sparseResidency16Samples
   #:physical-device-features-sparseResidencyAliased
   #:physical-device-features-variableMultisampleRate
   #:physical-device-features-inheritedQueries
   #:queue-family-properties-queueFlags
   #:queue-family-properties-queueCount
   #:queue-family-properties-timestampValidBits
   #:queue-family-properties-minImageTransferGranularity
   #:enumerate-physical-devices
   #:create-get-physical-device-properties
   #:destroy-get-physical-device-properties
   #:with-get-physical-device-properties
   #:create-get-physical-device-features
   #:destroy-get-physical-device-features
   #:with-get-physical-device-features
   #:create-get-physical-device-queue-family-properties
   #:destroy-get-physical-device-queue-family-properties
   #:with-get-physical-device-queue-family-properties
   #:get-physical-device-surface-support
   
   ;; Device
   #:create-device-queue-create-info
   #:destroy-device-queue-create-info
   #:with-device-queue-create-info
   #:device-queue-create-info-sType
   #:device-queue-create-info-pNext
   #:device-queue-create-info-flags
   #:device-queue-create-info-queueFamilyIndex
   #:device-queue-create-info-queueCount
   #:device-queue-create-info-pQueuePriorities
   #:create-device-create-info
   #:destroy-device-create-info
   #:with-device-create-info
   #:device-create-info-sType
   #:device-create-info-pNext
   #:device-create-info-flags
   #:device-create-info-queueCreateInfoCount
   #:device-create-info-pQueueCreateInfos
   #:device-create-info-enabledLayerCount
   #:device-create-info-ppEnabledLayerNames
   #:device-create-info-enabledExtensionCount
   #:device-create-info-ppEnabledExtensionNames
   #:device-create-info-pEnabledFeatures
   #:create-device
   #:destroy-device
   #:with-device
   #:get-device-queue
   
   ;; Surface
   #:destroy-surface
   
   ;; Constants
   #:VK_TRUE
   #:VK_FALSE
   #:VK_ACCESS_INDIRECT_COMMAND_READ_BIT
   #:VK_ACCESS_INDEX_READ_BIT
   #:VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT
   #:VK_ACCESS_UNIFORM_READ_BIT
   #:VK_ACCESS_INPUT_ATTACHMENT_READ_BIT
   #:VK_ACCESS_SHADER_READ_BIT
   #:VK_ACCESS_SHADER_WRITE_BIT
   #:VK_ACCESS_COLOR_ATTACHMENT_READ_BIT
   #:VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT
   #:VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT
   #:VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT
   #:VK_ACCESS_TRANSFER_READ_BIT
   #:VK_ACCESS_TRANSFER_WRITE_BIT
   #:VK_ACCESS_HOST_READ_BIT
   #:VK_ACCESS_HOST_WRITE_BIT
   #:VK_ACCESS_MEMORY_READ_BIT
   #:VK_ACCESS_MEMORY_WRITE_BIT
   #:VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX
   #:VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX
   #:VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT
   #:VK_BUFFER_CREATE_SPARSE_BINDING_BIT
   #:VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT
   #:VK_BUFFER_CREATE_SPARSE_ALIASED_BIT
   #:VK_BUFFER_USAGE_TRANSFER_SRC_BIT
   #:VK_BUFFER_USAGE_TRANSFER_DST_BIT
   #:VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT
   #:VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT
   #:VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT
   #:VK_BUFFER_USAGE_STORAGE_BUFFER_BIT
   #:VK_BUFFER_USAGE_INDEX_BUFFER_BIT
   #:VK_BUFFER_USAGE_VERTEX_BUFFER_BIT
   #:VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT
   #:VK_COLOR_COMPONENT_R_BIT
   #:VK_COLOR_COMPONENT_G_BIT
   #:VK_COLOR_COMPONENT_B_BIT
   #:VK_COLOR_COMPONENT_A_BIT
   #:VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT
   #:VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
   #:VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT
   #:VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT
   #:VK_COMMAND_POOL_CREATE_TRANSIENT_BIT
   #:VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT
   #:VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT
   #:VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
   #:VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR
   #:VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR
   #:VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR
   #:VK_CULL_MODE_NONE
   #:VK_CULL_MODE_FRONT_BIT
   #:VK_CULL_MODE_BACK_BIT
   #:VK_CULL_MODE_FRONT_AND_BACK
   #:VK_DEBUG_REPORT_INFORMATION_BIT_EXT
   #:VK_DEBUG_REPORT_WARNING_BIT_EXT
   #:VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT
   #:VK_DEBUG_REPORT_ERROR_BIT_EXT
   #:VK_DEBUG_REPORT_DEBUG_BIT_EXT
   #:VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT
   #:VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT
   #:VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT
   #:VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT
   #:VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT
   #:VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT
   #:VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT
   #:VK_DEPENDENCY_BY_REGION_BIT
   #:VK_DEPENDENCY_VIEW_LOCAL_BIT_KHX
   #:VK_DEPENDENCY_DEVICE_GROUP_BIT_KHX
   #:VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT
   #:VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR
   #:VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHX
   #:VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHX
   #:VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHX
   #:VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHX
   #:VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR
   #:VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR
   #:VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR
   #:VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR
   #:VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHX
   #:VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHX
   #:VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHX
   #:VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV
   #:VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV
   #:VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV
   #:VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_FENCE_FD_BIT_KHX
   #:VK_FENCE_CREATE_SIGNALED_BIT
   #:VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
   #:VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
   #:VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
   #:VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
   #:VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
   #:VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
   #:VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT
   #:VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
   #:VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
   #:VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
   #:VK_FORMAT_FEATURE_BLIT_SRC_BIT
   #:VK_FORMAT_FEATURE_BLIT_DST_BIT
   #:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
   #:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG
   #:VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR
   #:VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR
   #:VK_IMAGE_ASPECT_COLOR_BIT
   #:VK_IMAGE_ASPECT_DEPTH_BIT
   #:VK_IMAGE_ASPECT_STENCIL_BIT
   #:VK_IMAGE_ASPECT_METADATA_BIT
   #:VK_IMAGE_CREATE_SPARSE_BINDING_BIT
   #:VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT
   #:VK_IMAGE_CREATE_SPARSE_ALIASED_BIT
   #:VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT
   #:VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT
   #:VK_IMAGE_CREATE_BIND_SFR_BIT_KHX
   #:VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR
   #:VK_IMAGE_USAGE_TRANSFER_SRC_BIT
   #:VK_IMAGE_USAGE_TRANSFER_DST_BIT
   #:VK_IMAGE_USAGE_SAMPLED_BIT
   #:VK_IMAGE_USAGE_STORAGE_BIT
   #:VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT
   #:VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT
   #:VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT
   #:VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT
   #:VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NVX
   #:VK_INDIRECT_COMMANDS_LAYOUT_USAGE_SPARSE_SEQUENCES_BIT_NVX
   #:VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EMPTY_EXECUTIONS_BIT_NVX
   #:VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NVX
   #:VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHX
   #:VK_MEMORY_HEAP_DEVICE_LOCAL_BIT
   #:VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHX
   #:VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
   #:VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
   #:VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
   #:VK_MEMORY_PROPERTY_HOST_CACHED_BIT
   #:VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT
   #:VK_OBJECT_ENTRY_USAGE_GRAPHICS_BIT_NVX
   #:VK_OBJECT_ENTRY_USAGE_COMPUTE_BIT_NVX
   #:VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHX
   #:VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHX
   #:VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHX
   #:VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHX
   #:VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT
   #:VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT
   #:VK_PIPELINE_CREATE_DERIVATIVE_BIT
   #:VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHX
   #:VK_PIPELINE_CREATE_DISPATCH_BASE_KHX
   #:VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT
   #:VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT
   #:VK_PIPELINE_STAGE_VERTEX_INPUT_BIT
   #:VK_PIPELINE_STAGE_VERTEX_SHADER_BIT
   #:VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT
   #:VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT
   #:VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT
   #:VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT
   #:VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT
   #:VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT
   #:VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT
   #:VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT
   #:VK_PIPELINE_STAGE_TRANSFER_BIT
   #:VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT
   #:VK_PIPELINE_STAGE_HOST_BIT
   #:VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT
   #:VK_PIPELINE_STAGE_ALL_COMMANDS_BIT
   #:VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX
   #:VK_QUERY_CONTROL_PRECISE_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT
   #:VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT
   #:VK_QUERY_RESULT_64_BIT
   #:VK_QUERY_RESULT_WAIT_BIT
   #:VK_QUERY_RESULT_WITH_AVAILABILITY_BIT
   #:VK_QUERY_RESULT_PARTIAL_BIT
   #:VK_QUEUE_GRAPHICS_BIT
   #:VK_QUEUE_COMPUTE_BIT
   #:VK_QUEUE_TRANSFER_BIT
   #:VK_QUEUE_SPARSE_BINDING_BIT
   #:VK_SAMPLE_COUNT_1_BIT
   #:VK_SAMPLE_COUNT_2_BIT
   #:VK_SAMPLE_COUNT_4_BIT
   #:VK_SAMPLE_COUNT_8_BIT
   #:VK_SAMPLE_COUNT_16_BIT
   #:VK_SAMPLE_COUNT_32_BIT
   #:VK_SAMPLE_COUNT_64_BIT
   #:VK_SHADER_STAGE_VERTEX_BIT
   #:VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT
   #:VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT
   #:VK_SHADER_STAGE_GEOMETRY_BIT
   #:VK_SHADER_STAGE_FRAGMENT_BIT
   #:VK_SHADER_STAGE_COMPUTE_BIT
   #:VK_SHADER_STAGE_ALL_GRAPHICS
   #:VK_SHADER_STAGE_ALL
   #:VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT
   #:VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT
   #:VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT
   #:VK_SPARSE_MEMORY_BIND_METADATA_BIT
   #:VK_STENCIL_FACE_FRONT_BIT
   #:VK_STENCIL_FACE_BACK_BIT
   #:VK_STENCIL_FRONT_AND_BACK
   #:VK_SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX
   #:VK_SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX
   #:VK_SURFACE_COUNTER_VBLANK_EXT
   #:VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR
   #:VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR
   #:VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR
   #:VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR
   #:VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR
   #:VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR
   #:VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR
   #:VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR
   #:VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR
   #:VK_SWAPCHAIN_CREATE_BIND_SFR_BIT_KHX
   #:VK_ACCESS_INDIRECT_COMMAND_READ_BIT  ;; Controls coherency of indirect command reads
   #:VK_ACCESS_INDEX_READ_BIT  ;; Controls coherency of index reads
   #:VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT  ;; Controls coherency of vertex attribute reads
   #:VK_ACCESS_UNIFORM_READ_BIT  ;; Controls coherency of uniform buffer reads
   #:VK_ACCESS_INPUT_ATTACHMENT_READ_BIT  ;; Controls coherency of input attachment reads
   #:VK_ACCESS_SHADER_READ_BIT  ;; Controls coherency of shader reads
   #:VK_ACCESS_SHADER_WRITE_BIT  ;; Controls coherency of shader writes
   #:VK_ACCESS_COLOR_ATTACHMENT_READ_BIT  ;; Controls coherency of color attachment reads
   #:VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT  ;; Controls coherency of color attachment writes
   #:VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT  ;; Controls coherency of depth/stencil attachment reads
   #:VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT  ;; Controls coherency of depth/stencil attachment writes
   #:VK_ACCESS_TRANSFER_READ_BIT  ;; Controls coherency of transfer reads
   #:VK_ACCESS_TRANSFER_WRITE_BIT  ;; Controls coherency of transfer writes
   #:VK_ACCESS_HOST_READ_BIT  ;; Controls coherency of host reads
   #:VK_ACCESS_HOST_WRITE_BIT  ;; Controls coherency of host writes
   #:VK_ACCESS_MEMORY_READ_BIT  ;; Controls coherency of memory reads
   #:VK_ACCESS_MEMORY_WRITE_BIT  ;; Controls coherency of memory writes
   #:VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX  ;; "VK_NVX_device_generated_commands"
   #:VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX  ;; "VK_NVX_device_generated_commands"
   #:VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT
   #:VK_ATTACHMENT_LOAD_OP_LOAD
   #:VK_ATTACHMENT_LOAD_OP_CLEAR
   #:VK_ATTACHMENT_LOAD_OP_DONT_CARE
   #:VK_ATTACHMENT_STORE_OP_STORE
   #:VK_ATTACHMENT_STORE_OP_DONT_CARE
   #:VK_BLEND_FACTOR_ZERO
   #:VK_BLEND_FACTOR_ONE
   #:VK_BLEND_FACTOR_SRC_COLOR
   #:VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR
   #:VK_BLEND_FACTOR_DST_COLOR
   #:VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR
   #:VK_BLEND_FACTOR_SRC_ALPHA
   #:VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
   #:VK_BLEND_FACTOR_DST_ALPHA
   #:VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA
   #:VK_BLEND_FACTOR_CONSTANT_COLOR
   #:VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR
   #:VK_BLEND_FACTOR_CONSTANT_ALPHA
   #:VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA
   #:VK_BLEND_FACTOR_SRC_ALPHA_SATURATE
   #:VK_BLEND_FACTOR_SRC1_COLOR
   #:VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR
   #:VK_BLEND_FACTOR_SRC1_ALPHA
   #:VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA
   #:VK_BLEND_OP_ADD
   #:VK_BLEND_OP_SUBTRACT
   #:VK_BLEND_OP_REVERSE_SUBTRACT
   #:VK_BLEND_OP_MIN
   #:VK_BLEND_OP_MAX
   #:VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK
   #:VK_BORDER_COLOR_INT_TRANSPARENT_BLACK
   #:VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK
   #:VK_BORDER_COLOR_INT_OPAQUE_BLACK
   #:VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE
   #:VK_BORDER_COLOR_INT_OPAQUE_WHITE
   #:VK_BUFFER_CREATE_SPARSE_BINDING_BIT  ;; Buffer should support sparse backing
   #:VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT  ;; Buffer should support sparse backing with partial residency
   #:VK_BUFFER_CREATE_SPARSE_ALIASED_BIT
   #:VK_BUFFER_USAGE_TRANSFER_SRC_BIT  ;; Can be used as a source of transfer operations
   #:VK_BUFFER_USAGE_TRANSFER_DST_BIT  ;; Can be used as a destination of transfer operations
   #:VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT  ;; Can be used as TBO
   #:VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT  ;; Can be used as IBO
   #:VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT  ;; Can be used as UBO
   #:VK_BUFFER_USAGE_STORAGE_BUFFER_BIT  ;; Can be used as SSBO
   #:VK_BUFFER_USAGE_INDEX_BUFFER_BIT  ;; Can be used as source of fixed-function index fetch (index buffer)
   #:VK_BUFFER_USAGE_VERTEX_BUFFER_BIT  ;; Can be used as source of fixed-function vertex fetch (VBO)
   #:VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT
   #:VK_COLOR_COMPONENT_R_BIT
   #:VK_COLOR_COMPONENT_G_BIT
   #:VK_COLOR_COMPONENT_B_BIT
   #:VK_COLOR_COMPONENT_A_BIT
   #:VK_COLOR_SPACE_SRGB_NONLINEAR_KHR
   #:VK_COLOR_SPACE_DISPLAY_P3_NONLINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_EXTENDED_SRGB_LINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_DCI_P3_LINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_DCI_P3_NONLINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_BT709_LINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_BT709_NONLINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_BT2020_LINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_HDR10_ST2084_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_DOLBYVISION_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_HDR10_HLG_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_ADOBERGB_LINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_ADOBERGB_NONLINEAR_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COLOR_SPACE_PASS_THROUGH_EXT  ;; "VK_EXT_swapchain_colorspace"
   #:VK_COMMAND_BUFFER_LEVEL_PRIMARY
   #:VK_COMMAND_BUFFER_LEVEL_SECONDARY
   #:VK_COMMAND_BUFFER_RESET_RELEASE_RESOURCES_BIT  ;; Release resources owned by the buffer
   #:VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT
   #:VK_COMMAND_BUFFER_USAGE_RENDER_PASS_CONTINUE_BIT
   #:VK_COMMAND_BUFFER_USAGE_SIMULTANEOUS_USE_BIT
   #:VK_COMMAND_POOL_CREATE_TRANSIENT_BIT  ;; Command buffers have a short lifetime
   #:VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT  ;; Command buffers may release their memory individually
   #:VK_COMMAND_POOL_RESET_RELEASE_RESOURCES_BIT  ;; Release resources owned by the pool
   #:VK_COMPARE_OP_NEVER
   #:VK_COMPARE_OP_LESS
   #:VK_COMPARE_OP_EQUAL
   #:VK_COMPARE_OP_LESS_OR_EQUAL
   #:VK_COMPARE_OP_GREATER
   #:VK_COMPARE_OP_NOT_EQUAL
   #:VK_COMPARE_OP_GREATER_OR_EQUAL
   #:VK_COMPARE_OP_ALWAYS
   #:VK_COMPONENT_SWIZZLE_IDENTITY
   #:VK_COMPONENT_SWIZZLE_ZERO
   #:VK_COMPONENT_SWIZZLE_ONE
   #:VK_COMPONENT_SWIZZLE_R
   #:VK_COMPONENT_SWIZZLE_G
   #:VK_COMPONENT_SWIZZLE_B
   #:VK_COMPONENT_SWIZZLE_A
   #:VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
   #:VK_COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR
   #:VK_COMPOSITE_ALPHA_POST_MULTIPLIED_BIT_KHR
   #:VK_COMPOSITE_ALPHA_INHERIT_BIT_KHR
   #:VK_CULL_MODE_NONE
   #:VK_CULL_MODE_FRONT_BIT
   #:VK_CULL_MODE_BACK_BIT
   #:VK_CULL_MODE_FRONT_AND_BACK
   #:VK_DEBUG_REPORT_INFORMATION_BIT_EXT
   #:VK_DEBUG_REPORT_WARNING_BIT_EXT
   #:VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT
   #:VK_DEBUG_REPORT_ERROR_BIT_EXT
   #:VK_DEBUG_REPORT_DEBUG_BIT_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_OBJECT_TABLE_NVX_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX_EXT
   #:VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT  ;; "VK_KHR_descriptor_update_template"   
   #:VK_DEPENDENCY_BY_REGION_BIT  ;; Dependency is per pixel region
   #:VK_DEPENDENCY_VIEW_LOCAL_BIT_KHX  ;; "VK_KHX_multiview"
   #:VK_DEPENDENCY_DEVICE_GROUP_BIT_KHX  ;; "VK_KHX_device_group"
   #:VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT  ;; Descriptor sets may be freed individually
   #:VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR  ;; "VK_KHR_push_descriptor"
   #:VK_DESCRIPTOR_TYPE_SAMPLER
   #:VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER
   #:VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE
   #:VK_DESCRIPTOR_TYPE_STORAGE_IMAGE
   #:VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER
   #:VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER
   #:VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER
   #:VK_DESCRIPTOR_TYPE_STORAGE_BUFFER
   #:VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC
   #:VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC
   #:VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT
   #:VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR  ;; Create descriptor update template for descriptor set updates
   #:VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR
   #:VK_DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT
   #:VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHX  ;; Present from local memory
   #:VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHX  ;; Present from remote memory
   #:VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHX  ;; Present sum of local and/or remote memory
   #:VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHX  ;; Each physical device presents from local memory
   #:VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT
   #:VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT
   #:VK_DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT
   #:VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR
   #:VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR
   #:VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR
   #:VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR
   #:VK_DISPLAY_POWER_STATE_OFF_EXT
   #:VK_DISPLAY_POWER_STATE_SUSPEND_EXT
   #:VK_DISPLAY_POWER_STATE_ON_EXT
   #:VK_DYNAMIC_STATE_VIEWPORT
   #:VK_DYNAMIC_STATE_SCISSOR
   #:VK_DYNAMIC_STATE_LINE_WIDTH
   #:VK_DYNAMIC_STATE_DEPTH_BIAS
   #:VK_DYNAMIC_STATE_BLEND_CONSTANTS
   #:VK_DYNAMIC_STATE_DEPTH_BOUNDS
   #:VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK
   #:VK_DYNAMIC_STATE_STENCIL_WRITE_MASK
   #:VK_DYNAMIC_STATE_STENCIL_REFERENCE
   #:VK_DYNAMIC_STATE_VIEWPORT_W_SCALING_NV  ;; "VK_NV_clip_space_w_scaling"
   #:VK_DYNAMIC_STATE_DISCARD_RECTANGLE_EXT  ;; "VK_EXT_discard_rectangles"
   #:VK_DYNAMIC_STATE_LINE_STIPPLE_EXT
   #:VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHX
   #:VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHX
   #:VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHX
   #:VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV
   #:VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV
   #:VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHX
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV
   #:VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV
   #:VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHX
   #:VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_FENCE_FD_BIT_KHX
   #:VK_FENCE_CREATE_SIGNALED_BIT
   #:VK_FILTER_NEAREST
   #:VK_FILTER_LINEAR
   #:VK_FILTER_CUBIC_IMG  ;; "VK_IMG_filter_cubic"
   #:VK_FORMAT_UNDEFINED
   #:VK_FORMAT_R4G4_UNORM_PACK8
   #:VK_FORMAT_R4G4B4A4_UNORM_PACK16
   #:VK_FORMAT_B4G4R4A4_UNORM_PACK16
   #:VK_FORMAT_R5G6B5_UNORM_PACK16
   #:VK_FORMAT_B5G6R5_UNORM_PACK16
   #:VK_FORMAT_R5G5B5A1_UNORM_PACK16
   #:VK_FORMAT_B5G5R5A1_UNORM_PACK16
   #:VK_FORMAT_A1R5G5B5_UNORM_PACK16
   #:VK_FORMAT_R8_UNORM
   #:VK_FORMAT_R8_SNORM
   #:VK_FORMAT_R8_USCALED
   #:VK_FORMAT_R8_SSCALED
   #:VK_FORMAT_R8_UINT
   #:VK_FORMAT_R8_SINT
   #:VK_FORMAT_R8_SRGB
   #:VK_FORMAT_R8G8_UNORM
   #:VK_FORMAT_R8G8_SNORM
   #:VK_FORMAT_R8G8_USCALED
   #:VK_FORMAT_R8G8_SSCALED
   #:VK_FORMAT_R8G8_UINT
   #:VK_FORMAT_R8G8_SINT
   #:VK_FORMAT_R8G8_SRGB
   #:VK_FORMAT_R8G8B8_UNORM
   #:VK_FORMAT_R8G8B8_SNORM
   #:VK_FORMAT_R8G8B8_USCALED
   #:VK_FORMAT_R8G8B8_SSCALED
   #:VK_FORMAT_R8G8B8_UINT
   #:VK_FORMAT_R8G8B8_SINT
   #:VK_FORMAT_R8G8B8_SRGB
   #:VK_FORMAT_B8G8R8_UNORM
   #:VK_FORMAT_B8G8R8_SNORM
   #:VK_FORMAT_B8G8R8_USCALED
   #:VK_FORMAT_B8G8R8_SSCALED
   #:VK_FORMAT_B8G8R8_UINT
   #:VK_FORMAT_B8G8R8_SINT
   #:VK_FORMAT_B8G8R8_SRGB
   #:VK_FORMAT_R8G8B8A8_UNORM
   #:VK_FORMAT_R8G8B8A8_SNORM
   #:VK_FORMAT_R8G8B8A8_USCALED
   #:VK_FORMAT_R8G8B8A8_SSCALED
   #:VK_FORMAT_R8G8B8A8_UINT
   #:VK_FORMAT_R8G8B8A8_SINT
   #:VK_FORMAT_R8G8B8A8_SRGB
   #:VK_FORMAT_B8G8R8A8_UNORM
   #:VK_FORMAT_B8G8R8A8_SNORM
   #:VK_FORMAT_B8G8R8A8_USCALED
   #:VK_FORMAT_B8G8R8A8_SSCALED
   #:VK_FORMAT_B8G8R8A8_UINT
   #:VK_FORMAT_B8G8R8A8_SINT
   #:VK_FORMAT_B8G8R8A8_SRGB
   #:VK_FORMAT_A8B8G8R8_UNORM_PACK32
   #:VK_FORMAT_A8B8G8R8_SNORM_PACK32
   #:VK_FORMAT_A8B8G8R8_USCALED_PACK32
   #:VK_FORMAT_A8B8G8R8_SSCALED_PACK32
   #:VK_FORMAT_A8B8G8R8_UINT_PACK32
   #:VK_FORMAT_A8B8G8R8_SINT_PACK32
   #:VK_FORMAT_A8B8G8R8_SRGB_PACK32
   #:VK_FORMAT_A2R10G10B10_UNORM_PACK32
   #:VK_FORMAT_A2R10G10B10_SNORM_PACK32
   #:VK_FORMAT_A2R10G10B10_USCALED_PACK32
   #:VK_FORMAT_A2R10G10B10_SSCALED_PACK32
   #:VK_FORMAT_A2R10G10B10_UINT_PACK32
   #:VK_FORMAT_A2R10G10B10_SINT_PACK32
   #:VK_FORMAT_A2B10G10R10_UNORM_PACK32
   #:VK_FORMAT_A2B10G10R10_SNORM_PACK32
   #:VK_FORMAT_A2B10G10R10_USCALED_PACK32
   #:VK_FORMAT_A2B10G10R10_SSCALED_PACK32
   #:VK_FORMAT_A2B10G10R10_UINT_PACK32
   #:VK_FORMAT_A2B10G10R10_SINT_PACK32
   #:VK_FORMAT_R16_UNORM
   #:VK_FORMAT_R16_SNORM
   #:VK_FORMAT_R16_USCALED
   #:VK_FORMAT_R16_SSCALED
   #:VK_FORMAT_R16_UINT
   #:VK_FORMAT_R16_SINT
   #:VK_FORMAT_R16_SFLOAT
   #:VK_FORMAT_R16G16_UNORM
   #:VK_FORMAT_R16G16_SNORM
   #:VK_FORMAT_R16G16_USCALED
   #:VK_FORMAT_R16G16_SSCALED
   #:VK_FORMAT_R16G16_UINT
   #:VK_FORMAT_R16G16_SINT
   #:VK_FORMAT_R16G16_SFLOAT
   #:VK_FORMAT_R16G16B16_UNORM
   #:VK_FORMAT_R16G16B16_SNORM
   #:VK_FORMAT_R16G16B16_USCALED
   #:VK_FORMAT_R16G16B16_SSCALED
   #:VK_FORMAT_R16G16B16_UINT
   #:VK_FORMAT_R16G16B16_SINT
   #:VK_FORMAT_R16G16B16_SFLOAT
   #:VK_FORMAT_R16G16B16A16_UNORM
   #:VK_FORMAT_R16G16B16A16_SNORM
   #:VK_FORMAT_R16G16B16A16_USCALED
   #:VK_FORMAT_R16G16B16A16_SSCALED
   #:VK_FORMAT_R16G16B16A16_UINT
   #:VK_FORMAT_R16G16B16A16_SINT
   #:VK_FORMAT_R16G16B16A16_SFLOAT
   #:VK_FORMAT_R32_UINT
   #:VK_FORMAT_R32_SINT
   #:VK_FORMAT_R32_SFLOAT
   #:VK_FORMAT_R32G32_UINT
   #:VK_FORMAT_R32G32_SINT
   #:VK_FORMAT_R32G32_SFLOAT
   #:VK_FORMAT_R32G32B32_UINT
   #:VK_FORMAT_R32G32B32_SINT
   #:VK_FORMAT_R32G32B32_SFLOAT
   #:VK_FORMAT_R32G32B32A32_UINT
   #:VK_FORMAT_R32G32B32A32_SINT
   #:VK_FORMAT_R32G32B32A32_SFLOAT
   #:VK_FORMAT_R64_UINT
   #:VK_FORMAT_R64_SINT
   #:VK_FORMAT_R64_SFLOAT
   #:VK_FORMAT_R64G64_UINT
   #:VK_FORMAT_R64G64_SINT
   #:VK_FORMAT_R64G64_SFLOAT
   #:VK_FORMAT_R64G64B64_UINT
   #:VK_FORMAT_R64G64B64_SINT
   #:VK_FORMAT_R64G64B64_SFLOAT
   #:VK_FORMAT_R64G64B64A64_UINT
   #:VK_FORMAT_R64G64B64A64_SINT
   #:VK_FORMAT_R64G64B64A64_SFLOAT
   #:VK_FORMAT_B10G11R11_UFLOAT_PACK32
   #:VK_FORMAT_E5B9G9R9_UFLOAT_PACK32
   #:VK_FORMAT_D16_UNORM
   #:VK_FORMAT_X8_D24_UNORM_PACK32
   #:VK_FORMAT_D32_SFLOAT
   #:VK_FORMAT_S8_UINT
   #:VK_FORMAT_D16_UNORM_S8_UINT
   #:VK_FORMAT_D24_UNORM_S8_UINT
   #:VK_FORMAT_D32_SFLOAT_S8_UINT
   #:VK_FORMAT_BC1_RGB_UNORM_BLOCK
   #:VK_FORMAT_BC1_RGB_SRGB_BLOCK
   #:VK_FORMAT_BC1_RGBA_UNORM_BLOCK
   #:VK_FORMAT_BC1_RGBA_SRGB_BLOCK
   #:VK_FORMAT_BC2_UNORM_BLOCK
   #:VK_FORMAT_BC2_SRGB_BLOCK
   #:VK_FORMAT_BC3_UNORM_BLOCK
   #:VK_FORMAT_BC3_SRGB_BLOCK
   #:VK_FORMAT_BC4_UNORM_BLOCK
   #:VK_FORMAT_BC4_SNORM_BLOCK
   #:VK_FORMAT_BC5_UNORM_BLOCK
   #:VK_FORMAT_BC5_SNORM_BLOCK
   #:VK_FORMAT_BC6H_UFLOAT_BLOCK
   #:VK_FORMAT_BC6H_SFLOAT_BLOCK
   #:VK_FORMAT_BC7_UNORM_BLOCK
   #:VK_FORMAT_BC7_SRGB_BLOCK
   #:VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK
   #:VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK
   #:VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK
   #:VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK
   #:VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK
   #:VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK
   #:VK_FORMAT_EAC_R11_UNORM_BLOCK
   #:VK_FORMAT_EAC_R11_SNORM_BLOCK
   #:VK_FORMAT_EAC_R11G11_UNORM_BLOCK
   #:VK_FORMAT_EAC_R11G11_SNORM_BLOCK
   #:VK_FORMAT_ASTC_4x4_UNORM_BLOCK
   #:VK_FORMAT_ASTC_4x4_SRGB_BLOCK
   #:VK_FORMAT_ASTC_5x4_UNORM_BLOCK
   #:VK_FORMAT_ASTC_5x4_SRGB_BLOCK
   #:VK_FORMAT_ASTC_5x5_UNORM_BLOCK
   #:VK_FORMAT_ASTC_5x5_SRGB_BLOCK
   #:VK_FORMAT_ASTC_6x5_UNORM_BLOCK
   #:VK_FORMAT_ASTC_6x5_SRGB_BLOCK
   #:VK_FORMAT_ASTC_6x6_UNORM_BLOCK
   #:VK_FORMAT_ASTC_6x6_SRGB_BLOCK
   #:VK_FORMAT_ASTC_8x5_UNORM_BLOCK
   #:VK_FORMAT_ASTC_8x5_SRGB_BLOCK
   #:VK_FORMAT_ASTC_8x6_UNORM_BLOCK
   #:VK_FORMAT_ASTC_8x6_SRGB_BLOCK
   #:VK_FORMAT_ASTC_8x8_UNORM_BLOCK
   #:VK_FORMAT_ASTC_8x8_SRGB_BLOCK
   #:VK_FORMAT_ASTC_10x5_UNORM_BLOCK
   #:VK_FORMAT_ASTC_10x5_SRGB_BLOCK
   #:VK_FORMAT_ASTC_10x6_UNORM_BLOCK
   #:VK_FORMAT_ASTC_10x6_SRGB_BLOCK
   #:VK_FORMAT_ASTC_10x8_UNORM_BLOCK
   #:VK_FORMAT_ASTC_10x8_SRGB_BLOCK
   #:VK_FORMAT_ASTC_10x10_UNORM_BLOCK
   #:VK_FORMAT_ASTC_10x10_SRGB_BLOCK
   #:VK_FORMAT_ASTC_12x10_UNORM_BLOCK
   #:VK_FORMAT_ASTC_12x10_SRGB_BLOCK
   #:VK_FORMAT_ASTC_12x12_UNORM_BLOCK
   #:VK_FORMAT_ASTC_12x12_SRGB_BLOCK
   #:VK_FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG ;; "VK_IMG_format_pvrtc"
   #:VK_FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG ;; "VK_IMG_format_pvrtc"
   #:VK_FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG ;; "VK_IMG_format_pvrtc"
   #:VK_FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG ;; "VK_IMG_format_pvrtc"
   #:VK_FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG ;; "VK_IMG_format_pvrtc"
   #:VK_FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG ;; "VK_IMG_format_pvrtc"
   #:VK_FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG ;; "VK_IMG_format_pvrtc"
   #:VK_FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG ;; "VK_IMG_format_pvrtc"
   #:VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
   #:VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT ;; Format can be used for storage images (STORAGE_IMAGE descriptor type)
   #:VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT ;; Format supports atomic operations in case it is used for storage images
   #:VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT ;; Format can be used for uniform texel buffers (TBOs)
   #:VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT ;; Format can be used for storage texel buffers (IBOs)
   #:VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
   #:VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT ;; Format can be used for vertex buffers (VBOs)
   #:VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT ;; Format can be used for color attachment images
   #:VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
   #:VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT ;; Format can be used for depth/stencil attachment images
   #:VK_FORMAT_FEATURE_BLIT_SRC_BIT ;; Format can be used as the source image of blits with vkCmdBlitImage
   #:VK_FORMAT_FEATURE_BLIT_DST_BIT ;; Format can be used as the destination image of blits with vkCmdBlitImage
   #:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
   #:VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG ;; "VK_IMG_filter_cubic"
   #:VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR ;; "VK_KHR_maintenance1"
   #:VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR ;; "VK_KHR_maintenance1"
   #:VK_FRONT_FACE_COUNTER_CLOCKWISE
   #:VK_FRONT_FACE_CLOCKWISE
   #:VK_IMAGE_ASPECT_COLOR_BIT
   #:VK_IMAGE_ASPECT_DEPTH_BIT
   #:VK_IMAGE_ASPECT_STENCIL_BIT
   #:VK_IMAGE_ASPECT_METADATA_BIT
   #:VK_IMAGE_CREATE_SPARSE_BINDING_BIT ;; Image should support sparse backing
   #:VK_IMAGE_CREATE_SPARSE_RESIDENCY_BIT ;; Image should support sparse backing with partial residency
   #:VK_IMAGE_CREATE_SPARSE_ALIASED_BIT
   #:VK_IMAGE_CREATE_MUTABLE_FORMAT_BIT ;; Allows image views to have different format than the base image
   #:VK_IMAGE_CREATE_CUBE_COMPATIBLE_BIT ;; Allows creating image views with cube type from the created image
   #:VK_IMAGE_CREATE_BIND_SFR_BIT_KHX ;; "VK_KHX_device_group"
   #:VK_IMAGE_CREATE_2D_ARRAY_COMPATIBLE_BIT_KHR ;; "VK_KHR_maintenance1"
   #:VK_IMAGE_LAYOUT_UNDEFINED
   #:VK_IMAGE_LAYOUT_GENERAL ;; General layout when image can be used for any kind of access
   #:VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL ;; Optimal layout when image is only used for color attachment read/write
   #:VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
   #:VK_IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL
   #:VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL ;; Optimal layout when image is used for read only shader access
   #:VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL ;; Optimal layout when image is used only as source of transfer operations
   #:VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL ;; Optimal layout when image is used only as destination of transfer operations
   #:VK_IMAGE_LAYOUT_PREINITIALIZED ;; Initial layout used when the data is populated by the CPU
   #:VK_IMAGE_LAYOUT_PRESENT_SRC_KHR ;; "VK_KHR_swapchain"
   #:VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR ;; "VK_KHR_shared_presentable_image"
   #:VK_IMAGE_TILING_OPTIMAL
   #:VK_IMAGE_TILING_LINEAR
   #:VK_IMAGE_TYPE_1D
   #:VK_IMAGE_TYPE_2D
   #:VK_IMAGE_TYPE_3D
   #:VK_IMAGE_USAGE_TRANSFER_SRC_BIT ;; Can be used as a source of transfer operations
   #:VK_IMAGE_USAGE_TRANSFER_DST_BIT ;; Can be used as a destination of transfer operations
   #:VK_IMAGE_USAGE_SAMPLED_BIT ;; Can be sampled from (SAMPLED_IMAGE and COMBINED_IMAGE_SAMPLER descriptor types)
   #:VK_IMAGE_USAGE_STORAGE_BIT ;; Can be used as storage image (STORAGE_IMAGE descriptor type)
   #:VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT ;; Can be used as framebuffer color attachment
   #:VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT ;; Can be used as framebuffer depth/stencil attachment
   #:VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT ;; Image data not needed outside of rendering
   #:VK_IMAGE_USAGE_INPUT_ATTACHMENT_BIT ;; Can be used as framebuffer input attachment
   #:VK_IMAGE_VIEW_TYPE_1D
   #:VK_IMAGE_VIEW_TYPE_2D
   #:VK_IMAGE_VIEW_TYPE_3D
   #:VK_IMAGE_VIEW_TYPE_CUBE
   #:VK_IMAGE_VIEW_TYPE_1D_ARRAY
   #:VK_IMAGE_VIEW_TYPE_2D_ARRAY
   #:VK_IMAGE_VIEW_TYPE_CUBE_ARRAY
   #:VK_INDEX_TYPE_UINT16
   #:VK_INDEX_TYPE_UINT32
   #:VK_INDIRECT_COMMANDS_LAYOUT_USAGE_UNORDERED_SEQUENCES_BIT_NVX
   #:VK_INDIRECT_COMMANDS_LAYOUT_USAGE_SPARSE_SEQUENCES_BIT_NVX
   #:VK_INDIRECT_COMMANDS_LAYOUT_USAGE_EMPTY_EXECUTIONS_BIT_NVX
   #:VK_INDIRECT_COMMANDS_LAYOUT_USAGE_INDEXED_SEQUENCES_BIT_NVX
   #:VK_INDIRECT_COMMANDS_TOKEN_TYPE_PIPELINE_NVX
   #:VK_INDIRECT_COMMANDS_TOKEN_TYPE_DESCRIPTOR_SET_NVX
   #:VK_INDIRECT_COMMANDS_TOKEN_TYPE_INDEX_BUFFER_NVX
   #:VK_INDIRECT_COMMANDS_TOKEN_TYPE_VERTEX_BUFFER_NVX
   #:VK_INDIRECT_COMMANDS_TOKEN_TYPE_PUSH_CONSTANT_NVX
   #:VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_INDEXED_NVX
   #:VK_INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_NVX
   #:VK_INDIRECT_COMMANDS_TOKEN_TYPE_DISPATCH_NVX
   #:VK_INTERNAL_ALLOCATION_TYPE_EXECUTABLE
   #:VK_LOGIC_OP_CLEAR
   #:VK_LOGIC_OP_AND
   #:VK_LOGIC_OP_AND_REVERSE
   #:VK_LOGIC_OP_COPY
   #:VK_LOGIC_OP_AND_INVERTED
   #:VK_LOGIC_OP_NO_OP
   #:VK_LOGIC_OP_XOR
   #:VK_LOGIC_OP_OR
   #:VK_LOGIC_OP_NOR
   #:VK_LOGIC_OP_EQUIVALENT
   #:VK_LOGIC_OP_INVERT
   #:VK_LOGIC_OP_OR_REVERSE
   #:VK_LOGIC_OP_COPY_INVERTED
   #:VK_LOGIC_OP_OR_INVERTED
   #:VK_LOGIC_OP_NAND
   #:VK_LOGIC_OP_SET
   #:VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHX ;; Force allocation on specific devices
   #:VK_MEMORY_HEAP_DEVICE_LOCAL_BIT ;; If set, heap represents device memory
   #:VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHX ;; "VK_KHX_device_group_creation"
   #:VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT ;; If otherwise stated, then allocate memory on device
   #:VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT ;; Memory is mappable by host
   #:VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
   #:VK_MEMORY_PROPERTY_HOST_CACHED_BIT ;; Memory will be cached by the host
   #:VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT ;; Memory may be allocated by the driver when it is required
   #:VK_OBJECT_ENTRY_TYPE_DESCRIPTOR_SET_NVX
   #:VK_OBJECT_ENTRY_TYPE_PIPELINE_NVX
   #:VK_OBJECT_ENTRY_TYPE_INDEX_BUFFER_NVX
   #:VK_OBJECT_ENTRY_TYPE_VERTEX_BUFFER_NVX
   #:VK_OBJECT_ENTRY_TYPE_PUSH_CONSTANT_NVX
   #:VK_OBJECT_ENTRY_USAGE_GRAPHICS_BIT_NVX
   #:VK_OBJECT_ENTRY_USAGE_COMPUTE_BIT_NVX
   #:VK_OBJECT_TYPE_UNKNOWN
   #:VK_OBJECT_TYPE_INSTANCE ;; VkInstance
   #:VK_OBJECT_TYPE_PHYSICAL_DEVICE ;; VkPhysicalDevice
   #:VK_OBJECT_TYPE_DEVICE ;; VkDevice
   #:VK_OBJECT_TYPE_QUEUE ;; VkQueue
   #:VK_OBJECT_TYPE_SEMAPHORE ;; VkSemaphore
   #:VK_OBJECT_TYPE_COMMAND_BUFFER ;; VkCommandBuffer
   #:VK_OBJECT_TYPE_FENCE ;; VkFence
   #:VK_OBJECT_TYPE_DEVICE_MEMORY ;; VkDeviceMemory
   #:VK_OBJECT_TYPE_BUFFER ;; VkBuffer
   #:VK_OBJECT_TYPE_IMAGE ;; VkImage
   #:VK_OBJECT_TYPE_EVENT ;; VkEvent
   #:VK_OBJECT_TYPE_QUERY_POOL ;; VkQueryPool
   #:VK_OBJECT_TYPE_BUFFER_VIEW ;; VkBufferView
   #:VK_OBJECT_TYPE_IMAGE_VIEW ;; VkImageView
   #:VK_OBJECT_TYPE_SHADER_MODULE ;; VkShaderModule
   #:VK_OBJECT_TYPE_PIPELINE_CACHE ;; VkPipelineCache
   #:VK_OBJECT_TYPE_PIPELINE_LAYOUT ;; VkPipelineLayout
   #:VK_OBJECT_TYPE_RENDER_PASS ;; VkRenderPass
   #:VK_OBJECT_TYPE_PIPELINE ;; VkPipeline
   #:VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT ;; VkDescriptorSetLayout
   #:VK_OBJECT_TYPE_SAMPLER ;; VkSampler
   #:VK_OBJECT_TYPE_DESCRIPTOR_POOL ;; VkDescriptorPool
   #:VK_OBJECT_TYPE_DESCRIPTOR_SET ;; VkDescriptorSet
   #:VK_OBJECT_TYPE_FRAMEBUFFER ;; VkFramebuffer
   #:VK_OBJECT_TYPE_COMMAND_POOL ;; VkCommandPool
   #:VK_OBJECT_TYPE_SURFACE_KHR ;; "VK_KHR_surface"
   #:VK_OBJECT_TYPE_SWAPCHAIN_KHR ;; "VK_KHR_swapchain"
   #:VK_OBJECT_TYPE_DISPLAY_KHR ;; "VK_KHR_display"
   #:VK_OBJECT_TYPE_DISPLAY_MODE_KHR ;; "VK_KHR_display"
   #:VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT ;; "VK_EXT_debug_report"
   #:VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR ;; "VK_KHR_descriptor_update_template"
   #:VK_OBJECT_TYPE_OBJECT_TABLE_NVX ;; "VK_NVX_device_generated_commands"
   #:VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX ;; "VK_NVX_device_generated_commands"
   #:VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHX ;; Can read with vkCmdCopy commands
   #:VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHX ;; Can write with vkCmdCopy commands
   #:VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHX ;; Can read with any access type/command
   #:VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHX ;; Can write with and access type/command
   #:VK_PHYSICAL_DEVICE_TYPE_OTHER
   #:VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU
   #:VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU
   #:VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU
   #:VK_PHYSICAL_DEVICE_TYPE_CPU
   #:VK_PIPELINE_BIND_POINT_GRAPHICS
   #:VK_PIPELINE_BIND_POINT_COMPUTE
   #:VK_PIPELINE_CACHE_HEADER_VERSION_ONE
   #:VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT
   #:VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT
   #:VK_PIPELINE_CREATE_DERIVATIVE_BIT
   #:VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHX ;; "VK_KHX_device_group"
   #:VK_PIPELINE_CREATE_DISPATCH_BASE_KHX ;; "VK_KHX_device_group"
   #:VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT ;; Before subsequent commands are processed
   #:VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT ;; Draw/DispatchIndirect command fetch
   #:VK_PIPELINE_STAGE_VERTEX_INPUT_BIT ;; Vertex/index fetch
   #:VK_PIPELINE_STAGE_VERTEX_SHADER_BIT ;; Vertex shading
   #:VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT ;; Tessellation control shading
   #:VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT ;; Tessellation evaluation shading
   #:VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT ;; Geometry shading
   #:VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT ;; Fragment shading
   #:VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT ;; Early fragment (depth and stencil) tests
   #:VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT ;; Late fragment (depth and stencil) tests
   #:VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT ;; Color attachment writes
   #:VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT ;; Compute shading
   #:VK_PIPELINE_STAGE_TRANSFER_BIT ;; Transfer/copy operations
   #:VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT ;; After previous commands have completed
   #:VK_PIPELINE_STAGE_HOST_BIT ;; Indicates host (CPU) is a source/sink of the dependency
   #:VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT ;; All stages of the graphics pipeline
   #:VK_PIPELINE_STAGE_ALL_COMMANDS_BIT ;; All stages supported on the queue
   #:VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX ;; "VK_NVX_device_generated_commands"
   #:VK_POLYGON_MODE_FILL
   #:VK_POLYGON_MODE_LINE
   #:VK_POLYGON_MODE_POINT
   #:VK_PRESENT_MODE_IMMEDIATE_KHR
   #:VK_PRESENT_MODE_MAILBOX_KHR
   #:VK_PRESENT_MODE_FIFO_KHR
   #:VK_PRESENT_MODE_FIFO_RELAXED_KHR
   #:VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR ;; "VK_KHR_shared_presentable_image"
   #:VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR ;; "VK_KHR_shared_presentable_image"
   #:VK_PRIMITIVE_TOPOLOGY_POINT_LIST
   #:VK_PRIMITIVE_TOPOLOGY_LINE_LIST
   #:VK_PRIMITIVE_TOPOLOGY_LINE_STRIP
   #:VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST
   #:VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP
   #:VK_PRIMITIVE_TOPOLOGY_TRIANGLE_FAN
   #:VK_PRIMITIVE_TOPOLOGY_LINE_LIST_WITH_ADJACENCY
   #:VK_PRIMITIVE_TOPOLOGY_LINE_STRIP_WITH_ADJACENCY
   #:VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST_WITH_ADJACENCY
   #:VK_PRIMITIVE_TOPOLOGY_TRIANGLE_STRIP_WITH_ADJACENCY
   #:VK_PRIMITIVE_TOPOLOGY_PATCH_LIST
   #:VK_QUERY_CONTROL_PRECISE_BIT ;; Require precise results to be collected by the query
   #:VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_VERTICES_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_INPUT_ASSEMBLY_PRIMITIVES_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_VERTEX_SHADER_INVOCATIONS_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_INVOCATIONS_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_GEOMETRY_SHADER_PRIMITIVES_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_CLIPPING_PRIMITIVES_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_FRAGMENT_SHADER_INVOCATIONS_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_CONTROL_SHADER_PATCHES_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_TESSELLATION_EVALUATION_SHADER_INVOCATIONS_BIT ;; Optional
   #:VK_QUERY_PIPELINE_STATISTIC_COMPUTE_SHADER_INVOCATIONS_BIT ;; Optional
   #:VK_QUERY_RESULT_64_BIT ;; Results of the queries are written to the destination buffer as 64-bit values
   #:VK_QUERY_RESULT_WAIT_BIT ;; Results of the queries are waited on before proceeding with the result copy
   #:VK_QUERY_RESULT_WITH_AVAILABILITY_BIT
   #:VK_QUERY_RESULT_PARTIAL_BIT ;; Copy the partial results of the query even if the final results are not available
   #:VK_QUERY_TYPE_OCCLUSION
   #:VK_QUERY_TYPE_PIPELINE_STATISTICS ;; Optional
   #:VK_QUERY_TYPE_TIMESTAMP
   #:VK_QUEUE_GRAPHICS_BIT ;; Queue supports graphics operations
   #:VK_QUEUE_COMPUTE_BIT ;; Queue supports compute operations
   #:VK_QUEUE_TRANSFER_BIT ;; Queue supports transfer operations
   #:VK_QUEUE_SPARSE_BINDING_BIT ;; Queue supports sparse resource memory management operations
   #:VK_RASTERIZATION_ORDER_STRICT_AMD
   #:VK_RASTERIZATION_ORDER_RELAXED_AMD
   #:VK_SUCCESS ;; Command completed successfully
   #:VK_NOT_READY ;; A fence or query has not yet completed
   #:VK_TIMEOUT ;; A wait operation has not completed in the specified time
   #:VK_EVENT_SET ;; An event is signaled
   #:VK_EVENT_RESET ;; An event is unsignaled
   #:VK_INCOMPLETE ;; A return array was too small for the result
   #:VK_ERROR_OUT_OF_HOST_MEMORY ;; A host memory allocation has failed
   #:VK_ERROR_OUT_OF_DEVICE_MEMORY ;; A device memory allocation has failed
   #:VK_ERROR_INITIALIZATION_FAILED ;; Initialization of a object has failed
   #:VK_ERROR_DEVICE_LOST ;; The logical device has been lost. See <<devsandqueues-lost-device>>
   #:VK_ERROR_MEMORY_MAP_FAILED ;; Mapping of a memory object has failed
   #:VK_ERROR_LAYER_NOT_PRESENT ;; Layer specified does not exist
   #:VK_ERROR_EXTENSION_NOT_PRESENT ;; Extension specified does not exist
   #:VK_ERROR_FEATURE_NOT_PRESENT ;; Requested feature is not available on this device
   #:VK_ERROR_INCOMPATIBLE_DRIVER ;; Unable to find a Vulkan driver
   #:VK_ERROR_TOO_MANY_OBJECTS ;; Too many objects of the type have already been created
   #:VK_ERROR_FORMAT_NOT_SUPPORTED ;; Requested format is not supported on this device
   #:VK_ERROR_FRAGMENTED_POOL ;; A requested pool allocation has failed due to fragmentation of the pool's memory
   #:VK_ERROR_SURFACE_LOST_KHR ;; "VK_KHR_surface"
   #:VK_ERROR_NATIVE_WINDOW_IN_USE_KHR ;; "VK_KHR_surface"
   #:VK_SUBOPTIMAL_KHR ;; "VK_KHR_swapchain"
   #:VK_ERROR_OUT_OF_DATE_KHR ;; "VK_KHR_swapchain"
   #:VK_ERROR_INCOMPATIBLE_DISPLAY_KHR ;; "VK_KHR_display_swapchain"
   #:VK_ERROR_VALIDATION_FAILED_EXT ;; "VK_EXT_debug_report"
   #:VK_ERROR_INVALID_SHADER_NV ;; "VK_NV_glsl_shader"
   #:VK_NV_EXTENSION_1_ERROR ;; "VK_NV_extension_1"
   #:VK_ERROR_OUT_OF_POOL_MEMORY_KHR ;; "VK_KHR_maintenance1"
   #:VK_ERROR_INVALID_EXTERNAL_HANDLE_KHX ;; "VK_KHX_external_memory"
   #:VK_SAMPLE_COUNT_1_BIT ;; Sample count 1 supported
   #:VK_SAMPLE_COUNT_2_BIT ;; Sample count 2 supported
   #:VK_SAMPLE_COUNT_4_BIT ;; Sample count 4 supported
   #:VK_SAMPLE_COUNT_8_BIT ;; Sample count 8 supported
   #:VK_SAMPLE_COUNT_16_BIT ;; Sample count 16 supported
   #:VK_SAMPLE_COUNT_32_BIT ;; Sample count 32 supported
   #:VK_SAMPLE_COUNT_64_BIT ;; Sample count 64 supported
   #:VK_SAMPLER_ADDRESS_MODE_REPEAT
   #:VK_SAMPLER_ADDRESS_MODE_MIRRORED_REPEAT
   #:VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE
   #:VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_BORDER
   #:VK_SAMPLER_ADDRESS_MODE_MIRROR_CLAMP_TO_EDGE ;; "VK_KHR_sampler_mirror_clamp_to_edge"
   #:VK_SAMPLER_MIPMAP_MODE_NEAREST ;; Choose nearest mip level
   #:VK_SAMPLER_MIPMAP_MODE_LINEAR ;; Linear filter between mip levels
   #:VK_SHADER_STAGE_VERTEX_BIT
   #:VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT
   #:VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT
   #:VK_SHADER_STAGE_GEOMETRY_BIT
   #:VK_SHADER_STAGE_FRAGMENT_BIT
   #:VK_SHADER_STAGE_COMPUTE_BIT
   #:VK_SHADER_STAGE_ALL_GRAPHICS
   #:VK_SHADER_STAGE_ALL
   #:VK_SHARING_MODE_EXCLUSIVE
   #:VK_SHARING_MODE_CONCURRENT
   #:VK_SPARSE_IMAGE_FORMAT_SINGLE_MIPTAIL_BIT ;; Image uses a single mip tail region for all array layers
   #:VK_SPARSE_IMAGE_FORMAT_ALIGNED_MIP_SIZE_BIT
   #:VK_SPARSE_IMAGE_FORMAT_NONSTANDARD_BLOCK_SIZE_BIT ;; Image uses a non-standard sparse image block dimensions
   #:VK_SPARSE_MEMORY_BIND_METADATA_BIT ;; Operation binds resource metadata to memory
   #:VK_STENCIL_FACE_FRONT_BIT ;; Front face
   #:VK_STENCIL_FACE_BACK_BIT ;; Back face
   #:VK_STENCIL_FRONT_AND_BACK ;; Front and back faces
   #:VK_STENCIL_OP_KEEP
   #:VK_STENCIL_OP_ZERO
   #:VK_STENCIL_OP_REPLACE
   #:VK_STENCIL_OP_INCREMENT_AND_CLAMP
   #:VK_STENCIL_OP_DECREMENT_AND_CLAMP
   #:VK_STENCIL_OP_INVERT
   #:VK_STENCIL_OP_INCREMENT_AND_WRAP
   #:VK_STENCIL_OP_DECREMENT_AND_WRAP
   #:VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_LINE_STATE_CREATE_INFO_EXT
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINE_RASTERIZATION_FEATURES_EXT
   #:VK_STRUCTURE_TYPE_APPLICATION_INFO
   #:VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_SUBMIT_INFO
   #:VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO
   #:VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE
   #:VK_STRUCTURE_TYPE_BIND_SPARSE_INFO
   #:VK_STRUCTURE_TYPE_FENCE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_EVENT_CREATE_INFO
   #:VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO
   #:VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO
   #:VK_STRUCTURE_TYPE_BUFFER_VIEW_CREATE_INFO
   #:VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO
   #:VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_TESSELLATION_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO
   #:VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO
   #:VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO
   #:VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO
   #:VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO
   #:VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET
   #:VK_STRUCTURE_TYPE_COPY_DESCRIPTOR_SET
   #:VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO
   #:VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO
   #:VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO
   #:VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO
   #:VK_STRUCTURE_TYPE_COMMAND_BUFFER_INHERITANCE_INFO
   #:VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO
   #:VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO
   #:VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER
   #:VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER
   #:VK_STRUCTURE_TYPE_MEMORY_BARRIER
   #:VK_STRUCTURE_TYPE_LOADER_INSTANCE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_LOADER_DEVICE_CREATE_INFO
   #:VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR  ;; "VK_KHR_swapchain"
   #:VK_STRUCTURE_TYPE_PRESENT_INFO_KHR  ;; "VK_KHR_swapchain"
   #:VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR  ;; "VK_KHR_display"
   #:VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR  ;; "VK_KHR_display"
   #:VK_STRUCTURE_TYPE_DISPLAY_PRESENT_INFO_KHR  ;; "VK_KHR_display_swapchain"
   #:VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR  ;; "VK_KHR_xlib_surface"
   #:VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR  ;; "VK_KHR_xcb_surface"
   #:VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR  ;; "VK_KHR_wayland_surface"
   #:VK_STRUCTURE_TYPE_MIR_SURFACE_CREATE_INFO_KHR  ;; "VK_KHR_mir_surface"
   #:VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR  ;; "VK_KHR_android_surface"
   #:VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR  ;; "VK_KHR_win32_surface"
   #:VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT  ;; "VK_EXT_debug_report"
   #:VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT
   #:VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT
   #:VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT
   #:VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT
   #:VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT
   #:VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD  ;; "VK_AMD_rasterization_order"
   #:VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_NAME_INFO_EXT  ;; "VK_EXT_debug_marker"
   #:VK_STRUCTURE_TYPE_DEBUG_MARKER_OBJECT_TAG_INFO_EXT  ;; "VK_EXT_debug_marker"
   #:VK_STRUCTURE_TYPE_DEBUG_MARKER_MARKER_INFO_EXT  ;; "VK_EXT_debug_marker"
   #:VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV  ;; "VK_NV_dedicated_allocation"
   #:VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV  ;; "VK_NV_dedicated_allocation"
   #:VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV  ;; "VK_NV_dedicated_allocation"
   #:VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD  ;; "VK_AMD_texture_gather_bias_lod"
   #:VK_STRUCTURE_TYPE_RENDER_PASS_MULTIVIEW_CREATE_INFO_KHX  ;; "VK_KHX_multiview"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_FEATURES_KHX  ;; "VK_KHX_multiview"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PROPERTIES_KHX  ;; "VK_KHX_multiview"
   #:VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV  ;; "VK_NV_external_memory"
   #:VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV  ;; "VK_NV_external_memory"
   #:VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV  ;; "VK_NV_external_memory_win32"
   #:VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV  ;; "VK_NV_external_memory_win32"
   #:VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV  ;; "VK_NV_win32_keyed_mutex"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FEATURES_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROPERTIES_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_IMAGE_FORMAT_PROPERTIES_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_FORMAT_INFO_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_QUEUE_FAMILY_PROPERTIES_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PROPERTIES_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SPARSE_IMAGE_FORMAT_INFO_2_KHR  ;; "VK_KHR_get_physical_device_properties2"
   #:VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHX  ;; "VK_KHX_device_group"
   #:VK_STRUCTURE_TYPE_VALIDATION_FLAGS_EXT  ;; "VK_EXT_validation_flags"
   #:VK_STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN  ;; "VK_NN_vi_surface"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES_KHX  ;; "VK_KHX_device_group_creation"
   #:VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO_KHX  ;; "VK_KHX_device_group_creation"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHX  ;; "VK_KHX_external_memory_capabilities"
   #:VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHX  ;; "VK_KHX_external_memory_capabilities"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHX  ;; "VK_KHX_external_memory_capabilities"
   #:VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES_KHX  ;; "VK_KHX_external_memory_capabilities"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHX  ;; "VK_KHX_external_memory_capabilities"
   #:VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHX  ;; "VK_KHX_external_memory"
   #:VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHX  ;; "VK_KHX_external_memory"
   #:VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_KHX  ;; "VK_KHX_external_memory"
   #:VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHX  ;; "VK_KHX_external_memory_win32"
   #:VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHX  ;; "VK_KHX_external_memory_win32"
   #:VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHX  ;; "VK_KHX_external_memory_win32"
   #:VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHX  ;; "VK_KHX_external_memory_fd"
   #:VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHX  ;; "VK_KHX_external_memory_fd"
   #:VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHX  ;; "VK_KHX_win32_keyed_mutex"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHX  ;; "VK_KHX_external_semaphore_capabilities"
   #:VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHX  ;; "VK_KHX_external_semaphore_capabilities"
   #:VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHX  ;; "VK_KHX_external_semaphore"
   #:VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHX  ;; "VK_KHX_external_semaphore_win32"
   #:VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHX  ;; "VK_KHX_external_semaphore_win32"
   #:VK_STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHX  ;; "VK_KHX_external_semaphore_win32"
   #:VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHX  ;; "VK_KHX_external_semaphore_fd"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR  ;; "VK_KHR_push_descriptor"
   #:VK_STRUCTURE_TYPE_PRESENT_REGIONS_KHR  ;; "VK_KHR_incremental_present"
   #:VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR  ;; "VK_KHR_descriptor_update_template"
   #:VK_STRUCTURE_TYPE_OBJECT_TABLE_CREATE_INFO_NVX  ;; "VK_NVX_device_generated_commands"
   #:VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NVX  ;; "VK_NVX_device_generated_commands"
   #:VK_STRUCTURE_TYPE_CMD_PROCESS_COMMANDS_INFO_NVX  ;; "VK_NVX_device_generated_commands"
   #:VK_STRUCTURE_TYPE_CMD_RESERVE_SPACE_FOR_COMMANDS_INFO_NVX  ;; "VK_NVX_device_generated_commands"
   #:VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_LIMITS_NVX  ;; "VK_NVX_device_generated_commands"
   #:VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_FEATURES_NVX  ;; "VK_NVX_device_generated_commands"
   #:VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV  ;; "VK_NV_clip_space_w_scaling"
   #:VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES2_EXT  ;; "VK_EXT_display_surface_counter"
   #:VK_STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT  ;; "VK_EXT_display_control"
   #:VK_STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT  ;; "VK_EXT_display_control"
   #:VK_STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT  ;; "VK_EXT_display_control"
   #:VK_STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT  ;; "VK_EXT_display_control"
   #:VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE  ;; "VK_GOOGLE_display_timing"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX
   #:VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV  ;; "VK_NV_viewport_swizzle"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DISCARD_RECTANGLE_PROPERTIES_EXT  ;; "VK_EXT_discard_rectangles"
   #:VK_STRUCTURE_TYPE_PIPELINE_DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT  ;; "VK_EXT_discard_rectangles"
   #:VK_STRUCTURE_TYPE_HDR_METADATA_EXT  ;; "VK_EXT_hdr_metadata"
   #:VK_STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR  ;; "VK_KHR_shared_presentable_image"
   #:VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR  ;; "VK_KHR_get_surface_capabilities2"
   #:VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR  ;; "VK_KHR_get_surface_capabilities2"
   #:VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR  ;; "VK_KHR_get_surface_capabilities2"
   #:VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK  ;; "VK_MVK_ios_surface"
   #:VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK  ;; "VK_MVK_macos_surface"
   #:VK_SUBPASS_CONTENTS_INLINE
   #:VK_SUBPASS_CONTENTS_SECONDARY_COMMAND_BUFFERS
   #:VK_SUBPASS_DESCRIPTION_PER_VIEW_ATTRIBUTES_BIT_NVX  ;; "VK_NVX_multiview_per_view_attributes"
   #:VK_SUBPASS_DESCRIPTION_PER_VIEW_POSITION_X_ONLY_BIT_NVX  ;; "VK_NVX_multiview_per_view_attributes"
   #:VK_SURFACE_COUNTER_VBLANK_EXT
   #:VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR
   #:VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR
   #:VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR
   #:VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR
   #:VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR
   #:VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR
   #:VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR
   #:VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR
   #:VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR
   #:VK_SWAPCHAIN_CREATE_BIND_SFR_BIT_KHX  ;; "VK_KHX_device_group"
   #:VK_SYSTEM_ALLOCATION_SCOPE_COMMAND
   #:VK_SYSTEM_ALLOCATION_SCOPE_OBJECT
   #:VK_SYSTEM_ALLOCATION_SCOPE_CACHE
   #:VK_SYSTEM_ALLOCATION_SCOPE_DEVICE
   #:VK_SYSTEM_ALLOCATION_SCOPE_INSTANCE
   #:VK_VALIDATION_CHECK_ALL_EXT
   #:VK_VALIDATION_CHECK_SHADERS_EXT
   #:VK_VERTEX_INPUT_RATE_VERTEX
   #:VK_VERTEX_INPUT_RATE_INSTANCE
   #:VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV
   #:VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV
   #:VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV
   #:VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV
   #:VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV
   #:VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV
   #:VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV
   #:VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV

   #:VK_QUEUE_FAMILY_IGNORED
   #:VK_IMAGE_LAYOUT_UNDEFINED
   #:VK_SUBPASS_EXTERNAL
   #:VK_KHR_SURFACE_EXTENSION_NAME
   #:VK_KHR_SWAPCHAIN_EXTENSION_NAME
   #:VK_KHR_DISPLAY_EXTENSION_NAME
   #:VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME
   #:VK_KHR_XLIB_SURFACE_EXTENSION_NAME
   #:VK_KHR_XCB_SURFACE_EXTENSION_NAME
   #:VK_KHR_WAYLAND_SURFACE_EXTENSION_NAME
   #:VK_KHR_MIR_SURFACE_EXTENSION_NAME
   #:VK_KHR_ANDROID_SURFACE_EXTENSION_NAME
   #:VK_KHR_WIN32_SURFACE_EXTENSION_NAME
   #:VK_EXT_DEBUG_REPORT_EXTENSION_NAME
   #:VK_EXT_DEBUG_UTILS_EXTENSION_NAME
   #:VK_NV_GLSL_SHADER_EXTENSION_NAME
   #:VK_NV_EXTENSION_1_EXTENSION_NAME
   #:VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME
   #:VK_IMG_FILTER_CUBIC_EXTENSION_NAME
   #:VK_AMD_EXTENSION_17_EXTENSION_NAME
   #:VK_AMD_EXTENSION_18_EXTENSION_NAME
   #:VK_AMD_RASTERIZATION_ORDER_EXTENSION_NAME
   #:VK_AMD_EXTENSION_20_EXTENSION_NAME
   #:VK_AMD_SHADER_TRINARY_MINMAX_EXTENSION_NAME
   #:VK_AMD_SHADER_EXPLICIT_VERTEX_PARAMETER_EXTENSION_NAME
   #:VK_EXT_DEBUG_MARKER_EXTENSION_NAME
   #:VK_AMD_EXTENSION_24_EXTENSION_NAME
   #:VK_AMD_EXTENSION_25_EXTENSION_NAME
   #:VK_AMD_GCN_SHADER_EXTENSION_NAME
   #:VK_NV_DEDICATED_ALLOCATION_EXTENSION_NAME
   #:VK_NV_EXTENSION_28_EXTENSION_NAME
   #:VK_NVX_EXTENSION_29_EXTENSION_NAME
   #:VK_NVX_EXTENSION_30_EXTENSION_NAME
   #:VK_NVX_EXTENSION_31_EXTENSION_NAME
   #:VK_AMD_EXTENSION_32_EXTENSION_NAME
   #:VK_AMD_EXTENSION_33_EXTENSION_NAME
   #:VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME
   #:VK_AMD_EXTENSION_35_EXTENSION_NAME
   #:VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME
   #:VK_AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME
   #:VK_AMD_SHADER_BALLOT_EXTENSION_NAME
   #:VK_AMD_EXTENSION_39_EXTENSION_NAME
   #:VK_AMD_EXTENSION_40_EXTENSION_NAME
   #:VK_AMD_EXTENSION_41_EXTENSION_NAME
   #:VK_AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME
   #:VK_AMD_EXTENSION_43_EXTENSION_NAME
   #:VK_AMD_EXTENSION_44_EXTENSION_NAME
   #:VK_AMD_EXTENSION_45_EXTENSION_NAME
   #:VK_AMD_EXTENSION_46_EXTENSION_NAME
   #:VK_AMD_EXTENSION_47_EXTENSION_NAME
   #:VK_NVX_EXTENSION_48_EXTENSION_NAME
   #:VK_GOOGLE_EXTENSION_49_EXTENSION_NAME
   #:VK_GOOGLE_EXTENSION_50_EXTENSION_NAME
   #:VK_NVX_EXTENSION_51_EXTENSION_NAME
   #:VK_NVX_EXTENSION_52_EXTENSION_NAME
   #:VK_NV_EXTENSION_53_EXTENSION_NAME
   #:VK_KHX_MULTIVIEW_EXTENSION_NAME
   #:VK_IMG_FORMAT_PVRTC_EXTENSION_NAME
   #:VK_NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME
   #:VK_NV_EXTERNAL_MEMORY_EXTENSION_NAME
   #:VK_NV_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME
   #:VK_NV_WIN32_KEYED_MUTEX_EXTENSION_NAME
   #:VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES2_EXTENSION_NAME
   #:VK_KHX_DEVICE_GROUP_EXTENSION_NAME
   #:VK_EXT_VALIDATION_FLAGS_EXTENSION_NAME
   #:VK_NN_VI_SURFACE_EXTENSION_NAME
   #:VK_KHR_SHADER_DRAW_PARAMETERS_EXTENSION_NAME
   #:VK_EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME
   #:VK_EXT_SHADER_SUBGROUP_VOTE_EXTENSION_NAME
   #:VK_ARM_EXTENSION_01_EXTENSION_NAME
   #:VK_ARM_EXTENSION_02_EXTENSION_NAME
   #:VK_IMG_EXTENSION_69_EXTENSION_NAME
   #:VK_KHR_MAINTENANCE1_EXTENSION_NAME
   #:VK_KHX_DEVICE_GROUP_CREATION_EXTENSION_NAME
   #:VK_KHX_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME
   #:VK_KHX_EXTERNAL_MEMORY_EXTENSION_NAME
   #:VK_KHX_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME
   #:VK_KHX_EXTERNAL_MEMORY_FD_EXTENSION_NAME
   #:VK_KHX_WIN32_KEYED_MUTEX_EXTENSION_NAME
   #:VK_KHX_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME
   #:VK_KHX_EXTERNAL_SEMAPHORE_EXTENSION_NAME
   #:VK_KHX_EXTERNAL_SEMAPHORE_WIN32_EXTENSION_NAME
   #:VK_KHX_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME
   #:VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME
   #:VK_KHR_EXTENSION_82_EXTENSION_NAME
   #:VK_KHR_EXTENSION_83_EXTENSION_NAME
   #:VK_KHR_EXTENSION_84_EXTENSION_NAME
   #:VK_KHR_INCREMENTAL_PRESENT_EXTENSION_NAME
   #:VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME
   #:VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME
   #:VK_NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME
   #:VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME
   #:VK_EXT_ACQUIRE_XLIB_DISPLAY_EXTENSION_NAME
   #:VK_EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME
   #:VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME
   #:VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME
   #:VK_KHR_EXTENSION_94_EXTENSION_NAME
   #:VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME
   #:VK_NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME
   #:VK_NV_VIEWPORT_ARRAY2_EXTENSION_NAME
   #:VK_NVX_MULTIVIEW_PER_VIEW_ATTRIBUTES_EXTENSION_NAME
   #:VK_NV_VIEWPORT_SWIZZLE_EXTENSION_NAME
   #:VK_EXT_DISCARD_RECTANGLES_EXTENSION_NAME
   #:VK_NV_EXTENSION_101_EXTENSION_NAME
   #:VK_NV_EXTENSION_102_EXTENSION_NAME
   #:VK_NV_EXTENSION_103_EXTENSION_NAME
   #:VK_NV_EXTENSION_104_EXTENSION_NAME
   #:VK_EXT_SWAPCHAIN_COLORSPACE_EXTENSION_NAME
   #:VK_EXT_HDR_METADATA_EXTENSION_NAME
   #:VK_IMG_EXTENSION_107_EXTENSION_NAME
   #:VK_IMG_EXTENSION_108_EXTENSION_NAME
   #:VK_IMG_EXTENSION_109_EXTENSION_NAME
   #:VK_IMG_EXTENSION_110_EXTENSION_NAME
   #:VK_IMG_EXTENSION_111_EXTENSION_NAME
   #:VK_KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME
   #:VK_KHR_EXTENSION_113_EXTENSION_NAME
   #:VK_KHR_EXTENSION_114_EXTENSION_NAME
   #:VK_KHR_EXTENSION_115_EXTENSION_NAME
   #:VK_KHR_EXTENSION_116_EXTENSION_NAME
   #:VK_KHR_EXTENSION_117_EXTENSION_NAME
   #:VK_KHR_EXTENSION_118_EXTENSION_NAME
   #:VK_KHR_EXTENSION_119_EXTENSION_NAME
   #:VK_KHR_GET_SURFACE_CAPABILITIES2_EXTENSION_NAME
   #:VK_KHR_VARIABLE_POINTERS_EXTENSION_NAME
   #:VK_KHR_EXTENSION_122_EXTENSION_NAME
   #:VK_MVK_IOS_SURFACE_EXTENSION_NAME
   #:VK_MVK_MACOS_SURFACE_EXTENSION_NAME
   #:VK_MVK_MOLTENVK_EXTENSION_NAME
   #:VK_MESA_EXTENSION_126_EXTENSION_NAME
   #:VK_MESA_EXTENSION_127_EXTENSION_NAME
   #:VK_KHR_EXTENSION_128_EXTENSION_NAME
   #:VK_EXT_EXTENSION_129_EXTENSION_NAME
   #:VK_KHR_EXTENSION_130_EXTENSION_NAME
   #:VK_KHR_EXTENSION_131_EXTENSION_NAME
   #:VK_KHR_EXTENSION_132_EXTENSION_NAME
   #:VK_AMD_EXTENSION_133_EXTENSION_NAME
   #:VK_AMD_EXTENSION_134_EXTENSION_NAME
   #:VK_AMD_EXTENSION_135_EXTENSION_NAME
   #:VK_AMD_EXTENSION_136_EXTENSION_NAME
   #:VK_AMD_EXTENSION_137_EXTENSION_NAME
   #:VK_AMD_EXTENSION_138_EXTENSION_NAME
   #:VK_AMD_EXTENSION_139_EXTENSION_NAME
   #:VK_AMD_EXTENSION_140_EXTENSION_NAME
   #:VK_AMD_EXTENSION_141_EXTENSION_NAME
   #:VK_AMD_EXTENSION_142_EXTENSION_NAME
   #:VK_AMD_EXTENSION_143_EXTENSION_NAME
   #:VK_AMD_EXTENSION_144_EXTENSION_NAME
   #:VK_KHR_RELAXED_BLOCK_LAYOUT_EXTENSION_NAME
   #:VK_KHR_EXTENSION_146_EXTENSION_NAME
   #:VK_KHR_EXTENSION_147_EXTENSION_NAME
   #:VK_EXT_EXTENSION_148_EXTENSION_NAME
   #:VK_NV_EXTENSION_149_EXTENSION_NAME
   #:VK_NV_EXTENSION_150_EXTENSION_NAME
   #:VK_NV_EXTENSION_151_EXTENSION_NAME
   #:VK_NV_EXTENSION_152_EXTENSION_NAME
   #:VK_NV_EXTENSION_153_EXTENSION_NAME
   #:VK_NV_EXTENSION_154_EXTENSION_NAME
   #:VK_NV_EXTENSION_155_EXTENSION_NAME
   #:VK_NV_EXTENSION_156_EXTENSION_NAME
   #:VK_KHR_EXTENSION_157_EXTENSION_NAME
   #:VK_KHR_EXTENSION_158_EXTENSION_NAME
   #:VK_EXT_EXTENSION_159_EXTENSION_NAME))
