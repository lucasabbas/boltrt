/*
 * Copyright (C)2005-2019 Haxe Foundation
 * Copyright (C)2024 mintkat
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

 package sys;

 import lua.Io;
 import haxe.io.Path;
 import magicrt.io.IoManager;
 
 class FileSystem {
    public static var ioManager:IoManager = untyped __lua__("_G.ioManager");

     public static function exists(path:String):Bool {
         if (path == null)
             return false;
         else {
            return ioManager.fileExists(path);
         }
     }
 
     public inline static function rename(path:String, newPath:String):Void {
         var ret = lua.Os.rename(path, newPath);
         if (!ret.success) {
             throw ret.message;
         }
     }
 
     public inline static function stat(path:String):Dynamic {
         throw "not implemented";
     }
 
     public inline static function fullPath(relPath:String):String {
         throw "not implemented";
     }
 
     public inline static function absolutePath(relPath:String):String {
         throw "not implemented";
     }
 
     public inline static function deleteFile(path:String):Void {
		var ret = lua.Os.remove(path);
		if (!ret.success) {
			throw ret.message;
		}
	}
 
     public inline static function readDirectory(path:String):Array<String> {
         throw "not implemented";
     }
 
     public inline static function isDirectory(path:String):Bool {
         return ioManager.directoryExists(path);
     }
 
     public inline static function deleteDirectory(path:String):Void {
         ioManager.deleteDirectory(path);
     }
 
     public static function createDirectory(path:String):Void {
         var path = haxe.io.Path.addTrailingSlash(path);
         var _p = null;
         var parts = [];
         while (path != (_p = haxe.io.Path.directory(path))) {
             parts.unshift(path);
             path = _p;
         }
         for (part in parts) {
             if (part.charCodeAt(part.length - 1) != ":".code && !exists(part) && ioManager.createDirectory(part) != 0)
                 throw "Could not create directory:" + part;
         }
     }
 }