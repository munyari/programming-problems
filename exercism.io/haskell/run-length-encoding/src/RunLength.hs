module RunLength (decode, encode) where
import Data.List (group)
import Data.Char (isDigit)

decode :: String -> String
decode "" = ""
decode s@(x:xs)
    | null left = x : decode xs
    | otherwise = replicate (read left) (head right) ++ decode (tail right)
      where ini = span isDigit s
            left = fst ini
            right = snd ini

getLen :: String -> String
getLen x
    | length x > 1 = (show . length) x
    | otherwise    =  ""

encode :: String -> String
encode = concatMap (\x ->  getLen x ++ [head x]) . group

