using System;
using System.IO;

namespace LucidKit.IO
{
    public class UnixSysIO : SystemIOBase
    {
        public UnixSysIO() {
            PathUrl = "unix://";
        }

        public override string GetFilePath(string path) {
            if (path.StartsWith(PathUrl)) {
                path = path.Replace(PathUrl, "/");
                if (path == null) {
                    throw new Exception("Path Conversion Error");
                }
                return path;
            }
            else {
                var fileUrl = GetFileUrl(path);
                return GetFilePath(fileUrl);
            }
        }

        public override string GetFileUrl(string path) {
            if (!path.StartsWith("/")) {
                path = "/" + path;
            }
            return PathUrl.Replace("://", ":") + path;
        }
    }
}