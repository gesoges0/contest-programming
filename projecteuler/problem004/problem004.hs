--problem004
--Largest palindrome product

-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

-- 左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.
-- では, 3桁の数の積で表される回文数の最大値を求めよ.

maximum' :: [Int] -> Int
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

reverse' :: [a] -> [a]
reverse' [] = error "empty list"
reverse' [x] = [x]
reverse' (x:xs) = reverse' xs ++ [x] 

ans = maximum [x | y <- [100..999], z <- [y..999], let x=y*z, let s=show x, s==reverse s]
myans = maximum' [x | y <- [100..999], z <- [y..999], let x=y*z, let s=show x, s==reverse' s]

