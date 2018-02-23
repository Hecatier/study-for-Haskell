fizzbuzz :: [Int] -> String
fizzbuzz [] = ""
fizzbuzz (x:xs) 
    | (mod x 15 == 0)   = "fizzbuzz " ++ fizzbuzz xs
    | (mod x 5 == 0)    = "buzz " ++ fizzbuzz xs
    | (mod x 3 == 0)    = "fizz " ++ fizzbuzz xs
    | otherwise = show x ++ " " ++ fizzbuzz xs

fizzbuzz' :: Int -> String
fizzbuzz' n
    | (n <= 0)  = ""
    | (n > 100) = ""
    | (mod n 15 == 0)   = "fizzbuzz " ++ fizzbuzz' (n+1)
    | (mod n 5 == 0)    = "buzz " ++ fizzbuzz' (n+1)
    | (mod n 3 == 0)    = "fizz " ++ fizzbuzz' (n+1)
    | otherwise         = show n ++ " " ++ fizzbuzz' (n+1)