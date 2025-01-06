package magicrt.godot;

class MultiMeshColorFormat {
    public static var None: Int = 0;
    public static var Color8bit: Int = 1;
    public static var Float: Int = 2;
}
class MultiMeshTransformFormat {
    public static var Transform2d: Int = 0;
    public static var Transform3d: Int = 1;
}
class MultiMeshCustomDataFormat {
    public static var None: Int = 0;
    public static var Data8bit: Int = 1;
    public static var Float: Int = 2;
}
class MultiMeshPhysicsInterpolationQuality {
    public static var Fast: Int = 0;
    public static var High: Int = 1;
}
class MultiMeshSignalNames {
}
@:native("godot.MultiMesh")
extern class MultiMesh extends Resource {
    public var colorFormat: Int;
    public var customDataFormat: Int;
    public var instanceCount: Int;
    public var mesh: Mesh;
    public var physicsInterpolationQuality: Int;
    public var transformFormat: Int;
    public var visibleInstanceCount: Int;
    public function getAabb(): AABB;
    public function getInstanceColor(instance: Int): Color;
    public function getInstanceCustomData(instance: Int): Color;
    public function getInstanceTransform(instance: Int): Transform;
    public function getInstanceTransform2d(instance: Int): Transform2D;
    public function resetInstancePhysicsInterpolation(instance: Int): Void;
    public function setAsBulkArray(array: PoolRealArray): Void;
    public function setAsBulkArrayInterpolated(arrayCurrent: PoolRealArray, arrayPrevious: PoolRealArray): Void;
    public function setInstanceColor(instance: Int, color: Color): Void;
    public function setInstanceCustomData(instance: Int, customData: Color): Void;
    public function setInstanceTransform(instance: Int, transform: Transform): Void;
    public function setInstanceTransform2d(instance: Int, transform: Transform2D): Void;
    @:native("__new")
    public function new();
}
