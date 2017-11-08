set :: [Int]
set = [x | x <- [1..999], (mod x 3 == 0) || (mod x 5 == 0)]
--set = [x | x<-[1..999], x 'mod 3 == 0 || x 'mod 5 == 0]


ans :: Int
ans = sum $ set

main::IO()
main = do
     print ans

-- runghc problem001.hs