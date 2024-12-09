using Godot;

namespace Koneko.Scripting
{
    public class Output
    {
        public void Print(params string[] args)
        {
            GD.PrintT(args);
        }
        
        public void Error(params string[] args)
        {
            var msg = "Error: " + string.Join(" ", args);
            GD.PrintErr(msg);
        }
        
        public void Warn(params string[] args)
        {
            var msg = "Warning: " + string.Join(" ", args);
            Print(msg);
        }
        
        public void Info(params string[] args)
        {
            var msg = "Info: " + string.Join(" ", args);
            Print(msg);
        }
        
    }
}