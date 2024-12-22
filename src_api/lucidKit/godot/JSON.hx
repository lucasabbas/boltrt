package lucidKit.godot;

@:native("godot.JSON")
extern class JSON extends Object {
    public function parse(json: String): JSONParseResult;
    public function print(value: Variant, indent: String, sortKeys: Bool = false): String;
    @:native("__new")
    public function new();
}
