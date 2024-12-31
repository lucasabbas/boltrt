package lucidKit.godot;

class StyleBoxLineSignalNames {
}
@:native("godot.StyleBoxLine")
extern class StyleBoxLine extends StyleBox {
    public var color: Color;
    public var growBegin: Float;
    public var growEnd: Float;
    public var thickness: Int;
    public var vertical: Bool;
    @:native("__new")
    public function new();
}
