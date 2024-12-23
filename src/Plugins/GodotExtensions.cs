using LucidKit.Scripting;
using MoonSharp.Interpreter;

namespace LucidKit.Plugins
{

    public class GodotExtensions : Plugin
    {

        public override void Init()
        {
            Table GdExtNamespace = new Table(Enviroment.Script);
            Enviroment.Script.Globals["gdx"] = GdExtNamespace;

            UserData.RegisterType<FreeLookCamera2D>();
            UserData.RegisterType<FreeLookCamera>();
            UserData.RegisterType<MouseRayCast3D>();
            //UserData.RegisterType<UiDocument>();
            //UserData.RegisterType<UiStyleSheet>();
            //UserData.RegisterType<TabManager>();

            GdExtNamespace["FreeLookCamera2D"] = typeof(FreeLookCamera2D);
            GdExtNamespace["FreeLookCamera"] = typeof(FreeLookCamera);
            GdExtNamespace["MouseRayCast"] = typeof(MouseRayCast3D);
            //GdExtNamespace["UiDocument"] = typeof(UiDocument);
            //GdExtNamespace["UiStyleSheet"] = typeof(UiStyleSheet);
            //GdExtNamespace["TabManager"] = typeof(TabManager);
        }
    }
}