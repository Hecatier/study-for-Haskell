fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n
    | (n > 1) = fibonacci (n-1) + fibonacci (n-2)
    | (n < 0) = (pow (-1) (n+1)) * fibonacci (abs n)


--Int型なので負の累乗が来ると小数でなくて0を返す
pow :: Int -> Int -> Int
pow _ 0 = 1
pow n 1 = n
pow n x
    | (x > 1) = n * pow n (x-1)
    | (x < 0) = pow n (x+1) `div` n