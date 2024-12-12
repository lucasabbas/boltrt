using Koneko.Scripting;
using MoonSharp.Interpreter;

namespace Koneko.Plugins
{

    public class Sys : Plugin
    {
        public override void Init()
        {
            Table SysNamespace = new Table(Enviroment.Script);
            Enviroment.Script.Globals["sys"] = SysNamespace;
        }
    }
}