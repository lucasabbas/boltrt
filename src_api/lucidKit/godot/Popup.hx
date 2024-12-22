package lucidKit.godot;

@:native("godot.Popup")
extern class Popup extends Control {
    public var popup_exclusive: Bool;
    public var visible: Bool;
    public function popup(bounds: Rect2): Void;
    public function popup_centered(size: GdVector2): Void;
    public function popup_centered_clamped(size: GdVector2, fallback_ratio: Float): Void;
    public function popup_centered_minsize(minsize: GdVector2): Void;
    public function popup_centered_ratio(ratio: Float): Void;
    public function set_as_minsize(): Void;
    @:native("__new")
    public function new();
}
