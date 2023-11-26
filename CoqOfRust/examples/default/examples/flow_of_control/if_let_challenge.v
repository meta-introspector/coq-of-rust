(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Foo.
  Inductive t : Set :=
  | Bar.
End Foo.

(*
fn main() {
    let a = Foo::Bar;

    // Variable a matches Foo::Bar
    if let Foo::Bar = a {
        // ^-- this causes a compile-time error. Use `if let` instead.
        println!("a is foobar");
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* a : M.Val if_let_challenge.Foo.t :=
      M.alloc if_let_challenge.Foo.Bar in
    let* α0 : M.Val bool.t := let_if if_let_challenge.Foo.Bar  := a in
    let* α1 := M.read α0 in
    if (α1 : bool) then
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "a is foobar
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
          let* α4 : M.Val core.fmt.Arguments.t := M.alloc α3 in
          let* α5 := std.io.stdio._print α4 in
          M.alloc α5 in
        M.alloc tt in
      M.alloc tt
    else
      M.alloc tt).
