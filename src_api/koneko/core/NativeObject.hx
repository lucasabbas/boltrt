package koneko.core;

extern class NativeObject {
    @:native("__new")
    public static function createInstance() : Dynamic;
}