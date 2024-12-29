package lucidKit.godot;

@:native("godot.UndoRedo")
extern class UndoRedo extends Object {
    public function addDoMethod(object: Object, method: String): Void;
    public function addDoProperty(object: Object, property: String, value: Variant): Void;
    public function addDoReference(object: Object): Void;
    public function addUndoMethod(object: Object, method: String): Void;
    public function addUndoProperty(object: Object, property: String, value: Variant): Void;
    public function addUndoReference(object: Object): Void;
    public function clearHistory(increaseVersion: Bool = true): Void;
    public function commitAction(): Void;
    public function createAction(name: String, mergeMode: Int = 0): Void;
    public function getCurrentActionName(): String;
    public function getVersion(): Int;
    public function hasRedo(): Bool;
    public function hasUndo(): Bool;
    public function isCommitingAction(): Bool;
    public function redo(): Bool;
    public function undo(): Bool;
    @:native("__new")
    public function new();
}
