package bolt.godot;

class Shape2DSignalNames {
}
@:native("godot.Shape2D")
extern class Shape2D extends Resource {
    public var customSolverBias: Float;
    public function collide(localXform: Transform2D, withShape: Shape2D, shapeXform: Transform2D): Bool;
    public function collideAndGetContacts(localXform: Transform2D, withShape: Shape2D, shapeXform: Transform2D): Array<Dynamic>;
    public function collideWithMotion(localXform: Transform2D, localMotion: GdVector2, withShape: Shape2D, shapeXform: Transform2D, shapeMotion: GdVector2): Bool;
    public function collideWithMotionAndGetContacts(localXform: Transform2D, localMotion: GdVector2, withShape: Shape2D, shapeXform: Transform2D, shapeMotion: GdVector2): Array<Dynamic>;
    public function draw(canvasItem: RID, color: Color): Void;
    @:native("__new")
    public function new();
}
