package webgpu;

extern interface GPUShaderStage {
	var VERTEX(default, null):GPUFlagsConstant;
	var FRAGMENT(default, null):GPUFlagsConstant;
	var COMPUTE(default, null):GPUFlagsConstant;
}
