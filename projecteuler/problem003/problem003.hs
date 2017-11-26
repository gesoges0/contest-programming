
-- 範囲指定
limit :: Integer 
limit = 600851475143

-- 素数のリスト生成
primes :: [Integer]
primes = 2 : filter (null . tail . primeFactors) [3,5..]

-- 素因数分解
primeFactors :: Integer -> [Integer]  
primeFactors n = factor n primes
	where 
		factor :: Integer -> [Integer] -> [Integer]
		factor n (p:ps)
			| p*p > n 			= [n]
			| n `mod` p == 0	= p : factor (n `div` p) (p:ps)
			| otherwise			= factor n ps

