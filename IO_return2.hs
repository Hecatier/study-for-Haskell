--Haskellのreturnは純粋な値からIOアクションを作り出す実例
main = do
    a <- return "hell"
    b <- return "yeah!"
    putStrLn $ a ++ " " ++ b

--ただしreturnは冗長．以下のコードが通例
{--
main = do
    let a = "hell"
        b = "yeah"
    putStrLn $ a ++ " " ++ b
--}