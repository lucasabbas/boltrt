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
            
            var httpRequest = new HTTPRequest();
            AddChild(httpRequest);
            httpRequest.Connect("request_completed", this, nameof(OnRequestCompleted));
            var webExportUrl = (string)JavaScript.Eval("window.location.href");
            //GD.Print(webExportUrl);
            httpRequest.Request(webExportUrl + "index.bta");
            
        }
        catch (Exception e)
        {
            GD.Print(e.Message, e.StackTrace);
        }
    }
    
    public void OnRequestCompleted(int result, int responseCode, string responseHeaders, byte[] data)
    {
        if (result != 0)
        {
            GD.Print("Request failed. Result: " + result + ", Response Code: " + responseCode);
            return;
        }
        StartFromZip(data);
    }

    public void startFromBase64(string base64)
    {
        byte[] bytes = Convert.FromBase64String(base64);
        StartFromZip(bytes);
    }
}
