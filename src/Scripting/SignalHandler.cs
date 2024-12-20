using Godot;
using MoonSharp.Interpreter;


public class SignalHandler : Reference {
	public  Closure _closure;
	
	public void CallClosure() {
		_closure.Call();
	}

	public void CallClosure(object arg) {
		_closure.Call(arg);
	}

	public void CallClosure(params object[] args) {
		if (args.Length == 0) {
			CallClosure();
			return;
		}
		_closure.Call(args);
	}
}
