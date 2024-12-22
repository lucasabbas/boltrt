package lucidkit.godot;

@:native("godot.ClassDB")
extern class ClassDB extends Object {
    public function can_instance(class: String): Bool;
    public function class_exists(class: String): Bool;
    public function class_get_category(class: String): String;
    public function class_get_enum_constants(class: String, enum: String, no_inheritance: Bool): PoolStringArray;
    public function class_get_enum_list(class: String, no_inheritance: Bool): PoolStringArray;
    public function class_get_integer_constant(class: String, name: String): Int;
    public function class_get_integer_constant_enum(class: String, name: String, no_inheritance: Bool): String;
    public function class_get_integer_constant_list(class: String, no_inheritance: Bool): PoolStringArray;
    public function class_get_method_list(class: String, no_inheritance: Bool): Array<Dynamic>;
    public function class_get_property(object: Object, property: String): Variant;
    public function class_get_property_list(class: String, no_inheritance: Bool): Array<Dynamic>;
    public function class_get_signal(class: String, signal: String): Map<Dynamic, Dynamic>;
    public function class_get_signal_list(class: String, no_inheritance: Bool): Array<Dynamic>;
    public function class_has_enum(class: String, name: String, no_inheritance: Bool): Bool;
    public function class_has_integer_constant(class: String, name: String): Bool;
    public function class_has_method(class: String, method: String, no_inheritance: Bool): Bool;
    public function class_has_signal(class: String, signal: String): Bool;
    public function class_set_property(object: Object, property: String, value: Variant): Int;
    public function get_class_list(): PoolStringArray;
    public function get_inheriters_from_class(class: String): PoolStringArray;
    public function get_parent_class(class: String): String;
    public function instance(class: String): Variant;
    public function is_class_enabled(class: String): Bool;
    public function is_parent_class(class: String, inherits: String): Bool;
}
