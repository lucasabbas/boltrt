package lucidKit.godot;

@:native("godot.Input")
extern class Input extends Object {
    public var mouseMode: Int;
    public var useAccumulatedInput: Bool;
    public function actionPress(action: String, strength: Float = 1.0): Void;
    public function actionRelease(action: String): Void;
    public function addJoyMapping(mapping: String, updateExisting: Bool = false): Void;
    public function flushBufferedEvents(): Void;
    public function getAccelerometer(): Vector3;
    public function getActionRawStrength(action: String, exact: Bool = false): Float;
    public function getActionStrength(action: String, exact: Bool = false): Float;
    public function getAxis(negativeAction: String, positiveAction: String): Float;
    public function getConnectedJoypads(): Array<Dynamic>;
    public function getCurrentCursorShape(): Int;
    public function getGravity(): Vector3;
    public function getGyroscope(): Vector3;
    public function getJoyAxis(device: Int, axis: Int): Float;
    public function getJoyAxisIndexFromString(axis: String): Int;
    public function getJoyAxisString(axisIndex: Int): String;
    public function getJoyButtonIndexFromString(button: String): Int;
    public function getJoyButtonString(buttonIndex: Int): String;
    public function getJoyGuid(device: Int): String;
    public function getJoyName(device: Int): String;
    public function getJoyVibrationDuration(device: Int): Float;
    public function getJoyVibrationStrength(device: Int): Vector2;
    public function getLastMouseSpeed(): Vector2;
    public function getMagnetometer(): Vector3;
    public function getMouseButtonMask(): Int;
    public function getVector(negativeX: String, positiveX: String, negativeY: String, positiveY: String, deadzone: Float = -1.0): Vector2;
    public function isActionJustPressed(action: String, exact: Bool = false): Bool;
    public function isActionJustReleased(action: String, exact: Bool = false): Bool;
    public function isActionPressed(action: String, exact: Bool = false): Bool;
    public function isJoyButtonPressed(device: Int, button: Int): Bool;
    public function isJoyKnown(device: Int): Bool;
    public function isKeyPressed(scancode: Int): Bool;
    public function isMouseButtonPressed(button: Int): Bool;
    public function isPhysicalKeyPressed(scancode: Int): Bool;
    public function joyConnectionChanged(device: Int, connected: Bool, name: String, guid: String): Void;
    public function parseInputEvent(event: InputEvent): Void;
    public function removeJoyMapping(guid: String): Void;
    public function setAccelerometer(value: GdVector3): Void;
    public function setCustomMouseCursor(image: Resource, shape: Int = 0, hotspot: GdVector2): Void;
    public function setDefaultCursorShape(shape: Int = 0): Void;
    public function setGravity(value: GdVector3): Void;
    public function setGyroscope(value: GdVector3): Void;
    public function setMagnetometer(value: GdVector3): Void;
    public function shouldIgnoreDevice(vendorId: Int, productId: Int): Bool;
    public function startJoyVibration(device: Int, weakMagnitude: Float, strongMagnitude: Float, duration: Float = 0): Void;
    public function stopJoyVibration(device: Int): Void;
    public function vibrateHandheld(durationMs: Int = 500): Void;
    public function warpMousePosition(to: GdVector2): Void;
    @:native("__new")
    public function new();
}
