using System;
using System.Collections.Generic;
using System.Text;
using System.Diagnostics;

namespace MagicIDE
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var appPath = AppDomain.CurrentDomain.BaseDirectory;
            var magicrtExe = appPath + "magicrt.exe";
            Process.Start(magicrtExe, "--dev " + string.Join(" ", args));
        }
    }
}
