package lucidKit.godot;

@:native("godot.TranslationServer")
extern class TranslationServer extends Object {
    public function add_translation(translation: Translation): Void;
    public function clear(): Void;
    public function compare_locales(locale_a: String, locale_b: String): Int;
    public function get_all_countries(): PoolStringArray;
    public function get_all_languages(): PoolStringArray;
    public function get_all_scripts(): PoolStringArray;
    public function get_country_name(country: String): String;
    public function get_language_name(language: String): String;
    public function get_loaded_locales(): Array<Dynamic>;
    public function get_locale(): String;
    public function get_locale_name(locale: String): String;
    public function get_script_name(script: String): String;
    public function remove_translation(translation: Translation): Void;
    public function set_locale(locale: String): Void;
    public function standardize_locale(locale: String): String;
    public function translate(message: String): String;
    @:native("__new")
    public function new();
}
