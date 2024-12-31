package lucidKit.godot;

class TabContainerTabAlign {
    public static var Left: Int = 0;
    public static var Center: Int = 1;
    public static var Right: Int = 2;
}
class TabContainerGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class TabContainerGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class TabContainerFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class TabContainerMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class TabContainerMouseDefaultCursorShape {
    public static var Arrow: Int = 0;
    public static var Ibeam: Int = 1;
    public static var PointingHand: Int = 2;
    public static var Cross: Int = 3;
    public static var Wait: Int = 4;
    public static var Busy: Int = 5;
    public static var Drag: Int = 6;
    public static var CanDrop: Int = 7;
    public static var Forbidden: Int = 8;
    public static var Vsize: Int = 9;
    public static var Hsize: Int = 10;
    public static var Bdiagsize: Int = 11;
    public static var Fdiagsize: Int = 12;
    public static var Move: Int = 13;
    public static var Vsplit: Int = 14;
    public static var Hsplit: Int = 15;
    public static var Help: Int = 16;
}
class TabContainerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class TabContainerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class TabContainerSignalNames {
    public static var prePopupPressed: String = "pre_popup_pressed";
    public static var tabChanged: String = "tab_changed";
    public static var tabSelected: String = "tab_selected";
}
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
