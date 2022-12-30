--- FizzBuzz in Haskell
---- https://code.golf/fizz-buzz#haskell
-- Copyright (c) Kira K. 2022
--- To be optimised for Code Golf
-- Pre-Golf:

main = putStrLn (fizzbuzz [1..100])

fizzbuzz :: [Int] -> [Char]
fizzbuzz [] = []
fizzbuzz (n:ns) | mod n 15 == 0 = "FizzBuzz" ++ res -- There's probably a better way to do this
          | mod n 3 == 0 = "Fizz" ++ res
          | mod n 5 == 0 = "Buzz" ++ res
          | True = (show n) ++ res
          where res = "\n" ++ fizzbuzz ns

-- Post-Golf:

--BEGIN--
main=putStrLn$f[1..100]
f[]=[]
f(n:m)|mod n 15==0="FizzBuzz"++r|mod n 3==0="Fizz"++r|mod n 5==0="Buzz"++r|1>0=(show n)++r where r='\n':f m
--END--