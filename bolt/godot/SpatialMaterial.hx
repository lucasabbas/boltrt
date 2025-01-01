package bolt.godot;

class SpatialMaterialParamsDiffuseMode {
    public static var Burley: Int = 0;
    public static var Lambert: Int = 1;
    public static var LambertWrap: Int = 2;
    public static var OrenNayar: Int = 3;
    public static var Toon: Int = 4;
}
class SpatialMaterialParamsSpecularMode {
    public static var SchlickGgx: Int = 0;
    public static var Blinn: Int = 1;
    public static var Phong: Int = 2;
    public static var Toon: Int = 3;
    public static var Disabled: Int = 4;
}
class SpatialMaterialParamsBlendMode {
    public static var Mix: Int = 0;
    public static var Add: Int = 1;
    public static var Sub: Int = 2;
    public static var Mul: Int = 3;
}
class SpatialMaterialParamsCullMode {
    public static var Back: Int = 0;
    public static var Front: Int = 1;
    public static var Disabled: Int = 2;
}
class SpatialMaterialParamsDepthDrawMode {
    public static var OpaqueOnly: Int = 0;
    public static var Always: Int = 1;
    public static var Disabled: Int = 2;
    public static var AlphaOpaquePrepass: Int = 3;
}
class SpatialMaterialParamsBillboardMode {
    public static var Disabled: Int = 0;
    public static var Enabled: Int = 1;
    public static var FixedY: Int = 2;
    public static var Particles: Int = 3;
}
class SpatialMaterialMetallicTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class SpatialMaterialRoughnessTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class SpatialMaterialEmissionOperator {
    public static var Add: Int = 0;
    public static var Multiply: Int = 1;
}
class SpatialMaterialAoTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class SpatialMaterialRefractionTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class SpatialMaterialDetailBlendMode {
    public static var Mix: Int = 0;
    public static var Add: Int = 1;
    public static var Sub: Int = 2;
    public static var Mul: Int = 3;
}
class SpatialMaterialDetailUvLayer {
    public static var Uv1: Int = 0;
    public static var Uv2: Int = 1;
}
class SpatialMaterialDistanceFadeMode {
    public static var Disabled: Int = 0;
    public static var PixelAlpha: Int = 1;
    public static var PixelDither: Int = 2;
    public static var ObjectDither: Int = 3;
}
class SpatialMaterialAsyncMode {
    public static var Visible: Int = 0;
    public static var Hidden: Int = 1;
}
class SpatialMaterialSignalNames {
}
@:native("godot.SpatialMaterial")
extern class SpatialMaterial extends Material3D {
    @:native("__new")
    public function new();
}
