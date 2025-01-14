(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn some_number() -> Option<u32> {
    Some(42)
}
*)
Definition some_number : M (core.option.Option.t u32.t) :=
  M.pure (core.option.Option.Some ((Integer.of_Z 42) : u32.t)).

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
  let* α0 : core.option.Option.t u32.t :=
    M.call match_binding_destructure_enum_variants.some_number in
  let* α1 : M.Val (core.option.Option.t u32.t) := M.alloc α0 in
  let* α2 : M.Val unit :=
    match_operator
      α1
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.Some _ =>
            let γ0_0 := core.option.Option.Get_Some_0 γ in
            let* n := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "The Answer: ") in
              let* α1 : ref str.t := M.read (mk_str "!
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow n)) in
              let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α3 ] in
              let* α5 : core.fmt.Arguments.t :=
                M.call
                  (core.fmt.Arguments.t::["new_v1"]
                    (pointer_coercion "Unsize" (borrow α2))
                    (pointer_coercion "Unsize" (borrow α4))) in
              let* α6 : unit := M.call (std.io.stdio._print α5) in
              M.alloc α6 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.Some _ =>
            let γ0_0 := core.option.Option.Get_Some_0 γ in
            let* n := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "Not interesting... ") in
              let* α1 : ref str.t := M.read (mk_str "
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow n)) in
              let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α3 ] in
              let* α5 : core.fmt.Arguments.t :=
                M.call
                  (core.fmt.Arguments.t::["new_v1"]
                    (pointer_coercion "Unsize" (borrow α2))
                    (pointer_coercion "Unsize" (borrow α4))) in
              let* α6 : unit := M.call (std.io.stdio._print α5) in
              M.alloc α6 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ => (M.alloc tt) : M (M.Val unit)
      ] in
  M.read α2.
