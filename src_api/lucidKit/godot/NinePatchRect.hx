package lucidKit.godot;

@:native("godot.NinePatchRect")
extern class NinePatchRect extends Control {
    public var axisStretchHorizontal: Int;
    public var axisStretchVertical: Int;
    public var drawCenter: Bool;
    public var patchMarginBottom: Int;
    public var patchMarginLeft: Int;
    public var patchMarginRight: Int;
    public var patchMarginTop: Int;
    public var regionRect: Rect2;
    public var texture: Texture;
    public function getPatchMargin(margin: Int): Int;
    public function setPatchMargin(margin: Int, value: Int): Void;
    @:native("__new")
    public function new();
}
