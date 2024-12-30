package;

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
import lucidKit.io.WindowsSystemIo;

class Main extends App{
    public static function main(){
        new Main();
    }

    public override function init() {
        Sys.println("Hello, World!");
        Sys.println(add(4, 6));
        Sys.println(100 + " " + 28);
        sayHello("mintkat");
        sayHello("Lucas C. Abbas");
        sayHello("Lily");

        var lucas = new Person("Lucas", 20, "2004-10-04");
        Sys.println(lucas.toString());
        lucas.sayHello();

        var vec3 = new Vector3(3, 2, 3);
        Sys.println(vec3.toString());

        var vec3_2 = new Vector3(2, 3, 2);
        Sys.println(vec3_2.toString());

        var vec3_3 = vec3 + vec3_2;
        Sys.println(vec3_3.toString());

        var vec2 = new Vector2(6, 1);
        Sys.println(vec2.toString());

        var vec2_2 = new Vector2(4, 9);
        Sys.println(vec2_2.toString());

        var vec2_3 = vec2 + vec2_2;
        Sys.println(vec2_3.toString());

        try {
            var godotObject = new Object();
            Sys.println(godotObject.toString());
        } catch(e) {
            Sys.println(e.message);
        }

        var camera = new FreeLookCamera();
        rootNode.addChild(camera);

        var meshInstance = new MeshInstance();
        rootNode.addChild(meshInstance);
        meshInstance.position = new Vector3(0, 0, -5);

        var mesh = new CubeMesh();
        meshInstance.mesh = mesh;

        var directionalLight = new DirectionalLight();
        rootNode.addChild(directionalLight);

        //if (lua.)
        var file = File.getContent("data://textFile.txt");
        Sys.println(file);

        var file2 = File.getContent("win://c/Users/mintkat/Documents/newtxt.txt");
        Sys.println(file2);

        var windowsSysIo = new WindowsSystemIo();
        var file3 = windowsSysIo.loadText(windowsSysIo.getFileUrl("C://Users/mintkat/Documents/newtxt.txt"));
        Sys.println(file3);
    }

    public override function process(delta : Float) : Void {
        //Sys.println(delta);
    }

    public static function add(a:Int, b:Int):Int {
        return a + b;
    }

    public static function sayHello(name:String) {
        Sys.println("Hello, " + name + "!");
    }
}