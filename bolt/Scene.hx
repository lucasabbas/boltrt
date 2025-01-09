package bolt;

import bolt.godot.Node;
import bolt.godot.Node2D;
import bolt.godot.Spatial;
import bolt.SceneType;
import bolt.godot.InputEvent;

class Scene {
    public var objects : Array<GameObject>;

    public var node : Node;

    public function new(sceneType : SceneType) {
        if (sceneType == SceneType.Spatial) {
            node = new Spatial();
        }
        else if (sceneType == SceneType.Canvas) {
            node = new Node2D();
        }

        objects = new Array<GameObject>();
    }

    public function addObject(gameObject : GameObject) {
        objects.push(gameObject);
        gameObject.scene = this;
        if (gameObject.node != null) {
            node.addChild(gameObject.node);
        }
        for (i in 0...this.objects.length) {
            var obj = this.objects[i];
            if (obj != gameObject) {
                if (obj.name == gameObject.name) {
                    gameObject.name = "GameObject (" + Std.string(i) + ")";
                }
            }
        }
    }

    public function removeObject(gameObject : GameObject) {
        var index = objects.indexOf(gameObject);
        if (index != -1) {
            objects.splice(index, 1);
        }
        gameObject.scene = null;
        if (gameObject.node != null) {
            node.removeChild(gameObject.node);
        }
    }

    public function find(path : String) : GameObject {
        var pathArray = path.split("/");
        for (obj in objects) {
            if (obj.name == pathArray[0]) {
                if (pathArray.length == 1) {
                    return obj;
                }
                else {
                    var child = obj.find(pathArray.slice(1).join("/"));
                    if (child != null) {
                        return child;
                    }
                }
            }
        }
        return null;
    }

    public function start() {
        for (obj in objects) {
            obj.start();
        }
    }

    public function update(deltatime:Float) {
        for (obj in objects) {
            obj.update(deltatime);
        }
    }

    public function physicsUpdate(deltatime:Float) {
        for (obj in objects) {
            obj.physicsUpdate(deltatime);
        }
    }

    public function input(event:InputEvent) {
        for (obj in objects) {
            obj.input(event);
        }
    }

    public function unhandledInput(event:InputEvent) {
        for (obj in objects) {
            obj.unhandledInput(event);
        }
    }

    public function shortcutInput(event:InputEvent) {
        for (obj in objects) {
            obj.shortcutInput(event);
        }
    }

    public function unhandledKeyInput(event:InputEvent) {
        for (obj in objects) {
            obj.unhandledKeyInput(event);
        }
    }

    public function end() {
        for (obj in objects) {
            obj.end();
        }
    }

    public function destroy() {
        for (obj in objects) {
            obj.destroy();
            objects.splice(objects.indexOf(obj), 1);
        }
    }

    public function printTree() {
        Sys.println("Scene");
        for (obj in objects) {
            obj.printTree();
        }
    }
}