package bolt.godot;

class FuncRefSignalNames {
}
@:native("godot.FuncRef")
extern class FuncRef extends Reference {
    public var function: String;
    public function callFunc(): Variant;
    public function callFuncv(argArray: Array<Dynamic>): Variant;
    public function isValid(): Bool;
    public function setInstance(instance: Object): Void;
    @:native("__new")
    public function new();
}
