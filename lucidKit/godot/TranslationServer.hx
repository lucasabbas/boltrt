package lucidKit.godot;

@:native("godot.TranslationServer")
extern class TranslationServer extends Object {
    public function addTranslation(translation: Translation): Void;
    public function clear(): Void;
    public function compareLocales(localeA: String, localeB: String): Int;
    public function getAllCountries(): PoolStringArray;
    public function getAllLanguages(): PoolStringArray;
    public function getAllScripts(): PoolStringArray;
    public function getCountryName(country: String): String;
    public function getLanguageName(language: String): String;
    public function getLoadedLocales(): Array<Dynamic>;
    public function getLocale(): String;
    public function getLocaleName(locale: String): String;
    public function getScriptName(script: String): String;
    public function removeTranslation(translation: Translation): Void;
    public function setLocale(locale: String): Void;
    public function standardizeLocale(locale: String): String;
    public function translate(message: String): String;
    @:native("__new")
    public function new();
}
