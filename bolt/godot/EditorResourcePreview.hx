package bolt.godot;

class EditorResourcePreviewSignalNames {
    public static var previewInvalidated: String = "preview_invalidated";
}
@:native("godot.EditorResourcePreview")
extern class EditorResourcePreview extends Node {
    public function addPreviewGenerator(generator: EditorResourcePreviewGenerator): Void;
    public function checkForInvalidation(path: String): Void;
    public function queueEditedResourcePreview(resource: Resource, receiver: Object, receiverFunc: String, userdata: Dynamic): Void;
    public function queueResourcePreview(path: String, receiver: Object, receiverFunc: String, userdata: Dynamic): Void;
    public function removePreviewGenerator(generator: EditorResourcePreviewGenerator): Void;
    @:native("__new")
    public function new();
}
