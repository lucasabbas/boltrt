package lucidKit.godot;

@:native("godot.JSON")
extern class JSON extends Object {
    public function parse(json: String): JSONParseResult;
    public function print(value: Variant, indent: String, sort_keys: Bool): String;
    @:native("__new")
    public function new();
}
