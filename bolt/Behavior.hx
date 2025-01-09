package bolt;

import bolt.godot.InputEvent;

class Behavior {
    public var gameObject : GameObject;

    public function new() {
    }

    public function awake() {
    }

    public function start() {
    }

    public function update(deltatime:Float) {
    }

    public function physicsUpdate(deltatime:Float) {
    }

    public function input(event:InputEvent) {
    }

    public function unhandledInput(event:InputEvent) {
    }

    public function shortcutInput(event:InputEvent) {
    }

    public function unhandledKeyInput(event:InputEvent) {
    }

    public function end() {
    }

    public function getComponent(type : Dynamic): Dynamic {
        var comp = gameObject.getComponent(type);
        return comp;
    }
}