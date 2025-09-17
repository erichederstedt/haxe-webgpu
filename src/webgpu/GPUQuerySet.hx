package webgpu;

import webgpu.WebgpuTypeDefs;

extern class GPUQuerySet extends GPUObjectBase {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUQuerySet;

	var type(default, null):GPUQueryType;
	var count(default, null):GPUSize32Out;

	/**
	 * Destroys the {@link GPUQuerySet}.
	 */
	function destroy():{};
}
