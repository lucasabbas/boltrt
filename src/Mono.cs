using System;


namespace Bolt
{
    public static class Mono
    {
        public static string Version
        {
            get { return getVersion(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        public static string Platform
        {
            get { return getPlatform(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        public static string RuntimeVersion
        {
            get { return getRuntimeVersion(); }
            set
            {
                throw new NotImplementedException();
            }
        }
        
        private static string getVersion()
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
        
        private static string getPlatform()
        {
            return "mono";
        }
        
        private static string getRuntimeVersion()
        {
            return Environment.Version.ToString();
        }
    }
}