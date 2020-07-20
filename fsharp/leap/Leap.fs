module Leap

let leapYear (year: int): bool =
    let divisibleBy (num: int): bool = 0 = (year % num)

    divisibleBy 4 &&
    not (divisibleBy 100) ||
    divisibleBy 400
