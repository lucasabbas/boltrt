package bolt.sys;

@:native("__mono__")
extern class Mono {
    public static var version: String;

    public static var platform : String;

    public static var runtimeVersion : String;

    public static var frameworkVersion : String;

    public static var runtimeIdentifier : String;

    public static var cpuArchitecture : String;

    public static var operatingSystem : String;
}