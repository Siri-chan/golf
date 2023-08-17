(* Quine in OCaml
https://code.golf/quine#ocaml
Copyright (c) Kira K. 2023
BEGIN*)
(fun s -> Printf.printf "%s%S;;" s s) "(fun s -> Printf.printf \"%s%S;;\" s s) ";;
(*END*)
