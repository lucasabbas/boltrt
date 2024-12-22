package lucidKit.godot;

@:native("godot.JSONParseResult")
extern class JSONParseResult extends Reference {
    public var error: Int;
    public var error_line: Int;
    public var error_string: String;
    public var result: Variant;
    @:native("__new")
    public function new();
}
