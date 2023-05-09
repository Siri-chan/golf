### Leap Years in Python
#### https://code.golf/leap-years#python
## Copyright(c) Kira K. 2023
### To be optimised for Code Golf

### Unlike most of these, this was just adapted from elsewhere
for y in range(1800,2401):
    if(y%4<1 and y%100>0 or y%400<1):
        print(y)
