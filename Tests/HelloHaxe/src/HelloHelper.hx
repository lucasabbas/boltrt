package;

@:native("_HelloHelper")
extern class HelloHelperNative {
    @:native("__new")
    public static function createInstance() : Dynamic;

    @:native("sayHello")
    public static function sayHello(instance : Dynamic, name : String) : Void;
}

class HelloHelper extends MonoObject {
    public function new() {
        instance = HelloHelperNative.createInstance();
    }

    public function sayHello(name : String) {
        untyped instance.sayHello(name);
    }
}