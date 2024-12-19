using Godot;
using Koneko.SignalWrappers;

namespace Koneko.ProxyObjects
{
    public class GdNode : GdObject
    {
        public string Name => ((Node)_object).Name;
        
        public GdNode Owner => new GdNode(((Node)_object).Owner);
        
        public GdNode(Node obj = null)
        {
            _object = obj ?? new Node();
            _signalWarpper = new ObjectSignalWarpper(_object);
            ConnectSignals();
        }
    }
}