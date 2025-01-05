using System.Collections.Generic;
using System.IO;

namespace Bolt.IO
{

    public class IOManager : IOCore
    {
        public List<IOCore> IoCores { get; } = new List<IOCore>();

        public IOManager()
        {
            PathUrl = "ioCoreMulti://";
        }

        public override string GetFilePath(string path)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                var file = ioCore.GetFilePath(path);
                if (file != null)
                {
                    return file;
                }
            }

            return null;
        }

        public string GetFileUrl(string path, string pathUrl)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (ioCore.PathUrl == pathUrl)
                {
                    if (ioCore is SystemIOBase fileSys)
                    {
                        return fileSys.GetFilePath(path);
                    }
                }
            }

            return pathUrl + path;
        }

        public void Register(IOCore ioCore)
        {
            if (ioCore is IOManager)
            {
                throw new System.Exception("Cannot register IoManager");
            }
            IoCores.Add(ioCore);
        }
        
        public void RegisterPath(string path, string pathUrl)
        {
            Register(new FileSystemIO(path, pathUrl));
        }

        public void Unregister(IOCore ioCore)
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
                var ioCore = IoCores[i];
                if (path.StartsWith(ioCore.PathUrl))
                {
                    var ioCoreFileList = ioCore.GetFileList(path, extension, recursive);

                    foreach(string filePath in ioCoreFileList)
                    {
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
            }

            return fileList;
        }
        
        public override Stream GetStream(string path, StreamMode mode)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (path.StartsWith(ioCore.PathUrl))
                {
                    return ioCore.GetStream(path, mode);
                }
            }

            return null;
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
                    if (ioCore is FileSystemIO fileSys)
                    {
                        return fileSys.GetFilePath(path);
                    }
                }
            }

            return null;
        }

        public override bool DirectoryExists(string path)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (path.StartsWith(ioCore.PathUrl))
                {
                    return ioCore.DirectoryExists(path);
                }
            }

            return false;
        }

        public override void DeleteDirectory(string path)
        {
            for (int i = 0; i < IoCores.Count; i++)
            {
                var ioCore = IoCores[i];
                if (path.StartsWith(ioCore.PathUrl))
                {
                    ioCore.DeleteDirectory(path);
                    return;
                }
            }
        }
    }
}