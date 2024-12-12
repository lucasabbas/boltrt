using Koneko.Scripting;
using MoonSharp.Interpreter;

namespace Koneko.Plugins
{

    public class GodotExtensions : Plugin
    {

        public override void Init()
        {
            Table GdExtNamespace = new Table(Enviroment.Script);
            Enviroment.Script.Globals["gdx"] = GdExtNamespace;

            UserData.RegisterType<FreeLookCamera2D>();
            UserData.RegisterType<FreeLookCamera3D>();
            UserData.RegisterType<MouseRayCast3D>();
            //UserData.RegisterType<UiDocument>();
            //UserData.RegisterType<UiStyleSheet>();
            //UserData.RegisterType<TabManager>();

            GdExtNamespace["FreeLookCamera2D"] = typeof(FreeLookCamera2D);
            GdExtNamespace["FreeLookCamera3D"] = typeof(FreeLookCamera3D);
            GdExtNamespace["MouseRayCast3D"] = typeof(MouseRayCast3D);
            //GdExtNamespace["UiDocument"] = typeof(UiDocument);
            //GdExtNamespace["UiStyleSheet"] = typeof(UiStyleSheet);
            //GdExtNamespace["TabManager"] = typeof(TabManager);
        }
    }
}