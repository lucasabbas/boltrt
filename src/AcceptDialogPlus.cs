using Godot;

namespace Bolt
{
    public partial class AcceptDialogPlus : AcceptDialog
    {
        public enum TypeEnum
        {
            Error,
            Warning,
            Info,
        }
    
        private TypeEnum _type = TypeEnum.Info;
        public TypeEnum Type
        {
            get => _type;
        }
    
        private HBoxContainer _hBoxContainer;
    
        public Label Label;

        public string Text
        {
            get => Label.Text;
            set => Label.Text = value;
        }
    
        public AcceptDialogPlus(TypeEnum type = TypeEnum.Info) : base()
        {
            _type = type;
            PackedScene boxScene = GD.Load<PackedScene>("res://src/ErrorBox.tscn");
            if (_type == TypeEnum.Warning)
            {
                boxScene = GD.Load<PackedScene>("res://src/WarnBox.tscn");
            }
            else if (_type == TypeEnum.Info)
            {
                boxScene = GD.Load<PackedScene>("res://src/InfoBox.tscn");
            }

            _hBoxContainer = (HBoxContainer)boxScene.Instance<HBoxContainer>();
            AddChild(_hBoxContainer);
            Label = (Label)_hBoxContainer.GetNode("Label");
        }
    }
}