package magicrt.godot;

class FontSignalNames {
}
@:native("godot.Font")
extern class Font extends Resource {
    public function draw(canvasItem: RID, position: GdVector2, string: String, modulate: Color, clipW: Int = -1, outlineModulate: Color): Void;
    public function drawChar(canvasItem: RID, position: GdVector2, char: Int, next: Int = -1, modulate: Color, outline: Bool = false): Float;
    public function getAscent(): Float;
    public function getCharContours(char: Int, next: Int = 0): Map<Dynamic, Dynamic>;
    public function getCharSize(char: Int, next: Int = 0): Vector2;
    public function getCharTexture(char: Int, next: Int = 0, outline: Bool = false): RID;
    public function getCharTextureSize(char: Int, next: Int = 0, outline: Bool = false): Vector2;
    public function getCharTxOffset(char: Int, next: Int = 0, outline: Bool = false): Vector2;
    public function getCharTxSize(char: Int, next: Int = 0, outline: Bool = false): Vector2;
    public function getCharTxUvRect(char: Int, next: Int = 0, outline: Bool = false): Rect2;
    public function getDescent(): Float;
    public function getHeight(): Float;
    public function getStringSize(string: String): Vector2;
    public function getWordwrapStringSize(string: String, width: Float): Vector2;
    public function hasOutline(): Bool;
    public function isDistanceFieldHint(): Bool;
    public function updateChanges(): Void;
    @:native("__new")
    public function new();
}
