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
  | patTest x "[A-Z|\\ ]+" = "Whoa, chill out!"
  | patTest x ".+\\?" = "Sure."
  | otherwise = "Whatever."
