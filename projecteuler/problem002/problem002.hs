set :: [Int]
set = [x | x <- takeWhile (<= limit) fibs, even x]
    where
	fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

limit :: Int
limit = 1000000

ans :: Int
ans = sum $ set


main :: IO()
main = do
     putStrLn "even fibonacci numbers less than 1,000,000"
     print set
     putStrLn "ans"
     print ans
     