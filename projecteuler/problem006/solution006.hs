-- problem006
-- Sum square difference

-- The sum of the squares of the first ten natural numbers is,
-- 12 + 22 + ... + 102 = 385
-- The square of the sum of the first ten natural numbers is,
-- (1 + 2 + ... + 10)2 = 552 = 3025
-- Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

-- 最初の10個の自然数について, その二乗の和は,
-- 12 + 22 + ... + 102 = 385
-- 最初の10個の自然数について, その和の二乗は,
-- (1 + 2 + ... + 10)2 = 3025
-- これらの数の差は 3025 - 385 = 2640 となる.
-- 同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.


-- 解法1:
tmp1 = sum [x*x | x<-[1..100]]
tmp2 = sum [x | x<-[1..100]]
ans = tmp2*tmp2 - tmp1

-- 解法2:
-- 解法1を綺麗に
ans2 = (sum [1..100])^2 - sum (map (^2) [1..100])
 