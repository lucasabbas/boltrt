using Godot;

namespace MagicRt.Tests.HelloHaxe
{
    public class HelloHelper
    {
        public void sayHello(string name)
        {
            GD.Print("Hello, " + name + "!");
        }
    }
}