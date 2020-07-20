module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year =
  let divisibleBy num = 0 == mod year num
    in (divisibleBy 4) && (not (divisibleBy 100)) || (divisibleBy 400)
