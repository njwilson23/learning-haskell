-- naive password strength checker
-- a "strong" password must have
--  length >= 15
--  upper and lower case chars
--  number chars

module Homework6_PasswordChecker
    (isstrong)
where

import Data.Char
import Data.List

islong :: String -> Bool
islong s = (length s) >= 15

contains_num :: String -> Bool
contains_num s = Data.List.any Data.Char.isNumber s

contains_upp :: String -> Bool
contains_upp s = (map Data.Char.toLower s) /= s

contains_low :: String -> Bool
contains_low s = (map Data.Char.toUpper s) /= s

isstrong :: String -> Bool
isstrong s = (islong s) && (contains_num s) && (contains_upp s) && (contains_low s)


-- BTW, this is the first Haskell program I've ever gotten to work on the first try

