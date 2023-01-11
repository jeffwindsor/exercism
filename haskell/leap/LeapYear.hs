module LeapYear (isLeapYear) where
  divBy :: Int -> Int -> Bool
  divBy x y = mod x y == 0

  isLeapYear :: Int -> Bool
  isLeapYear y
    | divBy y 100 = divBy y 400
    | otherwise   = divBy y 4