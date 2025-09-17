package webgpu;

import webgpu.WebgpuTypeDefs;

extern interface GPURequestAdapterOptions {
	/**
	 * "Feature level" for the adapter request.
	 * The allowed <dfn dfn for="">feature level string</dfn> values are:
	 * <dl dfn-type=dfn dfn-for="feature level string">
	 * : <dfn noexport>"core"</dfn>
	 * No effect.
	 * : <dfn noexport>"compatibility"</dfn>
	 * No effect.
	 * Note:
	 * This value is reserved for future use as a way to opt into additional validation restrictions.
	 * Applications should not use this value at this time.
	 */
	@:optional var featureLevel:String;

	@:optional var powerPreference:GPUPowerPreference;
	@:optional var forceFallbackAdapter:Bool;
	@:optional var xrCompatible:Bool;
}
