package lucidkit.godot;

@:native("godot.Time")
extern class Time extends Object {
    public function get_date_dict_from_system(utc: Bool): Map<Dynamic, Dynamic>;
    public function get_date_dict_from_unix_time(unix_time_val: Int): Map<Dynamic, Dynamic>;
    public function get_date_string_from_system(utc: Bool): String;
    public function get_date_string_from_unix_time(unix_time_val: Int): String;
    public function get_datetime_dict_from_datetime_string(datetime: String, weekday: Bool): Map<Dynamic, Dynamic>;
    public function get_datetime_dict_from_system(utc: Bool): Map<Dynamic, Dynamic>;
    public function get_datetime_dict_from_unix_time(unix_time_val: Int): Map<Dynamic, Dynamic>;
    public function get_datetime_string_from_datetime_dict(datetime: Map<Dynamic, Dynamic>, use_space: Bool): String;
    public function get_datetime_string_from_system(utc: Bool, use_space: Bool): String;
    public function get_datetime_string_from_unix_time(unix_time_val: Int, use_space: Bool): String;
    public function get_offset_string_from_offset_minutes(offset_minutes: Int): String;
    public function get_ticks_msec(): Int;
    public function get_ticks_usec(): Int;
    public function get_time_dict_from_system(utc: Bool): Map<Dynamic, Dynamic>;
    public function get_time_dict_from_unix_time(unix_time_val: Int): Map<Dynamic, Dynamic>;
    public function get_time_string_from_system(utc: Bool): String;
    public function get_time_string_from_unix_time(unix_time_val: Int): String;
    public function get_time_zone_from_system(): Map<Dynamic, Dynamic>;
    public function get_unix_time_from_datetime_dict(datetime: Map<Dynamic, Dynamic>): Int;
    public function get_unix_time_from_datetime_string(datetime: String): Int;
    public function get_unix_time_from_system(): Float;
}
