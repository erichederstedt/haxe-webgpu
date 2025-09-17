package webgpu;

extern interface GPUBufferUsage {
	var MAP_READ(default, null):GPUFlagsConstant;
	var MAP_WRITE(default, null):GPUFlagsConstant;
	var COPY_SRC(default, null):GPUFlagsConstant;
	var COPY_DST(default, null):GPUFlagsConstant;
	var INDEX(default, null):GPUFlagsConstant;
	var VERTEX(default, null):GPUFlagsConstant;
	var UNIFORM(default, null):GPUFlagsConstant;
	var STORAGE(default, null):GPUFlagsConstant;
	var INDIRECT(default, null):GPUFlagsConstant;
	var QUERY_RESOLVE(default, null):GPUFlagsConstant;
}
