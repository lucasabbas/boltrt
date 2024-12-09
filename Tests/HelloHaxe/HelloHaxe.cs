using Koneko.Scripting;

namespace Koneko.Tests.HelloHaxe
{
    public class HelloHaxe : LuaNode
    {
        public override void _Ready()
        {
            StartFromPath("res://Tests/HelloHaxe/data/");
        }
    }
}