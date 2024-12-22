package lucidKit.godot;

@:native("godot.InstancePlaceholder")
extern class InstancePlaceholder extends Node {
    public function createInstance(replace: Bool = false, customScene: PackedScene): Node;
    public function getInstancePath(): String;
    public function getStoredValues(withOrder: Bool = false): Map<Dynamic, Dynamic>;
    public function replaceByInstance(customScene: PackedScene): Void;
    @:native("__new")
    public function new();
}
