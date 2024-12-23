package lucidKit.godot;

@:native("godot.MeshLibrary")
extern class MeshLibrary extends Resource {
    public function clear(): Void;
    public function createItem(id: Int): Void;
    public function findItemByName(name: String): Int;
    public function getItemList(): PoolIntArray;
    public function getItemMesh(id: Int): Mesh;
    public function getItemMeshTransform(id: Int): Transform;
    public function getItemName(id: Int): String;
    public function getItemNavmesh(id: Int): NavigationMesh;
    public function getItemNavmeshTransform(id: Int): Transform;
    public function getItemPreview(id: Int): Texture;
    public function getItemShapes(id: Int): Array<Dynamic>;
    public function getLastUnusedItemId(): Int;
    public function removeItem(id: Int): Void;
    public function setItemMesh(id: Int, mesh: Mesh): Void;
    public function setItemMeshTransform(id: Int, meshTransform: Transform): Void;
    public function setItemName(id: Int, name: String): Void;
    public function setItemNavmesh(id: Int, navmesh: NavigationMesh): Void;
    public function setItemNavmeshTransform(id: Int, navmesh: Transform): Void;
    public function setItemPreview(id: Int, texture: Texture): Void;
    public function setItemShapes(id: Int, shapes: Array<Dynamic>): Void;
    @:native("__new")
    public function new();
}
