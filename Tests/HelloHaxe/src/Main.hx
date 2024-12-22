package;

import sys.io.File;
import sys.FileSystem;
import lucidKit.godot.Vector2;
import lucidKit.godot.Vector3;
import haxe.ds.Vector;
import lucidKit.godot.Object;
import lucidKit.App;

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

        //if (lua.)
        var file = File.getContent("data://textFile.txt");
        Sys.println(file);
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