module Bob(responseFor) where
import Text.Regex
import Data.Tuple.Select
import Data.Maybe

patTest :: String -> String -> Bool
patTest x y = 
  let r = matchRegexAll (mkRegex y) x in
  case r of
    Just _ -> sel2(fromJust r) == x
    _ -> False

responseFor :: String -> String
responseFor x
  | patTest x "[\\ |\\n|\\r|\\t|\\v|\\xA0|\\x2002]*" = "Fine. Be that way!"
  | patTest x "([\\ |0-9|%|\\^|\\*|@|#|\\$|\\(|\\*|\\^|\\!|,]*[A-Z]+[\\ |0-9|%|\\^|\\*|@|#|\\$|\\(|\\*|\\^|\\!|,]*)+." = "Whoa, chill out!"
  | patTest x ".+\\?" = "Sure."
  | otherwise = "Whatever."
