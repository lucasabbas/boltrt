using Godot;
using MoonSharp.Interpreter;
using Script = Godot.Script;

public static class SignalToFunc {
    public static void ConnectSignalToFuntion(Object obj, string signalName, Closure closure) {
        var signalHandler = new SignalHandler();
        var signalHandlerScript = GD.Load<CSharpScript>("res://src/Scripting/SignalHandler.cs");
        if (!signalHandlerScript.InstanceHas(signalHandler))
        {
            signalHandler = signalHandlerScript.New() as SignalHandler;
        }
        signalHandler._closure = closure;
        obj.Connect(signalName, (SignalHandler)signalHandler, "CallClosure");
    }

    public static void Connect(Object obj, string signalName, Closure closure) => ConnectSignalToFuntion(obj, signalName, closure);
}

