package lucidkit.godot;

@:native("godot.MeshLibrary")
extern class MeshLibrary extends Resource {
    public function clear(): Void;
    public function create_item(id: Int): Void;
    public function find_item_by_name(name: String): Int;
    public function get_item_list(): PoolIntArray;
    public function get_item_mesh(id: Int): Mesh;
    public function get_item_mesh_transform(id: Int): Transform;
    public function get_item_name(id: Int): String;
    public function get_item_navmesh(id: Int): NavigationMesh;
    public function get_item_navmesh_transform(id: Int): Transform;
    public function get_item_preview(id: Int): Texture;
    public function get_item_shapes(id: Int): Array<Dynamic>;
    public function get_last_unused_item_id(): Int;
    public function remove_item(id: Int): Void;
    public function set_item_mesh(id: Int, mesh: Mesh): Void;
    public function set_item_mesh_transform(id: Int, mesh_transform: Transform): Void;
    public function set_item_name(id: Int, name: String): Void;
    public function set_item_navmesh(id: Int, navmesh: NavigationMesh): Void;
    public function set_item_navmesh_transform(id: Int, navmesh: Transform): Void;
    public function set_item_preview(id: Int, texture: Texture): Void;
    public function set_item_shapes(id: Int, shapes: Array<Dynamic>): Void;
}
