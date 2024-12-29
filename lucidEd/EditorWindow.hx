package lucidEd;

import lucidKit.ui.Widget;

class EditorWindow extends Widget {
    public override function init() {
        document.loadFromPath("data://editorWindow.xml", ioCore);
    }
}