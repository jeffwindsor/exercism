module Pangram (isPangram) where

import qualified Data.Set as S
import qualified Data.Char as C

isPangram :: String -> Bool
isPangram text = (S.size . asciiLetters) text == 26
    where asciiLetters = S.fromList 
                         . (map C.toLower)
                         . (filter C.isAscii)
                         . (filter C.isLetter)
