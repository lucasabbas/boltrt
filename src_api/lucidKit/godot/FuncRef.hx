package lucidkit.godot;

@:native("godot.FuncRef")
extern class FuncRef extends Reference {
    public var function: String;
    public function call_func(): Variant;
    public function call_funcv(arg_array: Array<Dynamic>): Variant;
    public function is_valid(): Bool;
    public function set_instance(instance: Object): Void;
}
