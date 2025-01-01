using System;
using System.IO;
using System.Collections.Generic;
using Godot;
using ICSharpCode.SharpZipLib.Zip;

namespace Bolt.IO
{
    public class ZipIO : IOCore
    {
        private ICSharpCode.SharpZipLib.Zip.ZipFile _zipFile;

        public ZipIO(ZipFile zipFile, string pathUrl)
        {
            _zipFile = zipFile;
            PathUrl = pathUrl;

            foreach (ZipEntry entry in zipFile)
            {
                GD.Print(entry.Name);
            }
        }

        public ZipIO(byte[] bytes, string pathUrl) : this(new ZipFile(new MemoryStream(bytes)), pathUrl) { }

        public override string GetFilePath(string path)
        {
            if (path.StartsWith(PathUrl))
            {
                path = path.Replace(PathUrl, "");
                if (path == null)
                {
                    throw new Exception("Path Conversion Error");
                }
            }
            else {
                throw new Exception("Illegal Path: Path must start with " + PathUrl);
            }
            if (path.Contains("/"))
            {
                path = path.Replace("\\/", "/");
                path = path.Replace("\\", "/");
            }
            if (path.Contains("/"))
            {
                path = path.Replace("/", "\\");
            }
            return path;
        }

        public string SanitizePath(string path)
        {
            path = path.Replace("\\/", "\\");
            path = path.Replace("\\", "/");
            return path;
        }

        public override string LoadText(string assetPath)
        {
            string path = GetFilePath(assetPath);
            path = SanitizePath(path);

            foreach (ZipEntry entriy in _zipFile)
            {
                if (entriy.Name == path)
                {
                    using (var stream = _zipFile.GetInputStream(entriy))
                    {
                        using (var reader = new StreamReader(stream))
                        {
                            return reader.ReadToEnd();
                        }
                    }
                }
            }
            
            return null;
        }

        public override byte[] LoadBuffer(string assetPath)
        {
            string path = GetFilePath(assetPath);
            path = SanitizePath(path);
            
            foreach (ZipEntry entriy in _zipFile)
            {
                if (entriy.Name == path)
                {
                    using (var stream = _zipFile.GetInputStream(entriy))
                    {
                        using (var reader = new BinaryReader(stream))
                        {
                            return reader.ReadBytes((int)entriy.Size);
                        }
                    }
                }
            }

            return null;
        }

        public override List<string> GetFileList(string path, string extension = "", bool recursive = true)
        {
            if (!path.Contains(PathUrl))
                throw new Exception("Illegal Path: Path must start with " + PathUrl);
            path = GetFilePath(path);
            path = SanitizePath(path);

            var pathArray = path.Split('/');
            var dirName = pathArray[pathArray.Length - 1];
            
            var files = new List<string>();
            foreach (ZipEntry entry in _zipFile)
            {
                if (entry.Name.StartsWith(path))
                {
                    if (extension == "" || entry.Name.EndsWith(extension))
                    {
                        files.Add(PathUrl + entry.Name);
                    }
                }
            }

            return files;
        }

        public override bool DirectoryExists(string path)
        {
            if (!path.Contains(PathUrl))
                throw new Exception("Illegal Path: Path must start with " + PathUrl);
            path = GetFilePath(path);
            path = SanitizePath(path);
            
            foreach (ZipEntry entry in _zipFile)
            {
                if (entry.Name == path)
                {
                    return true;
                }
            }
            return false;
        }


        public override Stream GetStream(string path, StreamMode mode)
        {
            if (!path.Contains(PathUrl))
                throw new Exception("Illegal Path: Path must start with " + PathUrl);
            path = GetFilePath(path);
            path = SanitizePath(path);
            
            foreach (ZipEntry entry in _zipFile)
            {
                if (entry.Name == path)
                {
                    return _zipFile.GetInputStream(entry);
                }
            }
            
            return null;
        }
    }
}