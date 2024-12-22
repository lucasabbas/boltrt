package lucidKit.godot;

@:native("godot.ClassDB")
extern class ClassDB extends Object {
    public function can_instance(_class: String): Bool;
    public function class_exists(_class: String): Bool;
    public function class_get_category(_class: String): String;
    public function class_get_enum_constants(_class: String, enum: String, no_inheritance: Bool): PoolStringArray;
    public function class_get_enum_list(_class: String, no_inheritance: Bool): PoolStringArray;
    public function class_get_integer_constant(_class: String, name: String): Int;
    public function class_get_integer_constant_enum(_class: String, name: String, no_inheritance: Bool): String;
    public function class_get_integer_constant_list(_class: String, no_inheritance: Bool): PoolStringArray;
    public function class_get_method_list(_class: String, no_inheritance: Bool): Array<Dynamic>;
    public function class_get_property(object: Object, property: String): Variant;
    public function class_get_property_list(_class: String, no_inheritance: Bool): Array<Dynamic>;
    public function class_get_signal(_class: String, signal: String): Map<Dynamic, Dynamic>;
    public function class_get_signal_list(_class: String, no_inheritance: Bool): Array<Dynamic>;
    public function class_has_enum(_class: String, name: String, no_inheritance: Bool): Bool;
    public function class_has_integer_constant(_class: String, name: String): Bool;
    public function class_has_method(_class: String, method: String, no_inheritance: Bool): Bool;
    public function class_has_signal(_class: String, signal: String): Bool;
    public function class_set_property(object: Object, property: String, value: Variant): Int;
    public function get_class_list(): PoolStringArray;
    public function get_inheriters_from_class(_class: String): PoolStringArray;
    public function get_parent_class(_class: String): String;
    public function instance(_class: String): Variant;
    public function is_class_enabled(_class: String): Bool;
    public function is_parent_class(_class: String, inherits: String): Bool;
    @:native("__new")
    public function new();
}
