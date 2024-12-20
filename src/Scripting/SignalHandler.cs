using Godot;
using MoonSharp.Interpreter;


public class SignalHandler : Reference {
	public  Closure _closure;
	
	public void CallClosure() => _closure.Call();

	public void CallClosure(object obj) => _closure.Call(obj);

	public void CallClosure(params object[] args) => _closure.Call(args);
}
