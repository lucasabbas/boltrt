using System;
using System.IO;

namespace LucidKit.IO
{
    public class WindowsSysIO : SystemIOBase
    {
        public WindowsSysIO() {
            PathUrl = "win://";
        }

        public override string GetFilePath(string path) {
            if (path.StartsWith(PathUrl)) {
                path = path.Replace(PathUrl, "");
                if (path == null) {
                    throw new Exception("Path Conversion Error");
                }

                var driveLetter = path.Substring(0, 1);
                var filePath = path.Substring(1);
                return driveLetter.ToUpper() + ":/" + filePath;
            }
            else {
                var fileUrl = GetFileUrl(path);
                return GetFilePath(fileUrl);
            }
        }

        public override string GetFileUrl(string path) {
            var driveLetter = path.Substring(0, 1);
            var filePathArray = path.Split(':');
            var filePath = filePathArray[1];
            return PathUrl + driveLetter + "/" + filePath;
        }
    }
}