package boltEd;

import bolt.godot.LineEdit;
import bolt.godot.SignalToFunc;
import lua.Boot;
import haxe.Constraints.Function;
import bolt.godot.Button;
import bolt.godot.MenuButton;
import bolt.godot.LineEdit;
import bolt.godot.Tree;
import bolt.godot.TreeItem;
import bolt.godot.ItemList;
import bolt.godot.ImageTexture;
import bolt.godot.Image;
import boltEd.explorer.DirIndex;
import boltEd.explorer.FileIndex;
import boltEd.explorer.FileHandler;
import bolt.godot.AcceptDialog;
import bolt.godot.Vector2;
import bolt.io.IoCore;
import lua.Table;

class Explorer {
    public var editorWindow : EditorWindow;

    public var ioCore : IoCore;

    public var backButton : Button;

    public var forwardButton : Button;

    public var upButton : Button;

    public var refreshButton : Button;

    public var newButton : MenuButton;

    public var addressBar : LineEdit;

    public var tree : Tree;

    public var itemList : ItemList;

    public var rootDirIndex : DirIndex = null;

    public var selectedPath : String = "project://";

    public var fileHandlers : Array<FileHandler> = new Array<FileHandler>();

    public var folderTexture : ImageTexture;

    public var nextDirs : Array<String> = new Array<String>();

    public var previousDirs : Array<String> = new Array<String>();

    public var isInitialized : Bool = false;
    
    public function getDirIndex(path : String = "project://",  dirIndex : DirIndex = null) : DirIndex {
        if (dirIndex == null) {
            dirIndex = rootDirIndex;
        }
        if (dirIndex.path == path) {
            return dirIndex;
        }
        for (i in 0...dirIndex.directories.length) {
            var dir = dirIndex.directories[i];
            var dIndex = getDirIndex(path, dir);
            if (dIndex != null) {
                return dIndex;
            }
        }
        return null;
    }


    public function new(ew : EditorWindow) {
        editorWindow = ew;
        ioCore = editorWindow.ioCore;
    }


    public function init() {
        try {
            folderTexture = loadIcon("data://FugueIcons/bonus/icons-32/folder.png");
            backButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Control/VSplitContainer/Dock/Explorer/VBoxContainer/Toolbar/HBoxContainer/Back");
            if (backButton == null) {
                Sys.println("backButton is null");
            }
            SignalToFunc.connect(backButton, "pressed", () -> goBackADir());
            forwardButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Control/VSplitContainer/Dock/Explorer/VBoxContainer/Toolbar/HBoxContainer/Forward");
            if (forwardButton == null) {
                Sys.println("forwardButton is null");
            }
            SignalToFunc.connect(forwardButton, "pressed", () -> goForwardADir());
            upButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Control/VSplitContainer/Dock/Explorer/VBoxContainer/Toolbar/HBoxContainer/Up");
            SignalToFunc.connect(upButton, "pressed", () -> goUpADir());
            refreshButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Control/VSplitContainer/Dock/Explorer/VBoxContainer/Toolbar/HBoxContainer/Refresh");
            SignalToFunc.connect(refreshButton, "pressed", () -> refresh());
            newButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Control/VSplitContainer/Dock/Explorer/VBoxContainer/Toolbar/HBoxContainer/New");
            tree = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Control/VSplitContainer/Dock/Explorer/VBoxContainer/HSplitContainer/DirTree");
            SignalToFunc.connect(tree, "item_selected", () -> onTreeItemSelected());
            itemList = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Control/VSplitContainer/Dock/Explorer/VBoxContainer/HSplitContainer/CurrentDirItemList");
            SignalToFunc.connect(itemList, "item_activated", () -> onItemListItemActivated());
        }
        catch (e) {
            throw e;}
    }

    public function buildRoot() : DirIndex {
        var root = new DirIndex("project://");
        root.dirName = editorWindow.projectName;

        if (root == null) {
            var acceptDialog = new AcceptDialog();
            acceptDialog.windowTitle = "Error";
            acceptDialog.dialogText = "Invalid directory index: root is null or undefined.";
            editorWindow.document.addChild(acceptDialog);
            acceptDialog.popupCentered(new Vector2(0, 0));
            return null;
        }
        buildTree(root);

        return root;
    }

    public function start() : Void {
        isInitialized = false;
        rootDirIndex = buildRoot();
        createTreeItemFromDirTree(rootDirIndex);

        updatePath("project://");

        isInitialized = true;
    }

    public function refresh() : Void {
        isInitialized = false;
        rootDirIndex = buildRoot();
        createTreeItemFromDirTree(rootDirIndex);

        updatePath(selectedPath);

        isInitialized = true;
    }

    public function updatePath(path : String) {
        selectedPath = path;

        var currentDirIndex = getDirIndex(selectedPath);

        if (currentDirIndex != null) {
            itemList.clear();
            createCurrentDirItemList(currentDirIndex);
        }
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

        var directoriesTable : Table<Int, String> = cast ioCore.getFileList(path, "/", false);
        //untyped __lua__("print(directoriesTable)");
        var directories = Table.toArray(directoriesTable);
        //trace("directories != null: " + (directories != null));

        if (directories != null) {
            var len = directories.length;
            //trace("len != null: " + (len != null));
            //trace("len: " + len);
            var start = 0;
            //trace("start != null: " + (start != null));
            for (i in start...len) {
                //trace("i: " + i);
                var dirPath = directories[i];
                //trace("dirPath: " + dirPath);
                var dirIndex = new DirIndex(dirPath, parent);
                //Sys.println("dirPath: " + dirPath);
                var dirWithoutUrl = dirPath.substring(9);
                //trace("dirWithoutUrl: " + dirWithoutUrl);
                var dirPathList = dirWithoutUrl.split("/");
                //trace("dirPathList: " + dirPathList);
                var dirName = dirPathList[dirPathList.length - 2];
                //trace("dirName: " + dirName);

                dirIndex.dirName = dirName;
                if (parent.directories == null) {
                    parent.directories = [];
                }

                parent.directories.push(dirIndex);
                buildTree(dirIndex, dirPath);
            }
        }

        var filesTable : Table<Int, String> = cast ioCore.getFileList(path, "", false);
        var files = Table.toArray(filesTable);
        if (files != null) {
            var len = files.length;
            //trace("len != null: " + (len != null));
            //trace("len: " + len);
            var start = 0;
            //trace("start != null: " + (start != null));
            for (i in start...len) {
                //trace("i: " + i);
                var filePath = files[i];
                if (filePath.substring(filePath.length - 1) == "/") {
                    continue;
                }
                var fileIndex = new FileIndex(filePath, parent);
                var fileWithoutUrl = filePath.substring(9);
                var filePathList = fileWithoutUrl.split("/");
                var fileName = filePathList[filePathList.length - 1];
                fileIndex.fileName = fileName;
                if (parent.files == null) {
                    parent.files = [];
                }

                parent.files.push(fileIndex);
            }
        }
        
    }

    public function printTree(dirIndex : DirIndex, indent : Int = 0) {
        var indentStr = "";
        for (i in 0...indent) {
            indentStr += "  ";
        }

        Sys.println(indentStr + dirIndex.dirName);
        if (dirIndex.directories != null) {
            for (dir in dirIndex.directories) {
                printTree(dir, indent + 1);
            }
        }
        if (dirIndex.files != null) {
            for (file in dirIndex.files) {
                Sys.println(indentStr + "  " + file.fileName);
            }
        }
        
    }

    public function createTreeItemFromDirTree(dirIndex : DirIndex, parentItem : TreeItem = null) : Void {
        var treeItem : TreeItem;

        if (dirIndex == null){
            return;
        }

        var projectIconFile = ioCore.loadBuffer("data://FugueIcons/icons/application-blue-bolt.png");
        var projectImage = new Image();
        projectImage.loadPngFromBuffer(projectIconFile);
        var projectTexture = new ImageTexture();
        projectTexture.createFromImage(projectImage);

        var folderIconFile = ioCore.loadBuffer("data://FugueIcons/icons/folder.png");
        var folderImage = new Image();
        folderImage.loadPngFromBuffer(folderIconFile);
        var folderTexture = new ImageTexture();
        folderTexture.createFromImage(folderImage);

        if (parentItem == null) {
            tree.clear();
            treeItem = tree.createItem(null);
            treeItem.setText(0, dirIndex.dirName);
            treeItem.setIcon(0, projectTexture);
        }
        else {
            treeItem = tree.createItem(parentItem);
            treeItem.setText(0, dirIndex.dirName);
            treeItem.setIcon(0, folderTexture);
        }

        treeItem.setMetadata(0, dirIndex.path);
        
        if (dirIndex.directories != null) {
            for (dir in dirIndex.directories) {
                createTreeItemFromDirTree(dir, treeItem);
            }
        }
        
    }

    public function loadIcon(path : String) : ImageTexture {
        var iconFile = ioCore.loadBuffer(path);
        var iconImage = new Image();
        if (StringTools.endsWith(path, ".png")) {
            iconImage.loadPngFromBuffer(iconFile);
        }
        else if (StringTools.endsWith(path, ".jpg") || StringTools.endsWith(path, ".jpeg")) {
            iconImage.loadJpgFromBuffer (iconFile);
        }
        else if (StringTools.endsWith(path, ".bmp")) {
            iconImage.loadBmpFromBuffer(iconFile);
        }
        else if (StringTools.endsWith(path, ".webp")) {
            iconImage.loadWebpFromBuffer(iconFile);
        }
        var iconTexture = new ImageTexture();
        iconTexture.createFromImage(iconImage);
        return iconTexture;
    }

    public function createCurrentDirItemList(dirIndex : DirIndex) {
        if (dirIndex == null) {
            return;
        }

        if (dirIndex.directories != null) {
            for (dir in dirIndex.directories) {
                itemList.addItem(
                    dir.dirName,
                    folderTexture,
                );
                var itemIdxCount = itemList.getItemCount();
                for (i in 0...itemIdxCount) {
                    if (itemList.getItemText(i) == dir.dirName) {
                        itemList.setItemMetadata(i, dir.path);
                        break;
                    }
                }
            }
        }

        if (dirIndex.files != null) {
            for (file in dirIndex.files) {
                itemList.addItem(
                    file.fileName,
                    loadIcon("data://FugueIcons/bonus/icons-32/document.png"),
                );
                var itemIdxCount = itemList.getItemCount();
                for (i in 0...itemIdxCount) {
                    if (itemList.getItemText(i) == file.fileName) {
                        itemList.setItemMetadata(i, file.path);
                        
                        for (handler in fileHandlers) {
                            if (StringTools.endsWith(file.path, handler.extension)) {
                                itemList.setItemIcon(i, loadIcon(handler.iconPath));
                            }
                        }
                        break;
                    }
                }
            }
        }
        
    }

    public function onItemListItemActivated() {
        if (!isInitialized) {
            return;
        }
        var indexes : Int = cast itemList.getItemCount();
        var index : Int = null;

        for (i in 0...indexes) {
            if (itemList.isSelected(i)) {
                index = i;
                break;
            }
        }
        if (index == null) {
            return;
        }
        var path : String = cast itemList.getItemMetadata(index);
        if (itemList.getItemIcon(index) == folderTexture) {
            previousDirs.push(selectedPath);
            updatePath(path);
        }
        else {
            for (handler in fileHandlers) {
                if (StringTools.endsWith(path, handler.extension)) {
                    handler.openFile(path);
                    break;
                }
            }
        }
    }

    public function goForwardADir() {
        Sys.println("goForwardADir");
        if (!isInitialized) {
            return;
        }
        if (nextDirs.length > 0) {
            Sys.println(selectedPath);
            previousDirs.push(selectedPath);
            updatePath(nextDirs.pop());
            Sys.println(selectedPath);
        }
    }

    public function goBackADir() {
        Sys.println("goBackADir");
        if (!isInitialized) {
            return;
        }
        if (previousDirs.length > 0) {
            Sys.println(selectedPath);
            nextDirs.push(selectedPath);
            updatePath(previousDirs.pop());
            Sys.println(selectedPath);
        }
    }

    public function goUpADir() {
        Sys.println(selectedPath);
        if (!isInitialized) {
            return;
        }
        if (selectedPath == "project://") {
            return;
        }
        if (nextDirs.length != 0) {
            nextDirs = new Array<String>();
        }
        var pathArray = selectedPath.split("/");
        var newPath = pathArray.slice(0, pathArray.length - 1).join("/") + "/";
        if (StringTools.endsWith(selectedPath, "/")) {
            newPath = pathArray.slice(0, pathArray.length - 2).join("/") + "/";
        }
        if (!StringTools.startsWith(newPath, "project://")) {
            newPath = StringTools.replace(newPath, "project:/", "project://");
        }

        updatePath(newPath);
        Sys.println(selectedPath);
    }


    public function onTreeItemSelected() {
        if (!isInitialized) {
            return;
        }
        var selcted = tree.getSelected();
        if (selcted != null) {
            previousDirs.push(selectedPath);
            updatePath(cast selcted.getMetadata(0));
        }
    }
}