package bolt.godot;

class ObjectSignalNames {
    public static var scriptChanged: String = "script_changed";
}
@:native("godot.Object")
extern class Object extends bolt.core.MonoObject {
    public function Get(property: String): Dynamic;
    public function GetPropertyList(): Array<Dynamic>;
    public function Init(): Void;
    public function Notification(what: Int): Void;
    public function Set(property: String, value: Dynamic): Bool;
    public function ToString(): String;
    public function addUserSignal(signal: String, arguments: Array<Dynamic>): Void;
    public function call(method: String): Dynamic;
    public function callDeferred(method: String): Void;
    public function callv(method: String, argArray: Array<Dynamic>): Dynamic;
    public function canTranslateMessages(): Bool;
    public function connect(signal: String, target: Object, method: String, binds: Array<Dynamic>, flags: Int = 0): Int;
    public function disconnect(signal: String, target: Object, method: String): Void;
    public function emitSignal(signal: String): Void;
    public function free(): Void;
    public function get(property: String): Dynamic;
    public function getClass(): String;
    public function getIncomingConnections(): Array<Dynamic>;
    public function getIndexed(propertyPath: NodePath): Dynamic;
    public function getInstanceId(): Int;
    public function getMeta(name: String, Default: Dynamic): Dynamic;
    public function getMetaList(): lua.Table[Int, String];
    public function getMethodList(): Array<Dynamic>;
    public function getPropertyList(): Array<Dynamic>;
    public function getScript(): Reference;
    public function getSignalConnectionList(signal: String): Array<Dynamic>;
    public function getSignalList(): Array<Dynamic>;
    public function hasMeta(name: String): Bool;
    public function hasMethod(method: String): Bool;
    public function hasSignal(signal: String): Bool;
    public function hasUserSignal(signal: String): Bool;
    public function isBlockingSignals(): Bool;
    public function isClass(Class: String): Bool;
    public function isConnected(signal: String, target: Object, method: String): Bool;
    public function isQueuedForDeletion(): Bool;
    public function notification(what: Int, reversed: Bool = false): Void;
    public function propertyListChangedNotify(): Void;
    public function removeMeta(name: String): Void;
    public function set(property: String, value: Dynamic): Void;
    public function setBlockSignals(enable: Bool): Void;
    public function setDeferred(property: String, value: Dynamic): Void;
    public function setIndexed(propertyPath: NodePath, value: Dynamic): Void;
    public function setMessageTranslation(enable: Bool): Void;
    public function setMeta(name: String, value: Dynamic): Void;
    public function setScript(script: Reference): Void;
    public function toString(): String;
    public function tr(message: String): String;
    @:native("__new")
    public function new();
}
