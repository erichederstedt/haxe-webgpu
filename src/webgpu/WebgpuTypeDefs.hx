package webgpu;

// haxe.extern.EitherType
import js.html.ImageBitmap;
import js.html.ImageData;
import js.html.ImageElement;
import js.lib.BufferSource;
import js.lib.SharedArrayBuffer;

typedef EventHandler<T> = T->Void;
extern class VideoFrame {}

// Under this is a collection of typedefs skipped by the index.d.ts file.

typedef GPUCommandBufferDescriptor = GPUObjectDescriptorBase;
typedef GPUCommandEncoderDescriptor = GPUObjectDescriptorBase;
typedef GPUAllowSharedBufferSource = haxe.extern.EitherType<BufferSource, SharedArrayBuffer>;

/** @deprecated Use {@link GPUTexelCopyBufferLayout} */
typedef GPUImageDataLayout = GPUTexelCopyBufferLayout;

/** @deprecated Use {@link GPUTexelCopyBufferInfo} */
typedef GPUImageCopyBuffer = GPUTexelCopyBufferInfo;

/** @deprecated Use {@link GPUTexelCopyTextureInfo} */
typedef GPUImageCopyTexture = GPUTexelCopyTextureInfo;

/** @deprecated Use {@link GPUCopyExternalImageDestInfo} */
typedef GPUImageCopyTextureTagged = GPUCopyExternalImageDestInfo;

/** @deprecated Use {@link GPUCopyExternalImageSourceInfo} */
typedef GPUImageCopyExternalImage = GPUCopyExternalImageSourceInfo;

/** @deprecated Use {@link GPUCopyExternalImageSource} */
typedef GPUImageCopyExternalImageSource = GPUCopyExternalImageSource;

typedef GPUBindingResource = haxe.extern.EitherType<GPUSampler,
	haxe.extern.EitherType<GPUTexture,
		haxe.extern.EitherType<GPUTextureView, haxe.extern.EitherType<GPUBuffer, haxe.extern.EitherType<GPUBufferBinding, GPUExternalTexture>>>>>;

typedef GPUBufferDynamicOffset = Int;
typedef GPUBufferUsageFlags = Int;
typedef GPUColor = haxe.extern.EitherType<Iterable<Int>, GPUColorDict>;
typedef GPUColorWriteFlags = Int;

typedef GPUCopyExternalImageSource = haxe.extern.EitherType<ImageBitmap,
	haxe.extern.EitherType<ImageData,
		haxe.extern.EitherType<ImageElement,
			haxe.extern.EitherType<HTMLVideoElement, haxe.extern.EitherType<VideoFrame, haxe.extern.EitherType<HTMLCanvasElement, OffscreenCanvas>>>>>>;

typedef GPUDepthBias = Int;
typedef GPUExtent3D = haxe.extern.EitherType<Iterable<GPUIntegerCoordinate>, GPUExtent3DDict>;
typedef GPUFlagsConstant = Int;
typedef GPUIndex32 = Int;
typedef GPUIntegerCoordinate = Int;
typedef GPUIntegerCoordinateOut = Int;
typedef GPUMapModeFlags = Int;
typedef GPUOrigin2D = haxe.extern.EitherType<Iterable<GPUIntegerCoordinate>, GPUOrigin2DDict>;
typedef GPUOrigin3D = haxe.extern.EitherType<Iterable<GPUIntegerCoordinate>, GPUOrigin3DDict>;
typedef WGSLLanguageFeatures = Array<String>;
typedef GPUSupportedFeatures = Array<String>;
typedef GPUPipelineConstantValue = Int;
typedef GPUSampleMask = Int;
typedef GPUShaderStageFlags = Int;
typedef GPUSignedOffset32 = Int;
typedef GPUSize32 = Int;
typedef GPUSize32Out = Int;
typedef GPUSize64 = Int;
typedef GPUSize64Out = Int;
typedef GPUStencilValue = Int;
typedef GPUTextureUsageFlags = Int;

enum abstract GPUAddressMode(String) {
	var clamp_to_edge = "clamp-to-edge";
	var repeat = "repeat";
	var mirror_repeat = "mirror-repeat";
}

final GPUAutoLayoutMode = "auto";

enum abstract GPUBlendFactor(String) {
	var zero = "zero";
	var one = "one";
	var src = "src";
	var one_minus_src = "one-minus-src";
	var src_alpha = "src-alpha";
	var one_minus_src_alpha = "one-minus-src-alpha";
	var dst = "dst";
	var one_minus_dst = "one-minus-dst";
	var dst_alpha = "dst-alpha";
	var one_minus_dst_alpha = "one-minus-dst-alpha";
	var src_alpha_saturated = "src-alpha-saturated";
	var constant = "constant";
	var one_minus_constant = "one-minus-constant";
	var src1 = "src1";
	var one_minus_src1 = "one-minus-src1";
	var src1_alpha = "src1-alpha";
	var one_minus_src1_alpha = "one-minus-src1-alpha";
}

enum abstract GPUBlendOperation(String) {
	var add = "add";
	var subtract = "subtract";
	var reverse_subtract = "reverse-subtract";
	var min = "min";
	var max = "max";
}

enum abstract GPUBufferBindingType(String) {
	var uniform = "uniform";
	var storage = "storage";
	var read_only_storage = "read-only-storage";
}

enum abstract GPUBufferMapState(String) {
	var unmapped = "unmapped";
	var pending = "pending";
	var mapped = "mapped";
}

enum abstract GPUCanvasAlphaMode(String) {
	var opaque = "opaque";
	var premultiplied = "premultiplied";
}

enum abstract GPUCanvasToneMappingMode(String) {
	var standard = "standard";
	var extended = "extended";
}

enum abstract GPUCompareFunction(String) {
	var never = "never";
	var less = "less";
	var equal = "equal";
	var less_equal = "less-equal";
	var greater = "greater";
	var not_equal = "not-equal";
	var greater_equal = "greater-equal";
	var always = "always";
}

enum abstract GPUCompilationMessageType(String) {
	var error = "error";
	var warning = "warning";
	var info = "info";
}

enum abstract GPUCullMode(String) {
	var none = "none";
	var front = "front";
	var back = "back";
}

enum abstract GPUDeviceLostReason(String) {
	var unknown = "unknown";
	var destroyed = "destroyed";
}

enum abstract GPUErrorFilter(String) {
	var validation = "validation";
	var out_of_memory = "out-of-memory";
	var internal = "internal";
}

enum abstract GPUFeatureName(String) {
	var core_features_and_limits = "core-features-and-limits";
	var depth_clip_control = "depth-clip-control";
	var depth32float_stencil8 = "depth32float-stencil8";
	var texture_compression_bc = "texture-compression-bc";
	var texture_compression_bc_sliced_3d = "texture-compression-bc-sliced-3d";
	var texture_compression_etc2 = "texture-compression-etc2";
	var texture_compression_astc = "texture-compression-astc";
	var texture_compression_astc_sliced_3d = "texture-compression-astc-sliced-3d";
	var timestamp_query = "timestamp-query";
	var indirect_first_instance = "indirect-first-instance";
	var shader_f16 = "shader-f16";
	var rg11b10ufloat_renderable = "rg11b10ufloat-renderable";
	var bgra8unorm_storage = "bgra8unorm-storage";
	var float32_filterable = "float32-filterable";
	var float32_blendable = "float32-blendable";
	var clip_distances = "clip-distances";
	var dual_source_blending = "dual-source-blending";
	var subgroups = "subgroups";
	var texture_formats_tier1 = "texture-formats-tier1";
	var texture_formats_tier2 = "texture-formats-tier2";
	var primitive_index = "primitive-index";
}

enum abstract GPUFilterMode(String) {
	var nearest = "nearest";
	var linear = "linear";
}

enum abstract GPUFrontFace(String) {
	var ccw = "ccw";
	var cw = "cw";
}

enum abstract GPUIndexFormat(String) {
	var uint16 = "uint16";
	var uint32 = "uint32";
}

enum abstract GPULoadOp(String) {
	var load = "load";
	var clear = "clear";
}

enum abstract GPUMipmapFilterMode(String) {
	var nearest = "nearest";
	var linear = "linear";
}

enum abstract GPUPipelineErrorReason(String) {
	var validation = "validation";
	var internal = "internal";
}

enum abstract GPUPowerPreference(String) {
	var low_power = "low-power";
	var high_performance = "high-performance";
}

enum abstract GPUPrimitiveTopology(String) {
	var point_list = "point-list";
	var line_list = "line-list";
	var line_strip = "line-strip";
	var triangle_list = "triangle-list";
	var triangle_strip = "triangle-strip";
}

enum abstract GPUQueryType(String) {
	var occlusion = "occlusion";
	var timestamp = "timestamp";
}

enum abstract GPUSamplerBindingType(String) {
	var filtering = "filtering";
	var non_filtering = "non-filtering";
	var comparison = "comparison";
}

enum abstract GPUStencilOperation(String) {
	var keep = "keep";
	var zero = "zero";
	var replace = "replace";
	var invert = "invert";
	var increment_clamp = "increment-clamp";
	var decrement_clamp = "decrement-clamp";
	var increment_wrap = "increment-wrap";
	var decrement_wrap = "decrement-wrap";
}

enum abstract GPUStorageTextureAccess(String) {
	var write_only = "write-only";
	var read_only = "read-only";
	var read_write = "read-write";
}

enum abstract GPUStoreOp(String) {
	var store = "store";
	var discard = "discard";
}

enum abstract GPUTextureAspect(String) {
	var all = "all";
	var stencil_only = "stencil-only";
	var depth_only = "depth-only";
}

enum abstract GPUTextureDimension(String) {
	var _1d = "1d";
	var _2d = "2d";
	var _3d = "3d";
}

enum abstract GPUTextureFormat(String) {
	var r8unorm = "r8unorm";
	var r8snorm = "r8snorm";
	var r8uint = "r8uint";
	var r8sint = "r8sint";
	var r16unorm = "r16unorm";
	var r16snorm = "r16snorm";
	var r16uint = "r16uint";
	var r16sint = "r16sint";
	var r16float = "r16float";
	var rg8unorm = "rg8unorm";
	var rg8snorm = "rg8snorm";
	var rg8uint = "rg8uint";
	var rg8sint = "rg8sint";
	var r32uint = "r32uint";
	var r32sint = "r32sint";
	var r32float = "r32float";
	var rg16unorm = "rg16unorm";
	var rg16snorm = "rg16snorm";
	var rg16uint = "rg16uint";
	var rg16sint = "rg16sint";
	var rg16float = "rg16float";
	var rgba8unorm = "rgba8unorm";
	var rgba8unorm_srgb = "rgba8unorm-srgb";
	var rgba8snorm = "rgba8snorm";
	var rgba8uint = "rgba8uint";
	var rgba8sint = "rgba8sint";
	var bgra8unorm = "bgra8unorm";
	var bgra8unorm_srgb = "bgra8unorm-srgb";
	var rgb9e5ufloat = "rgb9e5ufloat";
	var rgb10a2uint = "rgb10a2uint";
	var rgb10a2unorm = "rgb10a2unorm";
	var rg11b10ufloat = "rg11b10ufloat";
	var rg32uint = "rg32uint";
	var rg32sint = "rg32sint";
	var rg32float = "rg32float";
	var rgba16unorm = "rgba16unorm";
	var rgba16snorm = "rgba16snorm";
	var rgba16uint = "rgba16uint";
	var rgba16sint = "rgba16sint";
	var rgba16float = "rgba16float";
	var rgba32uint = "rgba32uint";
	var rgba32sint = "rgba32sint";
	var rgba32float = "rgba32float";
	var stencil8 = "stencil8";
	var depth16unorm = "depth16unorm";
	var depth24plus = "depth24plus";
	var depth24plus_stencil8 = "depth24plus-stencil8";
	var depth32float = "depth32float";
	var depth32float_stencil8 = "depth32float-stencil8";
	var bc1_rgba_unorm = "bc1-rgba-unorm";
	var bc1_rgba_unorm_srgb = "bc1-rgba-unorm-srgb";
	var bc2_rgba_unorm = "bc2-rgba-unorm";
	var bc2_rgba_unorm_srgb = "bc2-rgba-unorm-srgb";
	var bc3_rgba_unorm = "bc3-rgba-unorm";
	var bc3_rgba_unorm_srgb = "bc3-rgba-unorm-srgb";
	var bc4_r_unorm = "bc4-r-unorm";
	var bc4_r_snorm = "bc4-r-snorm";
	var bc5_rg_unorm = "bc5-rg-unorm";
	var bc5_rg_snorm = "bc5-rg-snorm";
	var bc6h_rgb_ufloat = "bc6h-rgb-ufloat";
	var bc6h_rgb_float = "bc6h-rgb-float";
	var bc7_rgba_unorm = "bc7-rgba-unorm";
	var bc7_rgba_unorm_srgb = "bc7-rgba-unorm-srgb";
	var etc2_rgb8unorm = "etc2-rgb8unorm";
	var etc2_rgb8unorm_srgb = "etc2-rgb8unorm-srgb";
	var etc2_rgb8a1unorm = "etc2-rgb8a1unorm";
	var etc2_rgb8a1unorm_srgb = "etc2-rgb8a1unorm-srgb";
	var etc2_rgba8unorm = "etc2-rgba8unorm";
	var etc2_rgba8unorm_srgb = "etc2-rgba8unorm-srgb";
	var eac_r11unorm = "eac-r11unorm";
	var eac_r11snorm = "eac-r11snorm";
	var eac_rg11unorm = "eac-rg11unorm";
	var eac_rg11snorm = "eac-rg11snorm";
	var astc_4x4_unorm = "astc-4x4-unorm";
	var astc_4x4_unorm_srgb = "astc-4x4-unorm-srgb";
	var astc_5x4_unorm = "astc-5x4-unorm";
	var astc_5x4_unorm_srgb = "astc-5x4-unorm-srgb";
	var astc_5x5_unorm = "astc-5x5-unorm";
	var astc_5x5_unorm_srgb = "astc-5x5-unorm-srgb";
	var astc_6x5_unorm = "astc-6x5-unorm";
	var astc_6x5_unorm_srgb = "astc-6x5-unorm-srgb";
	var astc_6x6_unorm = "astc-6x6-unorm";
	var astc_6x6_unorm_srgb = "astc-6x6-unorm-srgb";
	var astc_8x5_unorm = "astc-8x5-unorm";
	var astc_8x5_unorm_srgb = "astc-8x5-unorm-srgb";
	var astc_8x6_unorm = "astc-8x6-unorm";
	var astc_8x6_unorm_srgb = "astc-8x6-unorm-srgb";
	var astc_8x8_unorm = "astc-8x8-unorm";
	var astc_8x8_unorm_srgb = "astc-8x8-unorm-srgb";
	var astc_10x5_unorm = "astc-10x5-unorm";
	var astc_10x5_unorm_srgb = "astc-10x5-unorm-srgb";
	var astc_10x6_unorm = "astc-10x6-unorm";
	var astc_10x6_unorm_srgb = "astc-10x6-unorm-srgb";
	var astc_10x8_unorm = "astc-10x8-unorm";
	var astc_10x8_unorm_srgb = "astc-10x8-unorm-srgb";
	var astc_10x10_unorm = "astc-10x10-unorm";
	var astc_10x10_unorm_srgb = "astc-10x10-unorm-srgb";
	var astc_12x10_unorm = "astc-12x10-unorm";
	var astc_12x10_unorm_srgb = "astc-12x10-unorm-srgb";
	var astc_12x12_unorm = "astc-12x12-unorm";
	var astc_12x12_unorm_srgb = "astc-12x12-unorm-srgb";
}
