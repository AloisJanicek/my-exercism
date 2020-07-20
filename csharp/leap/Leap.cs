using System;

public static class Leap
{
    public static bool IsLeapYear(int year)
    {
        return (0 == year % 4) && ((!(0 == year % 100)) || (0 == year % 400));
    }
}
