package lucidEd;

import lucidKit.godot.Button;
import lucidKit.godot.Tree;
import lucidEd.explorer.DirIndex;
import lucidEd.explorer.FileIndex;
import lucidKit.godot.AcceptDialog;
import lucidKit.godot.Vector2;

class Explorer {
    public var editorWindow : EditorWindow;

    public var reloadButton : Button;

    public var newButton : Button;

    public var tree : Tree;

    public var rootDirIndex : DirIndex;

    public function new(ew : EditorWindow) {
        editorWindow = ew;
    }

    public function init() {
        reloadButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/ToolBar/HBoxContainer/ReloadButton");
        newButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/ToolBar/HBoxContainer/NewButton");
        tree = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/Tree");
    }

    public function buildTree(parent : DirIndex = null, path : String = "project://") {
        if (parent == null) {
            var acceptDialog = new AcceptDialog();
            acceptDialog.windowTitle = "Error";
            acceptDialog.dialogText = "Invalid directory index: parent is null or undefined.";
            editorWindow.document.addChild(acceptDialog);
            acceptDialog.popupCentered(new Vector2(0, 0));
            return;
        }
    }
}