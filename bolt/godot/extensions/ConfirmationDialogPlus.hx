package bolt.godot.extensions;

import bolt.godot.AcceptDialog;
import bolt.godot.Label;
import bolt.godot.Texture;

enum ConfirmationDialogPlusTypeInfo {
    Error;
    Warning;
    Info;
}

@:native("godot.ConfirmationDialogPlus")
extern class ConfirmationDialogPlus extends AcceptDialog {
    public var type: ConfirmationDialogPlusTypeInfo;

    public var label: Label;

    public var text: String;

    public function new(type : ConfirmationDialogPlusTypeInfo = ConfirmationDialogPlusTypeInfo.Info);

    public function setIcon(icon : Texture): Void;
}