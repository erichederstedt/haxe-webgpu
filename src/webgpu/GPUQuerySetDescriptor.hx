package webgpu;

import webgpu.WebgpuTypeDefs;

extern class GPUQuerySetDescriptor extends GPUObjectDescriptorBase {
	/**
	 * The type of queries managed by {@link GPUQuerySet}.
	 */
	var type:GPUQueryType;

	/**
	 * The number of queries managed by {@link GPUQuerySet}.
	 */
	var count:GPUSize32;
}
