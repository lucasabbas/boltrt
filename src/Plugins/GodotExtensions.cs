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
            UserData.RegisterType<UiDocument>();
            //UserData.RegisterType<UiStyleSheet>();
            //UserData.RegisterType<TabManager>();

            GdExtNamespace["FreeLookCamera2D"] = UserData.CreateStatic(typeof(FreeLookCamera2D));
            GdExtNamespace["FreeLookCamera"] = UserData.CreateStatic(typeof(FreeLookCamera));
            GdExtNamespace["MouseRayCast"] = UserData.CreateStatic(typeof(MouseRayCast3D));
            GdExtNamespace["UiDocument"] = UserData.CreateStatic(typeof(UiDocument));
            //GdExtNamespace["UiStyleSheet"] = typeof(UiStyleSheet);
            //GdExtNamespace["TabManager"] = typeof(TabManager);
        }
    }
}