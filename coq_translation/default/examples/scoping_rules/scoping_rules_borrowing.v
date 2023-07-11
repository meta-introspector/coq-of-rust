(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition eat_box_i32 (boxed_i32 : alloc.boxed.Box i32) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of boxed_i32) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Destroying box that contains "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.

Definition borrow_i32 (borrowed_i32 : ref i32) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of borrowed_i32) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "This int is: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* boxed_i32 := alloc.boxed.Box::["new"] 5 in
  let stacked_i32 := 6 in
  let* _ := scoping_rules_borrowing.borrow_i32 (addr_of boxed_i32) in
  let* _ := scoping_rules_borrowing.borrow_i32 (addr_of stacked_i32) in
  let* _ :=
    let _ref_to_i32 := addr_of boxed_i32 in
    let* _ := scoping_rules_borrowing.borrow_i32 _ref_to_i32 in
    Pure tt in
  let* _ := scoping_rules_borrowing.eat_box_i32 boxed_i32 in
  Pure tt.