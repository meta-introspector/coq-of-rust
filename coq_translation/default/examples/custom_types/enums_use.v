(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Status.
  Inductive t `{State.Trait} : Set :=
  | Rich
  | Poor.
End Status.
Definition Status `{State.Trait} : Set := Status.t.

Module Work.
  Inductive t `{State.Trait} : Set :=
  | Civilian
  | Soldier.
End Work.
Definition Work `{State.Trait} : Set := Work.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let status := enums_use.Status.Poor tt in
  let work := enums_use.Work.Civilian tt in
  let* _ :=
    match status with
    | enums_use.Status  =>
      let* _ :=
        let* α0 :=
          borrow [ mk_str "The rich have lots of money!
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      Pure tt
    | enums_use.Status  =>
      let* _ :=
        let* α0 :=
          borrow [ mk_str "The poor have no money...
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      Pure tt
    end in
  match work with
  | enums_use.Work  =>
    let* _ :=
      let* α0 := borrow [ mk_str "Civilians work!
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    Pure tt
  | enums_use.Work  =>
    let* _ :=
      let* α0 := borrow [ mk_str "Soldiers fight!
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    Pure tt
  end.
