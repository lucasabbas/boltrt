package lucidkit.godot;

@:native("godot.Range")
extern class Range extends Control {
    public var allow_greater: Bool;
    public var allow_lesser: Bool;
    public var exp_edit: Bool;
    public var max_value: Float;
    public var min_value: Float;
    public var page: Float;
    public var ratio: Float;
    public var rounded: Bool;
    public var step: Float;
    public var value: Float;
    public function set_value_no_signal(value: Float): Void;
    public function share(with: Node): Void;
    public function unshare(): Void;
}
