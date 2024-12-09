//import haxe.display.JsonModuleTypes.JsonTypeParameters;

package;

class Main {
    public static function main() {
        trace("Hello, World!");
        trace(add(4, 6));
        trace(100, 28);
        sayHello("mintkat");
        sayHello("Lucas C. Abbas");
        sayHello("Lily");

        var lucas = new Person("Lucas", 20, "2004-10-04");
        trace(lucas.toString());
        lucas.sayHello();
    }

    public static function add(a:Int, b:Int):Int {
        return a + b;
    }

    public static function sayHello(name:String) {
        trace("Hello, " + name + "!");
    }
}