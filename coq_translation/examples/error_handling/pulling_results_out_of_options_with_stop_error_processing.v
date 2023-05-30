(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module ParseIntError := std.num.ParseIntError.
Definition ParseIntError := ParseIntError.t.

Definition double_first
    (vec : Vec (ref str))
    : M (Result (Option i32) ParseIntError) :=
  let* opt :=
    let* α0 := vec.["first"] in
    α0.["map"]
      (fun first =>
        let* α0 := first.["parse"] in
        α0.["map"] (fun n => 2.["mul"] n)) in
  opt.["map_or"] (Ok None) (fun r => r.["map"] Some).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* numbers :=
    let* α0 := _crate.boxed.Box::["new"] [ "42"; "93"; "18" ] in
    Slice::["into_vec"] α0 in
  let* empty := _crate.vec.Vec::["new"] tt in
  let* strings :=
    let* α0 := _crate.boxed.Box::["new"] [ "tofu"; "93"; "18" ] in
    Slice::["into_vec"] α0 in
  let* _ :=
    let* _ :=
      let* α0 := double_first numbers in
      let* α1 := format_argument::["new_debug"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "The first doubled is "; "
" ])
          (addr_of [ α1 ]) in
      _crate.io._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := double_first empty in
      let* α1 := format_argument::["new_debug"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "The first doubled is "; "
" ])
          (addr_of [ α1 ]) in
      _crate.io._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := double_first strings in
      let* α1 := format_argument::["new_debug"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "The first doubled is "; "
" ])
          (addr_of [ α1 ]) in
      _crate.io._print α2 in
    Pure tt in
  Pure tt.
