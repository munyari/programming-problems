module DNA (toRNA) where

isValid :: String -> Bool
isValid xs = not (null xs) && all (`elem` "GCTA") xs

toRNA :: String -> Maybe String
toRNA xs
    | isValid xs = Just (map repl xs)
    | otherwise  = Nothing
    where
        repl 'G' = 'C'
        repl 'C' = 'G'
        repl 'T' = 'A'
        repl 'A' = 'U'
