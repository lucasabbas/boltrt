using System;
using System.Collections.Generic;
using Jint;
using Jint.Runtime;
using Jint.Runtime.Modules;
using System.IO;
using Koneko.IO;
using StringExtensions = Godot.StringExtensions;

namespace Koneko.Scripting
{
    public class IOModuleLoader : ModuleLoader
    {
        private readonly Uri _basePath;
        public IOManager IoManager;
        
        private readonly Dictionary<string, string> _modules = new Dictionary<string, string>();

        public IOModuleLoader(IOManager ioManager)
        {
            IoManager = ioManager;
            _basePath = new Uri("data://");
        }

        public override ResolvedSpecifier Resolve(string referencingModuleLocation, ModuleRequest moduleRequest)
        {
            var specifier = moduleRequest.Specifier;

            // Check if it's a relative specifier
            if (IsRelative(specifier))
            {
                var baseUri = BuildBaseUri(referencingModuleLocation);
                var resolvedUri = new Uri(baseUri, specifier); // Resolve relative path
                if (specifier.StartsWith("./"))
                    specifier = baseUri.AbsoluteUri + specifier.Replace("./", "/");
                else
                    specifier = resolvedUri.AbsoluteUri;
            }
            else if (!specifier.Contains("://"))
            {
                foreach (var filePath in IoManager.GetFileListAll(".js"))
                {
                    if (filePath.EndsWith(specifier))
                    {
                        specifier = filePath;
                        break;
                    }
                }
            }

            if (string.IsNullOrEmpty(specifier))
            {
                throw new ModuleResolutionException("Invalid Module Specifier", specifier, referencingModuleLocation, specifier);
            }

            // Try to resolve absolute paths
            Uri resolved;
            if (Uri.TryCreate(specifier, UriKind.Absolute, out var uri))
            {
                resolved = uri;
            }
            else if (specifier[0] == '#')
            {
                throw new ModuleResolutionException($"PACKAGE_IMPORTS_RESOLVE is not supported: '{specifier}'", specifier, referencingModuleLocation, specifier);
                return default;
            }
            else
            {
                return new ResolvedSpecifier(
                    moduleRequest,
                    specifier,
                    Uri: null,
                    SpecifierType.Bare
                );
            }

            // Validate the resolved URI
            if (resolved.IsFile)
            {
                if (resolved.UserEscaped)
                {
                    throw new ModuleResolutionException("Invalid Module Specifier", specifier, referencingModuleLocation, specifier);
                }

                if (!Path.HasExtension(resolved.LocalPath))
                {
                    throw new ModuleResolutionException("Unsupported Directory Import", specifier, referencingModuleLocation, specifier);
                }
            }

            return new ResolvedSpecifier(
                moduleRequest,
                resolved.AbsoluteUri,
                resolved,
                SpecifierType.RelativeOrAbsolute
            );
        }

        private Uri BuildBaseUri(string referencingModuleLocation)
        {
            if (referencingModuleLocation != null)
            {
                var moduleDir = GetModuleDirectory(referencingModuleLocation);
                if (moduleDir != null)
                {
                    return new Uri(_basePath, moduleDir);
                }
                
                if (Uri.TryCreate(referencingModuleLocation, UriKind.Absolute, out var referencingLocation) ||
                    Uri.TryCreate(_basePath, referencingModuleLocation, out referencingLocation))
                {
                    return referencingLocation;
                }
            }
            return _basePath;
        }
        
        public string GetModuleDirectory(string moduleSpecifier)
        {
            foreach (var v in _modules)
            {
                if (v.Key.EndsWith(moduleSpecifier))
                {
                    return v.Value;
                }
            }

            return null;
        }

        protected override string LoadModuleContents(Engine engine, ResolvedSpecifier resolved)
        {
            var specifier = resolved.ModuleRequest.Specifier;
            if (resolved.Type != SpecifierType.RelativeOrAbsolute)
            {
                throw new NotSupportedException($"The default module loader can only resolve files. Attempted to resolve: '{specifier}'.");
            }

            if (resolved.Uri == null)
            {
                throw new InvalidOperationException($"Module '{specifier}' of type '{resolved.Type}' has no resolved URI.");
            }

            var fileName = Uri.UnescapeDataString(resolved.Uri.AbsolutePath);

            var fileDir = StringExtensions.GetBaseDir(specifier);
            
            _modules[specifier] = fileDir;
            
            if (!specifier.EndsWith(".js"))
            {
                return IoManager.LoadText(specifier + ".js");
            }
            return IoManager.LoadText(specifier);
        }

        private static bool IsRelative(string specifier)
        {
            return specifier.StartsWith(".") || specifier.StartsWith("/");
        }

        public string GetAbsoluteModulePath(string referencingModuleLocation, ModuleRequest moduleRequest)
        {
            var resolved = Resolve(referencingModuleLocation, moduleRequest);
            return resolved.Uri.AbsolutePath;
        }
    }
}
