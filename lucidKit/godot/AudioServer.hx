package lucidKit.godot;

class AudioServerSignalNames {
    public static var busLayoutChanged: String = "bus_layout_changed";
}
@:native("godot.AudioServer")
extern class AudioServer extends Object {
    public var busCount: Int;
    public var captureDevice: String;
    public var device: String;
    public var globalRateScale: Float;
    public function addBus(atPosition: Int = -1): Void;
    public function addBusEffect(busIdx: Int, effect: AudioEffect, atPosition: Int = -1): Void;
    public function captureGetDeviceList(): Array<Dynamic>;
    public function generateBusLayout(): AudioBusLayout;
    public function getBusChannels(busIdx: Int): Int;
    public function getBusEffect(busIdx: Int, effectIdx: Int): AudioEffect;
    public function getBusEffectCount(busIdx: Int): Int;
    public function getBusEffectInstance(busIdx: Int, effectIdx: Int, channel: Int = 0): AudioEffectInstance;
    public function getBusIndex(busName: String): Int;
    public function getBusName(busIdx: Int): String;
    public function getBusPeakVolumeLeftDb(busIdx: Int, channel: Int): Float;
    public function getBusPeakVolumeRightDb(busIdx: Int, channel: Int): Float;
    public function getBusSend(busIdx: Int): String;
    public function getBusVolumeDb(busIdx: Int): Float;
    public function getDeviceList(): Array<Dynamic>;
    public function getMixRate(): Float;
    public function getOutputLatency(): Float;
    public function getSpeakerMode(): Int;
    public function getTimeSinceLastMix(): Float;
    public function getTimeToNextMix(): Float;
    public function isBusBypassingEffects(busIdx: Int): Bool;
    public function isBusEffectEnabled(busIdx: Int, effectIdx: Int): Bool;
    public function isBusMute(busIdx: Int): Bool;
    public function isBusSolo(busIdx: Int): Bool;
    public function lock(): Void;
    public function moveBus(index: Int, toIndex: Int): Void;
    public function removeBus(index: Int): Void;
    public function removeBusEffect(busIdx: Int, effectIdx: Int): Void;
    public function setBusBypassEffects(busIdx: Int, enable: Bool): Void;
    public function setBusEffectEnabled(busIdx: Int, effectIdx: Int, enabled: Bool): Void;
    public function setBusLayout(busLayout: AudioBusLayout): Void;
    public function setBusMute(busIdx: Int, enable: Bool): Void;
    public function setBusName(busIdx: Int, name: String): Void;
    public function setBusSend(busIdx: Int, send: String): Void;
    public function setBusSolo(busIdx: Int, enable: Bool): Void;
    public function setBusVolumeDb(busIdx: Int, volumeDb: Float): Void;
    public function swapBusEffects(busIdx: Int, effectIdx: Int, byEffectIdx: Int): Void;
    public function unlock(): Void;
    @:native("__new")
    public function new();
}
