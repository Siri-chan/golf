--- Fibonacci Sequences in Haskell
---- https://code.golf/fibonacci#haskell
--- To be optimised for Code Golf
-- Pre-Golf:

main = putStrLn (printfmt (reverse (loopFibonacci 30)))

printfmt :: [Int] -> [Char]
printfmt [] = ""
printfmt (n:ns) = show n ++ "\n" ++ printfmt ns

loopFibonacci :: Int -> [Int]
loopFibonacci (-1) = []
loopFibonacci n = (fibonacci n) : loopFibonacci (n - 1)

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = (fibonacci (n-1)) + (fibonacci (n-2))

-- Post-Golf:

--BEGIN--
main=putStrLn$p$reverse$l 30
p[]=""
p(n:m)=show n++'\n':p m
l(-1)=[]
l n=(f n):l(n-1)
f 0=0
f 1=1
f n=f(n-1)+f(n-2)
--END--