/*** Quine in C++
**** https://code.golf/quine#cpp
* Copyright (c) Kira K. 2023
** Uses R" strings */
//BEGIN
#include<cstdio>
int main(){char s[]=R"(#include<cstdio>
int main(){char s[]=R"(%s%c";printf(s,s,')');})";printf(s,s,')');}
//END
