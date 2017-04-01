module Bob (responseFor) where

import Data.Char (toUpper, isAlpha, isUpper, isSpace)
import Data.List (dropWhileEnd)

responseFor :: String -> String
responseFor xs
    | null stripped                                              = "Fine. Be that way!"
    | any isAlpha stripped && alphaOnly == map toUpper alphaOnly = "Whoa, chill out!"
    | last stripped == '?'                                       = "Sure."
    | otherwise                                                  = "Whatever."
    where stripped  = dropWhileEnd isSpace xs
          alphaOnly = filter isAlpha stripped
          lastChar  = last stripped
