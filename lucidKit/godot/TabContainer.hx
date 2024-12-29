package lucidKit.godot;

@:native("godot.TabContainer")
extern class TabContainer extends Container {
    public var allTabsInFront: Bool;
    public var currentTab: Int;
    public var dragToRearrangeEnabled: Bool;
    public var tabAlign: Int;
    public var tabsVisible: Bool;
    public var useHiddenTabsForMinSize: Bool;
    public function getCurrentTabControl(): Control;
    public function getPopup(): Popup;
    public function getPreviousTab(): Int;
    public function getTabControl(tabIdx: Int): Control;
    public function getTabCount(): Int;
    public function getTabDisabled(tabIdx: Int): Bool;
    public function getTabHidden(tabIdx: Int): Bool;
    public function getTabIcon(tabIdx: Int): Texture;
    public function getTabIdxAtPoint(point: GdVector2): Int;
    public function getTabMetadata(tabIdx: Int): Variant;
    public function getTabTitle(tabIdx: Int): String;
    public function getTabsRearrangeGroup(): Int;
    public function setPopup(popup: Node): Void;
    public function setTabDisabled(tabIdx: Int, disabled: Bool): Void;
    public function setTabHidden(tabIdx: Int, hidden: Bool): Void;
    public function setTabIcon(tabIdx: Int, icon: Texture): Void;
    public function setTabMetadata(tabIdx: Int, metadata: Variant): Void;
    public function setTabTitle(tabIdx: Int, title: String): Void;
    public function setTabsRearrangeGroup(groupId: Int): Void;
    @:native("__new")
    public function new();
}
