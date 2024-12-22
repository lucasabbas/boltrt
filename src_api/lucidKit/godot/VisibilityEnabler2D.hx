package lucidkit.godot;

@:native("godot.VisibilityEnabler2D")
extern class VisibilityEnabler2D extends VisibilityNotifier2D {
    public var freeze_bodies: Bool;
    public var pause_animated_sprites: Bool;
    public var pause_animations: Bool;
    public var pause_particles: Bool;
    public var physics_process_parent: Bool;
    public var process_parent: Bool;
    public function is_enabler_enabled(enabler: Int): Bool;
    public function set_enabler(enabler: Int, enabled: Bool): Void;
}
