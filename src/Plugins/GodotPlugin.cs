using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using Godot;
using Bolt.Scripting;
using MoonSharp.Interpreter;
using MoonSharp.Interpreter.Interop;
using Timer = Godot.Timer;
using GodotScript = Godot.Script;
using GodotObject = Godot.Object;

namespace Bolt.Plugins
{

	public class GodotPlugin : Plugin
	{
		public override void Init()
		{
			Table GdCoreNamespace = new Table(Enviroment.Script);
			Enviroment.Script.Globals["godot"] = GdCoreNamespace;

			UserData.RegisterType(typeof(VisualServer));
			UserData.RegisterType(typeof(PhysicsServer));
			UserData.RegisterType(typeof(Physics2DServer));
			UserData.RegisterType(typeof(AudioServer));
			UserData.RegisterType(typeof(CameraServer));
			UserData.RegisterType(typeof(Time));
			UserData.RegisterType(typeof(TranslationServer));
			UserData.RegisterType(typeof(UndoRedo));
			UserData.RegisterType(typeof(SignalToFunc));

			GdCoreNamespace[nameof(VisualServer)] = UserData.CreateStatic(typeof(VisualServer));
			GdCoreNamespace[nameof(PhysicsServer)] = UserData.CreateStatic(typeof(PhysicsServer));
			GdCoreNamespace[nameof(AudioServer)] = UserData.CreateStatic(typeof(AudioServer));
			GdCoreNamespace[nameof(CameraServer)] = UserData.CreateStatic(typeof(CameraServer));
			GdCoreNamespace[nameof(Time)] = UserData.CreateStatic(typeof(Time));
			GdCoreNamespace[nameof(TranslationServer)] = UserData.CreateStatic(typeof(TranslationServer));
			GdCoreNamespace[nameof(UndoRedo)] = UserData.CreateStatic(typeof(UndoRedo));
			GdCoreNamespace[nameof(SignalToFunc)] = UserData.CreateStatic(typeof(SignalToFunc));


			UserData.RegisterType<Color>();
			UserData.RegisterType<Vector3>();
			UserData.RegisterType<Vector2>();
			UserData.RegisterType<Rect2>();
			UserData.RegisterType<Basis>();
			UserData.RegisterType<Transform2D>();
			UserData.RegisterType<Plane>();
			UserData.RegisterType<Quat>();
			UserData.RegisterType<Node>();
			UserData.RegisterType<GodotObject>();
			UserData.RegisterType<TreeItem>();

			if (!Enviroment.Sandboxed)
			{
				UserData.RegisterType<OS>();
				GdCoreNamespace["OS"] = UserData.CreateStatic(typeof(OS));
			}

			GdCoreNamespace["Color"] = typeof(Color);
			GdCoreNamespace["Vector3"] = typeof(Vector3);
			GdCoreNamespace["Vector2"] = typeof(Vector2);
			GdCoreNamespace["Rect2"] = typeof(Rect2);
			GdCoreNamespace["Basis"] = typeof(Basis);
			GdCoreNamespace["Transform2D"] = typeof(Transform2D);
			GdCoreNamespace["Plane"] = typeof(Plane);
			GdCoreNamespace["Quaternion"] = typeof(Quat);
			GdCoreNamespace["Node"] = typeof(Node);
			GdCoreNamespace["Object"] = typeof(GodotObject);
			GdCoreNamespace["TreeItem"] = typeof(TreeItem);

			Type[] nodeTypes = GetTypesInheritedFrom(typeof(Node));
			foreach (var type in nodeTypes)
			{
				if (!IsBlackListedType(type) || Enviroment.Sandboxed == false)
				{
					// hack fix to stop the .NET debugger from bitching.
					bool isNested = type.IsNested;

					if (!isNested && type != typeof(PathFollow2D))
					{
						UserData.RegisterType(type);
						GdCoreNamespace[type.Name] = UserData.CreateStatic(type);
					}
				}
			}

			Type[] refTypes = GetTypesInheritedFrom(typeof(Reference));
			foreach (var type in refTypes)
			{
				if ((!IsBlackListedType(type) || Enviroment.Sandboxed == false) && !UserData.IsTypeRegistered(type))
				{
					// hack fix to stop the .NET debugger from bitching.
					bool isNested = type.IsNested;

					if (!isNested)
					{
						UserData.RegisterType(type);
						GdCoreNamespace[type.Name] = UserData.CreateStatic(type);
					}
				}
			}

			Type[] enumTypes = GetEnumTypesFromNamespace("Godot");
			foreach (Type type in enumTypes)
			{
				// hack fix to stop the .NET debugger from bitching.
				bool isNested = type.IsNested;

				if (!isNested)
				{
					UserData.RegisterType(type);
					GdCoreNamespace[type.Name] = UserData.CreateStatic(type);
				}
			}
		}

		public Type[] GetTypesInheritedFrom(Type baseType)
		{
			Assembly assembly = baseType.Assembly;
			Type[] types = assembly.GetTypes();
			Type[] inheritedTypes = types.Where(t => t.IsSubclassOf(baseType)).ToArray();
			return inheritedTypes;
		}

		public Type[] GetEnumTypesFromAssembly(Assembly assembly)
		{
			List<Type> types = new List<Type>();
			foreach (var t in assembly.GetTypes())
			{
				if (t.IsEnum)
				{
					types.Add(t);
				}
			}

			return types.ToArray();
		}

		public static Type[] GetEnumTypesFromNamespace(string @namespace)
		{
			List<Type> types = new List<Type>();
			foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
			{
				foreach (var type in asm.GetTypes())
				{
					if (type.Namespace == @namespace && type.IsEnum)
					{
						types.Add(type);
					}
				}
			}

			return types.ToArray();
		}

		public Type[] GetBlackListedTypes()
		{
			return new[]
			{
				typeof(File),
				typeof(GDScript),
				typeof(CSharpScript),
				typeof(GodotScript),
				typeof(Directory),
				typeof(Engine),
				typeof(UDPServer),
				typeof(PacketPeerUDP),
				typeof(TCP_Server),
				typeof(StreamPeer),
				typeof(StreamPeerTCP),
				//typeof(EditorScript),
				typeof(GDScriptFunctionState),
				typeof(JavaScript),
				typeof(JavaScriptObject),
				typeof(JavaClass),
				typeof(JavaClassWrapper),
				typeof(GDNative),
				typeof(GDNativeLibrary),
				typeof(PathFollow2D)
			};
		}

		public bool IsBlackListedType(Type type)
		{
			return GetBlackListedTypes().Contains(type);
		}

		public Vector2 GetWindowResolution()
		{
			return OS.WindowSize;
		}
	}
}
