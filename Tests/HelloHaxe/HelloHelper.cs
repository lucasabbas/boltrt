using Godot;

namespace Koneko.Tests.HelloHaxe
{
    public class HelloHelper
    {
        public void sayHello(string name)
        {
            GD.Print("Hello, " + name + "!");
        }
    }
}