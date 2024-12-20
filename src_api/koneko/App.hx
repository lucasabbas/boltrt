package koneko;

class App {
    public function new() {
        untyped __lua__("_G.process = function(delta) self:process(delta) end");
        untyped __lua__("_G.physicsProcess = function(delta) self:physicsProcess(delta) end");

        init();
    }

    public function init() : Void {
        
    }

    public function process(delta : Float) : Void {
        
    }

    public function physicsProcess(delta : Float) : Void {
        
    }
}