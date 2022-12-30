--- The Collatz Conjecture in Haskell
---- https://code.golf/collatz#haskell
-- Copyright (c) Kira K. 2022
--- To be optimised for Code Golf
-- Pre-Golf:

main = putStrLn (printfmt (stoppingTimes [1..1000]))

printfmt :: [Int] -> [Char]
printfmt [] = ""
printfmt (n:tail) = show n ++ "\n" ++ printfmt tail

stoppingTimes :: [Int] -> [Int]
stoppingTimes [] = []
stoppingTimes (head:tail) = stoppingTime head 0 : stoppingTimes tail

stoppingTime :: Int -> Int -> Int
stoppingTime n i | n == 1 = i
                 | mod n 2 == 1 = stoppingTime (n*3+1) (i+1)
                 | otherwise = stoppingTime (div n 2) (i+1)

-- Post-Golf:

--BEGIN--
main=putStrLn$p$l[1..1000]
p[]=""
p(n:m)=show n++"\n"++p m
l[]=[]
l(h:m)=t h 0:l m
t n i|n==1=i|mod n 2==1=t(n*3+1)(i+1)|0<1=t(div n 2)(i+1)
--END--