package lucidKit.godot;

class TranslationSignalNames {
}
@:native("godot.Translation")
extern class Translation extends Resource {
    public var locale: String;
    public function GetMessage(srcMessage: String): String;
    public function addMessage(srcMessage: String, xlatedMessage: String): Void;
    public function eraseMessage(srcMessage: String): Void;
    public function getMessage(srcMessage: String): String;
    public function getMessageCount(): Int;
    public function getMessageList(): PoolStringArray;
    @:native("__new")
    public function new();
}
