package lucidKit.godot;

@:native("godot.Container")
extern class Container extends Control {
    public function fitChildInRect(child: Control, rect: Rect2): Void;
    public function queueSort(): Void;
    @:native("__new")
    public function new();
}
