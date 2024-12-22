package lucidKit.godot;

@:native("godot.NavigationMeshGenerator")
extern class NavigationMeshGenerator extends Object {
    public function bake(nav_mesh: NavigationMesh, root_node: Node): Void;
    public function clear(nav_mesh: NavigationMesh): Void;
    @:native("__new")
    public function new();
}
