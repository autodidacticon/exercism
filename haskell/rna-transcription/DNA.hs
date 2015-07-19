module DNA (toRNA) where

toRNA :: String -> String
toRNA = map transcriber
  where
    transcriber base = 
            case base of
                'G' -> 'C'
                'C' -> 'G'
                'T' -> 'A'
                'A' -> 'U'
                _ -> 'X'

