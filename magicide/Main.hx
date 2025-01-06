package magicide;

import magicide.EditorWindow;
import magicrt.godot.CubeMesh;
import magicrt.godot.Vector3;
import magicrt.godot.Node;
import sys.io.File;
import sys.FileSystem;
import magicrt.godot.Vector2;
import magicrt.godot.Vector3;
import haxe.ds.Vector;
import magicrt.godot.Object;
import magicrt.godot.Camera;
import magicrt.godot.MeshInstance;
import magicrt.godot.DirectionalLight;
import magicrt.godot.extensions.FreeLookCamera;
import magicrt.App;

class Main extends App{
    public var editorWindow : EditorWindow;

    public static function main(){
        new Main();
    }

    public override function init() {
        editorWindow = new EditorWindow(ioManager, rootNode);
    }
}