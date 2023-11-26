(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    'outer: loop {
        println!("Entered the outer loop");

        'inner: loop {
            println!("Entered the inner loop");

            // This would break only the inner loop
            //break;

            // This breaks the outer loop
            break 'outer;
        }

        println!("This point will never be reached");
    }

    println!("Exited the outer loop");
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      loop
        (let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str "Entered the outer loop
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
          let* α0 : M.Val never.t :=
            loop
              (let* _ : M.Val unit :=
                let* _ : M.Val unit :=
                  let* α0 : M.Val (array (ref str.t)) :=
                    M.alloc [ mk_str "Entered the inner loop
" ] in
                  let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
                  let* α2 : M.Val (ref (slice (ref str.t))) :=
                    pointer_coercion "Unsize" α1 in
                  let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
                  let* α4 : M.Val core.fmt.Arguments.t := M.alloc α3 in
                  let* α5 := std.io.stdio._print α4 in
                  M.alloc α5 in
                M.alloc tt in
              let* _ : M.Val never.t := Break in
              M.alloc tt) in
          never_to_any α0 in
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str "This point will never be reached
" ] in
            let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
            let* α2 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
            let* α4 : M.Val core.fmt.Arguments.t := M.alloc α3 in
            let* α5 := std.io.stdio._print α4 in
            M.alloc α5 in
          M.alloc tt in
        M.alloc tt) in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Exited the outer loop
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : M.Val core.fmt.Arguments.t := M.alloc α3 in
        let* α5 := std.io.stdio._print α4 in
        M.alloc α5 in
      M.alloc tt in
    M.alloc tt).
