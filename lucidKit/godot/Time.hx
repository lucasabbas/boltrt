package lucidKit.godot;

class TimeSignalNames {
}
@:native("godot.Time")
extern class Time extends Object {
    public function getDateDictFromSystem(utc: Bool = false): Map<Dynamic, Dynamic>;
    public function getDateDictFromUnixTime(unixTimeVal: Int): Map<Dynamic, Dynamic>;
    public function getDateStringFromSystem(utc: Bool = false): String;
    public function getDateStringFromUnixTime(unixTimeVal: Int): String;
    public function getDatetimeDictFromDatetimeString(datetime: String, weekday: Bool): Map<Dynamic, Dynamic>;
    public function getDatetimeDictFromSystem(utc: Bool = false): Map<Dynamic, Dynamic>;
    public function getDatetimeDictFromUnixTime(unixTimeVal: Int): Map<Dynamic, Dynamic>;
    public function getDatetimeStringFromDatetimeDict(datetime: Map<Dynamic, Dynamic>, useSpace: Bool): String;
    public function getDatetimeStringFromSystem(utc: Bool = false, useSpace: Bool = false): String;
    public function getDatetimeStringFromUnixTime(unixTimeVal: Int, useSpace: Bool = false): String;
    public function getOffsetStringFromOffsetMinutes(offsetMinutes: Int): String;
    public function getTicksMsec(): Int;
    public function getTicksUsec(): Int;
    public function getTimeDictFromSystem(utc: Bool = false): Map<Dynamic, Dynamic>;
    public function getTimeDictFromUnixTime(unixTimeVal: Int): Map<Dynamic, Dynamic>;
    public function getTimeStringFromSystem(utc: Bool = false): String;
    public function getTimeStringFromUnixTime(unixTimeVal: Int): String;
    public function getTimeZoneFromSystem(): Map<Dynamic, Dynamic>;
    public function getUnixTimeFromDatetimeDict(datetime: Map<Dynamic, Dynamic>): Int;
    public function getUnixTimeFromDatetimeString(datetime: String): Int;
    public function getUnixTimeFromSystem(): Float;
    @:native("__new")
    public function new();
}
