/* Quine in Rust
https://code.golf/quine#rust
Copyright (c) Kira K. 2023
*/
//BEGIN
fn main(){let x="fn main(){let x=";let y="print!(\"{}{:?};let y={:?};{}\",x,x,y,y)}";print!("{}{:?};let y={:?};{}",x,x,y,y)}
//END
