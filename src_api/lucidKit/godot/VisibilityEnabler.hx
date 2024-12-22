package lucidkit.godot;

@:native("godot.VisibilityEnabler")
extern class VisibilityEnabler extends VisibilityNotifier {
    public var freeze_bodies: Bool;
    public var pause_animations: Bool;
    public function is_enabler_enabled(enabler: Int): Bool;
    public function set_enabler(enabler: Int, enabled: Bool): Void;
}
