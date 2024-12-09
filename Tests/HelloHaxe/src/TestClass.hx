package;

@:native("_TestClass")
extern class TestClassNative {
    @:native("__new")
    public static function createInstance() : Dynamic;
    
}

@:luaRequire("data://test.lua")
class TestClass extends MonoObject {
    public function new() {
        instance = TestClassNative.createInstance();
    }

    public function hello() {
        Reflect.callMethod(instance, Reflect.field(instance, "hello"), []);
    }
}