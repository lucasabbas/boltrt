using MoonSharp.Interpreter;

namespace MagicRt.Tests.HelloHaxe
{
    public class TestPlugin : MagicRt.Scripting.Plugin
    {
        public override void Init()
        {
            UserData.RegisterType<HelloHelper>();
            Enviroment.Script.Globals["_HelloHelper"] = UserData.CreateStatic(typeof(HelloHelper));
        }
    }
}