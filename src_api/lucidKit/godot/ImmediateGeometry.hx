package lucidKit.godot;

@:native("godot.ImmediateGeometry")
extern class ImmediateGeometry extends GeometryInstance {
    public function addSphere(lats: Int, lons: Int, radius: Float, addUv: Bool = true): Void;
    public function addVertex(position: GdVector3): Void;
    public function begin(primitive: Int, texture: Texture): Void;
    public function clear(): Void;
    public function end(): Void;
    public function setColor(color: Color): Void;
    public function setNormal(normal: GdVector3): Void;
    public function setTangent(tangent: Plane): Void;
    public function setUv(uv: GdVector2): Void;
    public function setUv2(uv: GdVector2): Void;
    @:native("__new")
    public function new();
}
