using MagicRt.IO;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Loaders;

namespace MagicRt.Scripting
{

    public class IoScriptLoader : ScriptLoaderBase
    {
        private IOManager _ioManager;
        private LuaEnviroment _enviroment;

        public IoScriptLoader(IOManager ioManager, LuaEnviroment enviroment)
        {
            _ioManager = ioManager;
            _enviroment = enviroment;
        }

        public override bool ScriptFileExists(string name)
        {
            var isModule = _enviroment.Modules[name] != null;
            if (isModule)
                return true;
            
            return _ioManager.FileExists(name);
        }

        public override object LoadFile(string file, Table globalContext)
        {
            if (_enviroment.Modules[file] != null)
                return $"return _MD[{file}]";

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