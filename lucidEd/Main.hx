package lucidEd;

import lucidEd.EditorWindow;
import lucidKit.godot.CubeMesh;
import lucidKit.godot.Vector3;
import lucidKit.godot.Node;
import sys.io.File;
import sys.FileSystem;
import lucidKit.godot.Vector2;
import lucidKit.godot.Vector3;
import haxe.ds.Vector;
import lucidKit.godot.Object;
import lucidKit.godot.Camera;
import lucidKit.godot.MeshInstance;
import lucidKit.godot.DirectionalLight;
import lucidKit.godot.extensions.FreeLookCamera;
import lucidKit.App;

class Main extends App{
    public var editorWindow : EditorWindow;

    public static function main(){
        new Main();
    }

    public override function init() {
        editorWindow = new EditorWindow(ioManager, rootNode);
    }
}