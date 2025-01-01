using Godot;

namespace Bolt.Tests.HelloHaxe
{
    public class HelloHelper
    {
        public void sayHello(string name)
        {
            GD.Print("Hello, " + name + "!");
        }
    }
}