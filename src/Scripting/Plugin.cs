namespace Koneko.Scripting
{

    public abstract class Plugin
    {
        public LuaEnviroment Enviroment;

        public virtual void Init()
        {

        }
    }
}