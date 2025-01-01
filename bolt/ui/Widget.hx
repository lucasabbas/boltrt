package bolt.ui;

import bolt.godot.extensions.UiDocument;
import bolt.io.IoCore;
import bolt.godot.Node;

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