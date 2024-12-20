package;

@:native("_HelloHelper")
extern class HelloHelper {
    @:native("__new")
    public function new();

    public function sayHello(name : String) : Void;
}
