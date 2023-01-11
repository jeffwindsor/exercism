module Sublist where
  import Data.List
  data Sublist = Equal | Sublist | Superlist | Unequal deriving (Show, Eq)

  sublist :: Eq a => [a] -> [a] -> Sublist
  sublist a b
    | a == b = Equal
    | a `isInfixOf` b = Sublist
    | b `isInfixOf` a = Superlist
    | otherwise = Unequal