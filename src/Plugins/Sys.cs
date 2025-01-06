using MagicRt.Scripting;
using MoonSharp.Interpreter;

namespace MagicRt.Plugins
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