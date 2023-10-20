(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition NUM `{State.Trait} : i32 := run (M.alloc 18).

Definition coerce_static `{State.Trait} (arg : ref i32) : M (ref i32) :=
  let* α0 := deref scoping_rules_lifetimes_reference_lifetime_static.NUM i32 in
  let* α1 := borrow α0 i32 in
  let* α2 := deref α1 i32 in
  borrow α2 i32.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let* _ :=
    let static_string := mk_str "I'm in read-only memory" in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "static_string: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow static_string (ref str) in
        let* α5 := deref α4 (ref str) in
        let* α6 := borrow α5 (ref str) in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      Pure tt in
    Pure tt in
  let* _ :=
    let* lifetime_num := M.alloc 9 in
    let* coerced_static :=
      let* α0 := borrow lifetime_num i32 in
      let* α1 := deref α0 i32 in
      let* α2 := borrow α1 i32 in
      scoping_rules_lifetimes_reference_lifetime_static.coerce_static α2 in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "coerced_static: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow coerced_static (ref i32) in
        let* α5 := deref α4 (ref i32) in
        let* α6 := borrow α5 (ref i32) in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      Pure tt in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "NUM: "; mk_str " stays accessible!
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        deref scoping_rules_lifetimes_reference_lifetime_static.NUM i32 in
      let* α5 := borrow α4 i32 in
      let* α6 := deref α5 i32 in
      let* α7 := borrow α6 i32 in
      let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
      let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
      let* α10 := deref α9 (list core.fmt.rt.Argument) in
      let* α11 := borrow α10 (list core.fmt.rt.Argument) in
      let* α12 := pointer_coercion "Unsize" α11 in
      let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
      std.io.stdio._print α13 in
    Pure tt in
  Pure tt.
