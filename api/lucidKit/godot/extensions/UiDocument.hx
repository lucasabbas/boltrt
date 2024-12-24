package lucidKit.godot.extensions;

import lucidKit.godot.Control;
import lucidKit.io.IoCore;

@:native("gdx.UiDocument")
extern class UiDocument extends Control {
    @:native("__new")
    public function new();

    public function loadFromString(string : String) : Void;

    public function loadFromPath(path : String, ioCore : IoCore) : Void;

    public function getObject(path : String) : Node;
}