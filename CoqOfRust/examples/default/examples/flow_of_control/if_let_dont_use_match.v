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
  M.function_body
    (let* optional : M.Val (core.option.Option.t i32.t) :=
      let* α0 : M.Val i32.t := M.alloc 7 in
      let* α1 := M.read α0 in
      M.alloc (core.option.Option.Some α1) in
    let* _ : M.Val unit :=
      let* α0 := M.read optional in
      match α0 with
      | core.option.Option.Some i =>
        let* i := M.alloc i in
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc
                [ mk_str "This is a really long string and `"; mk_str "`
" ] in
            let* α1 : ref (array (ref str.t)) := borrow α0 in
            let* α2 : M.Val (array (ref str.t)) := deref α1 in
            let* α3 : ref (array (ref str.t)) := borrow α2 in
            let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
            let* α5 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α4 in
            let* α6 := M.read α5 in
            let* α7 : ref i32.t := borrow i in
            let* α8 : M.Val i32.t := deref α7 in
            let* α9 : ref i32.t := borrow α8 in
            let* α10 : core.fmt.rt.Argument.t :=
              core.fmt.rt.Argument.t::["new_debug"] α9 in
            let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
            let* α12 : M.Val (array core.fmt.rt.Argument.t) :=
              M.alloc [ α11 ] in
            let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
            let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
            let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
            let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
              M.alloc α15 in
            let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
              pointer_coercion "Unsize" α16 in
            let* α18 := M.read α17 in
            let* α19 : core.fmt.Arguments.t :=
              core.fmt.Arguments.t::["new_v1"] α6 α18 in
            let* α20 : unit := std.io.stdio._print α19 in
            M.alloc α20 in
          M.alloc tt in
        M.alloc tt
      | _ => M.alloc tt
      end in
    M.alloc tt).
