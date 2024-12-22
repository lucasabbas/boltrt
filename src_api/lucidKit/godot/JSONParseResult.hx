package lucidkit.godot;

@:native("godot.JSONParseResult")
extern class JSONParseResult extends Reference {
    public var error: Int;
    public var error_line: Int;
    public var error_string: String;
    public var result: Variant;
}
