using Koneko.Scripting;

namespace Koneko.Tests.HelloHaxe
{
    public class HelloHaxe : LuaNode
    {
        public override void _Ready()
        {
            _luaEnviroment.AddPlugin(typeof(TestPlugin));
            StartFromPath("res://Tests/HelloHaxe/data/");
        }
    }
}