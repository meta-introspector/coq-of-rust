(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Circle.
  Section Circle.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      radius : i32;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_radius : Notation.Dot "radius" := {
      Notation.dot x := let* x := M.read x in Pure x.(radius) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_radius :
      Notation.DoubleColon t "radius" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(radius) : M _;
    }.
    Admitted.
  End Circle.
End Circle.
Definition Circle `{ℋ : State.Trait} : Set := M.val Circle.t.

Module Impl_core_fmt_Display_for_converting_to_string_Circle.
  Section Impl_core_fmt_Display_for_converting_to_string_Circle.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := converting_to_string.Circle.
    
    Definition fmt
        (self : ref Self)
        (f : mut_ref core.fmt.Formatter)
        : M core.fmt.Result :=
      let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 := borrow [ mk_str "Circle of radius " ] (list (ref str)) in
      let* α3 := deref α2 (list (ref str)) in
      let* α4 := borrow α3 (list (ref str)) in
      let* α5 := pointer_coercion "Unsize" α4 in
      let* α6 := deref self converting_to_string.Circle in
      let* α7 := α6.["radius"] in
      let* α8 := borrow α7 i32 in
      let* α9 := deref α8 i32 in
      let* α10 := borrow α9 i32 in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow [ α11 ] (list core.fmt.rt.Argument) in
      let* α13 := deref α12 (list core.fmt.rt.Argument) in
      let* α14 := borrow α13 (list core.fmt.rt.Argument) in
      let* α15 := pointer_coercion "Unsize" α14 in
      let* α16 := core.fmt.Arguments::["new_v1"] α5 α15 in
      core.fmt.Formatter::["write_fmt"] α1 α16.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    #[refine] Global Instance ℐ : core.fmt.Display.Trait Self := {
      core.fmt.Display.fmt := fmt;
    }.
    Admitted.
  End Impl_core_fmt_Display_for_converting_to_string_Circle.
  Global Hint Resolve ℐ : core.
End Impl_core_fmt_Display_for_converting_to_string_Circle.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* circle :=
    let* α0 := M.alloc 6 in
    M.alloc {| converting_to_string.Circle.radius := α0; |} in
  let* _ :=
    let* α0 := borrow circle converting_to_string.Circle in
    (alloc.string.ToString.to_string (Self := converting_to_string.Circle))
      α0 in
  M.alloc tt.
