--- 12 Days of Christmas in Haskell
---- https://code.golf/12-days-of-christmas#haskell
-- Copyright (c) Kira K. 2022
--- To be optimised for Code Golf
-- Pre-Golf:

--- THIS CODE PRINTS BACKWARDS
-- main = putStrLn (printDay 0 13)

-- printDay 0 1 = ""
-- printDay 0 m = "\n\nOn the " ++ nth (m-1) ++ " day of Christmas\nMy true love sent to me" ++ printDay (m-1) (m-1)
-- printDay n m = '\n' : list !! (n - 1) ++ printDay (n-1) m 
--             where list = ["A Partridge in a Pear Tree.", "Two Turtle Doves, and", "Three French Hens,", "Four Calling Birds,", "Five Gold Rings,", "Six Geese-a-Laying,", "Seven Swans-a-Swimming,", "Eight Maids-a-Milking,", "Nine Ladies Dancing,", "Ten Lords-a-Leaping,", "Eleven Pipers Piping,",  "Twelve Drummers Drumming,"]

-- nth 12 = "Twelfth"
-- nth 11 = "Eleventh"
-- nth 10 = "Tenth"
-- nth 9 = "Ninth"
-- nth 8 = "Eighth"
-- nth 7 = "Seventh"
-- nth 6 = "Sixth"
-- nth 5 = "Fifth"
-- nth 4 = "Fourth"
-- nth 3 = "Third"
-- nth 2 = "Second"
-- nth 1 = "First"
-- nth n = ""

main = putStrLn (printDay 0 0)

printDay 0 12 = ""
printDay n m | n <= 0 = "On the " ++ nth (m + 1) ++ " day of Christmas\nMy true love sent to me" ++ printDay (m + 1) (m + 1)
             | True = list !! (n - 1) ++ printDay (n-1) m 
             where list=["A Partridge in a Pear Tree.\n\n","Two Turtle Doves, and\n","Three French Hens,\n","Four Calling Birds,\n","Five Gold Rings,\n","Six Geese-a-Laying,\n","Seven Swans-a-Swimming,\n","Eight Maids-a-Milking,\n","Nine Ladies Dancing,\n","Ten Lords-a-Leaping,\n","Eleven Pipers Piping,\n","Twelve Drummers Drumming,\n"]
            -- Program doesnt want two \ns at the start, so they have to be in the list here
nth 12 = "Twelfth"
nth 11 = "Eleventh"
nth 10 = "Tenth"
nth 9 = "Ninth"
nth 8 = "Eighth"
nth 7 = "Seventh"
nth 6 = "Sixth"
nth 5 = "Fifth"
nth 4 = "Fourth"
nth 3 = "Third"
nth 2 = "Second"
nth 1 = "First"
nth n = ""

-- Post-Golf:
--BEGIN--
main=putStrLn$p 0 0
p 0 12=""
p n m|n<=0="On the "++t(m+1)++" day of Christmas\nMy true love sent to me\n"++p(m+1)(m+1)|1>0=list!!(n - 1)++p(n-1)m where list=["A Partridge in a Pear Tree.\n\n","Two Turtle Doves, and\n","Three French Hens,\n","Four Calling Birds,\n","Five Gold Rings,\n","Six Geese-a-Laying,\n","Seven Swans-a-Swimming,\n","Eight Maids-a-Milking,\n","Nine Ladies Dancing,\n","Ten Lords-a-Leaping,\n","Eleven Pipers Piping,\n","Twelve Drummers Drumming,\n"]
t 12 = "Twelfth"
t 11 = "Eleventh"
t 10 = "Tenth"
t 9 = "Ninth"
t 8 = "Eighth"
t 7 = "Seventh"
t 6 = "Sixth"
t 5 = "Fifth"
t 4 = "Fourth"
t 3 = "Third"
t 2 = "Second"
t 1 = "First"
t n = ""
--END--
