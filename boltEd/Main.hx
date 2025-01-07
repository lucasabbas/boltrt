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
import bolt.sys.Mono;

class Main extends App{
    public var editorWindow : EditorWindow;

    public static function main(){
        new Main();
    }

    public override function init() {
        
        
        try {
            Sys.println("Mono version: " + Mono.version);
            Sys.println("Mono platform: " + Mono.platform);
            Sys.println("Mono runtime version: " + Mono.runtimeVersion);
            Sys.println("Mono framework version: " + Mono.frameworkVersion);
            Sys.println("Mono runtime identifier: " + Mono.runtimeIdentifier);
            Sys.println("Mono cpu architecture: " + Mono.cpuArchitecture);
            Sys.println("Mono operating system: " + Mono.operatingSystem);
        }
        catch (e) {
            Sys.println("Error: " + e + " " + e.stack);
        }

        editorWindow = new EditorWindow(ioManager, rootNode);
    }
}