package lucidKit.godot.extensions;

import lucidKit.godot.Camera;
import lucidKit.godot.Vector2;
import lucidKit.godot.GdVector2;
import lucidKit.godot.Node2D;

@:native("gdx.FreeLookCamera2D")
extern class FreeLookCamera2D extends Camera2D {
    public var minZoom : Float;

    public var maxZoom : Float;

    public var zoomFactor : Float;

    public var zoomDuration : Float;

    public var zoomLevel : Float;

    public var positionBeforeDrag : Vector2;

    public var positionBeforeDrag2 : Vector2;

    public var TransformNode : Node2D;

    public var active : Bool;

    @:native("__new")
    public function new();

    public function setZoomLevel(level : Float, mouseWorldPosition : GdVector2) : Void;
}