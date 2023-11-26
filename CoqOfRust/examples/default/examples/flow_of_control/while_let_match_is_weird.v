(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // Make `optional` of type `Option<i32>`
    let mut optional = Some(0);

    // Repeatedly try this test.
    loop {
        match optional {
            // If `optional` destructures, evaluate the block.
            Some(i) => {
                if i > 9 {
                    println!("Greater than 9, quit!");
                    optional = None;
                } else {
                    println!("`i` is `{:?}`. Try again.", i);
                    optional = Some(i + 1);
                }
                // ^ Requires 3 indentations!
            }
            // Quit the loop when the destructure fails:
            _ => {
                break;
            } // ^ Why should this be required? There must be a better way!
        }
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* optional : M.Val (core.option.Option.t i32.t) :=
      let* α0 : M.Val i32.t := M.alloc 0 in
      let* α1 := M.read α0 in
      M.alloc (core.option.Option.Some α1) in
    loop
      (let* α0 := M.read optional in
      match α0 with
      | core.option.Option.Some i =>
        let* i := M.alloc i in
        let* α0 : M.Val i32.t := M.alloc 9 in
        let* α1 : M.Val bool.t := BinOp.gt i α0 in
        let* α2 : M.Val bool.t := use α1 in
        let* α3 := M.read α2 in
        if (α3 : bool) then
          let* _ : M.Val unit :=
            let* _ : M.Val unit :=
              let* α0 : M.Val (array (ref str.t)) :=
                M.alloc [ mk_str "Greater than 9, quit!
" ] in
              let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
              let* α2 : M.Val (ref (slice (ref str.t))) :=
                pointer_coercion "Unsize" α1 in
              let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
              let* α4 : M.Val core.fmt.Arguments.t := M.alloc α3 in
              let* α5 := std.io.stdio._print α4 in
              M.alloc α5 in
            M.alloc tt in
          let* _ : M.Val unit :=
            let* α0 : M.Val (core.option.Option.t i32.t) :=
              M.alloc core.option.Option.None in
            assign optional α0 in
          M.alloc tt
        else
          let* _ : M.Val unit :=
            let* _ : M.Val unit :=
              let* α0 : M.Val (array (ref str.t)) :=
                M.alloc [ mk_str "`i` is `"; mk_str "`. Try again.
" ] in
              let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
              let* α2 : M.Val (ref (slice (ref str.t))) :=
                pointer_coercion "Unsize" α1 in
              let* α3 : M.Val (ref i32.t) := borrow i in
              let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
              let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                borrow α6 in
              let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
                pointer_coercion "Unsize" α7 in
              let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
              let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
              let* α11 := std.io.stdio._print α10 in
              M.alloc α11 in
            M.alloc tt in
          let* _ : M.Val unit :=
            let* α0 : M.Val i32.t := M.alloc 1 in
            let* α1 : M.Val i32.t := BinOp.add i α0 in
            let* α2 := M.read α1 in
            let* α3 : M.Val (core.option.Option.t i32.t) :=
              M.alloc (core.option.Option.Some α2) in
            assign optional α3 in
          M.alloc tt
      | _ =>
        let* _ : M.Val never.t := Break in
        let* α0 : M.Val unit := M.alloc tt in
        never_to_any α0
      end)).
