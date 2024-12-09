using Koneko.IO;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Loaders;

namespace Koneko.Scripting
{

    public class IoScriptLoader : ScriptLoaderBase
    {
        private IOManager _ioManager;

        public IoScriptLoader(IOManager ioManager)
        {
            _ioManager = ioManager;
        }

        public override bool ScriptFileExists(string name)
        {
            return _ioManager.FileExists(name);
        }

        public override object LoadFile(string file, Table globalContext)
        {
            return _ioManager.LoadText(file);
        }

        public override string ResolveFileName(string filename, Table globalContext)
        {
            return filename;
        }

        public override string ResolveModuleName(string modname, Table globalContext)
        {
            return modname;
        }
    }
}