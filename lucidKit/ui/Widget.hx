package lucidKit.ui;

import lucidKit.godot.extensions.UiDocument;
import lucidKit.io.IoCore;
import lucidKit.godot.Node;

class Widget {
    public var document : UiDocument;

    public var ioCore : IoCore;

    public function new(ioCore : IoCore, parentNode : Node) {
        document = new UiDocument();
        this.ioCore = ioCore;
        parentNode.addChild(document);

        init();
    }

    public function init() {
        
    }

    public function stop() {
        
    }

    public function free() {
        stop();
        document.queueFree();
    }
}