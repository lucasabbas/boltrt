package lucidKit.godot;

@:native("godot.NodePath")
extern class NodePath extends lucidKit.core.MonoObject {
    @:native("__new")
    public function new(from: String);
    public function getAsPropertyPath(): NodePath;
    public function getConcatenatedSubnames(): String;
    public function getName(idx: Int): String;
    public function getNameCount(): Int;
    public function getSubname(idx: Int): String;
    public function getSubnameCount(): Int;
    public function isAbsolute(): Bool;
    public function isEmpty(): Bool;
}
