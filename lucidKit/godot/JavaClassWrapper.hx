package lucidKit.godot;

class JavaClassWrapperSignalNames {
}
@:native("godot.JavaClassWrapper")
extern class JavaClassWrapper extends Object {
    public function wrap(name: String): JavaClass;
    @:native("__new")
    public function new();
}
