using Godot;
using System;

namespace LucidKit
{

    public partial class FreeLookCamera2D : Camera2D
    {
        public float MinZoom = 0.1f;
        public float MaxZoom = 5.0f;
        public float ZoomFactor = 0.1f;
        public float ZoomDuration = 0.2f;
        public float ZoomLevel = 1f;
        public Vector2 PositionBeforeDrag;
        public Vector2 PositionBeforeDrag2;

        public Node2D TransformNode;

        private Vector2 NullVector = new Vector2(909090909099090, 909090909099090);

        public bool Active = true;

        public FreeLookCamera2D()
        {
            TransformNode = this;
        }

        public override void _UnhandledInput(InputEvent @event)
        {
            if ((!Visible) || (!Active) || ((!Visible) && (!Active)))
                return;

            if (TransformNode == null)
                return;

            if (@event is InputEventMouseButton eventMouseButton)
            {
                switch (eventMouseButton.ButtonIndex)
                {
                    case (int)ButtonList.WheelUp:
                        SetZoomLevel((float)(ZoomLevel + ZoomFactor), GetGlobalMousePosition());
                        break;
                    case (int)ButtonList.WheelDown:
                        SetZoomLevel((float)(ZoomLevel - ZoomFactor), GetGlobalMousePosition());
                        break;
                }

                if (Input.IsMouseButtonPressed((int)ButtonList.Right))
                {
                    PositionBeforeDrag = eventMouseButton.GlobalPosition;
                    PositionBeforeDrag2 = TransformNode.GlobalPosition;
                }
                else
                {
                    PositionBeforeDrag = NullVector;
                }
            }
            else if (@event is InputEventPanGesture eventPanGesture)
            {
                GlobalPosition += eventPanGesture.Delta * 20;
            }
            else if (@event is InputEventScreenDrag eventScreenDrag)
            {
                GlobalPosition -= eventScreenDrag.Relative;
            }
            else if (@event is InputEventMagnifyGesture eventMagnifyGesture)
            {
                if (eventMagnifyGesture.Factor > 1)
                {
                    SetZoomLevel((float)(ZoomLevel + (ZoomFactor * 0.5)), GetGlobalMousePosition());
                }
                else if (eventMagnifyGesture.Factor < 1)
                {
                    SetZoomLevel((float)(ZoomLevel - (ZoomFactor * 0.5)), GetGlobalMousePosition());
                }
            }

            if (Input.IsMouseButtonPressed((int)ButtonList.Right))
            {
                if ((PositionBeforeDrag != NullVector) && (@event is InputEventMouseMotion eventMouseMotion))
                {
                    TransformNode.GlobalPosition = PositionBeforeDrag2 +
                                                   (PositionBeforeDrag - eventMouseMotion.GlobalPosition)
                                                   * (float)(1 / ZoomLevel);
                }
            }
        }

        public void SetZoomLevel(float level, Vector2 mouseWorldPosition)
        {
            var oldZoomLevel = ZoomLevel;

            ZoomLevel = Mathf.Clamp(level, MinZoom, MaxZoom);

            Vector2 direction = (mouseWorldPosition - TransformNode.GlobalPosition);
            Vector2 newPosition = TransformNode.GlobalPosition + direction -
                                  ((direction) / (float)(ZoomLevel / oldZoomLevel));

            Zoom = new Vector2((float)ZoomLevel, (float)ZoomLevel);
            TransformNode.GlobalPosition = newPosition;
        }
    }
}