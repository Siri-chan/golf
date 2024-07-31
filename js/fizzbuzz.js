/*** FizzBuzz in JS
**** https://code.golf/fizz-buzz#javascript
** Copyright (c) Kira K. 2024
*/

//v1
s="";for(i=1;i<101;i++){s="";if(i)i%3?1:s="Fizz",i%5?1:s+="Buzz",s?1:s=i,print(s)}

//v2
for(i=1;s="",i%3?1:s="Fizz",i%5?1:s+="Buzz",s?1:s=i,i++<101;)print(s)
