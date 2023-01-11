module Grains (square, total) where
  square :: Integer -> Integer
  square i
    | i < 1 = error "Not a valid Square"
    | otherwise = 2 ^ (i - 1)

  total :: Integer
  total = square 65 - 1