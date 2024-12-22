package lucidKit.godot;

@:native("godot.WorldEnvironment")
extern class WorldEnvironment extends Node {
    public var environment: Environment;
    @:native("__new")
    public function new();
}
