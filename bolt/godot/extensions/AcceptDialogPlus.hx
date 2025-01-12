package bolt.godot.extensions;

import bolt.godot.AcceptDialog;
import bolt.godot.Label;
import bolt.godot.Texture;

enum AcceptDialogPlusTypeInfo {
    Error;
    Warning;
    Info;
}

@:native("gdx.AcceptDialogPlus")
extern class AcceptDialogPlus extends AcceptDialog {
    public var type: AcceptDialogPlusTypeInfo;

    public var label: Label;

    public var text: String;

    @:native("__new")
    public function new(type : AcceptDialogPlusTypeInfo = cast AcceptDialogPlusTypeInfo.Info);

    public function setIcon(icon : Texture): Void;
}