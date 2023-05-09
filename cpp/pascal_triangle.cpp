/*** Pascal's Triangle in C++
**** https://code.golf/pascals-triangle#cpp
* Copyright (c) Kira K. 2023
** To be optimised for Code Golf */
// Pre-Golf:
/*
#include <stdio.h>
#include <stdlib.h>
int main()
{
    long rows = 20, coef = 1, space, i, j;
    for (i = 0; i < rows; i++)
    {
        for (j = 0; j <= i; j++)
        {
            if (j == 0 || i == 0)
                coef = 1;
            else
                coef = coef * (i - j + 1) / j;
            printf("%ld ", coef);
        }
        printf("\n\n");
    }
    return 0;
}
*/

// Post-Golf:
//BEGIN
#include <stdio.h>
int main(){int r=20,c=1,i,j;for(i=0;i<r;i++){for(j=0;j<=i;j++){if(j==0||i==0)c=1;else c=c*(i-j+1)/j;printf("%d ",c);}printf("\n");}return 0;}
//END