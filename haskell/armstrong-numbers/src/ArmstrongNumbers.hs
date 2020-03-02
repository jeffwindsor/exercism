module ArmstrongNumbers (armstrong) where

digits :: Integral a => a -> [a]
digits 0 = []
digits n = r : digits q
    where (q,r) = quotRem n 10

armstrongNumber :: Integral a => a -> a
armstrongNumber n = foldr (+) 0 $ map pow ns
    where ns = digits n
          pow x = foldr (*) 1 [ x | _ <- [1..(length ns)]]
    
armstrong :: Integral a => a -> Bool
armstrong n = armstrongNumber n == n 
