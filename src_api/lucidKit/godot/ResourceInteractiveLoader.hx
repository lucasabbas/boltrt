package lucidKit.godot;

@:native("godot.ResourceInteractiveLoader")
extern class ResourceInteractiveLoader extends Reference {
    public var noSubresourceCache: Bool;
    public function getResource(): Resource;
    public function getStage(): Int;
    public function getStageCount(): Int;
    public function poll(): Int;
    public function wait(): Int;
    @:native("__new")
    public function new();
}
