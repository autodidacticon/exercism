module Grains (grains, square, total) where

square :: Integer -> Integer
square x = 2 ^ (x - 1)

grains = map (\x -> 2 ^ x) [0..63] 

total = sum grains
