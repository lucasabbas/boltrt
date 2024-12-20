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
            node.Connect("child_entered_tree", this, nameof(OnChildEnteredTree));
            node.Connect("child_exiting_tree", this, nameof(OnChildExitingTree));
            node.Connect("child_order_changed", this, nameof(OnChildOrderChanged));
            node.Connect("ready", this, nameof(OnReady));
            node.Connect("renamed", this, nameof(OnRenamed));
            node.Connect("tree_entered", this, nameof(OnTreeEntered));
            node.Connect("tree_exited", this, nameof(OnTreeExited));
            node.Connect("tree_exiting", this, nameof(OnTreeExiting));
        }

        public void OnChildEnteredTree(Node child)
        {
            ChildEnteredTree?.Invoke(child);
        }

        public void OnChildExitingTree(Node child)
        {
            ChildExitingTree?.Invoke(child);
        }

        public void OnChildOrderChanged()
        {
            ChildOrderChanged?.Invoke();
        }

        public void OnReady()
        {
            Ready?.Invoke();
        }

        public void OnRenamed()
        {
            Renamed?.Invoke();
        }

        public void OnTreeEntered()
        {
            TreeEntered?.Invoke();
        }

        public void OnTreeExited()
        {
            TreeExited?.Invoke();
        }

        public void OnTreeExiting()
        {
            TreeExiting?.Invoke();
        }


        
    }
}