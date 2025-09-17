package webgpu;

extern interface GPUQueue extends GPUObjectBase {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUQueue";

	/**
	 * Schedules the execution of the command buffers by the GPU on this queue.
	 * Submitted command buffers cannot be used again.
	 * 	`commandBuffers`:
	 */
	function submit(commandBuffers:Iterable<GPUCommandBuffer>):{};

	function onSubmittedWorkDone():Promise<{}>;

	/**
	 * Issues a write operation of the provided data into a {@link GPUBuffer}.
	 */
	function writeBuffer(buffer:GPUBuffer, bufferOffset:GPUSize64, data:GPUAllowSharedBufferSource, ?dataOffset:GPUSize64, ?size:GPUSize64):{};

	/**
	 * Issues a write operation of the provided data into a {@link GPUTexture}.
	 */
	function writeTexture(destination:GPUTexelCopyTextureInfo, data:GPUAllowSharedBufferSource, dataLayout:GPUTexelCopyBufferLayout, size:GPUExtent3DStrict):{};

	/**
	 * Issues a copy operation of the contents of a platform image/canvas
	 * into the destination texture.
	 * This operation performs {@link https://www.w3.org/TR/webgpu/#color-space-conversions | color encoding} into the destination
	 * encoding according to the parameters of {@link GPUCopyExternalImageDestInfo}.
	 * Copying into a `-srgb` texture results in the same texture bytes, not the same decoded
	 * values, as copying into the corresponding non-`-srgb` format.
	 * Thus, after a copy operation, sampling the destination texture has
	 * different results depending on whether its format is `-srgb`, all else unchanged.
	 * <!-- POSTV1(srgb-linear): If added, explain here how it interacts. -->
	 */
	function copyExternalImageToTexture(source:GPUCopyExternalImageSourceInfo, destination:GPUCopyExternalImageDestInfo, copySize:GPUExtent3DStrict):{};
}
