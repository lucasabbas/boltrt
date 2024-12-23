package lucidKit.godot;

@:native("godot.Popup")
extern class Popup extends Control {
    public var popupExclusive: Bool;
    public function popup(bounds: Rect2): Void;
    public function popupCentered(size: GdVector2): Void;
    public function popupCenteredClamped(size: GdVector2, fallbackRatio: Float = 0.75): Void;
    public function popupCenteredMinsize(minsize: GdVector2): Void;
    public function popupCenteredRatio(ratio: Float = 0.75): Void;
    public function setAsMinsize(): Void;
    @:native("__new")
    public function new();
}
