using Godot;
using Bolt.Scripting;
using System;
using System.IO;
using File = Godot.File;

public class WebPlayer : LuaNode
{
    private string _webExportUrl;
    
    public override void _Ready()
    {
        try 
        {
            _luaEnviroment.Sandboxed = true;
            _webExportUrl = (string)JavaScript.Eval("window.location.href");
            
            var shaHttpRequest = new HTTPRequest();
            AddChild(shaHttpRequest);
            shaHttpRequest.Connect("request_completed", this, nameof(OnRequestCompletedSha));
            shaHttpRequest.Request(_webExportUrl + "index.bta.sha256");

            
        }
        catch (Exception e)
        {
            GD.Print(e.Message, e.StackTrace);
        }
    }

    public void LoadDataOverHttp()
    {
        try 
        {
            var httpRequest = new HTTPRequest();
            AddChild(httpRequest);
            httpRequest.Connect("request_completed", this, nameof(OnRequestCompleted));
            httpRequest.Request(_webExportUrl + "index.bta");
            
        }
        catch (Exception e)
        {
            GD.Print(e.Message, e.StackTrace);
        }
    }

    public void OnRequestCompletedSha(int result, int responseCode, string responseHeaders, byte[] data)
    {
        if (result != 0)
        {
            GD.Print("Request failed. Result: " + result + ", Response Code: " + responseCode);
            return;
        }

        var shaStr = Convert.ToString(data);

        var file = new File();
        if (file.FileExists("user://index.bta.sha256"))
        {
            file.Open("user://index.bta.sha256", File.ModeFlags.Read);
            var localShaStr = file.GetAsText();
            file.Close();
            if (shaStr == localShaStr)
            {
                var btaFile = new File();
                if (btaFile.FileExists("user://index.bta"))
                {
                    btaFile.Open("user://index.bta", File.ModeFlags.Read);
                    var binary = btaFile.GetBuffer((long)btaFile.GetLen());
                    btaFile.Close();
                    if (binary != null && binary.Length > 0)
                    {
                        StartFromZip(binary);
                        return;
                    }
                }
            }
        }

        file.Open("user://index.bta.txt", File.ModeFlags.Write);
        file.StoreString(shaStr);
        file.Close();
        LoadDataOverHttp();
    }
    
    public void OnRequestCompleted(int result, int responseCode, string responseHeaders, byte[] data)
    {
        if (result != 0)
        {
            GD.Print("Request failed. Result: " + result + ", Response Code: " + responseCode);
            return;
        }
        
        if (data != null || data.Length > 0)
        {
            try 
            { 
                var file = new File();
                file.Open("user://index.bta", File.ModeFlags.Write);
                file.StoreBuffer(data);
                file.Close();
            }
            catch (Exception e)
            {
                GD.PrintErr("Unable to save file: " + e.ToString());
            }
            
            StartFromZip(data);
            return;
        }
        
        GD.PrintErr("Unable to load file");
    }
}
