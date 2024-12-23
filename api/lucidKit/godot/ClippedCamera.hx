package lucidKit.godot;

@:native("godot.ClippedCamera")
extern class ClippedCamera extends Camera {
    public var clipToAreas: Bool;
    public var clipToBodies: Bool;
    public var collisionMask: Int;
    public var margin: Float;
    public var processMode: Int;
    public function addException(node: Object): Void;
    public function addExceptionRid(rid: RID): Void;
    public function clearExceptions(): Void;
    public function getClipOffset(): Float;
    public function getCollisionMaskBit(bit: Int): Bool;
    public function removeException(node: Object): Void;
    public function removeExceptionRid(rid: RID): Void;
    public function setCollisionMaskBit(bit: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
