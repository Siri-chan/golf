/*** FizzBuzz in Rust
**** https://code.golf/fizz-buzz#rust
** Copyright (c) Kira K. 2022
*** To be optimised for Code Golf
*/

pub fn old_readable_main() {
    for i in 1..101 { //we do 1..101 bc its 1 less char than 1..=100
        let mut s = String::new();
        if i % 3 == 0 {
            s.push_str("Fizz");
        }
        if i % 5 == 0 {
            s.push_str("Buzz");
        }
        if s.is_empty() {
            s = i.to_string()
        }
        println!("{}", s);
    }      
}

pub fn old_main(){for i in 1..101{let mut s=format!("");if i%3==0{s.push_str("Fizz");}if i%5==0{s.push_str("Buzz");}if s.is_empty(){s=format!("{}",i)}println!("{}",s);}}

pub fn readable_main() {
    for n in 1..101 { //we do 1..101 bc its 1 less char than 1..=100
        let mut b = 0<1;
        if n % 3 == 0 {
            print!("Fizz");
            b=0>1;
        }
        if n % 5 == 0 {
            print!("Buzz");
            b=0>1;
        }
        if b {
            print!("{}",n);
        }
        println!("");
    }
}

pub/*BEGIN*/fn main(){for n in 1..101{let mut b=0<1;if n%3==0{print!("Fizz");b=0>1;}if n%5==0{print!("Buzz");b=0>1;}if b{print!("{}",n);}println!("");}}/*END*/

pub/*BEGIN*/fn main(){for n in 1..101{let mut b=0<1;if n%3==0{print!("Fizz");b=!b}if n%5==0{print!("Buzz");b=0>1}if b{print!("{}",n)}println!("")}}/*END*/
