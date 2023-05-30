(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition give_adult (drink : Option (ref str)) : M unit :=
  match drink with
  | Some "lemonade" =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"] (addr_of [ "Yuck! Too sugary.
" ]) in
      _crate.io._print α0 in
    Pure tt
  | Some inner =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of inner) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; "? How nice.
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt
  | None =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"] (addr_of [ "No drink? Oh well.
" ]) in
      _crate.io._print α0 in
    Pure tt
  end.

Definition drink (drink : Option (ref str)) : M unit :=
  let* inside := drink.["unwrap"] in
  let* _ :=
    let* α0 := inside.["eq"] "lemonade" in
    if (α0 : bool) then
      let* _ := _crate.rt.begin_panic "AAAaaaaa!!!!" in
      Pure tt
    else
      Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of inside) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "I love "; "s!!!!!
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let water := Some "water" in
  let lemonade := Some "lemonade" in
  let void := None in
  let* _ := give_adult water in
  let* _ := give_adult lemonade in
  let* _ := give_adult void in
  let coffee := Some "coffee" in
  let nothing := None in
  let* _ := drink coffee in
  let* _ := drink nothing in
  Pure tt.
