package;

import lucidKit.App;
import lucidKit.godot.extensions.UiDocument;
import lucidKit.godot.Label;
import lucidKit.godot.Button;
import lucidKit.godot.SignalToFunc;

class Main extends App {
    static function main() {
        new Main();
    }

    var counter : Int = 0;

    override function init() {
        trace("Hello, World!");

        var uiDocument = new UiDocument();
        rootNode.addChild(uiDocument);
        uiDocument.loadFromPath("data://gui.xml", ioManager);

        var label : Label = cast uiDocument.getObject("Panel/VBoxContainer/Control/Label");
        var button : Button = cast uiDocument.getObject("Panel/VBoxContainer/Control/Button");

        SignalToFunc.connect(button, "pressed", function() {
            counter++;
            trace("You clicked me " + counter + " times!");
            label.text = "You clicked me " + counter + " times!";
        });
    }
}