package bolt.godot;

class NavigationMeshGeneratorSignalNames {
}
@:native("godot.NavigationMeshGenerator")
extern class NavigationMeshGenerator extends Object {
    public function bake(navMesh: NavigationMesh, rootNode: Node): Void;
    public function clear(navMesh: NavigationMesh): Void;
    @:native("__new")
    public function new();
}
