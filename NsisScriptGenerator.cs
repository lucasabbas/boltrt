using System.Collections.Generic;
using Godot;
using IoPath = System.IO.Path;

public class NsisScriptGenerator : MainLoop
{
    string fullPath;

    public override void _Initialize()
    {
        fullPath = IoPath.GetFullPath(".").Replace("\\", "/");
        if (fullPath.EndsWith("/"))
            fullPath = fullPath.Substring(0, fullPath.Length - 1);
    
        GenerateNsisScript();

        _Finalize();
    }

    public override bool _Idle(float delta)
    {
        return false;
    }

    public void GenerateNsisScript()
    {
        var sb = new System.Text.StringBuilder();
        var partOne = System.IO.File.ReadAllText("./bolt.part-one.nsi");
        sb.Append(partOne);

        var binPath = "\\bin\\win32\\";
        List<string> FileList = BuildListOfFiles(fullPath + binPath.Replace("\\", "/"));

        foreach (string file in FileList)
        {
            if (file.EndsWith("\\"))
                sb.Append("  SetOutPath \"" + file.Replace(binPath, "$INSTDIR\\") + "\"\n");
            else
                sb.Append("  File \"" + file + "\"\n");
        }

        var partTwo = System.IO.File.ReadAllText("./bolt.part-two.nsi");
        sb.Append(partTwo);

        foreach (string file in FileList)
        {
            if (!file.EndsWith("\\"))
                sb.Append("  Delete \"" + file.Replace(binPath, "$INSTDIR\\") + "\"\n");
        }

        var partThree = System.IO.File.ReadAllText("./bolt.part-three.nsi");
        sb.Append(partThree);

        foreach (string file in FileList)
        {
            if (file.EndsWith("\\"))
                sb.Append("  RMDir \"" + file.Replace(binPath, "$INSTDIR\\") + "\"\n");
        }

        var partFour = System.IO.File.ReadAllText("./bolt.part-four.nsi");
        sb.Append(partFour);

        System.IO.File.WriteAllText(fullPath + "/bolt.nsi", sb.ToString());
    }

    public List<string> BuildListOfFiles(string dirPath) {
        var fileList = new List<string>();
        foreach (string file in System.IO.Directory.GetFiles(dirPath)) {
            fileList.Add(file.Replace(fullPath, "").Replace("/", "\\"));
        }
        foreach (string directory in System.IO.Directory.GetDirectories(dirPath)) {
            var d = directory;
            if (!d.EndsWith("/"))
                d += "/";
            if (d.Contains("/"))
                d = d.Replace("/", "\\");
            fileList.Add(d.Replace(fullPath.Replace("/", "\\"), ""));
            fileList.AddRange(BuildListOfFiles(d));
        }
        return fileList;
    }
}