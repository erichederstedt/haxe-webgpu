package webgpu;

extern class GPUSupportedLimits {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUSupportedLimits;

	var maxTextureDimension1D(default, null):Float;
	var maxTextureDimension2D(default, null):Float;
	var maxTextureDimension3D(default, null):Float;
	var maxTextureArrayLayers(default, null):Float;
	var maxBindGroups(default, null):Float;
	var maxBindGroupsPlusVertexBuffers(default, null):Float;
	var maxBindingsPerBindGroup(default, null):Float;
	var maxDynamicUniformBuffersPerPipelineLayout(default, null):Float;
	var maxDynamicStorageBuffersPerPipelineLayout(default, null):Float;
	var maxSampledTexturesPerShaderStage(default, null):Float;
	var maxSamplersPerShaderStage(default, null):Float;
	var maxStorageBuffersPerShaderStage(default, null):Float;
	var maxStorageTexturesPerShaderStage(default, null):Float;
	var maxUniformBuffersPerShaderStage(default, null):Float;
	var maxUniformBufferBindingSize(default, null):Float;
	var maxStorageBufferBindingSize(default, null):Float;
	var minUniformBufferOffsetAlignment(default, null):Float;
	var minStorageBufferOffsetAlignment(default, null):Float;
	var maxVertexBuffers(default, null):Float;
	var maxBufferSize(default, null):Float;
	var maxVertexAttributes(default, null):Float;
	var maxVertexBufferArrayStride(default, null):Float;
	var maxInterStageShaderVariables(default, null):Float;
	var maxColorAttachments(default, null):Float;
	var maxColorAttachmentBytesPerSample(default, null):Float;
	var maxComputeWorkgroupStorageSize(default, null):Float;
	var maxComputeInvocationsPerWorkgroup(default, null):Float;
	var maxComputeWorkgroupSizeX(default, null):Float;
	var maxComputeWorkgroupSizeY(default, null):Float;
	var maxComputeWorkgroupSizeZ(default, null):Float;
	var maxComputeWorkgroupsPerDimension(default, null):Float;
}
