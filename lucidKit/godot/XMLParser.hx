package lucidKit.godot;

class XMLParserSignalNames {
}
@:native("godot.XMLParser")
extern class XMLParser extends Reference {
    public function getAttributeCount(): Int;
    public function getAttributeName(idx: Int): String;
    public function getAttributeValue(idx: Int): String;
    public function getCurrentLine(): Int;
    public function getNamedAttributeValue(name: String): String;
    public function getNamedAttributeValueSafe(name: String): String;
    public function getNodeData(): String;
    public function getNodeName(): String;
    public function getNodeOffset(): Int;
    public function getNodeType(): Int;
    public function hasAttribute(name: String): Bool;
    public function isEmpty(): Bool;
    public function open(file: String): Int;
    public function openBuffer(buffer: PoolByteArray): Int;
    public function read(): Int;
    public function seek(position: Int): Int;
    public function skipSection(): Void;
    @:native("__new")
    public function new();
}
