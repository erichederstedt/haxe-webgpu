package webgpu;

extern interface GPUBuffer extends GPUObjectBase {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUBuffer";

	var size(default, null):GPUSize64Out;
	var usage(default, null):GPUFlagsConstant;
	var mapState(default, null):GPUBufferMapState;

	/**
	 * Maps the given range of the {@link GPUBuffer} and resolves the returned Promise when the
	 * {@link GPUBuffer}'s content is ready to be accessed with {@link GPUBuffer#getMappedRange}.
	 * The resolution of the returned Promise **only** indicates that the buffer has been mapped.
	 * It does not guarantee the completion of any other operations visible to the content timeline,
	 * and in particular does not imply that any other Promise returned from
	 * {@link GPUQueue#onSubmittedWorkDone()} or {@link GPUBuffer#mapAsync} on other {@link GPUBuffer}s
	 * have resolved.
	 * The resolution of the Promise returned from {@link GPUQueue#onSubmittedWorkDone}
	 * **does** imply the completion of
	 * {@link GPUBuffer#mapAsync} calls made prior to that call,
	 * on {@link GPUBuffer}s last used exclusively on that queue.
	 */
	function mapAsync(mode:GPUMapModeFlags, ?offset:GPUSize64, ?size:GPUSize64):Promise<{}>;

	/**
	 * Returns an ArrayBuffer with the contents of the {@link GPUBuffer} in the given mapped range.
	 */
	function getMappedRange(?offset:GPUSize64, ?size:GPUSize64):ArrayBuffer;

	/**
	 * Unmaps the mapped range of the {@link GPUBuffer} and makes its contents available for use by the
	 * GPU again.
	 */
	function unmap():{};

	/**
	 * Destroys the {@link GPUBuffer}.
	 * Note: It is valid to destroy a buffer multiple times.
	 * Note: Since no further operations can be enqueued using this buffer, implementations can
	 * free resource allocations, including mapped memory that was just unmapped.
	 */
	function destroy():{};
}
