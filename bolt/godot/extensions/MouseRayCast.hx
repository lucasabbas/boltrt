package bolt.godot.extensions;

import bolt.godot.RayCast;
import bolt.godot.Camera;

@:native("gdx.MouseRayCast3D")
extern class MouseRayCast extends RayCast {
    public var camera : Camera;
    public var rayLength : Float;
    public var active : Bool;
    @:native("__new")
    public function new();
}