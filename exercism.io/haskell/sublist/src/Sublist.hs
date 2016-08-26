module Sublist (Sublist(..), sublist) where

import Data.List (isInfixOf)

-- The task is to create the data type `Sublist`, with `Eq` and
-- `Show` instances, and implement the function `sublist`.

data Sublist = Equal | Unequal | Sublist | Superlist
  deriving (Show, Eq)

sublist :: Eq a => [a] -> [a] -> Sublist
sublist xs ys
    | xs == ys        = Equal
    | isInfixOf xs ys = Sublist
    | isInfixOf ys xs = Superlist
    | otherwise       = Unequal
