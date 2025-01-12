package bolt.godot.extensions;

import bolt.godot.AcceptDialog;
import bolt.godot.Label;
import bolt.godot.Texture;

enum AcceptDialogPlusTypeInfo {
    Error;
    Warning;
    Info;
}

@:native("godot.AcceptDialogPlus")
extern class AcceptDialogPlus extends AcceptDialog {
    public var type: AcceptDialogPlusTypeInfo;

    public var label: Label;

    public var text: String;

    public function new(type : AcceptDialogPlusTypeInfo = AcceptDialogPlusTypeInfo.Info);

    public function setIcon(icon : Texture): Void;
}