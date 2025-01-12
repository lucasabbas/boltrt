package bolt;

import haxe.io.BytesBuffer;
import haxe.io.BytesData;
import haxe.io.Bytes;
import lua.Table;

class Io {
    static function bytesToNumberTable(bytes : Bytes) {
        var floatArray : Array<Float> = new Array<Float>();
        for (i in 0...bytes.length) {
            var byte : Int = bytes.get(i);
            var float : Float = cast byte;
            floatArray.push(float);
        }

        var table : Table<Int, Float> = Table.fromArray(floatArray);
        return table;
    }

    static function numberTableToBytes(table : Table<Int, Float>) {
        var floatArray : Array<Float> = Table.toArray(table);
        var bytesBuffer : BytesBuffer = new BytesBuffer();
        for (i in 0...floatArray.length) {
            var float : Float = floatArray[i];
            bytesBuffer.addFloat(float);
        }
        var bytes : Bytes = bytesBuffer.getBytes();
        return bytes;
    }
}