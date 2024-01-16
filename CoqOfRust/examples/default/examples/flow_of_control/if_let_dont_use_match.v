(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // Make `optional` of type `Option<i32>`
    let optional = Some(7);

    match optional {
        Some(i) => {
            println!("This is a really long string and `{:?}`", i);
            // ^ Needed 2 indentations just so we could destructure
            // `i` from the option.
        }
        _ => {}
        // ^ Required because `match` is exhaustive. Doesn't it seem
        // like wasted space?
    };
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* optional : M.Val (core.option.Option.t i32.t) :=
    M.alloc (core.option.Option.Some ((Integer.of_Z 7) : i32.t)) in
  let* _ : M.Val unit :=
    match_operator
      optional
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.Some _ =>
            let γ0_0 := core.option.Option.Get_Some_0 γ in
            let* i := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* _ : M.Val unit :=
                let* α0 : ref str.t :=
                  M.read (mk_str "This is a really long string and `") in
                let* α1 : ref str.t := M.read (mk_str "`
") in
                let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                let* α3 : core.fmt.rt.Argument.t :=
                  M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow i)) in
                let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α3 ] in
                let* α5 : core.fmt.Arguments.t :=
                  M.call
                    (core.fmt.Arguments.t::["new_v1"]
                      (pointer_coercion "Unsize" (borrow α2))
                      (pointer_coercion "Unsize" (borrow α4))) in
                let* α6 : unit := M.call (std.io.stdio._print α5) in
                M.alloc α6 in
              M.alloc tt in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ => (M.alloc tt) : M (M.Val unit)
      ] in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
