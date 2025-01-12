﻿using System;
using System.Collections.Generic;
using System.IO;
using Bolt.Scripting;
using MoonSharp.Interpreter;

namespace Bolt.IO
{

    public abstract class IOCore
    {
        public String PathUrl = "files://";

        public virtual string GetFilePath(string path)
        {
            return path;
        }

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

        public void SaveBuffer(string assetPath, List<DynValue> byteTable)
        {
            List<byte> bytes = new List<byte>();
            foreach (var value in byteTable)
            {
                bytes.Add(Convert.ToByte(value.Number));
            }
            SaveBuffer(assetPath, bytes.ToArray());
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

        public virtual void DeleteDirectory(string path)
        {
            
        }

        public virtual bool DirectoryExists(string path)
        {
            return false;
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