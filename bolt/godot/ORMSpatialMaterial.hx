package bolt.godot;

class ORMSpatialMaterialParamsDiffuseMode {
    public static var Burley: Int = 0;
    public static var Lambert: Int = 1;
    public static var LambertWrap: Int = 2;
    public static var OrenNayar: Int = 3;
    public static var Toon: Int = 4;
}
class ORMSpatialMaterialParamsSpecularMode {
    public static var SchlickGgx: Int = 0;
    public static var Blinn: Int = 1;
    public static var Phong: Int = 2;
    public static var Toon: Int = 3;
    public static var Disabled: Int = 4;
}
class ORMSpatialMaterialParamsBlendMode {
    public static var Mix: Int = 0;
    public static var Add: Int = 1;
    public static var Sub: Int = 2;
    public static var Mul: Int = 3;
}
class ORMSpatialMaterialParamsCullMode {
    public static var Back: Int = 0;
    public static var Front: Int = 1;
    public static var Disabled: Int = 2;
}
class ORMSpatialMaterialParamsDepthDrawMode {
    public static var OpaqueOnly: Int = 0;
    public static var Always: Int = 1;
    public static var Disabled: Int = 2;
    public static var AlphaOpaquePrepass: Int = 3;
}
class ORMSpatialMaterialParamsBillboardMode {
    public static var Disabled: Int = 0;
    public static var Enabled: Int = 1;
    public static var FixedY: Int = 2;
    public static var Particles: Int = 3;
}
class ORMSpatialMaterialMetallicTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class ORMSpatialMaterialRoughnessTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class ORMSpatialMaterialEmissionOperator {
    public static var Add: Int = 0;
    public static var Multiply: Int = 1;
}
class ORMSpatialMaterialAoTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class ORMSpatialMaterialRefractionTextureChannel {
    public static var Red: Int = 0;
    public static var Green: Int = 1;
    public static var Blue: Int = 2;
    public static var Alpha: Int = 3;
    public static var Grayscale: Int = 4;
}
class ORMSpatialMaterialDetailBlendMode {
    public static var Mix: Int = 0;
    public static var Add: Int = 1;
    public static var Sub: Int = 2;
    public static var Mul: Int = 3;
}
class ORMSpatialMaterialDetailUvLayer {
    public static var Uv1: Int = 0;
    public static var Uv2: Int = 1;
}
class ORMSpatialMaterialDistanceFadeMode {
    public static var Disabled: Int = 0;
    public static var PixelAlpha: Int = 1;
    public static var PixelDither: Int = 2;
    public static var ObjectDither: Int = 3;
}
class ORMSpatialMaterialAsyncMode {
    public static var Visible: Int = 0;
    public static var Hidden: Int = 1;
}
class ORMSpatialMaterialSignalNames {
}
@:native("godot.ORMSpatialMaterial")
extern class ORMSpatialMaterial extends Material3D {
    @:native("__new")
    public function new();
}
