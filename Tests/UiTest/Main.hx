package;

import magicrt.App;
import magicrt.godot.extensions.UiDocument;
import magicrt.godot.Label;
import magicrt.godot.Button;
import magicrt.godot.SignalToFunc;

class Main extends App {
    static function main() {
        new Main();
    }

    var counter : Int = 0;

    var deltaTimeLabel : Label;

    override function init() {
        trace("Hello, World!");

        var uiDocument = new UiDocument();
        rootNode.addChild(uiDocument);
        uiDocument.loadFromPath("data://gui.xml", ioManager);

        var label : Label = cast uiDocument.getObject("Panel/VBoxContainer/Control/Label");
        var button : Button = cast uiDocument.getObject("Panel/VBoxContainer/Control/Button");
        deltaTimeLabel = cast uiDocument.getObject("Panel/VBoxContainer/Topbar/DTLabel");

        SignalToFunc.connect(button, "pressed", function() {
            counter++;
            trace("You clicked me " + counter + " times!");
            label.text = "You clicked me " + counter + " times!";
        });
    }

    override function process(delta : Float) {
        deltaTimeLabel.text = "DeltaTime: " + Std.string(delta);
    }
}