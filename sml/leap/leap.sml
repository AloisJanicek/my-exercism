fun isLeapYear year =
    let fun divisibleBy num = 0 = year mod num
    in (divisibleBy(4)) andalso (not (divisibleBy(100))) orelse divisibleBy(400)
    end
