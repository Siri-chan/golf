--- Fibonacci Sequences in Haskell
---- https://code.golf/prime-numbers#haskell
-- Copyright (c) Kira K. 2022
--- To be optimised for Code Golf
-- Pre-Golf:

main = putStrLn (printfmt (loopPrimes [1..100]))

printfmt :: [Int] -> [Char]
printfmt [] = ""
printfmt (n:ns) = show n ++ "\n" ++ printfmt ns

loopPrimes :: [Int] -> [Int]
loopPrimes [] = []
loopPrimes (n:tail) | isPrime n = n : loopPrimes tail
                    | True = loopPrimes tail

isPrime :: Int -> Bool
isPrime n = if n > 1 
    then null [ x | x <- [2..isqrt n], mod n x == 0] 
    else False
-- THIS GOLFS TO `t n=n>1&&null[x|x<-[2..floor$sqrt$toEnum n],mod n x==0]`
-- OTHER IMPL IS FASTER

isqrt n = floor (sqrt ( fromIntegral n ))

-- Post-Golf:

--BEGIN--
main=putStrLn$p$l[2..100]
p[]=""
p(n:m)=show n++'\n':p m
l[]=[]
l(n:m)|t n=n:l m|1>0=l m
t n=all((>0).mod n)[2..n-1]
--END--