package bolt.godot;

class MeshInstance2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class MeshInstance2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class MeshInstance2DSignalNames {
    public static var textureChanged: String = "texture_changed";
}
@:native("godot.MeshInstance2D")
extern class MeshInstance2D extends Node2D {
    public var mesh: Mesh;
    public var normalMap: Texture;
    public var texture: Texture;
    @:native("__new")
    public function new();
}
