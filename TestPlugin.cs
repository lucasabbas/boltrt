using MoonSharp.Interpreter;

namespace Koneko.Tests.HelloHaxe
{
    public class TestPlugin : Koneko.Scripting.Plugin
    {
        public override void Init()
        {
            UserData.RegisterType<HelloHelper>();
            Enviroment.Script.Globals["_HelloHelper"] = UserData.CreateStatic(typeof(HelloHelper));
        }
    }
}