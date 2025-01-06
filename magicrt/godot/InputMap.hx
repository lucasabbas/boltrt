package magicrt.godot;

class InputMapSignalNames {
}
@:native("godot.InputMap")
extern class InputMap extends Object {
    public function actionAddEvent(action: String, event: InputEvent): Void;
    public function actionEraseEvent(action: String, event: InputEvent): Void;
    public function actionEraseEvents(action: String): Void;
    public function actionGetDeadzone(action: String): Float;
    public function actionHasEvent(action: String, event: InputEvent): Bool;
    public function actionSetDeadzone(action: String, deadzone: Float): Void;
    public function addAction(action: String, deadzone: Float = 0.5): Void;
    public function eraseAction(action: String): Void;
    public function eventIsAction(event: InputEvent, action: String, exactMatch: Bool = false): Bool;
    public function getActionList(action: String): Array<Dynamic>;
    public function getActions(): Array<Dynamic>;
    public function hasAction(action: String): Bool;
    public function loadFromGlobals(): Void;
    @:native("__new")
    public function new();
}
