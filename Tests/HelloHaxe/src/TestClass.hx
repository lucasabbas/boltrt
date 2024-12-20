package;

import lucidKit.core.NativeObject;

@:luaRequire("data://test.lua")
@:native("_TestClass")
class TestClass extends NativeObject {
    @:native("__new")
    public function new();

    public function hello() : Void;
}