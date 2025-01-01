package bolt.godot;

class VisualShaderNodeGroupBaseSignalNames {
}
@:native("godot.VisualShaderNodeGroupBase")
extern class VisualShaderNodeGroupBase extends VisualShaderNode {
    public var size: Vector2;
    public function addInputPort(id: Int, type: Int, name: String): Void;
    public function addOutputPort(id: Int, type: Int, name: String): Void;
    public function clearInputPorts(): Void;
    public function clearOutputPorts(): Void;
    public function getFreeInputPortId(): Int;
    public function getFreeOutputPortId(): Int;
    public function getInputPortCount(): Int;
    public function getInputs(): String;
    public function getOutputPortCount(): Int;
    public function getOutputs(): String;
    public function hasInputPort(id: Int): Bool;
    public function hasOutputPort(id: Int): Bool;
    public function isValidPortName(name: String): Bool;
    public function removeInputPort(id: Int): Void;
    public function removeOutputPort(id: Int): Void;
    public function setInputPortName(id: Int, name: String): Void;
    public function setInputPortType(id: Int, type: Int): Void;
    public function setInputs(inputs: String): Void;
    public function setOutputPortName(id: Int, name: String): Void;
    public function setOutputPortType(id: Int, type: Int): Void;
    public function setOutputs(outputs: String): Void;
    @:native("__new")
    public function new();
}
