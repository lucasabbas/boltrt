using Godot;
using Koneko.SignalWrappers;

namespace Koneko.ProxyObjects
{
    public class GdReference : GdObject
    {
        public GdReference(Reference obj = null)
        {
            _object = obj ?? new Reference();
            _signalWarpper = new ObjectSignalWarpper(_object);
            ConnectSignals();
        }
    }
}