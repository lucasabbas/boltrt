using MoonSharp.Interpreter;

namespace LucidKit.Tests.HelloHaxe
{
    public class TestPlugin : LucidKit.Scripting.Plugin
    {
        public override void Init()
        {
            UserData.RegisterType<HelloHelper>();
            Enviroment.Script.Globals["_HelloHelper"] = UserData.CreateStatic(typeof(HelloHelper));
        }
    }
}