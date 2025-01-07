using System;
using System.Runtime.InteropServices;

namespace Bolt
{
    public class Mono
    {
        public string Version
        {
            get { return getVersion(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        public string Platform
        {
            get { return getPlatform(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        public string RuntimeVersion
        {
            get { return getRuntimeVersion(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        private string getVersion()
        {
            Type monoRuntimeType = Type.GetType("Mono.Runtime");
            if (monoRuntimeType != null)
            {
                var displayNameMethod = monoRuntimeType.GetMethod("GetDisplayName", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Static);
                if (displayNameMethod != null)
                {
                    string version = (string)displayNameMethod.Invoke(null, null);
                    return version;
                }
            }

            return null;
        }
        
        private string getPlatform()
        {
            return "mono";
        }
        
        private string getRuntimeVersion()
        {
            return Environment.Version.ToString();
        }

        private string getFrameworkVersion()
        {
            return ".NET 4.7.2";
        }
        
        public string FrameworkVersion
        {
            get { return getFrameworkVersion(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        private string getRuntimeIdentifier()
        {
            return "mono";
        }
        
        public string RuntimeIdentifier
        {
            get { return getRuntimeIdentifier(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        private string getCpuArchitecture()
        {
            return RuntimeInformation.ProcessArchitecture.ToString();
        }
        
        public string CpuArchitecture
        {
            get { return getCpuArchitecture(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        private string getOperatingSystem()
        {
            return RuntimeInformation.OSDescription;
        }
        
        public string OperatingSystem
        {
            get { return getOperatingSystem(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        private string getRuntimeDirectory()
        {
            return RuntimeEnvironment.GetRuntimeDirectory();
        }
        
        public string RuntimeDirectory
        {
            get { return getRuntimeDirectory(); }
            set
            {
                throw new NotImplementedException();
            }
        }
    }
}