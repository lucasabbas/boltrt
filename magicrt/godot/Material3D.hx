package magicrt.godot;

class Material3DParamsDiffuseMode {
    public static var Burley: Int = 0;
    public static var Lambert: Int = 1;
    public static var LambertWrap: Int = 2;
    public static var OrenNayar: Int = 3;
    public static var Toon: Int = 4;
}
class Material3DParamsSpecularMode {
    public static var SchlickGgx: Int = 0;
    public static var Blinn: Int = 1;
    public static var Phong: Int = 2;
    public static var Toon: Int = 3;
    public static var Disabled: Int = 4;
}
class Material3DParamsBlendMode {
    public static var Mix: Int = 0;
    public static var Add: Int = 1;
    public static var Sub: Int = 2;
    public static var Mul: Int = 3;
}
class Material3DParamsCullMode {
    public static var Back: Int = 0;
    public static var Front: Int = 1;
    public static var Disabled: Int = 2;
}
class Material3DParamsDepthDrawMode {
    public static var OpaqueOnly: Int = 0;
    public static var Always: Int = 1;
    public static var Disabled: Int = 2;
    public static var AlphaOpaquePrepass: Int = 3;
}
class Material3DParamsBillboardMode {
    public static var Disabled: Int = 0;
    public static var Enabled: Int = 1;
    public static var FixedY: Int = 2;
    public static var Particles: Int = 3;
}
class Material3DMetallicTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class Material3DRoughnessTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class Material3DEmissionOperator {
    public static var Add: Int = 0;
    public static var Multiply: Int = 1;
}
class Material3DAoTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class Material3DRefractionTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class Material3DDetailBlendMode {
    public static var Mix: Int = 0;
    public static var Add: Int = 1;
    public static var Sub: Int = 2;
    public static var Mul: Int = 3;
}
class Material3DDetailUvLayer {
    public static var Uv1: Int = 0;
    public static var Uv2: Int = 1;
}
class Material3DDistanceFadeMode {
    public static var Disabled: Int = 0;
    public static var PixelAlpha: Int = 1;
    public static var PixelDither: Int = 2;
    public static var ObjectDither: Int = 3;
}
class Material3DAsyncMode {
    public static var Visible: Int = 0;
    public static var Hidden: Int = 1;
}
class Material3DSignalNames {
}
@:native("godot.Material3D")
extern class Material3D extends Material {
    public var albedoColor: Color;
    public var albedoTexture: Texture;
    public var anisotropy: Float;
    public var anisotropyEnabled: Bool;
    public var anisotropyFlowmap: Texture;
    public var aoEnabled: Bool;
    public var aoLightAffect: Float;
    public var aoOnUv2: Bool;
    public var aoTexture: Texture;
    public var aoTextureChannel: Int;
    public var asyncMode: Int;
    public var clearcoat: Float;
    public var clearcoatEnabled: Bool;
    public var clearcoatGloss: Float;
    public var clearcoatTexture: Texture;
    public var depthDeepParallax: Bool;
    public var depthEnabled: Bool;
    public var depthFlipBinormal: Bool;
    public var depthFlipTangent: Bool;
    public var depthMaxLayers: Int;
    public var depthMinLayers: Int;
    public var depthScale: Float;
    public var depthTexture: Texture;
    public var detailAlbedo: Texture;
    public var detailBlendMode: Int;
    public var detailEnabled: Bool;
    public var detailMask: Texture;
    public var detailNormal: Texture;
    public var detailUvLayer: Int;
    public var distanceFadeMaxDistance: Float;
    public var distanceFadeMinDistance: Float;
    public var distanceFadeMode: Int;
    public var emission: Color;
    public var emissionEnabled: Bool;
    public var emissionEnergy: Float;
    public var emissionOnUv2: Bool;
    public var emissionOperator: Int;
    public var emissionTexture: Texture;
    public var flagsAlbedoTexForceSrgb: Bool;
    public var flagsAlbedoTexMsdf: Bool;
    public var flagsDisableAmbientLight: Bool;
    public var flagsDoNotReceiveShadows: Bool;
    public var flagsEnsureCorrectNormals: Bool;
    public var flagsFixedSize: Bool;
    public var flagsNoDepthTest: Bool;
    public var flagsTransparent: Bool;
    public var flagsUnshaded: Bool;
    public var flagsUsePointSize: Bool;
    public var flagsUseShadowToOpacity: Bool;
    public var flagsVertexLighting: Bool;
    public var flagsWorldTriplanar: Bool;
    public var metallic: Float;
    public var metallicSpecular: Float;
    public var metallicTexture: Texture;
    public var metallicTextureChannel: Int;
    public var normalEnabled: Bool;
    public var normalScale: Float;
    public var normalTexture: Texture;
    public var ormTexture: Texture;
    public var paramsAlphaScissorThreshold: Float;
    public var paramsBillboardKeepScale: Bool;
    public var paramsBillboardMode: Int;
    public var paramsBlendMode: Int;
    public var paramsCullMode: Int;
    public var paramsDepthDrawMode: Int;
    public var paramsDiffuseMode: Int;
    public var paramsGrow: Bool;
    public var paramsGrowAmount: Float;
    public var paramsLineWidth: Float;
    public var paramsPointSize: Float;
    public var paramsSpecularMode: Int;
    public var paramsUseAlphaScissor: Bool;
    public var particlesAnimHFrames: Int;
    public var particlesAnimLoop: Bool;
    public var particlesAnimVFrames: Int;
    public var proximityFadeDistance: Float;
    public var proximityFadeEnable: Bool;
    public var refractionEnabled: Bool;
    public var refractionScale: Float;
    public var refractionTexture: Texture;
    public var refractionTextureChannel: Int;
    public var rim: Float;
    public var rimEnabled: Bool;
    public var rimTexture: Texture;
    public var rimTint: Float;
    public var roughness: Float;
    public var roughnessTexture: Texture;
    public var roughnessTextureChannel: Int;
    public var subsurfScatterEnabled: Bool;
    public var subsurfScatterStrength: Float;
    public var subsurfScatterTexture: Texture;
    public var transmission: Color;
    public var transmissionEnabled: Bool;
    public var transmissionTexture: Texture;
    public var uv1Offset: Vector3;
    public var uv1Scale: Vector3;
    public var uv1Triplanar: Bool;
    public var uv1TriplanarSharpness: Float;
    public var uv2Offset: Vector3;
    public var uv2Scale: Vector3;
    public var uv2Triplanar: Bool;
    public var uv2TriplanarSharpness: Float;
    public var vertexColorIsSrgb: Bool;
    public var vertexColorUseAsAlbedo: Bool;
    public function getFeature(feature: Int): Bool;
    public function getFlag(flag: Int): Bool;
    public function getTexture(param: Int): Texture;
    public function setFeature(feature: Int, enable: Bool): Void;
    public function setFlag(flag: Int, enable: Bool): Void;
    public function setTexture(param: Int, texture: Texture): Void;
    @:native("__new")
    public function new();
}
