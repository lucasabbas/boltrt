package lucidKit.godot;

class MultiMeshInstance2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class MultiMeshInstance2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class MultiMeshInstance2DSignalNames {
    public static var textureChanged: String = "texture_changed";
}
@:native("godot.MultiMeshInstance2D")
extern class MultiMeshInstance2D extends Node2D {
    public var multimesh: MultiMesh;
    public var normalMap: Texture;
    public var texture: Texture;
    @:native("__new")
    public function new();
}
