//import haxe.display.JsonModuleTypes.JsonTypeParameters;

package;

import haxe.ds.Vector;
import koneko.godot.Vector3;
import koneko.godot.Vector2;

class Main {
    public static function main() {
        Sys.println("Hello, World!");
        Sys.println(add(4, 6));
        Sys.println(100 + " " + 28);
        sayHello("mintkat");
        sayHello("Lucas C. Abbas");
        sayHello("Lily");

        var lucas = new Person("Lucas", 20, "2004-10-04");
        Sys.println(lucas.toString());
        lucas.sayHello();

        //var testObject = new TestClass();
        //testObject.hello();

        var helper = new HelloHelper();
        helper.sayHello("mintkat");

        var vec3 = new Vector3(3, 2, 3);
        Sys.println(vec3.toString());

        var vec2 = new Vector2(6, 1);
        Sys.println(vec2.toString());

        try {
            //var godotObject = new GodotObject();
            //trace(godotObject.toString());
        } catch(e) {
            Sys.println(e.message);
        }
    }

    public static function add(a:Int, b:Int):Int {
        return a + b;
    }

    public static function sayHello(name:String) {
        Sys.println("Hello, " + name + "!");
    }
}