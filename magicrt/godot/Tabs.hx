package magicrt.godot;

class TabsTabAlign {
    public static var Left: Int = 0;
    public static var Center: Int = 1;
    public static var Right: Int = 2;
    public static var Max: Int = 3;
}
class TabsTabCloseDisplayPolicy {
    public static var ShowNever: Int = 0;
    public static var ShowActiveOnly: Int = 1;
    public static var ShowAlways: Int = 2;
    public static var Max: Int = 3;
}
class TabsGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class TabsGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class TabsFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class TabsMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class TabsMouseDefaultCursorShape {
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
class TabsPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class TabsPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class TabsSignalNames {
    public static var repositionActiveTabRequest: String = "reposition_active_tab_request";
    public static var rightButtonPressed: String = "right_button_pressed";
    public static var tabChanged: String = "tab_changed";
    public static var tabClicked: String = "tab_clicked";
    public static var tabClose: String = "tab_close";
    public static var tabHover: String = "tab_hover";
}
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
    public function getTabMetadata(tabIdx: Int): Dynamic;
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
    public function setTabMetadata(tabIdx: Int, metadata: Dynamic): Void;
    public function setTabTitle(tabIdx: Int, title: String): Void;
    public function setTabsRearrangeGroup(groupId: Int): Void;
    @:native("__new")
    public function new();
}
