(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
        fn $func_name() {
            // The `stringify!` macro converts an `ident` into a string.
            println!("You called {:?}()", stringify!($func_name));
        }
*)
Definition foo : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "You called "; mk_str "()
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref (ref str.t) := borrow (mk_str "foo") in
        let* α8 : M.Val (ref str.t) := deref α7 in
        let* α9 : ref (ref str.t) := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    M.alloc tt).

(*
        fn $func_name() {
            // The `stringify!` macro converts an `ident` into a string.
            println!("You called {:?}()", stringify!($func_name));
        }
*)
Definition bar : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "You called "; mk_str "()
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref (ref str.t) := borrow (mk_str "bar") in
        let* α8 : M.Val (ref str.t) := deref α7 in
        let* α9 : ref (ref str.t) := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    M.alloc tt).

(*
fn main() {
    foo();
    bar();

    print_result!(1u32 + 1);

    // Recall that blocks are expressions too!
    print_result!({
        let x = 1u32;

        x * x + 2 * x - 1
    });
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* α0 : unit := macro_rules_designators.foo in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* α0 : unit := macro_rules_designators.bar in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str " = "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref (ref str.t) := borrow (mk_str "1u32 + 1") in
        let* α8 : M.Val (ref str.t) := deref α7 in
        let* α9 : ref (ref str.t) := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val u32.t := M.alloc 1 in
        let* α13 : M.Val u32.t := M.alloc 1 in
        let* α14 : M.Val u32.t := BinOp.add α12 α13 in
        let* α15 : ref u32.t := borrow α14 in
        let* α16 : M.Val u32.t := deref α15 in
        let* α17 : ref u32.t := borrow α16 in
        let* α18 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α17 in
        let* α19 : M.Val core.fmt.rt.Argument.t := M.alloc α18 in
        let* α20 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α11; α19 ] in
        let* α21 : ref (array core.fmt.rt.Argument.t) := borrow α20 in
        let* α22 : M.Val (array core.fmt.rt.Argument.t) := deref α21 in
        let* α23 : ref (array core.fmt.rt.Argument.t) := borrow α22 in
        let* α24 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α23 in
        let* α25 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α24 in
        let* α26 := M.read α25 in
        let* α27 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α26 in
        let* α28 : unit := std.io.stdio._print α27 in
        M.alloc α28 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str " = "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref (ref str.t) :=
          borrow (mk_str "{ let x = 1u32; x * x + 2 * x - 1 }") in
        let* α8 : M.Val (ref str.t) := deref α7 in
        let* α9 : ref (ref str.t) := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* x : M.Val u32.t :=
          let* α0 : M.Val u32.t := M.alloc 1 in
          M.copy α0 in
        let* α0 : M.Val u32.t := BinOp.mul x x in
        let* α1 : M.Val u32.t := M.alloc 2 in
        let* α2 : M.Val u32.t := BinOp.mul α1 x in
        let* α3 : M.Val u32.t := BinOp.add α0 α2 in
        let* α4 : M.Val u32.t := M.alloc 1 in
        let* α12 : M.Val u32.t := BinOp.sub α3 α4 in
        let* α13 : ref u32.t := borrow α12 in
        let* α14 : M.Val u32.t := deref α13 in
        let* α15 : ref u32.t := borrow α14 in
        let* α16 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α15 in
        let* α17 : M.Val core.fmt.rt.Argument.t := M.alloc α16 in
        let* α18 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α11; α17 ] in
        let* α19 : ref (array core.fmt.rt.Argument.t) := borrow α18 in
        let* α20 : M.Val (array core.fmt.rt.Argument.t) := deref α19 in
        let* α21 : ref (array core.fmt.rt.Argument.t) := borrow α20 in
        let* α22 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α21 in
        let* α23 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α22 in
        let* α24 := M.read α23 in
        let* α25 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α24 in
        let* α26 : unit := std.io.stdio._print α25 in
        M.alloc α26 in
      M.alloc tt in
    M.alloc tt).
