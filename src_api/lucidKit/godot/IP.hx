package lucidKit.godot;

@:native("godot.IP")
extern class IP extends Object {
    public function clearCache(hostname: String): Void;
    public function eraseResolveItem(id: Int): Void;
    public function getLocalAddresses(): Array<Dynamic>;
    public function getLocalInterfaces(): Array<Dynamic>;
    public function getResolveItemAddress(id: Int): String;
    public function getResolveItemAddresses(id: Int): Array<Dynamic>;
    public function getResolveItemStatus(id: Int): Int;
    public function resolveHostname(host: String, ipType: Int = 3): String;
    public function resolveHostnameAddresses(host: String, ipType: Int = 3): Array<Dynamic>;
    public function resolveHostnameQueueItem(host: String, ipType: Int = 3): Int;
    @:native("__new")
    public function new();
}
