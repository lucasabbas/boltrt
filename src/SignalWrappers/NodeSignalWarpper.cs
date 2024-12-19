using Godot;

namespace Koneko.SignalWrappers
{
    public class NodeSignalWarpper : ObjectSignalWarpper
    {
        public delegate void ChildEnteredTreeEventHandler(Node child);
        public event ChildEnteredTreeEventHandler ChildEnteredTree;
        
        public delegate void ChildExitingTreeEventHandler(Node child);
        public event ChildExitingTreeEventHandler ChildExitingTree;
        
        public delegate void ChildOrderChangedEventHandler();
        public event ChildOrderChangedEventHandler ChildOrderChanged;
        
        public delegate void ReadyEventHandler();
        public event ReadyEventHandler Ready;
        
        public delegate void RenamedEventHandler();
        public event RenamedEventHandler Renamed;
        
        public delegate void TreeEnteredEventHandler();
        public event TreeEnteredEventHandler TreeEntered;
        
        public delegate void TreeExitedEventHandler();
        public event TreeExitedEventHandler TreeExited;
        
        public delegate void TreeExitingEventHandler();
        public event TreeExitingEventHandler TreeExiting;
        
        public NodeSignalWarpper(Node node) : base(node)
        {
            
        }
    }
}