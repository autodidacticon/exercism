module Bob (responseFor) where

import Data.Char (isUpper, isLetter, isSpace)

responseFor :: String -> String
responseFor xs
  | length(remWsp) == 0 = fbw
  | isYelling && last remWsp == '?' = cd
  | isYelling = wco
  | last remWsp == '?' = su
  | length(filter isSpace remWsp) == length(remWsp) = fbw
  | otherwise = wv
  where cd = "Calm down, I know what I'm doing!"
        wco = "Whoa, chill out!"
        su = "Sure."
        wv = "Whatever."
        fbw = "Fine. Be that way!"
        remWsp = filter (not . isSpace) xs
        isYelling = lenLetters > 0 && length(filter isUpper remWsp) == lenLetters
          where lenLetters = length(filter isLetter remWsp)