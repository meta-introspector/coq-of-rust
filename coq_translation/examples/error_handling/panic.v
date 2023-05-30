(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition drink (beverage : ref str) : M unit :=
  let* _ :=
    let* α0 := beverage.["eq"] "lemonade" in
    if (α0 : bool) then
      let* _ := _crate.rt.begin_panic "AAAaaaaa!!!!" in
      Pure tt
    else
      Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of beverage) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Some refreshing "; " is all I need.
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _ := drink "water" in
  let* _ := drink "lemonade" in
  Pure tt.
