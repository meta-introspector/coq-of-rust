(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Owner.
  Section Owner.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : i32;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Admitted.
  End Owner.
End Owner.
Definition Owner `{ℋ : State.Trait} : Set := M.val Owner.t.

Module Impl_scoping_rules_lifetimes_methods_Owner.
  Section Impl_scoping_rules_lifetimes_methods_Owner.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := scoping_rules_lifetimes_methods.Owner.
    
    Definition add_one (self : mut_ref Self) : M unit :=
      let* _ :=
        let* α0 := deref self scoping_rules_lifetimes_methods.Owner in
        let* α1 := α0.["0"] in
        let* α2 := M.alloc 1 in
        assign_op add α1 α2 in
      M.alloc tt.
    
    Global Instance AssociatedFunction_add_one :
      Notation.DoubleColon Self "add_one" := {
      Notation.double_colon := add_one;
    }.
    
    Definition print (self : ref Self) : M unit :=
      let* _ :=
        let* _ :=
          let* α0 :=
            borrow [ mk_str "`print`: "; mk_str "
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := deref self scoping_rules_lifetimes_methods.Owner in
          let* α5 := α4.["0"] in
          let* α6 := borrow α5 i32 in
          let* α7 := deref α6 i32 in
          let* α8 := borrow α7 i32 in
          let* α9 := core.fmt.rt.Argument::["new_display"] α8 in
          let* α10 := borrow [ α9 ] (list core.fmt.rt.Argument) in
          let* α11 := deref α10 (list core.fmt.rt.Argument) in
          let* α12 := borrow α11 (list core.fmt.rt.Argument) in
          let* α13 := pointer_coercion "Unsize" α12 in
          let* α14 := core.fmt.Arguments::["new_v1"] α3 α13 in
          std.io.stdio._print α14 in
        M.alloc tt in
      M.alloc tt.
    
    Global Instance AssociatedFunction_print :
      Notation.DoubleColon Self "print" := {
      Notation.double_colon := print;
    }.
  End Impl_scoping_rules_lifetimes_methods_Owner.
End Impl_scoping_rules_lifetimes_methods_Owner.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* owner :=
    let* α0 := M.alloc 18 in
    Pure (scoping_rules_lifetimes_methods.Owner.Build_t α0) in
  let* _ :=
    let* α0 := borrow_mut owner scoping_rules_lifetimes_methods.Owner in
    scoping_rules_lifetimes_methods.Owner::["add_one"] α0 in
  let* _ :=
    let* α0 := borrow owner scoping_rules_lifetimes_methods.Owner in
    scoping_rules_lifetimes_methods.Owner::["print"] α0 in
  M.alloc tt.
