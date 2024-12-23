package lucidKit.godot;

@:native("godot.Range")
extern class Range extends Control {
    public var allowGreater: Bool;
    public var allowLesser: Bool;
    public var expEdit: Bool;
    public var maxValue: Float;
    public var minValue: Float;
    public var page: Float;
    public var ratio: Float;
    public var rounded: Bool;
    public var step: Float;
    public var value: Float;
    public function setValueNoSignal(value: Float): Void;
    public function share(with: Node): Void;
    public function unshare(): Void;
    @:native("__new")
    public function new();
}
