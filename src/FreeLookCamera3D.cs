using Godot;
using System;

namespace Koneko
{
    public partial class FreeLookCamera3D : Camera
    {
        public float Sensitivity = 3f;
        public float ControllerSensitivity = 20f;
        public float DefaultVelocity = 5f;
        public float SpeedScale = 1.17f;
        public float BoostSpeedMultiplier = 3.0f;
        public float MaxSpeed = 1000f;
        public float MinSpeed = 0.2f;

        public float Velocity;

        public Vector3 InitialPosition;
        public Vector3 InitialRotation;

        public bool Active = true;

        bool IsJoystickActive = false;

        public Spatial TransformNode;

        bool speedToggle = false;

        public FreeLookCamera3D()
        {
            TransformNode = this;
        }

        public override void _Ready()
        {
            Velocity = DefaultVelocity;
            InitialPosition = TransformNode.GlobalPosition;
            InitialRotation = TransformNode.GlobalRotation;
        }

        public override void _Input(InputEvent @event)
        {
            if ((!Current) || (!Active) || ((!Current) && (!Active)))
                return;
            if (!Current)
                return;
            if (!Active)
                return;
            if (TransformNode == null)
                return;

            if (Input.MouseMode == Input.MouseModeEnum.Captured)
            {
                if (@event is InputEventMouseMotion eventMouseMotion)
                {
                    Vector3 rotation = TransformNode.Rotation;
                    rotation.y -= eventMouseMotion.Relative.x / 1000 * (float)Sensitivity;
                    rotation.x -= eventMouseMotion.Relative.y / 1000 * (float)Sensitivity;
                    rotation.x = (float)Mathf.Clamp(rotation.x, (float)(Math.PI / -2f), (float)(Math.PI / 2f));
                    TransformNode.Rotation = rotation;
                }
            }

            /*
            if (@event is InputEventJoypadMotion && Input.GetJoyAxis(0, 0) != 0)
            {
                Vector3 rotation = TransformNode.Rotation;
                rotation.Y -= Input.GetJoyAxis(0, JoyAxis.RightX) / 1000 * (float)ControllerSensitivity;
                rotation.X -= Input.GetJoyAxis(0, JoyAxis.RightY) / 1000 * (float)ControllerSensitivity;
                rotation.X = (float)Mathf.Clamp(rotation.X, (float)(Math.PI / -2), (float)(Math.PI / 2));
                TransformNode.Rotation = rotation;
                IsJoystickActive = true;
            }
            else
                IsJoystickActive = false;

            if (@event is InputEventJoypadButton)
            {
                if (Input.IsJoyButtonPressed(0, JoyButton.DpadUp))
                    Velocity = Mathf.Clamp(Velocity * SpeedScale, MinSpeed, MaxSpeed);
                else if (Input.IsJoyButtonPressed(0, JoyButton.DpadDown))
                    Velocity = Mathf.Clamp(Velocity / SpeedScale, MinSpeed, MaxSpeed);
            }*/

            if (@event is InputEventMouseButton eventMouseButton)
            {
                switch (eventMouseButton.ButtonIndex)
                {
                    case (int)ButtonList.Right:
                        if (eventMouseButton.Pressed)
                        {
                            Input.MouseMode = Input.MouseModeEnum.Captured;
                        }
                        else
                        {
                            Input.MouseMode = Input.MouseModeEnum.Visible;
                        }

                        break;
                    case (int)ButtonList.WheelUp:
                        Velocity = Mathf.Clamp(Velocity * SpeedScale, MinSpeed, MaxSpeed);
                        break;
                    case (int)ButtonList.WheelDown:
                        Velocity = Mathf.Clamp(Velocity / SpeedScale, MinSpeed, MaxSpeed);
                        break;
                }
            }
        }

        public override void _Process(float delta)
        {
            if ((!Current) || (!Active) || ((!Current) && (!Active)))
                return;
            if (!Current)
                return;
            if (!Active)
                return;
            if (TransformNode == null)
                return;

            Vector3 direction = new Vector3(
                GetAxis(Input.IsPhysicalKeyPressed((int)KeyList.D), Input.IsPhysicalKeyPressed((int)KeyList.A)),
                GetAxis(Input.IsPhysicalKeyPressed((int)KeyList.E), Input.IsPhysicalKeyPressed((int)KeyList.Q)),
                GetAxis(Input.IsPhysicalKeyPressed((int)KeyList.S), Input.IsPhysicalKeyPressed((int)KeyList.W))
            ).Normalized();
            /*
            Vector3 joypadDirection = new Vector3(
                RoundAxis(Input.GetJoyAxis(0, JoyAxis.LeftX)),
                GetCombinedAxis(Input.GetJoyAxis(0, JoyAxis.TriggerRight), Input.GetJoyAxis(0, JoyAxis.TriggerLeft)),
                RoundAxis(Input.GetJoyAxis(0, JoyAxis.LeftY))
            ).Normalized();
            
            if (Input.IsJoyButtonPressed(0, JoyButton.LeftStick))
                speedToggle = !speedToggle;

            if (speedToggle && IsJoystickActive)
                TransformNode.Translate(joypadDirection * (float)Velocity * (float)delta * (float)BoostSpeedMultiplier);
            else if (IsJoystickActive)
                TransformNode.Translate(joypadDirection * (float)Velocity * (float)delta);
            else*/ if (Input.IsPhysicalKeyPressed((int)KeyList.Shift))
                TransformNode.Translate(direction * (float)Velocity * (float)delta * (float)BoostSpeedMultiplier);
            else
                TransformNode.Translate(direction * (float)Velocity * (float)delta);

            if (Input.IsPhysicalKeyPressed((int)KeyList.Shift) && Input.IsKeyPressed((int)KeyList.R))
                Reset();
        }

        public void Reset()
        {
            TransformNode.GlobalPosition = InitialPosition;
            TransformNode.GlobalRotation = InitialRotation;
        }

        public float GetAxis(bool bool1, bool bool2)
        {
            float float1 = System.Convert.ToSingle(bool1);
            float float2 = System.Convert.ToSingle(bool2);
            return float1 - float2;
        }

        public float GetCombinedAxis(float axis1, float axis2)
        {
            return axis1 - axis2;
        }

        public float RoundAxis(float axis)
        {
            return Mathf.Round(axis);
        }
    }
}