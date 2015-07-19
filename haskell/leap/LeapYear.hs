module LeapYear (isLeapYear) where

isLeapYear :: Int -> Bool
isLeapYear x
  | x `mod` 400 == 0 = True
  | x `mod` 100 == 0 = False
  | x `mod` 4 == 0 = True 
  | x == 0 = False
  | otherwise = False
