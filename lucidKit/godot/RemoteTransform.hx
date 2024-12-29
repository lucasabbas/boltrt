package lucidKit.godot;

@:native("godot.RemoteTransform")
extern class RemoteTransform extends Spatial {
    public var remotePath: NodePath;
    public var updatePosition: Bool;
    public var updateRotation: Bool;
    public var updateScale: Bool;
    public var useGlobalCoordinates: Bool;
    public function forceUpdateCache(): Void;
    @:native("__new")
    public function new();
}
