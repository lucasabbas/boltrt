package lucidKit.godot;

@:native("godot.EditorResourcePreview")
extern class EditorResourcePreview extends Node {
    public function add_preview_generator(generator: EditorResourcePreviewGenerator): Void;
    public function check_for_invalidation(path: String): Void;
    public function queue_edited_resource_preview(resource: Resource, receiver: Object, receiver_func: String, userdata: Variant): Void;
    public function queue_resource_preview(path: String, receiver: Object, receiver_func: String, userdata: Variant): Void;
    public function remove_preview_generator(generator: EditorResourcePreviewGenerator): Void;
    @:native("__new")
    public function new();
}
