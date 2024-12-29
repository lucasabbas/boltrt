package lucidKit.godot;

@:native("godot.SpringArm")
extern class SpringArm extends Spatial {
    public var collisionMask: Int;
    public var margin: Float;
    public var shape: Shape;
    public var springLength: Float;
    public function addExcludedObject(RID: RID): Void;
    public function clearExcludedObjects(): Void;
    public function getHitLength(): Float;
    public function removeExcludedObject(RID: RID): Bool;
    @:native("__new")
    public function new();
}
