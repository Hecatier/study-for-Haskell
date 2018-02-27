--Haskellのreturnは他の言語のreturnと異なる．
--returnは純粋な値からI/Oアクションを作り出す．
--例えば以下のコードは結果を生成するが束縛されないので，生成された値は捨てられる．
--また，returnはdoブロックの実行を妨げないことが確認できる
main = do
    return ()
    return "HAHAHA"
    line <- getLine
    return "BLAH BLAH BLAH"
    return 4
    putStrLn line