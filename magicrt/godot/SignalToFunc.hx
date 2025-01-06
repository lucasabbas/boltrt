package magicrt.godot;

import haxe.Constraints.Function;

@:native("godot.SignalToFunc")
extern class SignalToFunc {
    public static function connect(obj : Object, signal : String, func : Function) : Void;
}