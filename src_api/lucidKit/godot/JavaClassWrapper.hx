package lucidkit.godot;

@:native("godot.JavaClassWrapper")
extern class JavaClassWrapper extends Object {
    public function wrap(name: String): JavaClass;
}
