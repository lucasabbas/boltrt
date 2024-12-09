namespace Koneko.Scripting
{

    public abstract class JsDialogs
    {
        public delegate void ConfirmedEventHandler(int id);

        public event ConfirmedEventHandler Confirmed;

        public delegate void CanceledEventHandler(int id);

        public event CanceledEventHandler Canceled;

        public readonly int OkAndCancel = 0;

        public readonly int YesAndNo = 1;

        public virtual int PushInfo(string msg, string title = "Info")
        {
            return 0;
        }

        public virtual int PushError(string msg, string title = "Error")
        {
            return 0;
        }

        public virtual int PushWarning(string msg, string title = "Warning")
        {
            return 0;
        }

        public virtual int PushQuestion(string msg, string title = "Question",
            int button = 0)
        {
            return 0;
        }

        public virtual void NotifyInfo(string msg, string title = "Info")
        {
        }

        public virtual void NotifyError(string msg, string title = "Error")
        {
        }

        public virtual void NotifyWarning(string msg, string title = "Warning")
        {
        }

        public void OnConfirmed(int id)
        {
            Confirmed?.Invoke(id);
        }

        public void OnCanceled(int id)
        {
            Canceled?.Invoke(id);
        }
    }
}