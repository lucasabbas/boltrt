package lucidKit.godot;

class InputEventSignalNames {
}
@:native("godot.InputEvent")
extern class InputEvent extends Resource {
    public var device: Int;
    public function accumulate(withEvent: InputEvent): Bool;
    public function asText(): String;
    public function getActionStrength(action: String, exactMatch: Bool = false): Float;
    public function isAction(action: String, exactMatch: Bool = false): Bool;
    public function isActionPressed(action: String, allowEcho: Bool = false, exactMatch: Bool = false): Bool;
    public function isActionReleased(action: String, exactMatch: Bool = false): Bool;
    public function isActionType(): Bool;
    public function isCanceled(): Bool;
    public function isEcho(): Bool;
    public function isPressed(): Bool;
    public function isReleased(): Bool;
    public function shortcutMatch(event: InputEvent, exactMatch: Bool = true): Bool;
    public function xformedBy(xform: Transform2D, localOfs: GdVector2): InputEvent;
    @:native("__new")
    public function new();
}
