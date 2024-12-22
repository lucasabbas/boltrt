package lucidkit.godot;

@:native("godot.GridContainer")
extern class GridContainer extends Container {
    public var columns: Int;
    public var mouse_filter: Int;
}
