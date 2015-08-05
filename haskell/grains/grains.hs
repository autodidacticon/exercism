module Grains (square, total) where

square :: Integer -> Integer
square = (2 ^) . pred

total :: Integer
total = pred $ 2 ^ 64
