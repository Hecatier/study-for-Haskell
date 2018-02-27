import Control.Monad
import Data.Char

--forM(リストと関数を引数にとる．\a -> doはラムダ)
--リストの各要素に対応するアクションを作れる．…何がありがたいんだろう
main = do
    colors <- forM [1..4] $ \a -> do
        putStrLn $ "which color do you associate with the number "
                    ++ show a ++ "?"
        color <- getLine
        return color
    putStrLn "The colors that you associate with 1, 2, 3 and 4 are:"
    mapM putStrLn colors

--forever
--名前がかっこいい関数だけどやってることは無限ループ
--あと関数を見るとputStrしてからgetLineを待ちそうなものだけどそうでもない．何か打つとGive me~: input みたくなる
{--
main = forever $ do
        putStr "Give me some input: "
        l <- getLine
        putStrLn $ map toUpper l 
--}

--sequence
--map print [1..5]の前にsequece $つけないと動かないけど，なんで必要なのか正直わからない
{--
main = do
    rs <- sequence [getLine, getLine, getLine]
    print rs
--}

--when
--ifの糖衣構文かなにか…? あまりありがたみなさそう
{--
main = do
    input <- getLine
    when (input == "SWORDFISH") $ do
        putStrLn input
--}

--print
{--
main = do
    print True
    print 2
    print "haha"
    print 3.2
    print [3, 4, 3]
--}

--putChar
{--
main = do
    putChar 't'
    putChar 'e'
    putChar 'h'
--}

--putStrはputCharで定義可能
putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = do
    putChar x
    putStr' xs

--putStrLn
{--
main = do
putStr "Hey, "
putStr "I'm "
putStrLn "Andy!"
--}