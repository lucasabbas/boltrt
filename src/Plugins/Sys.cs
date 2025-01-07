using Bolt.Scripting;
using MoonSharp.Interpreter;

namespace Bolt.Plugins
{

    public class Sys : Plugin
    {
        public override void Init()
        {
            Table SysNamespace = new Table(Enviroment.Script);
            Enviroment.Script.Globals["__sys"] = SysNamespace;
            
            SysNamespace["Mono"] = new Bolt.Mono();
        }
    }
}