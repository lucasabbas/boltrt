package magicrt.godot;

class ScriptSignalNames {
}
@:native("godot.Script")
extern class Script extends Resource {
    public var sourceCode: String;
    public function canInstance(): Bool;
    public function getBaseScript(): Script;
    public function getInstanceBaseType(): String;
    public function getPropertyDefaultValue(property: String): Dynamic;
    public function getScriptConstantMap(): Map<Dynamic, Dynamic>;
    public function getScriptMethodList(): Array<Dynamic>;
    public function getScriptPropertyList(): Array<Dynamic>;
    public function getScriptSignalList(): Array<Dynamic>;
    public function hasScriptSignal(signalName: String): Bool;
    public function hasSourceCode(): Bool;
    public function instanceHas(baseObject: Object): Bool;
    public function isTool(): Bool;
    public function reload(keepState: Bool = false): Int;
    @:native("__new")
    public function new();
}
