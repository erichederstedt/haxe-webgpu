package webgpu;

extern interface GPUBindingCommandsMixin {
	/**
	 * Sets the current {@link GPUBindGroup} for the given index.
	 */
	function setBindGroup(index:GPUIndex32, bindGroup:haxe.extern.EitherType<, haxe.extern.EitherType<GPUBindGroup, {}>>,
		?dynamicOffsets:Iterable<GPUBufferDynamicOffset>):{};

	/**
	 * Sets the current {@link GPUBindGroup} for the given index.
	 */
	function setBindGroup(index:GPUIndex32, bindGroup:haxe.extern.EitherType<, haxe.extern.EitherType<GPUBindGroup, {}>>, dynamicOffsetsData:Uint32Array,
		dynamicOffsetsDataStart:GPUSize64, dynamicOffsetsDataLength:GPUSize32):{};
}
