(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module WebEvent.
  Module Click.
    Unset Primitive Projections.
    Record t `{State.Trait} : Set := {
      x : i64;
      y : i64;
    }.
    Global Set Primitive Projections.
  End Click.
  
  Inductive t `{State.Trait} : Set :=
  | PageLoad
  | PageUnload
  | KeyPress (_ : char)
  | Paste (_ : alloc.string.String)
  | Click (_ : Click.t).
End WebEvent.
Definition WebEvent `{State.Trait} : Set := WebEvent.t.

Definition inspect `{State.Trait} (event : enums.WebEvent) : M unit :=
  match event with
  | enums.WebEvent  =>
    let* _ :=
      let* α0 :=
        borrow
          [
            mk_str
              ("page loaded, r" ++
                String.String "233" ("f" ++ String.String "233" "
"))
          ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    Pure tt
  | enums.WebEvent  =>
    let* _ :=
      let* α0 := borrow [ mk_str "page unloaded
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    Pure tt
  | enums.WebEvent c =>
    let* _ :=
      let* α0 := borrow [ mk_str "pressed '"; mk_str "'.
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow c char in
      let* α5 := deref α4 char in
      let* α6 := borrow α5 char in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    Pure tt
  | enums.WebEvent s =>
    let* _ :=
      let* α0 := borrow [ mk_str "pasted ""; mk_str "".
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow s alloc.string.String in
      let* α5 := deref α4 alloc.string.String in
      let* α6 := borrow α5 alloc.string.String in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    Pure tt
  | enums.WebEvent {| enums.WebEvent.x := x; enums.WebEvent.y := y; |} =>
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "clicked at x="; mk_str ", y="; mk_str ".
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow x i64 in
        let* α5 := deref α4 i64 in
        let* α6 := borrow α5 i64 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow y i64 in
        let* α9 := deref α8 i64 in
        let* α10 := borrow α9 i64 in
        let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
        let* α12 := borrow [ α7; α11 ] (list core.fmt.rt.Argument) in
        let* α13 := deref α12 (list core.fmt.rt.Argument) in
        let* α14 := borrow α13 (list core.fmt.rt.Argument) in
        let* α15 := pointer_coercion "Unsize" α14 in
        let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
        std.io.stdio._print α16 in
      Pure tt in
    Pure tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let* pressed :=
    let* α0 := "x"%char in
    Pure (enums.WebEvent.KeyPress α0) in
  let* pasted :=
    let* α0 := deref (mk_str "my text") str in
    let* α1 := borrow α0 str in
    let* α2 := alloc.borrow.ToOwned.to_owned α1 in
    Pure (enums.WebEvent.Paste α2) in
  let* click :=
    let* α0 := M.alloc 20 in
    let* α1 := M.alloc 80 in
    M.alloc
      enums.WebEvent.Click
        {|
        enums.WebEvent.Click.x := α0;
        enums.WebEvent.Click.y := α1;
      |} in
  let load := enums.WebEvent.PageLoad tt in
  let unload := enums.WebEvent.PageUnload tt in
  let* _ := enums.inspect pressed in
  let* _ := enums.inspect pasted in
  let* _ := enums.inspect click in
  let* _ := enums.inspect load in
  let* _ := enums.inspect unload in
  Pure tt.
