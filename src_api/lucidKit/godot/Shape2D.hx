package lucidKit.godot;

@:native("godot.Shape2D")
extern class Shape2D extends Resource {
    public var custom_solver_bias: Float;
    public function collide(local_xform: Transform2D, with_shape: Shape2D, shape_xform: Transform2D): Bool;
    public function collide_and_get_contacts(local_xform: Transform2D, with_shape: Shape2D, shape_xform: Transform2D): Array<Dynamic>;
    public function collide_with_motion(local_xform: Transform2D, local_motion: GdVector2, with_shape: Shape2D, shape_xform: Transform2D, shape_motion: GdVector2): Bool;
    public function collide_with_motion_and_get_contacts(local_xform: Transform2D, local_motion: GdVector2, with_shape: Shape2D, shape_xform: Transform2D, shape_motion: GdVector2): Array<Dynamic>;
    public function draw(canvas_item: RID, color: Color): Void;
    @:native("__new")
    public function new();
}
