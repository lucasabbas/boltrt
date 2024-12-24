using Godot;
using LucidKit.IO;
using System.Xml;
using System.Collections.Generic;
using System;
using System.Linq;
using System.Reflection;

namespace LucidKit {
    public class UiDocument : Control {
        public IOCore IOCore { get; private set; }

        public UiDocument() {
        }

        public void LoadFromPath(string path, IOCore ioCore) {
            try 
            {
                IOCore = ioCore;
                string data = IOCore.LoadText(path);
                LoadFromString(data);
            }
            catch (Exception e) 
            {
                OS.Alert("Error loading UI Document: " + e.ToString(), "XML Parse Error");
                throw e;
            }
        }

        public void LoadFromString(string data)
        {
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(data);
            Instantiate(doc);
            //LoadFromXml(doc);
        }

        public Node GetObject(string path)
        {
            return GetNode(new NodePath(path));
        }

        private void Instantiate(XmlDocument document) 
        {
            foreach(var child in GetChildren())
            {
                if (child is Node node)
                {
                    node.QueueFree();
                }
            }

            XmlNode firstNode = document.GetElementsByTagName("lkui")[0];
            string version = "1.0";
            XmlAttribute versionAttribute = firstNode.Attributes["version"];
            if (versionAttribute != null)
            {
                version = versionAttribute.Value;
            }

            XmlAttribute fullscreenAttribute = firstNode.Attributes["fullscreen"];
            if (fullscreenAttribute != null)
            {
                bool fullscreen = bool.Parse(fullscreenAttribute.Value);
                if (fullscreen){
                    SetAnchorsAndMarginsPreset(LayoutPreset.Wide, LayoutPresetMode.KeepSize);
                    SizeFlagsHorizontal = (int)SizeFlags.ExpandFill;
                    SizeFlagsVertical = (int)SizeFlags.ExpandFill;
                }
            }
            else {
                XmlAttribute anchorTopAttribute = firstNode.Attributes["anchorTop"];
                if (anchorTopAttribute != null)
                {
                    float anchorTop = float.Parse(anchorTopAttribute.Value);
                    AnchorTop = anchorTop;
                }
                XmlAttribute anchorBottomAttribute = firstNode.Attributes["anchorBottom"];
                if (anchorBottomAttribute != null)
                {
                    float anchorBottom = float.Parse(anchorBottomAttribute.Value);
                    AnchorBottom = anchorBottom;
                }
                XmlAttribute anchorLeftAttribute = firstNode.Attributes["anchorLeft"];
                if (anchorLeftAttribute != null)
                {
                    float anchorLeft = float.Parse(anchorLeftAttribute.Value);
                    AnchorLeft = anchorLeft;
                }
                XmlAttribute anchorRightAttribute = firstNode.Attributes["anchorRight"];
                if (anchorRightAttribute != null)
                {
                    float anchorRight = float.Parse(anchorRightAttribute.Value);
                    AnchorRight = anchorRight;
                }
                XmlAttribute marginTopAttribute = firstNode.Attributes["marginTop"];
                if (marginTopAttribute != null)
                {
                    float marginTop = float.Parse(marginTopAttribute.Value);
                    MarginTop = marginTop;
                }
                XmlAttribute marginBottomAttribute = firstNode.Attributes["marginBottom"];
                if (marginBottomAttribute != null)
                {
                    float marginBottom = float.Parse(marginBottomAttribute.Value);
                    MarginBottom = marginBottom;
                }
                XmlAttribute marginLeftAttribute = firstNode.Attributes["marginLeft"];
                if (marginLeftAttribute != null)
                {
                    float marginLeft = float.Parse(marginLeftAttribute.Value);
                    MarginLeft = marginLeft;
                }
                XmlAttribute marginRightAttribute = firstNode.Attributes["marginRight"];
                if (marginRightAttribute != null)
                {
                    float marginRight = float.Parse(marginRightAttribute.Value);
                    MarginRight = marginRight;
                }
            }

            XmlNodeList childNodes = firstNode.ChildNodes;
            foreach (XmlNode childNode in childNodes)
            {
                if (childNode.Name == "head"){
                    foreach (XmlNode headNode in childNode.ChildNodes)
                    {
                        if (headNode.Name == "name")
                        {
                            Name = headNode.InnerText;
                        }
                    }
                }
                else if (childNode.Name == "body")
                {
                   ConstructNodes(version, childNode.ChildNodes);
                }
            }
        }

        private void ConstructNodes(string version, XmlNodeList nodes)
        {
            if (version == "1.0")
            {
                foreach (XmlNode node in nodes)
                {
                    Node gdNode = ConstructNode(node);
                    if (gdNode != null)
                    {
                        AddChild(gdNode);
                    }
                }
            }
        }

        private Node ConstructNode(XmlNode xmlNode)
        {
            if (xmlNode.Name == "Template")
            {
                var template = new UiDocument();
                var templatePath = xmlNode.Attributes["path"].Value;
                template.LoadFromPath(templatePath, IOCore);
                return template;
            }
            else 
            {
                Node gdNode = null;

                if (xmlNode.Name == "Control")
                {
                    gdNode = new Control();
                    if (gdNode is Control control)
                    {
                        control.SetAnchorsPreset(Control.LayoutPreset.Wide);
                    }

                    SetObjectValues(xmlNode, gdNode);
                    ConstructChildern(xmlNode, gdNode);
                    return gdNode;
                }
                else {
                    foreach (Type type in GetTypesInheritedFrom(typeof(Control)))
                    {
                        if (xmlNode.Name == type.Name)
                        {
                            gdNode = (Node)Activator.CreateInstance(type);
                            if (gdNode is Control control)
                            {
                                control.SetAnchorsPreset(Control.LayoutPreset.Wide);
                                if (control is PopupMenu menu)
                                {
                                    ConstructMenu(xmlNode, menu);
                                }
                            }

                            SetObjectValues(xmlNode, gdNode);
                            ConstructChildern(xmlNode, gdNode);
                            return gdNode;
                        }
                    }

                    foreach (Type type in GetTypesInheritedFrom(typeof(Viewport)))
                    {
                        if (xmlNode.Name == type.Name)
                        {
                            gdNode = (Node)Activator.CreateInstance(type);
                            SetObjectValues(xmlNode, gdNode);
                            ConstructChildern(xmlNode, gdNode);
                            return gdNode;
                        }
                    }
                }

                return gdNode;
            }
        }

        private static Type[] GetTypesInheritedFrom(Type baseType)
        {
            Assembly assembly = baseType.Assembly;
            Type[] types = assembly.GetTypes();
            Type[] inheritedTypes = types.Where(t => t.IsSubclassOf(baseType)).ToArray();
            return inheritedTypes;
        }

        private void SetObjectValues(XmlNode xmlNode, object obj)
        {
            var properties = obj.GetType().GetProperties();
            foreach (var attribObj in xmlNode.Attributes)
            {
                if (attribObj is XmlAttribute xmlAttribute)
                {
                    SetObjectValue(xmlAttribute, obj, properties);
                }
            }
        }

        private void SetObjectValue(object attribute, object obj, PropertyInfo[] properties)
        {
            var attr = (XmlAttribute)attribute;
            foreach (var property in properties)
            {
                if (property.Name == attr.Name)
                {
                    if (property.PropertyType == typeof(float))
                    {
                        try {
                            float f = float.Parse(attr.Value);
                            property.SetValue(obj, f);
                            if ((float)property.GetValue(obj) != f)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(int))
                    {
                        try {
                            int i = int.Parse(attr.Value);
                            property.SetValue(obj, i);
                            if ((int)property.GetValue(obj) != i)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(bool))
                    {
                        try {
                            bool b = bool.Parse(attr.Value);
                            property.SetValue(obj, b);
                            if ((bool)property.GetValue(obj) != b)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(string))
                    {
                        try {
                            property.SetValue(obj, attr.Value);
                            if ((string)property.GetValue(obj) != attr.Value)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(Vector2))
                    {
                        try {
                            Vector2 vec2 = ToVector2(attr.Value);
                            property.SetValue(obj, vec2);
                            if ((Vector2)property.GetValue(obj) != vec2)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(Vector3))
                    {
                        try {
                            Vector3 vec3 = ToVector3(attr.Value);
                            property.SetValue(obj, vec3);
                            if ((Vector3)property.GetValue(obj) != vec3)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(Color))
                    {
                        try {
                            Color color = ToColor(attr.Value);
                            property.SetValue(obj, color);
                            if ((Color)property.GetValue(obj) != color)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType.IsEnum)
                    {
                        try {
                            var e = ToEnum(attr.Value, property.PropertyType);
                            property.SetValue(obj, e);
                            if ((int)property.GetValue(obj) != e)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(NodePath))
                    {
                        try {
                            NodePath path = ToNodePath(attr.Value);
                            property.SetValue(obj, path);
                            if ((NodePath)property.GetValue(obj) != path)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(ImageTexture))
                    {
                        try {
                            ImageTexture imgtxt = LoadImageTexture(IOCore, attr.Value);
                            property.SetValue(obj, imgtxt);
                            if ((ImageTexture)property.GetValue(obj) != imgtxt)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                    else if (property.PropertyType == typeof(Texture))
                    {
                        try {
                            ImageTexture txt = LoadImageTexture(IOCore, attr.Value);
                            property.SetValue(obj, txt);
                            if ((Texture)property.GetValue(obj) != txt)
                            {
                                throw new UiDocumentException(attr, obj, "Value not set");
                            }
                        }
                        catch (Exception e) {
                            throw new UiDocumentException(attr, obj, e.Message);
                        }
                    }
                }
            }
        }

        private void ConstructMenu(XmlNode xmlNode, PopupMenu menu)
        {
            foreach (XmlNode node in xmlNode.ChildNodes)
            {
                var childNode = (XmlNode)node;
                if (childNode.Name == "MenuItem")
                {
                    var label = childNode.Attributes["label"].Value;
                    var id = menu.GetItemCount();
                    menu.AddItem(label, id);
                    if (childNode.Attributes["icon"] != null)
                    {
                        var icon = LoadImageTexture(IOCore, childNode.Attributes["icon"].Value);
                        menu.SetItemIcon(id, icon);
                    }
                    if (childNode.Attributes["Checkable"] != null)
                    {
                        var checkable = bool.Parse(childNode.Attributes["Checkable"].Value);
                        menu.SetItemAsCheckable(id, checkable);
                    }
                    else if (childNode.Attributes["RadioCheckable"] != null)
                    {
                        var checkable = bool.Parse(childNode.Attributes["RadioCheckable"].Value);
                        menu.SetItemAsRadioCheckable(id, checkable);
                    }
                    else if (childNode.Attributes["Separator"] != null)
                    {
                        var separator = bool.Parse(childNode.Attributes["Separator"].Value);
                        menu.SetItemAsSeparator(id, separator);
                    }
                    if (childNode.Attributes["Checked"] != null)
                    {
                        var disabled = bool.Parse(childNode.Attributes["Checked"].Value);
                        menu.SetItemChecked(id, disabled);
                    }
                    if (childNode.Attributes["Disabled"] != null)
                    {
                        var disabled = bool.Parse(childNode.Attributes["Disabled"].Value);
                        menu.SetItemDisabled(id, disabled);
                    }
                }
            }
        }

        private void ConstructChildern(XmlNode node, Node n)
        {
            foreach (var c in node.ChildNodes)
            {
                var childNode = (XmlNode)c;
                var child = ConstructNode(childNode);
                if (child != null)
                {
                    n.AddChild(child);
                }
            }
        }

        private Vector2 ToVector2(string str)
        {
            var parts = str.Split(',');
            var vec2 = new Vector2();//(parts[0].ToFloat(), parts[1].ToFloat());
            float x = float.Parse(parts[0]);
            float y = float.Parse(parts[1]);
            vec2.x = x;
            vec2.y = y;
            return vec2;
        }

        private Vector3 ToVector3(string str)
        {
            var parts = str.Split(',');
            var vec3 = new Vector3();//(parts[0].ToFloat(), parts[1].ToFloat(), parts[2].ToFloat());
            float x = float.Parse(parts[0]);
            float y = float.Parse(parts[1]);
            float z = float.Parse(parts[2]);
            vec3.x = x;
            vec3.y = y;
            vec3.z = z;
            return vec3;
        }

        private Color ToColor(string str)
        {
            if (str.StartsWith("#"))
            {
                var color = new Color(str); //(str.ToColor());
                return color;
            }
            else
            {
                var parts = str.Split(',');
                var color = new Color(); //(parts[0].ToFloat(), parts[1].ToFloat(), parts[2].ToFloat(), parts[3].ToFloat());
                color.r = parts[0].ToFloat();
                color.g = parts[1].ToFloat();
                color.b = parts[2].ToFloat();
                color.a = parts[3].ToFloat();
                return color;
            }
        }

        private int ToEnum(string str, Type t)
        {
            var en = Enum.Parse(t, str);
            return Convert.ToInt32(en);
        }

        private NodePath ToNodePath(string str)
        {
            return new NodePath(str);
        }

        private ImageTexture LoadImageTexture(IOCore assetIo, string path)
        {
            var buffer = assetIo.LoadBuffer(path);
            var image = new Image();
            if (path.EndsWith(".png"))
            {
                image.LoadPngFromBuffer(buffer);
            }
            else if (path.EndsWith(".jpg"))
            {
                image.LoadJpgFromBuffer(buffer);
            }
            else if (path.EndsWith(".bmp"))
            {
                image.LoadBmpFromBuffer(buffer);
            }
            else if (path.EndsWith(".tga"))
            {
                image.LoadTgaFromBuffer(buffer);
            }
            var texture = new ImageTexture();
            texture.CreateFromImage(image);
            return texture;
        } 
    }

    public class UiDocumentException : Exception {
        public XmlNode XmlNode;

        public object Obj;

        public UiDocumentException(XmlNode xmlNode, object obj, string message) : base(message + " : " + xmlNode.ToString() + " - " + obj.ToString()){
            XmlNode = xmlNode;
            Obj = obj;
        }
    }
}