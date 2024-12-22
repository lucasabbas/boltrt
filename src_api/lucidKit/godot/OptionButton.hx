package lucidKit.godot;

@:native("godot.OptionButton")
extern class OptionButton extends Button {
    public var selected: Int;
    public function addIconItem(texture: Texture, label: String, id: Int = -1): Void;
    public function addItem(label: String, id: Int = -1): Void;
    public function addSeparator(): Void;
    public function clear(): Void;
    public function getItemCount(): Int;
    public function getItemIcon(idx: Int): Texture;
    public function getItemId(idx: Int): Int;
    public function getItemIndex(id: Int): Int;
    public function getItemMetadata(idx: Int): Variant;
    public function getItemText(idx: Int): String;
    public function getItemTooltip(idx: Int): String;
    public function getPopup(): PopupMenu;
    public function getSelectedId(): Int;
    public function getSelectedMetadata(): Variant;
    public function isItemDisabled(idx: Int): Bool;
    public function removeItem(idx: Int): Void;
    public function select(idx: Int): Void;
    public function setItemDisabled(idx: Int, disabled: Bool): Void;
    public function setItemIcon(idx: Int, texture: Texture): Void;
    public function setItemId(idx: Int, id: Int): Void;
    public function setItemMetadata(idx: Int, metadata: Variant): Void;
    public function setItemText(idx: Int, text: String): Void;
    public function setItemTooltip(idx: Int, tooltip: String): Void;
    @:native("__new")
    public function new();
}
