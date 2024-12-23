package lucidKit.godot;

@:native("godot.Tabs")
extern class Tabs extends Control {
    public var currentTab: Int;
    public var dragToRearrangeEnabled: Bool;
    public var scrollingEnabled: Bool;
    public var tabAlign: Int;
    public var tabCloseDisplayPolicy: Int;
    public function addTab(title: String, icon: Texture): Void;
    public function ensureTabVisible(idx: Int): Void;
    public function getOffsetButtonsVisible(): Bool;
    public function getPreviousTab(): Int;
    public function getSelectWithRmb(): Bool;
    public function getTabButtonIcon(tabIdx: Int): Texture;
    public function getTabCount(): Int;
    public function getTabDisabled(tabIdx: Int): Bool;
    public function getTabIcon(tabIdx: Int): Texture;
    public function getTabMetadata(tabIdx: Int): Variant;
    public function getTabOffset(): Int;
    public function getTabRect(tabIdx: Int): Rect2;
    public function getTabTitle(tabIdx: Int): String;
    public function getTabsRearrangeGroup(): Int;
    public function moveTab(from: Int, to: Int): Void;
    public function removeTab(tabIdx: Int): Void;
    public function setSelectWithRmb(enabled: Bool): Void;
    public function setTabButtonIcon(tabIdx: Int, icon: Texture): Void;
    public function setTabDisabled(tabIdx: Int, disabled: Bool): Void;
    public function setTabIcon(tabIdx: Int, icon: Texture): Void;
    public function setTabMetadata(tabIdx: Int, metadata: Variant): Void;
    public function setTabTitle(tabIdx: Int, title: String): Void;
    public function setTabsRearrangeGroup(groupId: Int): Void;
    @:native("__new")
    public function new();
}
