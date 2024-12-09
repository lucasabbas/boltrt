using Godot;
using Jint.Native;
using Jint.Native.Object;

namespace Koneko.Scripting
{

    public class GodotConsole : JsConsole
    {
        private Node RootNode;

        public override void Log(params object[] msg)
        {
            base.Log(msg);
            GD.Print(msg);
        }

        public override void LogError(params object[] msg)
        {
            base.LogError(msg);
            GD.Print(msg);
            GD.PushError(string.Join(" ", msg));

        }

        public override void LogWarning(params object[] msg)
        {
            base.LogWarning(msg);
            GD.Print(msg);
            GD.PushWarning(string.Join(" ", msg));
        }

        public override void LogInfo(params object[] msg)
        {
            base.LogInfo(msg);
            GD.Print(msg);
        }

    }
}