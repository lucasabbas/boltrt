package lucidKit.godot;

@:native("godot.IP")
extern class IP extends Object {
    public function clear_cache(hostname: String): Void;
    public function erase_resolve_item(id: Int): Void;
    public function get_local_addresses(): Array<Dynamic>;
    public function get_local_interfaces(): Array<Dynamic>;
    public function get_resolve_item_address(id: Int): String;
    public function get_resolve_item_addresses(id: Int): Array<Dynamic>;
    public function get_resolve_item_status(id: Int): Int;
    public function resolve_hostname(host: String, ip_type: Int): String;
    public function resolve_hostname_addresses(host: String, ip_type: Int): Array<Dynamic>;
    public function resolve_hostname_queue_item(host: String, ip_type: Int): Int;
    @:native("__new")
    public function new();
}
