module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    let
        divisibleBy num =
            0 == remainderBy num year
    in
    divisibleBy 4 && (not (divisibleBy 100) || divisibleBy 400)
