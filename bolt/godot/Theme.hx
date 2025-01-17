package bolt.godot;

class ThemeSignalNames {
}
@:native("godot.Theme")
extern class Theme extends Resource {
    public var defaultFont: Font;
    public function addType(themeType: String): Void;
    public function clear(): Void;
    public function clearColor(name: String, themeType: String): Void;
    public function clearConstant(name: String, themeType: String): Void;
    public function clearFont(name: String, themeType: String): Void;
    public function clearIcon(name: String, themeType: String): Void;
    public function clearStylebox(name: String, themeType: String): Void;
    public function clearThemeItem(dataType: Int, name: String, themeType: String): Void;
    public function clearTypeVariation(themeType: String): Void;
    public function copyDefaultTheme(): Void;
    public function copyTheme(other: Theme): Void;
    public function getColor(name: String, themeType: String): Color;
    public function getColorList(themeType: String): lua.Table<Int, String>;
    public function getColorTypes(): lua.Table<Int, String>;
    public function getConstant(name: String, themeType: String): Int;
    public function getConstantList(themeType: String): lua.Table<Int, String>;
    public function getConstantTypes(): lua.Table<Int, String>;
    public function getFont(name: String, themeType: String): Font;
    public function getFontList(themeType: String): lua.Table<Int, String>;
    public function getFontTypes(): lua.Table<Int, String>;
    public function getIcon(name: String, themeType: String): Texture;
    public function getIconList(themeType: String): lua.Table<Int, String>;
    public function getIconTypes(): lua.Table<Int, String>;
    public function getStylebox(name: String, themeType: String): StyleBox;
    public function getStyleboxList(themeType: String): lua.Table<Int, String>;
    public function getStyleboxTypes(): lua.Table<Int, String>;
    public function getThemeItem(dataType: Int, name: String, themeType: String): Dynamic;
    public function getThemeItemList(dataType: Int, themeType: String): lua.Table<Int, String>;
    public function getThemeItemTypes(dataType: Int): lua.Table<Int, String>;
    public function getTypeList(themeType: String): lua.Table<Int, String>;
    public function getTypeVariationBase(themeType: String): String;
    public function getTypeVariationList(baseType: String): lua.Table<Int, String>;
    public function hasColor(name: String, themeType: String): Bool;
    public function hasConstant(name: String, themeType: String): Bool;
    public function hasDefaultFont(): Bool;
    public function hasFont(name: String, themeType: String): Bool;
    public function hasIcon(name: String, themeType: String): Bool;
    public function hasStylebox(name: String, themeType: String): Bool;
    public function hasThemeItem(dataType: Int, name: String, themeType: String): Bool;
    public function isTypeVariation(themeType: String, baseType: String): Bool;
    public function mergeWith(other: Theme): Void;
    public function removeType(themeType: String): Void;
    public function renameColor(oldName: String, name: String, themeType: String): Void;
    public function renameConstant(oldName: String, name: String, themeType: String): Void;
    public function renameFont(oldName: String, name: String, themeType: String): Void;
    public function renameIcon(oldName: String, name: String, themeType: String): Void;
    public function renameStylebox(oldName: String, name: String, themeType: String): Void;
    public function renameThemeItem(dataType: Int, oldName: String, name: String, themeType: String): Void;
    public function setColor(name: String, themeType: String, color: Color): Void;
    public function setConstant(name: String, themeType: String, constant: Int): Void;
    public function setFont(name: String, themeType: String, font: Font): Void;
    public function setIcon(name: String, themeType: String, texture: Texture): Void;
    public function setStylebox(name: String, themeType: String, texture: StyleBox): Void;
    public function setThemeItem(dataType: Int, name: String, themeType: String, value: Dynamic): Void;
    public function setTypeVariation(themeType: String, baseType: String): Void;
    @:native("__new")
    public function new();
}
