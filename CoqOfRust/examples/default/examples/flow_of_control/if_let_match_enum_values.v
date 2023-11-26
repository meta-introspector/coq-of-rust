(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Foo.
  Inductive t : Set :=
  | Bar
  | Baz
  | Qux (_ : u32.t).
End Foo.

(*
fn main() {
    // Create example variables
    let a = Foo::Bar;
    let b = Foo::Baz;
    let c = Foo::Qux(100);

    // Variable a matches Foo::Bar
    if let Foo::Bar = a {
        println!("a is foobar");
    }

    // Variable b does not match Foo::Bar
    // So this will print nothing
    if let Foo::Bar = b {
        println!("b is foobar");
    }

    // Variable c matches Foo::Qux which has a value
    // Similar to Some() in the previous example
    if let Foo::Qux(value) = c {
        println!("c is {}", value);
    }

    // Binding also works with `if let`
    if let Foo::Qux(value @ 100) = c {
        println!("c is one hundred");
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* a : M.Val if_let_match_enum_values.Foo.t :=
      M.alloc if_let_match_enum_values.Foo.Bar in
    let* b : M.Val if_let_match_enum_values.Foo.t :=
      M.alloc if_let_match_enum_values.Foo.Baz in
    let* c : M.Val if_let_match_enum_values.Foo.t :=
      let* α0 : M.Val u32.t := M.alloc 100 in
      let* α1 := M.read α0 in
      M.alloc (if_let_match_enum_values.Foo.Qux α1) in
    let* _ : M.Val unit :=
      let* α0 : M.Val bool.t := let_if if_let_match_enum_values.Foo.Bar  := a in
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
        M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : M.Val bool.t := let_if if_let_match_enum_values.Foo.Bar  := b in
      let* α1 := M.read α0 in
      if (α1 : bool) then
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str "b is foobar
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
        M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : M.Val bool.t :=
        let_if if_let_match_enum_values.Foo.Qux value := c in
      let* α1 := M.read α0 in
      if (α1 : bool) then
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str "c is "; mk_str "
" ] in
            let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
            let* α2 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : M.Val (ref u32.t) := borrow value in
            let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
            let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
            let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
            let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
            let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
              pointer_coercion "Unsize" α7 in
            let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
            let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
            let* α11 := std.io.stdio._print α10 in
            M.alloc α11 in
          M.alloc tt in
        M.alloc tt
      else
        M.alloc tt in
    let* α0 : M.Val bool.t :=
      let_if if_let_match_enum_values.Foo.Qux (_ as value) := c in
    let* α1 := M.read α0 in
    if (α1 : bool) then
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "c is one hundred
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
