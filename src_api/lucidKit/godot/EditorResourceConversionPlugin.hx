package lucidkit.godot;

@:native("godot.EditorResourceConversionPlugin")
extern class EditorResourceConversionPlugin extends Reference {
    public function _convert(resource: Resource): Resource;
    public function _converts_to(): String;
}
