using System.Collections.Generic;

namespace Koneko.Scripting
{
    public abstract class JsConsole
    {
        private List<string> Logs = new List<string>();
        private List<int> LogColors = new List<int>();

        public delegate void RecieveEventHandler(string msg);

        public event RecieveEventHandler Recieve;

        public virtual void Log(params object[] msg)
        {
            Logs.Add(string.Join(" ", msg));
            LogColors.Add(0);
            Recieve?.Invoke(string.Join(" ", msg));
        }

        public virtual void LogError(params object[] msg)
        {
            Logs.Add(string.Join(" ", msg));
            LogColors.Add(1);
            Recieve?.Invoke(string.Join(" ", msg));
        }

        public virtual void LogWarning(params object[] msg)
        {
            Logs.Add(string.Join(" ", msg));
            LogColors.Add(2);
            Recieve?.Invoke(string.Join(" ", msg));
        }

        public virtual void LogInfo(params object[] msg)
        {
            Logs.Add(string.Join(" ", msg));
            LogColors.Add(3);
            Recieve?.Invoke(string.Join(" ", msg));
        }

        public void Error(params object[] msg)
        {
            LogError(msg);
        }

        public void Warn(params object[] msg)
        {
            LogWarning(msg);
        }

        public void Warning(params object[] msg)
        {
            LogWarning(msg);
        }

        public void Info(params object[] msg)
        {
            LogInfo(msg);
        }

        public List<string> GetLogs()
        {
            List<string> logs = new List<string>();
            foreach (string log in Logs)
            {
                logs.Add(log);
            }

            return logs;
        }

        public List<int> GetLogColors()
        {
            List<int> logColors = new List<int>();
            foreach (int logColor in LogColors)
            {
                logColors.Add(logColor);
            }

            return logColors;
        }

        public int GetLineLogColor(string log)
        {
            return LogColors[Logs.IndexOf(log)];
        }
    }
}