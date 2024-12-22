package lucidKit.godot;

@:native("godot.Light")
extern class Light extends VisualInstance {
    public var editor_only: Bool;
    public var light_bake_mode: Int;
    public var light_color: Color;
    public var light_cull_mask: Int;
    public var light_energy: Float;
    public var light_indirect_energy: Float;
    public var light_negative: Bool;
    public var light_size: Float;
    public var light_specular: Float;
    public var shadow_bias: Float;
    public var shadow_color: Color;
    public var shadow_contact: Float;
    public var shadow_enabled: Bool;
    public var shadow_reverse_cull_face: Bool;
    public function get_param(param: Int): Float;
    public function set_param(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
