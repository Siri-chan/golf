--- 12 Days of Christmas in Haskell
---- https://code.golf/12-days-of-christmas#haskell
--- To be optimised for Code Golf
-- Pre-Golf:

-- main = putStrLn ( bottles 99 )

-- --I hate that I have to hardcode so many cases to deal with plurals: maybe write a function that does plural/non plural instead
-- bottles 0 = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
-- bottles 1 = "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n\n" ++ bottles 0
-- bottles 2 = "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n\n" ++ bottles 1
-- bottles n = c ++ " bottles of beer on the wall, "++ c ++" bottles of beer.\nTake one down and pass it around, "++ d ++" bottles of beer on the wall.\n\n" ++ bottles (n - 1)
--             where c = show n; d = show (n - 1)

main = putStrLn ( bottles 99 )

bottles 0 = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
bottles n = c ++ " on the wall, "++ c ++".\nTake one down and pass it around, "++ d ++" on the wall.\n\n" ++ bottles (n - 1)
            where c = bottleCount n; d = bottleCount (n - 1)

bottleCount n | n == 0 = "no more bottles of beer"
              | n == 1 = show n ++ " bottle of beer"
              | otherwise = show n ++ " bottles of beer"

-- Post-Golf:

--BEGIN--
main = putStrLn$b 99
b 0="No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
b n=c++" on the wall, "++c++".\nTake one down and pass it around, "++d++" on the wall.\n\n"++b(n-1)where c=a n;d=a(n-1)
a n |n==0="no more bottles of beer"|n==1=show n++" bottle of beer"|0<1=show n++" bottles of beer"
--END--