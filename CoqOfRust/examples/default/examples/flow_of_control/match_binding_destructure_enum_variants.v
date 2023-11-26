(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn some_number() -> Option<u32> {
    Some(42)
}
*)
Definition some_number : M (core.option.Option.t u32.t) :=
  M.function_body
    (let* α0 : M.Val u32.t := M.alloc 42 in
    let* α1 := M.read α0 in
    M.alloc (core.option.Option.Some α1)).

(*
fn main() {
    match some_number() {
        // Got `Some` variant, match if its value, bound to `n`,
        // is equal to 42.
        Some(n @ 42) => println!("The Answer: {}!", n),
        // Match any other number.
        Some(n) => println!("Not interesting... {}", n),
        // Match anything else (`None` variant).
        _ => (),
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* α0 := match_binding_destructure_enum_variants.some_number in
    let* α1 : M.Val (core.option.Option.t u32.t) := M.alloc α0 in
    let* α2 := M.read α1 in
    match α2 with
    | core.option.Option.Some (_ as n) =>
      let* n := M.alloc n in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The Answer: "; mk_str "!
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref u32.t) := borrow n in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α8 in
        let* α10 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := M.read α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α3 α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt
    | core.option.Option.Some n =>
      let* n := M.alloc n in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Not interesting... "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref u32.t) := borrow n in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α8 in
        let* α10 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := M.read α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α3 α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt
    | _ => M.alloc tt
    end).
