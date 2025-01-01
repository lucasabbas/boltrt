package bolt.godot;

class AnimationNodeSignalNames {
    public static var removedFromGraph: String = "removed_from_graph";
    public static var treeChanged: String = "tree_changed";
}
@:native("godot.AnimationNode")
extern class AnimationNode extends Resource {
    public var filterEnabled: Bool;
    public function addInput(name: String): Void;
    public function blendAnimation(animation: String, time: Float, delta: Float, seeked: Bool, blend: Float): Void;
    public function blendInput(inputIndex: Int, time: Float, seek: Bool, blend: Float, filter: Int = 0, optimize: Bool = true): Float;
    public function blendNode(name: String, node: AnimationNode, time: Float, seek: Bool, blend: Float, filter: Int = 0, optimize: Bool = true): Float;
    public function getCaption(): String;
    public function getChildByName(name: String): Object;
    public function getChildNodes(): Map<Dynamic, Dynamic>;
    public function getInputCount(): Int;
    public function getInputName(input: Int): String;
    public function getParameter(name: String): Variant;
    public function getParameterDefaultValue(name: String): Variant;
    public function getParameterList(): Array<Dynamic>;
    public function hasFilter(): Bool;
    public function isPathFiltered(path: NodePath): Bool;
    public function process(time: Float, seek: Bool): Void;
    public function removeInput(index: Int): Void;
    public function setFilterPath(path: NodePath, enable: Bool): Void;
    public function setParameter(name: String, value: Variant): Void;
    @:native("__new")
    public function new();
}
