package webgpu;

extern interface GPUExtent3DDictStrict extends GPUExtent3DDict {
	/**
	 * @deprecated The correct name is `depthOrArrayLayers`. 
	 */
	@:optional var depth:{};
}
