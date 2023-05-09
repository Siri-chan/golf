/*** Leap Years in Java
**** https://code.golf/leap-years#java
* Copyright (c) Kira K. 2023
** To be optimised for Code Golf */
// Pre-Golf:
class Main {
    public static void main(String[]args){
        for (int year = 1800; year <= 2400; year++){
            if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)){
                System.out.println(year);
            }
        }
    }
    int x100(int n){
        return n*100;
    }
}

// Post-Golf:
interface A{static void main(String[]s){for(int y=1800;y<=2400;y++){if(y%4<1&y%100>0|y%400<1){System.out.println(y);}}}}