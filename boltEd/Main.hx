package boltEd;

import boltEd.EditorWindow;
import bolt.godot.CubeMesh;
import bolt.godot.Vector3;
import bolt.godot.Node;
import sys.io.File;
import sys.FileSystem;
import bolt.godot.Vector2;
import bolt.godot.Vector3;
import haxe.ds.Vector;
import bolt.godot.Object;
import bolt.godot.Camera;
import bolt.godot.MeshInstance;
import bolt.godot.DirectionalLight;
import bolt.godot.extensions.FreeLookCamera;
import bolt.App;

class Main extends App{
    public var editorWindow : EditorWindow;

    public static function main(){
        new Main();
    }

    public override function init() {
        editorWindow = new EditorWindow(ioManager, rootNode);
    }
}