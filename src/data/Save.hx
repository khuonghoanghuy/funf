package src.data;

import flixel.util.FlxSave;

class Save
{
    var save = new FlxSave();

    public static function bind(first:String, second:String) {
        save.bind(first, second);
    }

    public static function flush(need:Bool) {
        if (need)
            save.flush();

        return need;
    }

    public static function earse(need:Bool) {
        if (need)
            save.earse();

        return need;
    }
}