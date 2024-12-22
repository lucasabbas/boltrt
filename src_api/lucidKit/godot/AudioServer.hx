package lucidkit.godot;

@:native("godot.AudioServer")
extern class AudioServer extends Object {
    public var bus_count: Int;
    public var capture_device: String;
    public var device: String;
    public var global_rate_scale: Float;
    public function add_bus(at_position: Int): Void;
    public function add_bus_effect(bus_idx: Int, effect: AudioEffect, at_position: Int): Void;
    public function capture_get_device_list(): Array<Dynamic>;
    public function generate_bus_layout(): AudioBusLayout;
    public function get_bus_channels(bus_idx: Int): Int;
    public function get_bus_effect(bus_idx: Int, effect_idx: Int): AudioEffect;
    public function get_bus_effect_count(bus_idx: Int): Int;
    public function get_bus_effect_instance(bus_idx: Int, effect_idx: Int, channel: Int): AudioEffectInstance;
    public function get_bus_index(bus_name: String): Int;
    public function get_bus_name(bus_idx: Int): String;
    public function get_bus_peak_volume_left_db(bus_idx: Int, channel: Int): Float;
    public function get_bus_peak_volume_right_db(bus_idx: Int, channel: Int): Float;
    public function get_bus_send(bus_idx: Int): String;
    public function get_bus_volume_db(bus_idx: Int): Float;
    public function get_device_list(): Array<Dynamic>;
    public function get_mix_rate(): Float;
    public function get_output_latency(): Float;
    public function get_speaker_mode(): Int;
    public function get_time_since_last_mix(): Float;
    public function get_time_to_next_mix(): Float;
    public function is_bus_bypassing_effects(bus_idx: Int): Bool;
    public function is_bus_effect_enabled(bus_idx: Int, effect_idx: Int): Bool;
    public function is_bus_mute(bus_idx: Int): Bool;
    public function is_bus_solo(bus_idx: Int): Bool;
    public function lock(): Void;
    public function move_bus(index: Int, to_index: Int): Void;
    public function remove_bus(index: Int): Void;
    public function remove_bus_effect(bus_idx: Int, effect_idx: Int): Void;
    public function set_bus_bypass_effects(bus_idx: Int, enable: Bool): Void;
    public function set_bus_effect_enabled(bus_idx: Int, effect_idx: Int, enabled: Bool): Void;
    public function set_bus_layout(bus_layout: AudioBusLayout): Void;
    public function set_bus_mute(bus_idx: Int, enable: Bool): Void;
    public function set_bus_name(bus_idx: Int, name: String): Void;
    public function set_bus_send(bus_idx: Int, send: String): Void;
    public function set_bus_solo(bus_idx: Int, enable: Bool): Void;
    public function set_bus_volume_db(bus_idx: Int, volume_db: Float): Void;
    public function swap_bus_effects(bus_idx: Int, effect_idx: Int, by_effect_idx: Int): Void;
    public function unlock(): Void;
}
