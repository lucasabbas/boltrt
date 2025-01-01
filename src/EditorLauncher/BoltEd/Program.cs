using System;
using System.Collections.Generic;
using System.Text;
using System.Diagnostics;

namespace BoltEd
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var appPath = AppDomain.CurrentDomain.BaseDirectory;
            var boltExe = appPath + "bolt.exe";
            Process.Start(boltExe, "--dev " + string.Join(" ", args));
        }
    }
}
