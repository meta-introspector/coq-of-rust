(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition apply
    `{ℋ : State.Trait}
    {F : Set}
    {ℋ_0 : core.ops.function.Fn.Trait F (Args := unit)}
    (f : F)
    : M unit :=
  M.function_body
    (let* _ :=
      let* α0 := borrow f F in
      let* α1 := M.alloc tt in
      (core.ops.function.Fn.call (Self := F) (Trait := ltac:(refine _)))
        α0
        α1 in
    M.alloc tt).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* x := M.alloc 7 in
    let print :=
      let* _ :=
        let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow x i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* _ := functions_closures_type_anonymity_define_and_use.apply print in
    M.alloc tt).
