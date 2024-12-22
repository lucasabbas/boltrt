package lucidkit.godot;

@:native("godot.SplitContainer")
extern class SplitContainer extends Container {
    public var collapsed: Bool;
    public var dragger_visibility: Int;
    public var split_offset: Int;
    public function clamp_split_offset(): Void;
}
