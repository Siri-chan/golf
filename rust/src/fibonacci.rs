/*** Fibonacci Sequences in Rust
**** https://code.golf/fibonacci#rust
** Copyright (c) Kira K. 2022
*** To be optimised for Code Golf
*/

pub fn readable_main() {
    fn fib(n:u8) -> u32 {
        if n == 0 {return 0;}
        if n == 1 {return 1;}
        return fib(n-1) + fib(n-2);
    }
    for n in 0..31 {
        println!("{}", fib(n));
    }
}

pub/*BEGIN*/fn main(){fn f(n:u8)->u32{if n==0{return 0;}if n==1{return 1;}return f(n-1)+f(n-2);}for n in 0..31{println!("{}",f(n))}}/*END*/