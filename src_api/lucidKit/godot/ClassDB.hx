package lucidKit.godot;

@:native("godot.ClassDB")
extern class ClassDB extends Object {
    public function canInstance(Class: String): Bool;
    public function classExists(Class: String): Bool;
    public function classGetCategory(Class: String): String;
    public function classGetEnumConstants(Class: String, enum: String, noInheritance: Bool = false): PoolStringArray;
    public function classGetEnumList(Class: String, noInheritance: Bool = false): PoolStringArray;
    public function classGetIntegerConstant(Class: String, name: String): Int;
    public function classGetIntegerConstantEnum(Class: String, name: String, noInheritance: Bool = false): String;
    public function classGetIntegerConstantList(Class: String, noInheritance: Bool = false): PoolStringArray;
    public function classGetMethodList(Class: String, noInheritance: Bool = false): Array<Dynamic>;
    public function classGetProperty(object: Object, property: String): Variant;
    public function classGetPropertyList(Class: String, noInheritance: Bool = false): Array<Dynamic>;
    public function classGetSignal(Class: String, signal: String): Map<Dynamic, Dynamic>;
    public function classGetSignalList(Class: String, noInheritance: Bool = false): Array<Dynamic>;
    public function classHasEnum(Class: String, name: String, noInheritance: Bool = false): Bool;
    public function classHasIntegerConstant(Class: String, name: String): Bool;
    public function classHasMethod(Class: String, method: String, noInheritance: Bool = false): Bool;
    public function classHasSignal(Class: String, signal: String): Bool;
    public function classSetProperty(object: Object, property: String, value: Variant): Int;
    public function getClassList(): PoolStringArray;
    public function getInheritersFromClass(Class: String): PoolStringArray;
    public function getParentClass(Class: String): String;
    public function instance(Class: String): Variant;
    public function isClassEnabled(Class: String): Bool;
    public function isParentClass(Class: String, inherits: String): Bool;
    @:native("__new")
    public function new();
}
