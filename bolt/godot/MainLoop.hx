package bolt.godot;

class MainLoopSignalNames {
    public static var onRequestPermissionsResult: String = "on_request_permissions_result";
}
@:native("godot.MainLoop")
extern class MainLoop extends Object {
    public function DropFiles(files: lua.Table[Int, String], fromScreen: Int): Void;
    public function Finalize(): Void;
    public function GlobalMenuAction(id: Dynamic, meta: Dynamic): Void;
    public function Idle(delta: Float): Bool;
    public function Initialize(): Void;
    public function InputEvent(event: InputEvent): Void;
    public function InputText(text: String): Void;
    public function Iteration(delta: Float): Bool;
    public function finish(): Void;
    public function idle(delta: Float): Bool;
    public function init(): Void;
    public function inputEvent(event: InputEvent): Void;
    public function inputText(text: String): Void;
    public function iteration(delta: Float): Bool;
    @:native("__new")
    public function new();
}
