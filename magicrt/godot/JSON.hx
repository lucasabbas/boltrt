package magicrt.godot;

class JSONSignalNames {
}
@:native("godot.JSON")
extern class JSON extends Object {
    public function parse(json: String): JSONParseResult;
    public function print(value: Dynamic, indent: String, sortKeys: Bool = false): String;
    @:native("__new")
    public function new();
}
