using Godot;

namespace Bolt.Tests.HelloHaxe
{
    public class HaxeExternGeneratorScript : MainLoop
    {
        public override void _Initialize()
        {
            HaxeExternGenerator.GenerateExterns();

        }

        public override bool _Idle(float delta)
        {
            return false;
        }
    }
}