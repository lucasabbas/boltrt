package lucidKit.godot;

@:native("godot.AnimationNodeBlendSpace1D")
extern class AnimationNodeBlendSpace1D extends AnimationRootNode {
    public var maxSpace: Float;
    public var minSpace: Float;
    public var snap: Float;
    public var valueLabel: String;
    public function addBlendPoint(node: AnimationRootNode, pos: Float, atIndex: Int = -1): Void;
    public function getBlendPointCount(): Int;
    public function getBlendPointNode(point: Int): AnimationRootNode;
    public function getBlendPointPosition(point: Int): Float;
    public function removeBlendPoint(point: Int): Void;
    public function setBlendPointNode(point: Int, node: AnimationRootNode): Void;
    public function setBlendPointPosition(point: Int, pos: Float): Void;
    @:native("__new")
    public function new();
}
