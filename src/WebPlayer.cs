using Godot;
using Bolt.Scripting;
using System;
using System.IO;

public class WebPlayer : LuaNode
{
    public string loader = @"
globalThis.isLkZipLoaded = false;
async function loadZipBase64() {
    const response = await fetch('/HelloHaxe.lkzip');
    const arrayBuffer = await response.arrayBuffer();

    // Convert ArrayBuffer to a binary string
    const binaryString = String.fromCharCode(...new Uint8Array(arrayBuffer));

    // Convert binary string to Base64
    const base64 = btoa(binaryString);

    return base64;
};
loadZipBase64().then((base64) => {
    globalThis.lkzip = base64;
    globalThis.isLkZipLoaded = true;
})";

    private Timer _timer;
    private Reference getLkZip;
    public override void _Ready()
    {
        try 
        {
            _luaEnviroment.Sandboxed = true;
            
            Godot.File file = new Godot.File();
            var error = file.Open("res://HelloHaxe.lkzip", Godot.File.ModeFlags.Read);
            if (error != Error.Ok)
            {
                GD.Print("Failed to open file: ", error);
                return;
            }

            byte[] bytes = file.GetBuffer((long)file.GetLen());
            GD.Print("bytes: ", bytes.Length);
            StartFromZip(bytes);
            
        }
        catch (Exception e)
        {
            GD.Print(e.Message, e.StackTrace);
        }
    }

    public void startFromBase64(string base64)
    {
        byte[] bytes = Convert.FromBase64String(base64);
        StartFromZip(bytes);
    }
}
