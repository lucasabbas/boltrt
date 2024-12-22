package lucidkit.godot;

@:native("godot.StyleBoxLine")
extern class StyleBoxLine extends StyleBox {
    public var color: Color;
    public var grow_begin: Float;
    public var grow_end: Float;
    public var thickness: Int;
    public var vertical: Bool;
}
