package webgpu;

extern interface GPUDevice extends EventTarget extends GPUObjectBase {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):"GPUDevice";

	var features(default, null):GPUSupportedFeatures;
	var limits(default, null):GPUSupportedLimits;
	var adapterInfo(default, null):GPUAdapterInfo;
	var queue(default, null):GPUQueue;

	/**
	 * A slot-backed attribute holding a promise which is created with the device, remains
	 * pending for the lifetime of the device, then resolves when the device is lost.
	 * Upon initialization, it is set to a new promise.
	 */
	var lost(default, null):Promise<GPUDeviceLostInfo>;

	var onuncapturederror:EventHandler;

	function addEventListener<K:keyof, __GPUDeviceEventMap:Dynamic>(type:K, listener:GPUDevice -> Array<__GPUDeviceEventMap> ->):Dynamic;
		/**
		 * Destroys the device, preventing further operations on it.
		 * Outstanding asynchronous operations will fail.
		 * Note: It is valid to destroy a device multiple times.
		 * Note: Since no further operations can be enqueued on this device, implementations can abort
		 * outstanding asynchronous operations immediately and free resource allocations, including
		 * mapped memory that was just unmapped.
		 */
		function destroy() : {};
		/**
		 * Creates a {@link GPUBuffer}.
		 * @link GPUBuffer} to create.
		 */
		function createBuffer(descriptor : GPUBufferDescriptor) : GPUBuffer;
		/**
		 * Creates a {@link GPUTexture}.
		 * @link GPUTexture} to create.
		 */
		function createTexture(descriptor : GPUTextureDescriptor) : GPUTexture;
		/**
		 * Creates a {@link GPUSampler}.
		 * @link GPUSampler} to create.
		 */
		function createSampler(?descriptor : GPUSamplerDescriptor) : GPUSampler;
		/**
		 * Creates a {@link GPUExternalTexture} wrapping the provided image source.
		 */
		function importExternalTexture(descriptor : GPUExternalTextureDescriptor) : GPUExternalTexture;
		/**
		 * Creates a {@link GPUBindGroupLayout}.
		 * @link GPUBindGroupLayout} to create.
		 */
		function createBindGroupLayout(descriptor : GPUBindGroupLayoutDescriptor) : GPUBindGroupLayout;
		/**
		 * Creates a {@link GPUPipelineLayout}.
		 * @link GPUPipelineLayout} to create.
		 */
		function createPipelineLayout(descriptor : GPUPipelineLayoutDescriptor) : GPUPipelineLayout;
		/**
		 * Creates a {@link GPUBindGroup}.
		 * @link GPUBindGroup} to create.
		 */
		function createBindGroup(descriptor : GPUBindGroupDescriptor) : GPUBindGroup;
		/**
		 * Creates a {@link GPUShaderModule}.
		 * @link GPUShaderModule} to create.
		 */
		function createShaderModule(descriptor : GPUShaderModuleDescriptor) : GPUShaderModule;
		/**
		 * Creates a {@link GPUComputePipeline} using immediate pipeline creation.
		 * @link GPUComputePipeline} to create.
		 */
		function createComputePipeline(descriptor : GPUComputePipelineDescriptor) : GPUComputePipeline;
		/**
		 * Creates a {@link GPURenderPipeline} using immediate pipeline creation.
		 * @link GPURenderPipeline} to create.
		 */
		function createRenderPipeline(descriptor : GPURenderPipelineDescriptor) : GPURenderPipeline;
		/**
		 * Creates a {@link GPUComputePipeline} using async pipeline creation.
		 * The returned Promise resolves when the created pipeline
		 * is ready to be used without additional delay.
		 * If pipeline creation fails, the returned Promise rejects with an {@link GPUPipelineError}.
		 * (A {@link GPUError} is not dispatched to the device.)
		 * Note: Use of this method is preferred whenever possible, as it prevents blocking the
		 * queue timeline work on pipeline compilation.
		 * @link GPUComputePipeline} to create.
		 */
		function createComputePipelineAsync(descriptor : GPUComputePipelineDescriptor) : Promise<GPUComputePipeline>;
		/**
		 * Creates a {@link GPURenderPipeline} using async pipeline creation.
		 * The returned Promise resolves when the created pipeline
		 * is ready to be used without additional delay.
		 * If pipeline creation fails, the returned Promise rejects with an {@link GPUPipelineError}.
		 * (A {@link GPUError} is not dispatched to the device.)
		 * Note: Use of this method is preferred whenever possible, as it prevents blocking the
		 * queue timeline work on pipeline compilation.
		 * @link GPURenderPipeline} to create.
		 */
		function createRenderPipelineAsync(descriptor : GPURenderPipelineDescriptor) : Promise<GPURenderPipeline>;
		/**
		 * Creates a {@link GPUCommandEncoder}.
		 * @link GPUCommandEncoder} to create.
		 */
		function createCommandEncoder(?descriptor : GPUCommandEncoderDescriptor) : GPUCommandEncoder;
		/**
		 * Creates a {@link GPURenderBundleEncoder}.
		 * @link GPURenderBundleEncoder} to create.
		 */
		function createRenderBundleEncoder(descriptor : GPURenderBundleEncoderDescriptor) : GPURenderBundleEncoder;
		/**
		 * Creates a {@link GPUQuerySet}.
		 * @link GPUQuerySet} to create.
		 */
		function createQuerySet(descriptor : GPUQuerySetDescriptor) : GPUQuerySet;
		/**
		 * Pushes a new GPU error scope onto the {@link GPUDevice}.`[[errorScopeStack]]` for `this`.
		 */
		function pushErrorScope(filter : GPUErrorFilter) : {};
		/**
		 * Pops a GPU error scope off the {@link GPUDevice}.`[[errorScopeStack]]` for `this`
		 * and resolves to **any** {@link GPUError} observed by the error scope, or `null` if none.
		 * There is no guarantee of the ordering of promise resolution.
		 */
		function popErrorScope() : Promise<GPUError>;
	}
