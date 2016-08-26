module Sublist (Sublist(..), sublist) where

-- The task is to create the data type `Sublist`, with `Eq` and
-- `Show` instances, and implement the function `sublist`.

data Sublist = Equal | Unequal | Sublist | Superlist
  deriving (Show, Eq)

sublist :: Eq a => [a] -> [a] -> Sublist
sublist xs ys
    | isEqual xs ys = Equal
    | isSublist xs ys = Sublist
    | isSublist ys xs = Superlist
    | otherwise = Unequal

isEqual :: Eq a => [a] -> [a] -> Bool
isEqual [] [] = True
isEqual [] _ = False
isEqual _ [] = False
isEqual (x:xs) (y:ys) = x == y && isEqual xs ys

isSublist :: Eq a => [a] -> [a] -> Bool
isSublist [] _ = True
isSublist _ [] = False
isSublist xs (y:ys) = (isInitialSegment xs (y:ys)) || isSublist xs ys

isInitialSegment :: Eq a => [a] -> [a] -> Bool
isInitialSegment [] _ = True
isInitialSegment _ [] = False
isInitialSegment (x:xs) (y:ys) = x == y && isInitialSegment xs ys
