using System.Collections.Generic;
using Godot;
using Koneko.SignalWrappers;

namespace Koneko.ProxyObjects
{
    public class GdNode : GdObject
    {
        public string Name => ((Node)_object).Name;
        
        public GdNode Owner => new GdNode(((Node)_object).Owner);

        public Node.PauseModeEnum PauseMode => ((Node)_object).PauseMode;

        public Node.PhysicsInterpolationModeEnum PhysicsInterpolationMode => ((Node)_object).PhysicsInterpolationMode;

        public int ProcessPriority => ((Node)_object).ProcessPriority;

        public bool UniqueNameInOwner => ((Node)_object).UniqueNameInOwner;

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
        
        public GdNode(Node obj = null)
        {
            _object = obj ?? new Node();
            _signalWarpper = new NodeSignalWarpper((Node)_object);
            ConnectSignals();
        }

        protected virtual void ConnectSignals()
        {
            base.ConnectSignals();
            
            ((NodeSignalWarpper)_signalWarpper).ChildEnteredTree += ((Node child) => ChildEnteredTree?.Invoke(child));

            ((NodeSignalWarpper)_signalWarpper).ChildExitingTree += ((Node child) => ChildExitingTree?.Invoke(child));

            ((NodeSignalWarpper)_signalWarpper).ChildOrderChanged += (() => ChildOrderChanged?.Invoke());

            ((NodeSignalWarpper)_signalWarpper).Ready += (() => Ready?.Invoke());

            ((NodeSignalWarpper)_signalWarpper).Renamed += (() => Renamed?.Invoke());

            ((NodeSignalWarpper)_signalWarpper).TreeEntered += (() => TreeEntered?.Invoke());

            ((NodeSignalWarpper)_signalWarpper).TreeExited += (() => TreeExited?.Invoke());

            ((NodeSignalWarpper)_signalWarpper).TreeExiting += (() => TreeExiting?.Invoke());
        }

        public void AddChild(GdNode child, bool legibleUniqueName = true) => ((Node)_object).AddChild(((Node)child._object), legibleUniqueName);

        public void AddChildBelowNode(GdNode child, GdNode node, bool legibleUniqueName = true) => ((Node)_object).AddChildBelowNode(((Node)child._object), ((Node)node._object), legibleUniqueName);

        public void AddToGroup(string group) => ((Node)_object).AddToGroup(group);

        public bool CanProcess() => ((Node)_object).CanProcess();

        public GdNode Duplicate(int flags = 15) => new GdNode(((Node)_object).Duplicate(flags));

        public GdNode FindNode(string mask, bool recursive = true, bool owned = true) => new GdNode(((Node)_object).FindNode(mask, recursive, owned));

        public GdNode FindParent(string mask) => new GdNode(((Node)_object).FindParent(mask));

        public GdNode GetChild(int idx) => new GdNode(((Node)_object).GetChild(idx));

        public int GetChildCount() => ((Node)_object).GetChildCount();

        public List<GdNode> GetChildren() 
        {
            List<GdNode> children = new List<GdNode>();
            foreach (Node child in ((Node)_object).GetChildren())
            {
                children.Add(new GdNode(child));
            }
            return children;
        }

        public List<object> GetGroups() {
            List<object> groups = new List<object>();
            foreach (object child in ((Node)_object).GetGroups())
            {
                if (child is GdNode)
                {
                    groups.Add(new GdNode((Node)child));
                }
                else
                {
                    groups.Add(child);
                }
                groups.Add(child);
            }

            return groups;
        }

        public int GetIndex() => ((Node)_object).GetIndex();

        public GdNode GetNode(string path) => new GdNode(((Node)_object).GetNode(path));

        //public List<Object> GetNode()
    }
}