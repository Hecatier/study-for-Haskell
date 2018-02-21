fizzbuzz :: [Int] -> String
fizzbuzz [] = ""
fizzbuzz (x:xs) 
    | (mod x 15 == 0)   = "fizzbuzz " ++ fizzbuzz xs
    | (mod x 5 == 0)    = "buzz " ++ fizzbuzz xs
    | (mod x 3 == 0)    = "fizz " ++ fizzbuzz xs
    | otherwise = show x ++ " " ++ fizzbuzz xs

