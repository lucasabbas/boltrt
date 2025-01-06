package magicrt.godot;

class LargeTextureSignalNames {
}
@:native("godot.LargeTexture")
extern class LargeTexture extends Texture {
    public function addPiece(ofs: GdVector2, texture: Texture): Int;
    public function clear(): Void;
    public function getPieceCount(): Int;
    public function getPieceOffset(idx: Int): Vector2;
    public function getPieceTexture(idx: Int): Texture;
    public function setPieceOffset(idx: Int, ofs: GdVector2): Void;
    public function setPieceTexture(idx: Int, texture: Texture): Void;
    public function setSize(size: GdVector2): Void;
    @:native("__new")
    public function new();
}
