using Godot;
using Bolt.Scripting;
using System;
using System.IO;

public class WebPlayer : LuaNode
{
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
}
