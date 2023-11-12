(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module WebEvent.
  Module Click.
    Unset Primitive Projections.
    Record t : Set := {
      x : i64.t;
      y : i64.t;
    }.
    Global Set Primitive Projections.
  End Click.
  
  Inductive t : Set :=
  | PageLoad
  | PageUnload
  | KeyPress (_ : char.t)
  | Paste (_ : alloc.string.String.t)
  | Click (_ : Click.t).
End WebEvent.

(*
fn inspect(event: WebEvent) {
    match event {
        WebEvent::PageLoad => println!("page loaded, réfé"),
        WebEvent::PageUnload => println!("page unloaded"),
        // Destructure `c` from inside the `enum`.
        WebEvent::KeyPress(c) => println!("pressed '{}'.", c),
        WebEvent::Paste(s) => println!("pasted \"{}\".", s),
        // Destructure `Click` into `x` and `y`.
        WebEvent::Click { x, y } => {
            println!("clicked at x={}, y={}.", x, y);
        }
    }
}
*)
Definition inspect (event : M.Val enums.WebEvent.t) : M (M.Val unit) :=
  M.function_body
    (let* α0 := M.read event in
    match α0 with
    | enums.WebEvent.PageLoad  =>
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc
            [
              mk_str
                ("page loaded, r" ++
                  String.String "233" ("f" ++ String.String "233" "
"))
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt
    | enums.WebEvent.PageUnload  =>
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "page unloaded
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt
    | enums.WebEvent.KeyPress c =>
      let* c := M.alloc c in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "pressed '"; mk_str "'.
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref char.t))) := borrow c in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    | enums.WebEvent.Paste s =>
      let* s := M.alloc s in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "pasted ""; mk_str "".
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          borrow s in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    |
        enums.WebEvent.Click
        {| enums.WebEvent.Click.x := x; enums.WebEvent.Click.y := y;
        |}
        =>
      let* y := M.alloc y in
      let* x := M.alloc x in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str "clicked at x="; mk_str ", y="; mk_str ".
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref i64.t))) := borrow x in
          let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : ltac:(refine (M.Val (ref i64.t))) := borrow y in
          let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_display"] α5 in
          let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
            M.alloc [ α4; α6 ] in
          let* α8 :
              ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
            borrow α7 in
          let* α9 :
              ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
            pointer_coercion "Unsize" α8 in
          let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_v1"] α2 α9 in
          std.io.stdio._print α10 in
        M.alloc tt in
      M.alloc tt
    end).

(*
fn main() {
    let pressed = WebEvent::KeyPress('x');
    // `to_owned()` creates an owned `String` from a string slice.
    let pasted = WebEvent::Paste("my text".to_owned());
    let click = WebEvent::Click { x: 20, y: 80 };
    let load = WebEvent::PageLoad;
    let unload = WebEvent::PageUnload;

    inspect(pressed);
    inspect(pasted);
    inspect(click);
    inspect(load);
    inspect(unload);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* pressed : ltac:(refine (M.Val enums.WebEvent.t)) :=
      let* α0 : ltac:(refine (M.Val char.t)) := M.alloc "x"%char in
      let* α1 := M.read α0 in
      M.alloc (enums.WebEvent.KeyPress α1) in
    let* pasted : ltac:(refine (M.Val enums.WebEvent.t)) :=
      let* α0 : ltac:(refine (M.Val str)) := deref (mk_str "my text") in
      let* α1 : ltac:(refine (M.Val (ref str))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val alloc.string.String.t)) :=
        (alloc.borrow.ToOwned.to_owned (Self := str) (Trait := ltac:(refine _)))
          α1 in
      let* α3 := M.read α2 in
      M.alloc (enums.WebEvent.Paste α3) in
    let* click : ltac:(refine (M.Val enums.WebEvent.t)) :=
      let* α0 : ltac:(refine (M.Val i64.t)) := M.alloc 20 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val i64.t)) := M.alloc 80 in
      let* α3 := M.read α2 in
      M.alloc
        enums.WebEvent.Click
          {|
          enums.WebEvent.Click.x := α1;
          enums.WebEvent.Click.y := α3;
        |} in
    let* load : ltac:(refine (M.Val enums.WebEvent.t)) :=
      M.alloc enums.WebEvent.PageLoad in
    let* unload : ltac:(refine (M.Val enums.WebEvent.t)) :=
      M.alloc enums.WebEvent.PageUnload in
    let* _ : ltac:(refine (M.Val unit)) := enums.inspect pressed in
    let* _ : ltac:(refine (M.Val unit)) := enums.inspect pasted in
    let* _ : ltac:(refine (M.Val unit)) := enums.inspect click in
    let* _ : ltac:(refine (M.Val unit)) := enums.inspect load in
    let* _ : ltac:(refine (M.Val unit)) := enums.inspect unload in
    M.alloc tt).
