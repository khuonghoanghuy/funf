package src.data;

class Truncate
{
    public static function truncateFloat(number:Float, precision:Int, curPow:Int):Float
    {
        var num = number;
        num = num * Math.pow(curPow, precision);
        num = Math.round(num) / Math.pow(curPow, precision);
        return num;
    }
}