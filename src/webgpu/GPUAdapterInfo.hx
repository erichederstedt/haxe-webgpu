package webgpu;

extern interface GPUAdapterInfo {
	/**
	 * @internal Workaround for [nominal typing](https://github.com/microsoft/TypeScript/pull/33038). 
	 */
	var __brand(default, null):GPUAdapterInfo;

	var vendor(default, null):String;
	var architecture(default, null):String;
	var device(default, null):String;
	var description(default, null):String;
	var subgroupMinSize(default, null):Float;
	var subgroupMaxSize(default, null):Float;
	var isFallbackAdapter(default, null):Bool;
}
