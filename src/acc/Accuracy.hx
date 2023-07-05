package src.acc;

import src.data.Truncate;

class Accuracy 
{
    public static var accuracy:Float = 0.00;
    public static var total:Float = 0.00;
    public static var played:Int = 0;

    public static function addAcc(ifNeed:Bool, accuracy:Float, max:Int, curPow:Int)
    {
        if (ifNeed)
            Truncate.truncateFloat(accuracy, max, curPow);

        return ifNeed;
    }

    public static function gainAcc(cur_total:Float) total += cur_total;

    public static function upAcc(cur_played:Int, max:Int)
    {
        played += cur_played;
        accuracy = total / played * max;
    }
}