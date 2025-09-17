package webgpu;

extern class GPUTexelCopyBufferInfo extends GPUTexelCopyBufferLayout {
	/**
	 * A buffer which either contains texel data to be copied or will store the texel data being
	 * copied, depending on the method it is being passed to.
	 */
	var buffer:GPUBuffer;
}
