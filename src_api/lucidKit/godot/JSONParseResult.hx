package lucidKit.godot;

@:native("godot.JSONParseResult")
extern class JSONParseResult extends Reference {
    public var error: Int;
    public var errorLine: Int;
    public var errorString: String;
    public var result: Variant;
    @:native("__new")
    public function new();
}
