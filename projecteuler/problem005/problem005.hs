-- problem005.hs

-- Smallest multiple
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

-- 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.
-- では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.


-- 解法1:
-- 1~20の数字で割り切れる最小の数を探す
-- 貪欲解法
ans = head [x | x<-[21..], x`mod`1==0, x`mod`2==0, x`mod`3==0,x`mod`4==0, x`mod`5==0, x`mod`6==0,x`mod`7==0, x`mod`8==0, x`mod`9==0,x`mod`10==0,x`mod`11==0,x`mod`12==0,x`mod`13==0,x`mod`14==0,x`mod`15==0,x`mod`16==0,x`mod`17==0,x`mod`18==0,x`mod`19==0,x`mod`20==0]

-- 解法2:
-- 解法1を綺麗に書く
-- リストの中身が全て0かを判定する関数
areAllZero :: [Int] -> Bool
areAllZero [] = error "empty list"
areAllZero [x]  
    | x == 0    = True
    | otherwise = False
areAllZero (x:xs)
    | x == 0    = areAllZero xs
    | otherwise = False

ans2 = head [x | x<-[21..], let ys = map (x `mod`) [1..20], areAllZero ys]

-- 解法3:
-- 1~20のうち, 20を超えない素因数の積で割り切れれば十分
-- :t lcm 
-- lcm :: Integral a => a -> a -> a
listLcm :: [Int] -> Int
listLcm [] = error "empty list"
listLcm [x] = x
listLcm (x:xs) = lcm x (listLcm xs)
ans3 = listLcm [1..20]







