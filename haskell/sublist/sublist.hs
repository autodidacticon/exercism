module Sublist (Sublist(..), sublist) where

import Data.List

data Sublist = Sublist | Superlist | Equal | Unequal
    deriving (Eq, Show)


sublist :: Eq a => [a] -> [a] -> Sublist
sublist xs ys
    | xs == ys = Equal
    | xs `isInfixOf` ys = Sublist
    | ys `isInfixOf` xs = Superlist
    | otherwise = Unequal
      