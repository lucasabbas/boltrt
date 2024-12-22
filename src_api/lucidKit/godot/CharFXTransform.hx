package lucidKit.godot;

@:native("godot.CharFXTransform")
extern class CharFXTransform extends Reference {
    public var absoluteIndex: Int;
    public var character: Int;
    public var color: Color;
    public var elapsedTime: Float;
    public var env: Map<Dynamic, Dynamic>;
    public var offset: Vector2;
    public var relativeIndex: Int;
    public var visible: Bool;
    @:native("__new")
    public function new();
}
