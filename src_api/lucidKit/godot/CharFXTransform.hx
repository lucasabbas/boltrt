package lucidKit.godot;

@:native("godot.CharFXTransform")
extern class CharFXTransform extends Reference {
    public var absolute_index: Int;
    public var character: Int;
    public var color: Color;
    public var elapsed_time: Float;
    public var env: Map<Dynamic, Dynamic>;
    public var offset: Vector2;
    public var relative_index: Int;
    public var visible: Bool;
    @:native("__new")
    public function new();
}
