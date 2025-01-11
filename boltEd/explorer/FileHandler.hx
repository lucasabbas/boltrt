package boltEd.explorer;

import boltEd.EditorWindow;
import boltEd.Explorer;

class FileHandler {
    public var extension : String = "";

    public var iconPath : String = "";

    public var explorerObj : Explorer = null;

    public var window : EditorWindow = null;

    public function new(w : EditorWindow, e : Explorer) {
        window = w;
        explorerObj = e;
    }

    public function openFile(string : String) {
        
    }
}