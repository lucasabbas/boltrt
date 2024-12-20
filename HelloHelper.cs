using Godot;

namespace LucidKit.Tests.HelloHaxe
{
    public class HelloHelper
    {
        public void sayHello(string name)
        {
            GD.Print("Hello, " + name + "!");
        }
    }
}