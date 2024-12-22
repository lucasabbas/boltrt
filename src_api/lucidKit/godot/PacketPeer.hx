package lucidKit.godot;

@:native("godot.PacketPeer")
extern class PacketPeer extends Reference {
    public var allow_object_decoding: Bool;
    public var encode_buffer_max_size: Int;
    public function get_available_packet_count(): Int;
    public function get_packet(): PoolByteArray;
    public function get_packet_error(): Int;
    public function get_var(allow_objects: Bool): Variant;
    public function put_packet(buffer: PoolByteArray): Int;
    public function put_var(var: Variant, full_objects: Bool): Int;
    @:native("__new")
    public function new();
}
