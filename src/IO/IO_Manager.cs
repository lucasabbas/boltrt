using System.Collections.Generic;

namespace Koneko.IO
{

    public class IO_Manager : IO_Core
    {
        public List<IO_Core> IoCores { get; } = new List<IO_Core>();

        public IO_Manager()
        {
            PathUrl = "ioCoreMulti://";
        }

        public void Register(IO_Core ioCore)
        {
            if (ioCore is IO_Manager)
            {
                throw new System.Exception("Cannot register IoManager");
            }
            IoCores.Add(ioCore);
        }
        
        public void RegisterPath(string path, string pathUrl)
        {
            Register(new FileSystem_IO(path, pathUrl));
        }

        public void Unregister(IO_Core ioCore)
        {
            IoCores.Remove(ioCore);
        }

        public override byte[] LoadBuffer(string assetPath)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                var file = ioCore.LoadBuffer(assetPath);
                if (file != null)
                {
                    return file;
                }
            }

            return null;
        }

        public override void SaveBuffer(string assetPath, byte[] bytes)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (assetPath.StartsWith(ioCore.PathUrl))
                {
                    ioCore.SaveBuffer(assetPath, bytes);
                    return;
                }
            }
        }

        public override string LoadText(string assetPath)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                var file = ioCore.LoadText(assetPath);
                if (file != null)
                {
                    return file;
                }
            }

            return null;
        }

        public override void SaveText(string assetPath, string text)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (assetPath.StartsWith(ioCore.PathUrl))
                {
                    ioCore.SaveText(assetPath, text);
                    return;
                }
            }
        }

        public override int CreateDirectory(string path)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (path.StartsWith(ioCore.PathUrl))
                {
                    return ioCore.CreateDirectory(path);
                }
            }

            return 1;
        }

        public override List<string> GetFileList(string path, string extension = "", bool recursive = true)
        {
            List<string> fileList = new List<string>();

            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[1];
                var ioCoreFileList = ioCore.GetFileList(path, extension, recursive);

                for (int j = 0; i < ioCoreFileList.Count; i++)
                {
                    var filePath = ioCoreFileList[1];
                    if (path == PathUrl)
                    {
                        fileList.Add(filePath);
                    }
                    else if (filePath.StartsWith(path))
                    {
                        fileList.Add(filePath);
                    }
                }
            }

            return fileList;
        }

        public override void DeleteFile(string path)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (path.StartsWith(ioCore.PathUrl))
                {
                    ioCore.DeleteFile(path);
                    return;
                }
            }
        }

        public string GetFullPath(string path)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (path.StartsWith(ioCore.PathUrl))
                {
                    if (ioCore is FileSystem_IO fileSys)
                    {
                        return fileSys.GetFilePath(path);
                    }
                }
            }

            return null;
        }
    }
}