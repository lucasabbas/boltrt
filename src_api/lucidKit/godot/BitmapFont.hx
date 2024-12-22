package lucidKit.godot;

@:native("godot.BitmapFont")
extern class BitmapFont extends Font {
    public var ascent: Float;
    public var distanceField: Bool;
    public var fallback: BitmapFont;
    public var height: Float;
    public function addChar(character: Int, texture: Int, rect: Rect2, align: GdVector2, advance: Float = -1): Void;
    public function addKerningPair(charA: Int, charB: Int, kerning: Int): Void;
    public function addTexture(texture: Texture): Void;
    public function clear(): Void;
    public function createFromFnt(path: String): Int;
    public function getKerningPair(charA: Int, charB: Int): Int;
    public function getTexture(idx: Int): Texture;
    public function getTextureCount(): Int;
    @:native("__new")
    public function new();
}
