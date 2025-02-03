-- Function to generate a list from a to b
inpFunc :: Int -> Int -> [Int]
inpFunc a b = [a..b]

-- Define applicatorFunc using guards
applicatorFunc :: [Int] -> Char -> Double
applicatorFunc inp s
    | s == 's'  = fromIntegral (sum inp)
    | s == 'a'  = fromIntegral (sum inp) / fromIntegral (length inp)
    | otherwise = error "Invalid operation. Use 's' for sum or 'a' for average."

main :: IO ()
main = do
    putStrLn "Enter the start of the range:"
    aInput <- getLine
    putStrLn "Enter the end of the range:"
    bInput <- getLine
    putStrLn "Enter 's' for sum or 'a' for average:"
    s <- getLine
    let a = read aInput :: Int
        b = read bInput :: Int
        result = applicatorFunc (inpFunc a b) (head s)
    putStrLn ("Result = " ++ show result)
