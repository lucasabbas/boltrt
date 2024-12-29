package lucidKit.godot;

@:native("godot.CollisionObject2D")
extern class CollisionObject2D extends Node2D {
    public var collisionLayer: Int;
    public var collisionMask: Int;
    public var inputPickable: Bool;
    public function InputEvent(viewport: Object, event: InputEvent, shapeIdx: Int): Void;
    public function createShapeOwner(owner: Object): Int;
    public function getCollisionLayerBit(bit: Int): Bool;
    public function getCollisionMaskBit(bit: Int): Bool;
    public function getRid(): RID;
    public function getShapeOwnerOneWayCollisionMargin(ownerId: Int): Float;
    public function getShapeOwners(): Array<Dynamic>;
    public function isShapeOwnerDisabled(ownerId: Int): Bool;
    public function isShapeOwnerOneWayCollisionEnabled(ownerId: Int): Bool;
    public function removeShapeOwner(ownerId: Int): Void;
    public function setCollisionLayerBit(bit: Int, value: Bool): Void;
    public function setCollisionMaskBit(bit: Int, value: Bool): Void;
    public function shapeFindOwner(shapeIndex: Int): Int;
    public function shapeOwnerAddShape(ownerId: Int, shape: Shape2D): Void;
    public function shapeOwnerClearShapes(ownerId: Int): Void;
    public function shapeOwnerGetOwner(ownerId: Int): Object;
    public function shapeOwnerGetShape(ownerId: Int, shapeId: Int): Shape2D;
    public function shapeOwnerGetShapeCount(ownerId: Int): Int;
    public function shapeOwnerGetShapeIndex(ownerId: Int, shapeId: Int): Int;
    public function shapeOwnerGetTransform(ownerId: Int): Transform2D;
    public function shapeOwnerRemoveShape(ownerId: Int, shapeId: Int): Void;
    public function shapeOwnerSetDisabled(ownerId: Int, disabled: Bool): Void;
    public function shapeOwnerSetOneWayCollision(ownerId: Int, enable: Bool): Void;
    public function shapeOwnerSetOneWayCollisionMargin(ownerId: Int, margin: Float): Void;
    public function shapeOwnerSetTransform(ownerId: Int, transform: Transform2D): Void;
    @:native("__new")
    public function new();
}
