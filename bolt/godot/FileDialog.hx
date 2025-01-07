package bolt.godot;

class FileDialogMode {
    public static var OpenFile: Int = 0;
    public static var OpenFiles: Int = 1;
    public static var OpenDir: Int = 2;
    public static var OpenAny: Int = 3;
    public static var SaveFile: Int = 4;
}
class FileDialogAccess {
    public static var Resources: Int = 0;
    public static var Userdata: Int = 1;
    public static var Filesystem: Int = 2;
}
class FileDialogGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class FileDialogGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class FileDialogFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class FileDialogMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class FileDialogMouseDefaultCursorShape {
    public static var Arrow: Int = 0;
    public static var Ibeam: Int = 1;
    public static var PointingHand: Int = 2;
    public static var Cross: Int = 3;
    public static var Wait: Int = 4;
    public static var Busy: Int = 5;
    public static var Drag: Int = 6;
    public static var CanDrop: Int = 7;
    public static var Forbidden: Int = 8;
    public static var Vsize: Int = 9;
    public static var Hsize: Int = 10;
    public static var Bdiagsize: Int = 11;
    public static var Fdiagsize: Int = 12;
    public static var Move: Int = 13;
    public static var Vsplit: Int = 14;
    public static var Hsplit: Int = 15;
    public static var Help: Int = 16;
}
class FileDialogPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class FileDialogPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class FileDialogSignalNames {
    public static var dirSelected: String = "dir_selected";
    public static var fileSelected: String = "file_selected";
    public static var filesSelected: String = "files_selected";
}
@:native("godot.FileDialog")
extern class FileDialog extends ConfirmationDialog {
    public var access: Int;
    public var currentDir: String;
    public var currentFile: String;
    public var currentPath: String;
    public var filters: lua.Table[Int, String];
    public var mode: Int;
    public var modeOverridesTitle: Bool;
    public var rootSubfolder: String;
    public var showHiddenFiles: Bool;
    public function addFilter(filter: String): Void;
    public function clearFilters(): Void;
    public function deselectItems(): Void;
    public function getLineEdit(): LineEdit;
    public function getVbox(): VBoxContainer;
    public function invalidate(): Void;
    @:native("__new")
    public function new();
}
