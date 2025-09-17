package webgpu;

extern interface GPUTextureUsage {
	var COPY_SRC(default, null):GPUFlagsConstant;
	var COPY_DST(default, null):GPUFlagsConstant;
	var TEXTURE_BINDING(default, null):GPUFlagsConstant;
	var STORAGE_BINDING(default, null):GPUFlagsConstant;
	var RENDER_ATTACHMENT(default, null):GPUFlagsConstant;
}
