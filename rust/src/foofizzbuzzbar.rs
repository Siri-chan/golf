/*** FooFizzBuzzBar in Rust
**** https://code.golf/foo-fizz-buzz-bar#rust
** Copyright (c) Kira K. 2022
*** To be optimised for Code Golf
*/

pub fn readable_main() {
    for n in 1..1001 { //we do 1..1001 bc its 1 less char than 1..=1000
                            //also 1.1001.map(|n|{}); is more characters here than just using for
        let mut b = 0<1;
        if n % 2 == 0 {
            print!("Foo");
            b=0>1;
        }
        if n % 3 == 0 {
            print!("Fizz");
            b=0>1;
        }
        if n % 5 == 0 {
            print!("Buzz");
            b=0>1;
        }
        if n % 7 == 0 {
            print!("Bar");
            b=0>1;
        }
        if b {
            print!("{}",n);
        }
        println!("");
    }
}

pub/*BEGIN*/fn main(){for n in 1..1001{let mut b=0<1;if n%2==0{print!("Foo");b=0>1;}if n%3==0{print!("Fizz");b=0>1;}if n%5==0{print!("Buzz");b=0>1;}if n%7==0{print!("Bar");b=0>1;}if b{print!("{}",n);}println!("");}}/*END*/