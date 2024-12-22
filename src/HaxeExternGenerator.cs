using System;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using ProjectSettings = Godot.ProjectSettings;
using GD = Godot.GD;
using System.Collections.Generic;
using System.Diagnostics;

class HaxeExternGenerator
{
    public static List<String> ClassNames;

    public static Dictionary<string, string> BaseClasses;

    public static List<string> ClassMethods;
    public static List<string> ClassMembers;
    
    public static void GenerateExterns()
    {
        string xmlDirectory = ProjectSettings.GlobalizePath("res://godotapi/doc/classes/");
        string outputDir = ProjectSettings.GlobalizePath("res://src_api/lucidKit/godot/");

        // Ensure the output directory exists
        Directory.CreateDirectory(outputDir);

        ClassNames = new List<string>();
        BaseClasses = new Dictionary<string, string>();
        ClassMethods = new List<string>();
        ClassMembers = new List<string>();

        // Read all XML files in the directory
        var xmlFiles = Directory.GetFiles(xmlDirectory, "*.xml");
        foreach (var xmlFile in xmlFiles){
            var doc = XDocument.Load(xmlFile);
            var className = doc.Root?.Attribute("name")?.Value;

            if (!string.IsNullOrEmpty(className) && className != "float" && className != "String" && className != "int" && className != "@GlobalScope" && className != "bool" && className != "Array" && className != "Dictionary" && className != "Vector3" && className != "Vector2" && className != "Quat")
            {
                    ClassNames.Add(className);
                    var inheritedClassName = doc.Root?.Attribute("inherits")?.Value;
                    if (string.IsNullOrEmpty(inheritedClassName))
                        inheritedClassName = "lucidKit.core.MonoObject";
                    BaseClasses.Add(className, inheritedClassName);
            }
        }
        foreach (var xmlFile in xmlFiles)
        {
            try
            {
                // Load and parse the XML file
                var doc = XDocument.Load(xmlFile);
                var className = doc.Root?.Attribute("name")?.Value;

                if (!string.IsNullOrEmpty(className) && className != "float" && className != "String" && className != "int" && className != "@GlobalScope" && className != "bool" && className != "Array" && className != "Dictionary")
                {
                    GD.Print($"Processing class: {className}");
                    var haxeExtern = GenerateHaxeExtern(doc, className);
                    var ogClassName = className;
                    if (className == "Vector3" || className == "Vector2" || className == "Quat" || className == "Basis")
                        className = "Gd" + className;
                    File.WriteAllText(Path.Combine(outputDir, $"{className}.hx"), haxeExtern);
                    if (className == "GdVector3"){
            var abstr = @"package lucidKit.godot;

abstract Vector3(GdVector3) from GdVector3 {
    public function new(x : Float = 0, y : Float = 0, z : Float = 0) {
        this = new GdVector3(x, y, z);
    }

    @:op(a.b) 
    public function fieldRead(name:String) {
        if (name == 'toString') {
            return function() : String {
                var v = this;
                return untyped __lua__('v.toString()');
            }
        } else if (Reflect.hasField(this, name)) {
            return Reflect.field(this, name);
        } else {
            throw 'Invalid field';
        }
    }
        
    @:op(a.b) 
    public function fieldWrite(name:String, value:String) {
        if (Reflect.hasField(this, name)) {
            Reflect.setField(this, name, value);
        } else {
            throw 'Invalid field';
        }
    }
    
    @:op([]) 
    public function arrayRead(n:Dynamic) {
        if (n == 0) return this.x;
        if (n == 1) return this.y;
        if (n == 2) return this.z;
        if (n == 'x') return this.x;
        if (n == 'y') return this.y;
        if (n == 'z') return this.z; 
        throw 'Invalid index';
    }
        
    @:op([]) 
    public function arrayWrite(n:Dynamic, value:Float) {
        if (n == 0) this.x = value;
        else if (n == 1) this.y = value;
        else if (n == 2) this.z = value;
        else if (n == 'x') this.x = value;
        else if (n == 'y') this.y = value;
        else if (n == 'z') this.z = value;
        else throw 'Invalid index';
    }
    
    @:op(A + B)
    public function add(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__('lhs + rhs');
    }
    
    @:op(A - B)
    public function sub(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__('lhs - rhs');
    }
    
    @:op(A * B)
    public function mul(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__('lhs * rhs');
    }
    
    @:op(A / B)
    public function div(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__('lhs / rhs');
    }
    
    @:op(A % B)
    public function mod(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__('lhs % rhs');
    }
    
    @:op(A == B)
    public function eq(rhs: GdVector3) : Bool {
        var lhs = this;
        return untyped __lua__('lhs == rhs');
    }
    
    @:op(A != B)
    public function neq(rhs: GdVector3) : Bool {
        var lhs = this;
        return untyped __lua__('lhs ~= rhs');
    }
    
    @:op(A < B)
    public function lt(rhs: GdVector3) : Bool {
        var lhs = this;
        return untyped __lua__('lhs < rhs');
    }
    
    @:op(A <= B)
    public function lte(rhs: GdVector3) : Bool {
        var lhs = this;
        return untyped __lua__('lhs <= rhs');
    }
    
    @:op(A > B)
    public function gt(rhs: GdVector3) : Bool {
        var lhs = this;
        return untyped __lua__('lhs > rhs');
    }
    
    @:op(A >= B)
    public function gte(rhs: GdVector3) : Bool {
        var lhs = this;
        return untyped __lua__('lhs >= rhs');
    }

    public static function toString(v:GdVector3) {
        return untyped __lua__('v.toString()');
    }
}";
            File.WriteAllText(Path.Combine(outputDir, $"{ogClassName}.hx"), abstr);
        }
        else if (className == "GdBasis"){
            var abstr = @"package lucidKit.godot;

abstract Basis(GdBasis) from GdBasis {
    public function new(x : GdVector3, y : GdVector3, z : GdVector3) {
        this = new GdBasis(x, y, z);
    }

    @:op(a.b) 
    public function fieldRead(name:String) {
        if (name == 'toString') {
            return function() : String {
                var v = this;
                return untyped __lua__('v.toString()');
            }
        } else if (Reflect.hasField(this, name)) {
            return Reflect.field(this, name);
        } else {
            throw 'Invalid field';
        }
    }
        
    @:op(a.b) 
    public function fieldWrite(name:String, value:String) {
        if (Reflect.hasField(this, name)) {
            Reflect.setField(this, name, value);
        } else {
            throw 'Invalid field';
        }
    }
    
    @:op([]) 
    public function arrayRead(n:Dynamic) {
        if (n == 0) return this.x;
        if (n == 1) return this.y;
        if (n == 2) return this.z;
        if (n == 'x') return this.x;
        if (n == 'y') return this.y;
        if (n == 'z') return this.z; 
        throw 'Invalid index';
    }
        
    @:op([]) 
    public function arrayWrite(n:Dynamic, value:GdVector3) {
        if (n == 0) this.x = value;
        else if (n == 1) this.y = value;
        else if (n == 2) this.z = value;
        else if (n == 'x') this.x = value;
        else if (n == 'y') this.y = value;
        else if (n == 'z') this.z = value;
        else throw 'Invalid index';
    }
    
    @:op(A + B)
    public function add(rhs: Any) : Basis {
        var lhs = this;
        return untyped __lua__('lhs + rhs');
    }
    
    @:op(A - B)
    public function sub(rhs: Any) : Basis {
        var lhs = this;
        return untyped __lua__('lhs - rhs');
    }
    
    @:op(A * B)
    public function mul(rhs: Any) : Basis {
        var lhs = this;
        return untyped __lua__('lhs * rhs');
    }
    
    @:op(A / B)
    public function div(rhs: Any) : Basis {
        var lhs = this;
        return untyped __lua__('lhs / rhs');
    }
    
    @:op(A % B)
    public function mod(rhs: Any) : Basis {
        var lhs = this;
        return untyped __lua__('lhs % rhs');
    }
    
    @:op(A == B)
    public function eq(rhs: GdBasis) : Bool {
        var lhs = this;
        return untyped __lua__('lhs == rhs');
    }
    
    @:op(A != B)
    public function neq(rhs: GdBasis) : Bool {
        var lhs = this;
        return untyped __lua__('lhs ~= rhs');
    }
    
    @:op(A < B)
    public function lt(rhs: GdBasis) : Bool {
        var lhs = this;
        return untyped __lua__('lhs < rhs');
    }
    
    @:op(A <= B)
    public function lte(rhs: GdBasis) : Bool {
        var lhs = this;
        return untyped __lua__('lhs <= rhs');
    }
    
    @:op(A > B)
    public function gt(rhs: GdBasis) : Bool {
        var lhs = this;
        return untyped __lua__('lhs > rhs');
    }
    
    @:op(A >= B)
    public function gte(rhs: GdBasis) : Bool {
        var lhs = this;
        return untyped __lua__('lhs >= rhs');
    }

    public static function toString(v:GdBasis) {
        return untyped __lua__('v.toString()');
    }
}";
            File.WriteAllText(Path.Combine(outputDir, $"{ogClassName}.hx"), abstr);
        }
        else if (className == "GdVector2"){
            var abstr = @"package lucidKit.godot;

abstract Vector2(GdVector2) from GdVector2 to GdVector2 {
    public function new(x : Float = 0, y : Float = 0) {
        this = new GdVector2(x, y);
    }

    @:op(a.b) public function fieldRead(name:String)
        {
            if (name == 'toString') {
                return function() : String {
                    var v = this;
                    return untyped __lua__('v.toString()');
                }
            } else if (Reflect.hasField(this, name)) {
                return Reflect.field(this, name);
            } else {
                throw 'Invalid field';
            }
        }

    @:op(a.b()) 
        
    @:op(a.b) 
    public function fieldWrite(name:String, value:String){
        if (Reflect.hasField(this, name)) {
            Reflect.setField(this, name, value);
        } else {
            throw 'Invalid field';
        }
    }
    
    @:op([]) 
    public function arrayRead(n:Dynamic) {
        if (n == 0) return this.x;
        if (n == 1) return this.y;
        if (n == 'x') return this.x;
        if (n == 'y') return this.y;
        throw 'Invalid index';
    }
        
    @:op([]) 
    public function arrayWrite(n:Dynamic, value:Float) {
        if (n == 0) this.x = value;
        else if (n == 1) this.y = value;
        else if (n == 'x') this.x = value;
        else if (n == 'y') this.y = value;
        else throw 'Invalid index';
    }
    
    @:op(A + B)
    public function add(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__('lhs + rhs');
    }
    
    @:op(A - B)
    public function sub(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__('lhs - rhs');
    }
    
    @:op(A * B)
    public function mul(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__('lhs * rhs');
    }
    
    @:op(A / B)
    public function div(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__('lhs / rhs');
    }
    
    @:op(A % B)
    public function mod(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__('lhs % rhs');
    }
    
    @:op(A == B)
    public function eq(rhs: GdVector2) : Bool {
        var lhs = this;
        return untyped __lua__('lhs == rhs');
    }
    
    @:op(A != B)
    public function neq(rhs: GdVector2) : Bool {
        var lhs = this;
        return untyped __lua__('lhs ~= rhs');
    }
    
    @:op(A < B)
    public function lt(rhs: GdVector2) : Bool {
        var lhs = this;
        return untyped __lua__('lhs < rhs');
    }
    
    @:op(A <= B)
    public function lte(rhs: GdVector2) : Bool {
        var lhs = this;
        return untyped __lua__('lhs <= rhs');
    }
    
    @:op(A > B)
    public function gt(rhs: GdVector2) : Bool {
        var lhs = this;
        return untyped __lua__('lhs > rhs');
    }
    
    @:op(A >= B)
    public function gte(rhs: GdVector2) : Bool {
        var lhs = this;
        return untyped __lua__('lhs >= rhs');
    }

    public static function toString(v:GdVector2) {
        return untyped __lua__('v.toString()');
    }
}";
            File.WriteAllText(Path.Combine(outputDir, $"{ogClassName}.hx"), abstr);
        }
        else if (className == "GdQuat"){
            var abstr = @"package lucidKit.godot;

abstract Quat(GdQuat) from GdQuat {
    public function new(x : Float = 0, y : Float = 0, z : Float = 0, w : Float = 0) {
        this = new GdQuat(x, y, z, w);
    }

    @:op(a.b) 
    public function fieldRead(name:String) {
        if (name == 'toString') {
            return function() : String {
                var v = this;
                return untyped __lua__('v.toString()');
            }
        } else if (Reflect.hasField(this, name)) {
            return Reflect.field(this, name);
        } else {
            throw 'Invalid field';
        }
    }
        
    @:op(a.b) 
    public function fieldWrite(name:String, value:String) {
        if (Reflect.hasField(this, name)) {
            Reflect.setField(this, name, value);
        } else {
            throw 'Invalid field';
        }
    }
    
    @:op([]) 
    public function arrayRead(n:Dynamic) {
        if (n == 0) return this.x;
        if (n == 1) return this.y;
        if (n == 2) return this.z;
        if (n == 'x') return this.x;
        if (n == 'y') return this.y;
        if (n == 'z') return this.z; 
        if (n == 'w') return this.w; 
        throw 'Invalid index';
    }
        
    @:op([]) 
    public function arrayWrite(n:Dynamic, value:Float) {
        if (n == 0) this.x = value;
        else if (n == 1) this.y = value;
        else if (n == 2) this.z = value;
        else if (n == 'x') this.x = value;
        else if (n == 'y') this.y = value;
        else if (n == 'z') this.z = value;
        else if (n == 'w') this.w = value;
        else throw 'Invalid index';
    }
    
    @:op(A + B)
    public function add(rhs: Any) : Quat {
        var lhs = this;
        return untyped __lua__('lhs + rhs');
    }
    
    @:op(A - B)
    public function sub(rhs: Any) : Quat {
        var lhs = this;
        return untyped __lua__('lhs - rhs');
    }
    
    @:op(A * B)
    public function mul(rhs: Any) : Quat {
        var lhs = this;
        return untyped __lua__('lhs * rhs');
    }
    
    @:op(A / B)
    public function div(rhs: Any) : Quat {
        var lhs = this;
        return untyped __lua__('lhs / rhs');
    }
    
    @:op(A % B)
    public function mod(rhs: Any) : Quat {
        var lhs = this;
        return untyped __lua__('lhs % rhs');
    }
    
    @:op(A == B)
    public function eq(rhs: GdQuat) : Bool {
        var lhs = this;
        return untyped __lua__('lhs == rhs');
    }
    
    @:op(A != B)
    public function neq(rhs: GdQuat) : Bool {
        var lhs = this;
        return untyped __lua__('lhs ~= rhs');
    }
    
    @:op(A < B)
    public function lt(rhs: GdQuat) : Bool {
        var lhs = this;
        return untyped __lua__('lhs < rhs');
    }
    
    @:op(A <= B)
    public function lte(rhs: GdQuat) : Bool {
        var lhs = this;
        return untyped __lua__('lhs <= rhs');
    }
    
    @:op(A > B)
    public function gt(rhs: GdQuat) : Bool {
        var lhs = this;
        return untyped __lua__('lhs > rhs');
    }
    
    @:op(A >= B)
    public function gte(rhs: GdQuat) : Bool {
        var lhs = this;
        return untyped __lua__('lhs >= rhs');
    }

    public static function toString(v:GdQuat) {
        return untyped __lua__('v.toString()');
    }
}";
            File.WriteAllText(Path.Combine(outputDir, $"{ogClassName}.hx"), abstr);
        }
                }
            }
            catch (Exception ex)
            {
                GD.PrintErr($"Failed to process {xmlFile}: {ex.Message}");
            }
        }

        GD.Print("Haxe externs generated!");
    }

    static string GenerateHaxeExtern(XDocument doc, string className)
    {
        var sb = new StringBuilder();

        // Package declaration
        sb.AppendLine("package lucidKit.godot;");
        sb.AppendLine();

        var inheritedClassName = doc.Root?.Attribute("inherits")?.Value;

        if (string.IsNullOrEmpty(inheritedClassName))
            inheritedClassName = "lucidKit.core.MonoObject";

        var ogClassName = className;
        if (className == "Vector3" || className == "Vector2" || className == "Quat" || className == "Basis")
            className = "Gd" + className;
        // Class definition
        sb.AppendLine($"@:native(\"godot.{ogClassName}\")");
        sb.AppendLine($"extern class {className} extends {inheritedClassName} {{");

        // Process fields (members)
        AppendFields(sb, doc);

        // Process methods
        AppendMethods(sb, doc);

        sb.AppendLine("}");
        var str = sb.ToString();

        

        return str;
    }

    static void AppendFields(StringBuilder sb, XDocument doc)
    {
        var fields = doc.Descendants("member");
        foreach (var field in fields)
        {
            var fieldName = field.Attribute("name")?.Value;
            var fieldType = field.Attribute("type")?.Value ?? "Dynamic";

            if (fieldName.Contains("/"))
                fieldName = fieldName.Replace("/", "__");

            var className = doc.Root?.Attribute("name")?.Value;

            if (!MemberExists(fieldName, className)) 
            {
                ClassMembers.Add(className + ":"  + fieldName);

                if (!string.IsNullOrEmpty(fieldName))
                {
                    //bool isStatic = field.Attribute("static") != null;
                    bool isOverride = field.Attribute("overrides") != null;
                    if (isOverride){
                    }
                    //else if (isStatic)
                        //sb.AppendLine($"    public static var {fieldName}: {MapReturnType(fieldType)};");
                    else 
                        sb.AppendLine($"    public var {fieldName}: {MapReturnType(fieldType)};");
                }
            }
        }
    }

    static void AppendMethods(StringBuilder sb, XDocument doc)
    {
        var methods = doc.Descendants("method");
        var methodNames = new List<string>();
        var className = doc.Root?.Attribute("name")?.Value;
        bool firstConstructor = true;
        foreach (var method in methods)
        {
            var methodName = method.Attribute("name")?.Value;
            var returnType = method.Element("return")?.Attribute("type")?.Value ?? "Void";

            if (className == "Vector2" || className == "Vector3"){
                if (methodName == className && !method.Descendants("argument").Any(arg => arg.Attribute("name")?.Value == "x")) {
                    firstConstructor = false;
                }
                else {
                    firstConstructor = true;
                }
            }
            else if (className == "Quat"){
                if (methodName == className && !method.Descendants("argument").Any(arg => arg.Attribute("name")?.Value == "w")) {
                    firstConstructor = false;
                }
                else {
                    firstConstructor = true;
                }
            }
            else if (className == "Basis"){
                if (methodName == className && !method.Descendants("argument").Any(arg => arg.Attribute("name")?.Value == "x_axis")) {
                    firstConstructor = false;
                }
                else {
                    firstConstructor = true;
                }
            }

            var parameters = method.Descendants("argument").Select(arg =>
            {
                var paramName = arg.Attribute("name")?.Value;
                var paramType = arg.Attribute("type")?.Value ?? "Dynamic";
                if (paramName == "default" || paramName == "class" || paramName == "var")
                    paramName = "_" + paramName;
                return $"{paramName}: {MapType(paramType)}";
            });

            if (!MethodExists(methodName, className))
            {
                ClassMethods.Add(className + ":"  + methodName);

                if (!string.IsNullOrEmpty(methodName))
                {
                    if (methodName == className)
                    {
                        sb.AppendLine($"    @:native(\"__new\")");
                        if (firstConstructor){
                            sb.AppendLine($"    public function new({string.Join(", ", parameters)});");
                            firstConstructor = false;
                        }
                        else {
                            var paramNames = method.Descendants("argument").Select(arg =>
                            {
                                var paramName = arg.Attribute("name")?.Value;
                                return $"{paramName}";
                            });
                            methodName = string.Join("_", paramNames);
                            if (methodNames.Contains(methodName)){
                                paramNames = method.Descendants("argument").Select(arg =>
                                {
                                    var paramName = arg.Attribute("name")?.Value;
                                    var paramType = arg.Attribute("type")?.Value ?? "Dynamic";
                                    return $"{paramName}_{MapType(paramType)}";
                                });
                                methodName = string.Join("_", paramNames);
                            }
                            sb.AppendLine($"    public static function {methodName}({string.Join(", ", parameters)}): {MapReturnType(returnType)};");
                        }
                        methodNames.Add(methodName);
                    }
                    else 
                    {
                        if (methodName == "to_string")
                            methodName = "toString";
                        sb.AppendLine($"    public function {methodName}({string.Join(", ", parameters)}): {MapReturnType(returnType)};");
                        methodNames.Add(methodName);
                    }
                }
            }
        }
        if (!methodNames.Contains("new") && !methodNames.Contains(className)){
            sb.AppendLine($"    @:native(\"__new\")");
            sb.AppendLine($"    public function new();");
        }
    }

    public static bool MemberExists(string memberName, string className){
        if (ClassMembers.Contains(className + ":" + memberName)){
            return true;
        }
        else {
            if (BaseClasses.ContainsKey(className)) {
                var baseClass = BaseClasses[className];
                if (MemberExists(memberName, baseClass)){
                    return true;
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
    }

    public static bool MethodExists(string methodName, string className){
        if (ClassMembers.Contains(className + ":" + methodName)){
            return true;
        }
        else {
            if (BaseClasses.ContainsKey(className)){
                var baseClass = BaseClasses[className];
                if (MethodExists(methodName, baseClass)){
                    return true;
                }
                else {
                    return false;
                }
            }
            else {
                return false;
            }
        }
    }

    static string MapReturnType(string godotType){
        if (godotType == "Vector3" || godotType == "Vector2" || godotType == "Quat")
            return godotType;
        else
            return MapType(godotType);
    }

    static string MapType(string godotType)
    {
        if (ClassNames.Contains(godotType))
            return godotType;
        
        switch (godotType)
        {
            case "int":
                return "Int";
            case "float":
                return "Float";
            case "String":
                return "String";
            case "bool":
                return "Bool";
            case "Vector3":
                return "GdVector3";
            case "Vector2":
                return "GdVector2";
            case "Basis":
                return "GdBasis";
            case "Quat":
                return "Quat";
            case "RID":
            case "Variant": // Replace with a specific class if available
                return "Dynamic"; // Replace with an appropriate type if needed
            case "Color":
                return "Color";
            case "void":
                return "Void";
            case "Array":
                return "Array<Dynamic>";
            case "Dictionary":
                return "Map<Dynamic, Dynamic>";
            case "NodePath":
                return "String";
            case "StringName":
                return "String";
        }

        return "Dynamic";
    }
}
