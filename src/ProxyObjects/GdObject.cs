using System;
using Godot;
using Koneko.SignalWrappers;
using GodotObject = Godot.Object;

namespace Koneko.ProxyObjects
{
    public class GdObject : IDisposable
    {
        protected GodotObject _object;
        protected ObjectSignalWarpper _signalWarpper;
        
        public delegate void ScriptChangedEventHandler();
        public event ScriptChangedEventHandler ScriptChanged;
        
        public GdObject(GodotObject obj = null)
        {
            _object = obj ?? new GodotObject();
            _signalWarpper = new ObjectSignalWarpper(_object);
            ConnectSignals();
        }
        
        protected virtual void ConnectSignals()
        {
            _signalWarpper.ScriptChanged += (() =>
            {
                ScriptChanged?.Invoke();
            });
        }
        
        protected virtual void OnDispose()
        {
            _object.Free();
        }
        
        public void Free()
        {
            _object.Free();
        }
        
        public void EmitSignal(string signalName, params object[] args)
        {
            _object.EmitSignal(signalName, args);
        }

        public void Dispose()
        {
            OnDispose();
            _object.Dispose();
        }
        
        public static GdObject operator ==(GdObject a, GdObject b)
        {
            return a._object == b._object ? a : null;
        }
        
        public static GdObject operator !=(GdObject a, GdObject b)
        {
            return a._object != b._object ? a : null;
        }

        public override string ToString()
        {
            return _object.ToString();
        }
    }
}