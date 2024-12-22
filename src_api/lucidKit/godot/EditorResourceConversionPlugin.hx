package lucidKit.godot;

@:native("godot.EditorResourceConversionPlugin")
extern class EditorResourceConversionPlugin extends Reference {
    public function Convert(resource: Resource): Resource;
    public function ConvertsTo(): String;
    @:native("__new")
    public function new();
}
