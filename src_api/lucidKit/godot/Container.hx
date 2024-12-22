package lucidkit.godot;

@:native("godot.Container")
extern class Container extends Control {
    public function fit_child_in_rect(child: Control, rect: Rect2): Void;
    public function queue_sort(): Void;
}
