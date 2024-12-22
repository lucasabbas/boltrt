package lucidkit.godot;

@:native("godot.CanvasItemMaterial")
extern class CanvasItemMaterial extends Material {
    public var blend_mode: Int;
    public var light_mode: Int;
    public var particles_anim_h_frames: Int;
    public var particles_anim_loop: Bool;
    public var particles_anim_v_frames: Int;
    public var particles_animation: Bool;
}
