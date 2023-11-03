(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Droppable.
Section Droppable.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    name : ref str;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_name : Notation.Dot "name" := {
    Notation.dot x := let* x := M.read x in M.pure x.(name) : M _;
  }.
  Global Instance Get_AF_name : Notation.DoubleColon t "name" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(name) : M _;
  }.
End Droppable.
End Droppable.
Definition Droppable `{ℋ : State.Trait} : Set := M.Val Droppable.t.

Module  Impl_core_ops_drop_Drop_for_drop_Droppable.
Section Impl_core_ops_drop_Drop_for_drop_Droppable.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := drop.Droppable.
  
  Definition drop (self : mut_ref Self) : M unit :=
    M.function_body
      (let* _ :=
        let* _ :=
          let* α0 :=
            borrow [ mk_str "> Dropping "; mk_str "
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := deref self drop.Droppable in
          let* α5 := α4.["name"] in
          let* α6 := borrow α5 (ref str) in
          let* α7 := deref α6 (ref str) in
          let* α8 := borrow α7 (ref str) in
          let* α9 := core.fmt.rt.Argument::["new_display"] α8 in
          let* α10 := borrow [ α9 ] (list core.fmt.rt.Argument) in
          let* α11 := deref α10 (list core.fmt.rt.Argument) in
          let* α12 := borrow α11 (list core.fmt.rt.Argument) in
          let* α13 := pointer_coercion "Unsize" α12 in
          let* α14 := core.fmt.Arguments::["new_v1"] α3 α13 in
          std.io.stdio._print α14 in
        M.alloc tt in
      M.alloc tt).
  
  Global Instance AssociatedFunction_drop :
    Notation.DoubleColon Self "drop" := {
    Notation.double_colon := drop;
  }.
  
  Global Instance ℐ : core.ops.drop.Drop.Trait Self := {
    core.ops.drop.Drop.drop := drop;
  }.
End Impl_core_ops_drop_Drop_for_drop_Droppable.
End Impl_core_ops_drop_Drop_for_drop_Droppable.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _a := M.alloc {| drop.Droppable.name := mk_str "a"; |} in
    let* _ :=
      let* _b := M.alloc {| drop.Droppable.name := mk_str "b"; |} in
      let* _ :=
        let* _c := M.alloc {| drop.Droppable.name := mk_str "c"; |} in
        let* _d := M.alloc {| drop.Droppable.name := mk_str "d"; |} in
        let* _ :=
          let* _ :=
            let* α0 := borrow [ mk_str "Exiting block B
" ] (list (ref str)) in
            let* α1 := deref α0 (list (ref str)) in
            let* α2 := borrow α1 (list (ref str)) in
            let* α3 := pointer_coercion "Unsize" α2 in
            let* α4 := core.fmt.Arguments::["new_const"] α3 in
            std.io.stdio._print α4 in
          M.alloc tt in
        M.alloc tt in
      let* _ :=
        let* _ :=
          let* α0 :=
            borrow [ mk_str "Just exited block B
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := core.fmt.Arguments::["new_const"] α3 in
          std.io.stdio._print α4 in
        M.alloc tt in
      let* _ :=
        let* _ :=
          let* α0 := borrow [ mk_str "Exiting block A
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := core.fmt.Arguments::["new_const"] α3 in
          std.io.stdio._print α4 in
        M.alloc tt in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "Just exited block A
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt in
    let* _ := core.mem.drop _a in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "end of the main function
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt in
    M.alloc tt).
