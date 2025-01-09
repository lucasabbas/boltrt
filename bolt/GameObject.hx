package bolt;

import bolt.godot.Node;
import bolt.godot.InputEvent;

class GameObject {
    public var name : String;

    public var children : Array<GameObject>;

    private var parentObject : GameObject;

    public var scene : Scene;

    public var node : Node;

    private var components : Array<Behavior>;

    private var componentTypes : Array<Dynamic>;

    public function new() {
        this.children = new Array<GameObject>();
        this.components = new Array<Behavior>();
        this.componentTypes = new Array<Dynamic>();

        this.parentObject = null;
        this.scene = null;
        this.name = "GameObject";
    }

    public function addChild(child : GameObject) : Void {
        this.children.push(child);
        child.parentObject = this;
        child.scene = this.scene;
        if (child.node != null) {
            this.node.addChild(child.node);
        }
        for (i in 0...this.children.length) {
            var c = this.children[i];
            if (c != child) {
                if (c.name == child.name) {
                    child.name = "GameObject (" + Std.string(i) + ")";
                }
            }
        }
    }

    public function removeChild(child : GameObject) : Void {
        var index = this.children.indexOf(child);
        if (index != -1) {
            this.children.splice(index, 1);
        }
        child.parentObject = null;
        child.scene = null;
        if (child.node != null) {
            this.node.removeChild(child.node);
        }
    }

    public function find(path : String) : GameObject {
        var pathArray = path.split("/");
        for (child in children) {
            if (child.name == pathArray[0]) {
                if (pathArray.length == 1) {
                    return child;
                }
                else {
                    var subChild = child.find(pathArray.slice(1).join("/"));
                    if (subChild != null) {
                        return subChild;
                    }
                }
            }
        }
        return null;
    }

    public function hasChild(child : GameObject) : Bool {
        return this.children.indexOf(child) != -1;
    }

    public function hasChildWithName(name : String) : Bool {
        for (child in this.children) {
            if (child.name == name) {
                return true;
            }
        }
        return false;
    }

    public function addComponent(componentType : Dynamic) : Void {
        var component = Type.createInstance(componentType, []);
        this.components.push(component);
        if (Std.isOfType(component, Behavior)) {
            this.componentTypes.push(componentType);
            component.gameObject = this;
            component.awake();
        }
        else {
            this.components.splice(this.components.indexOf(component), 1);
            throw "Component must be a Behavior";
        }
    }

    public function getComponent(componentType : Dynamic) : Behavior {
        for (component in this.components) {
            if (Std.isOfType(component, componentType)) {
                var b : Behavior = cast component;
                return b;
            }
        }
        return null;
    }

    public function removeComponent(componentType : Dynamic) : Void {
        for (i in 0...this.components.length) {
            if (Std.isOfType(this.components[i], componentType)) {
                this.components[i].end();
                this.components.splice(i, 1);
                return;
            }
        }
    }

    public function start() {
        for (component in this.components) {
            component.start();
        }
        for (child in this.children) {
            child.start();
        }
    }

    public function update(deltatime:Float) {
        for (component in this.components) {
            component.update(deltatime);
        }
        for (child in this.children) {
            child.update(deltatime);
        }
    }

    public function physicsUpdate(deltatime:Float) {
        for (component in this.components) {
            component.physicsUpdate(deltatime);
        }
        for (child in this.children) {
            child.physicsUpdate(deltatime);
        }
    }

    public function input(event:InputEvent) {
        for (component in this.components) {
            component.input(event);
        }
        for (child in this.children) {
            child.input(event);
        }
    }

    public function unhandledInput(event:InputEvent) {
        for (component in this.components) {
            component.unhandledInput(event);
        }
        for (child in this.children) {
            child.unhandledInput(event);
        }
    }

    public function shortcutInput(event:InputEvent) {
        for (component in this.components) {
            component.shortcutInput(event);
        }
        for (child in this.children) {
            child.shortcutInput(event);
        }
    }

    public function unhandledKeyInput(event:InputEvent) {
        for (component in this.components) {
            component.unhandledKeyInput(event);
        }
        for (child in this.children) {
            child.unhandledKeyInput(event);
        }
    }

    public function printTree(whiteSpace : String = "  ") {
        Sys.println(whiteSpace + this.name);
        for (component in this.components) {
            var type: Dynamic = componentTypes[components.indexOf(component)];
            var typeName = Type.getClassName(type);
            Sys.println(whiteSpace + "  -> " + typeName);
        }
        for (child in this.children) {
            child.printTree(whiteSpace + "  ");
        }
    }

    public function end() {
        for (component in this.components) {
            component.end();
        }
        for (child in this.children) {
            child.end();
        }
    }

    public function getParent() : Any {
        if (this.parentObject != null) {
            return this.parentObject;
        }
        else {
            return scene;
        }
    }

    public function destroy() {
        this.end();
        for (child in this.children) {
            child.destroy();
        }
        for (component in this.components) {
            component.end();
        }
        if (this.node != null) {
            this.node.queueFree();
        }
    }
}