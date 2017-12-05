-- problem007
-- 10001st prime

-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?

-- 10001番目の素数は？

-- 解法1: 
-- 素数リストを作る
-- この素数のリストから10001番目の要素をとる
primes = 2 : filter (null . tail . primeFactors) [3,5..]
primeFactors n = factor n primes
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      =     factor n ps

ans = primes !! 10001