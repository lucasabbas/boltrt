package boltEd;

import bolt.godot.Button;
import bolt.godot.Tree;
import bolt.godot.TreeItem;
import bolt.godot.ImageTexture;
import bolt.godot.Image;
import boltEd.explorer.DirIndex;
import boltEd.explorer.FileIndex;
import bolt.godot.AcceptDialog;
import bolt.godot.Vector2;
import bolt.io.IoCore;
import lua.Table;

class Explorer {
    public var editorWindow : EditorWindow;

    public var ioCore : IoCore;

    public var reloadButton : Button;

    public var newButton : Button;

    public var tree : Tree;

    public var rootDirIndex : DirIndex;

    public function new(ew : EditorWindow) {
        editorWindow = ew;
        ioCore = editorWindow.ioCore;
    }

    public function init() {
        reloadButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/VBoxContainer/ToolBar/HBoxContainer/ReloadButton");
        newButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/VBoxContainer/ToolBar/HBoxContainer/NewButton");
        tree = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/VBoxContainer/Tree");
    }

    public function buildRoot() : DirIndex {
        var root = new DirIndex("project://");
        root.dirName = "Project";

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

    public function start() {
        rootDirIndex = buildRoot();

        //printTree(rootDirIndex);
        createTreeItemFromDirTree(rootDirIndex);
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
        if (dirIndex.files != null) {
            for (file in dirIndex.files) {
                var fileIconFile = ioCore.loadBuffer("data://FugueIcons/icons/document.png");
                var fileImage = new Image();
                fileImage.loadPngFromBuffer(fileIconFile);
                var fileTexture = new ImageTexture();
                fileTexture.createFromImage(fileImage);
                var fileItem = tree.createItem(treeItem);
                fileItem.setText(0, file.fileName);
                fileItem.setIcon(0, fileTexture);
                fileItem.setMetadata(0, file.path);
            }
        }
        
    }
}