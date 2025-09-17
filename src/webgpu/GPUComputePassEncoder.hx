package webgpu;

extern interface GPUComputePassEncoder extends GPUObjectBase extends GPUCommandsMixin extends GPUDebugCommandsMixin extends GPUBindingCommandsMixin {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUComputePassEncoder";

	/**
	 * Sets the current {@link GPUComputePipeline}.
	 */
	function setPipeline(pipeline:GPUComputePipeline):{};

	/**
	 * Dispatch work to be performed with the current {@link GPUComputePipeline}.
	 * See {@link https://www.w3.org/TR/webgpu/#computing-operations} for the detailed specification.
	 */
	function dispatchWorkgroups(workgroupCountX:GPUSize32, ?workgroupCountY:GPUSize32, ?workgroupCountZ:GPUSize32):{};

	/**
	 * Dispatch work to be performed with the current {@link GPUComputePipeline} using parameters read
	 * from a {@link GPUBuffer}.
	 * See {@link https://www.w3.org/TR/webgpu/#computing-operations} for the detailed specification.
	 * packed block of **three 32-bit unsigned integer values (12 bytes total)**,
	 * given in the same order as the arguments for {@link GPUComputePassEncoder#dispatchWorkgroups}.
	 * For example:
	 */
	function dispatchWorkgroupsIndirect(indirectBuffer:GPUBuffer, indirectOffset:GPUSize64):{};

	/**
	 * Completes recording of the compute pass commands sequence.
	 */
	function end():{};
}
