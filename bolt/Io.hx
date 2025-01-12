package bolt;

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
}