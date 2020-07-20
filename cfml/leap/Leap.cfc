component {

    function leapYear( year ) {
        return (0 == year % 4) && ((!(0 == year % 100)) || (0 == year % 400));
    }

}
