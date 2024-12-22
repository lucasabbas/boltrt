using Godot;

namespace LucidKit.Tests.HelloHaxe
{
    public class HaxeExternGeneratorScript : MainLoop
    {
        public override void _Initialize()
        {
            HaxeExternGenerator.GenerateExterns();

            Finish();
        }
    }
}