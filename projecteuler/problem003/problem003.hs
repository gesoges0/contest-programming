factorOf :: Int -> Int -> Bool
a `factorOf` b = rem b a == 0

factorsOf :: Int -> [Int]
factorsOf n = [x | x <- [2 .. floor $ sqrt $ fromIntegral n], x `factorOf` n]

isPrime :: Int -> Bool
isPrime n
	| n < 2  	= False
	| n == 2 	= True
	| otherwise = null $ factorsOf n

prime :: [Int] -> [Int]
prime [] = []
prime (x:xs)
	| isPrime x  = x : prime xs
	| otherwise = prime xs
		
lastPrimeFactorOf :: Int -> Int
lastPrimeFactorOf n = last $ prime . factorsOf $ n

main :: IO ()
main = print $ lastPrimeFactorOf 600851475143