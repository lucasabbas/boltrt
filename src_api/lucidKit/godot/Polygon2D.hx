package lucidkit.godot;

@:native("godot.Polygon2D")
extern class Polygon2D extends Node2D {
    public var antialiased: Bool;
    public var bones: Array<Dynamic>;
    public var color: Color;
    public var internal_vertex_count: Int;
    public var invert_border: Float;
    public var invert_enable: Bool;
    public var offset: Vector2;
    public var polygon: PoolVector2Array;
    public var polygons: Array<Dynamic>;
    public var skeleton: NodePath;
    public var texture: Texture;
    public var texture_offset: Vector2;
    public var texture_rotation: Float;
    public var texture_rotation_degrees: Float;
    public var texture_scale: Vector2;
    public var uv: PoolVector2Array;
    public var vertex_colors: PoolColorArray;
    public function add_bone(path: NodePath, weights: PoolRealArray): Void;
    public function clear_bones(): Void;
    public function erase_bone(index: Int): Void;
    public function get_bone_count(): Int;
    public function get_bone_path(index: Int): NodePath;
    public function get_bone_weights(index: Int): PoolRealArray;
    public function set_bone_path(index: Int, path: NodePath): Void;
    public function set_bone_weights(index: Int, weights: PoolRealArray): Void;
}
