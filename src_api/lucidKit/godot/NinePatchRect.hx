package lucidKit.godot;

@:native("godot.NinePatchRect")
extern class NinePatchRect extends Control {
    public var axis_stretch_horizontal: Int;
    public var axis_stretch_vertical: Int;
    public var draw_center: Bool;
    public var mouse_filter: Int;
    public var patch_margin_bottom: Int;
    public var patch_margin_left: Int;
    public var patch_margin_right: Int;
    public var patch_margin_top: Int;
    public var region_rect: Rect2;
    public var texture: Texture;
    public function get_patch_margin(margin: Int): Int;
    public function set_patch_margin(margin: Int, value: Int): Void;
    @:native("__new")
    public function new();
}
