module Leap where

import Data.Eq
import Data.HeytingAlgebra
import Prelude

isLeapYear :: Int -> Boolean
isLeapYear year =
  let
    divisibleBy num = 0 == mod year num
  in
    (divisibleBy 4) && (not (divisibleBy 100)) || (divisibleBy 400)
