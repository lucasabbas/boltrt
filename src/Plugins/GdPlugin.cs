using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using Godot;
using Koneko.Scripting;
using Koneko.SignalWrappers;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Interop;
using Timer = Godot.Timer;
using Koneko.ProxyObjects;
using GodotScript = Godot.Script;
using GodotObject = Godot.Object;

namespace Koneko.Plugins
{
    public class GdPlugin : Plugin
    {
        public override void Init()
        {
            Table GdCoreNamespace = new Table(Enviroment.Script);
            Enviroment.Script.Globals["gd"] = GdCoreNamespace;
            
            UserData.RegisterType(typeof(GdObject));
            GdCoreNamespace["Object"] = UserData.CreateStatic(typeof(GdObject));
        }
    }
}