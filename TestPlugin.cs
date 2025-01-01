using MoonSharp.Interpreter;

namespace Bolt.Tests.HelloHaxe
{
    public class TestPlugin : Bolt.Scripting.Plugin
    {
        public override void Init()
        {
            UserData.RegisterType<HelloHelper>();
            Enviroment.Script.Globals["_HelloHelper"] = UserData.CreateStatic(typeof(HelloHelper));
        }
    }
}