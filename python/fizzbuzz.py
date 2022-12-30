### Fizzbuzz in Python
#### https://code.golf/fizz-buzz#python
## Copyright(c) Kira K. 2022
### To be optimised for Code Golf

#readble:

for i in range (1,100):
 iMod5 = i % 5 == 0
 if i % 3 == 0:
  if iMod5:
   print("FizzBuzz")
  else: 
   print("Fizz")
 elif iMod5:
  print("Buzz")
 else:
  print(i)

#golf:

#BEGIN#
p=print
def e(i):
  f=i%5==0
  if i%3==0:
   if f:p("FizzBuzz")
   else:p("Fizz")
  elif f:p("Buzz")
  else:p(i)
i=1;exec("e(i);i+=1;"*100)
#END#