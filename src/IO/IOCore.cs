using System;
using System.Collections.Generic;
using System.IO;
using Koneko.Scripting;

namespace Koneko.IO
{

    public abstract class IOCore
    {
        public String PathUrl = "files://";

        public virtual String LoadText(string assetPath)
        {
            return null;
        }

        public virtual void SaveText(string assetPath, string text)
        {

        }

        public virtual byte[] LoadBuffer(string assetPath)
        {
            return null;
        }

        public virtual void SaveBuffer(string assetPath, byte[] bytes)
        {

        }

        public List<String> GetFileListAll(string extension, bool recursive = true)
        {
            return GetFileList(PathUrl, extension, recursive);
        }

        public virtual List<String> GetFileList(string path, string extension = "", bool recursive = true)
        {
            return null;
        }

        public bool FileExists(string path)
        {
            return LoadBuffer(path) != null;
        }

        public virtual void DeleteFile(string path)
        {

        }

        public void MoveFile(string source, string dest)
        {
            byte[] buffer = LoadBuffer(source);
            SaveBuffer(dest, buffer);
            DeleteFile(source);
        }

        public virtual int CreateDirectory(string path)
        {
            return 1;
        }
        
        public virtual Stream GetStream(String path, StreamMode mode)
        {
            return null;
        }
    
        public String GetTempFilename()
        {
            return PathUrl + Path.GetTempFileName();
        }
    }
}