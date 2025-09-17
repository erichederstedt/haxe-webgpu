package webgpu;

import webgpu.WebgpuTypeDefs;

extern class GPURenderPassLayout extends GPUObjectDescriptorBase {
	/**
	 * A list of the {@link GPUTextureFormat}s of the color attachments for this pass or bundle.
	 */
	var colorFormats:haxe.extern.EitherType<Iterable<GPUTextureFormat>, haxe.extern.EitherType<GPUTextureFormat, Dynamic>>;
}
