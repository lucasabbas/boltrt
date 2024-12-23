package lucidKit.godot;

@:native("godot.RemoteTransform2D")
extern class RemoteTransform2D extends Node2D {
    public var remotePath: NodePath;
    public var updatePosition: Bool;
    public var updateRotation: Bool;
    public var updateScale: Bool;
    public var useGlobalCoordinates: Bool;
    public function forceUpdateCache(): Void;
    @:native("__new")
    public function new();
}
