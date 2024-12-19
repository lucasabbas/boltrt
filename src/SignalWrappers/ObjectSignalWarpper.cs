using Godot;

namespace Koneko.SignalWrappers
{
    public class ObjectSignalWarpper : SignalWrapper
    {
        public Object Object { get; private set; }
        
        public delegate void ScriptChangedEventHandler();
        public event ScriptChangedEventHandler ScriptChanged;
        
        public ObjectSignalWarpper(Object obj)
        {
            Object = obj;
            obj.Connect("script_changed", this, nameof(OnScriptChanged));
        }
        
        private void OnScriptChanged()
        {
            ScriptChanged?.Invoke();
        }
    }
}