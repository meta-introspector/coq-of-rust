(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Foo.
Section Foo.
  Inductive t : Set := Build.
End Foo.
End Foo.

Module  Bar.
Section Bar.
  Inductive t : Set := Build.
End Bar.
End Bar.

Module  FooBar.
Section FooBar.
  Inductive t : Set := Build.
End FooBar.
End FooBar.

Module  Impl_core_fmt_Debug_for_operator_overloading_FooBar_t.
Section Impl_core_fmt_Debug_for_operator_overloading_FooBar_t.
  Ltac Self := exact operator_overloading.FooBar.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "FooBar") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 := core.fmt.Formatter.t::["write_str"] α1 α3 in
      M.alloc α4).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_operator_overloading_FooBar_t.
End Impl_core_fmt_Debug_for_operator_overloading_FooBar_t.

Module  BarFoo.
Section BarFoo.
  Inductive t : Set := Build.
End BarFoo.
End BarFoo.

Module  Impl_core_fmt_Debug_for_operator_overloading_BarFoo_t.
Section Impl_core_fmt_Debug_for_operator_overloading_BarFoo_t.
  Ltac Self := exact operator_overloading.BarFoo.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "BarFoo") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 := core.fmt.Formatter.t::["write_str"] α1 α3 in
      M.alloc α4).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_operator_overloading_BarFoo_t.
End Impl_core_fmt_Debug_for_operator_overloading_BarFoo_t.

Module  Impl_core_ops_arith_Add_operator_overloading_Bar_t_for_operator_overloading_Foo_t.
Section Impl_core_ops_arith_Add_operator_overloading_Bar_t_for_operator_overloading_Foo_t.
  Ltac Self := exact operator_overloading.Foo.t.
  
  (*
      type Output = FooBar;
  *)
  Definition Output : Set := operator_overloading.FooBar.t.
  
  (*
      fn add(self, _rhs: Bar) -> FooBar {
          println!("> Foo.add(Bar) was called");
  
          FooBar
      }
  *)
  Definition add
      (self : M.Val ltac:(Self))
      (_rhs : M.Val operator_overloading.Bar.t)
      : M operator_overloading.FooBar.t :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "> Foo.add(Bar) was called
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
          let* α4 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α3 in
          let* α5 := std.io.stdio._print α4 in
          M.alloc α5 in
        M.alloc tt in
      M.alloc operator_overloading.FooBar.Build_t).
  
  Global Instance AssociatedFunction_add :
    Notations.DoubleColon ltac:(Self) "add" := {
    Notations.double_colon := add;
  }.
  
  Global Instance ℐ :
    core.ops.arith.Add.Trait ltac:(Self)
      (Rhs := operator_overloading.Bar.t) := {
    core.ops.arith.Add.Output := Output;
    core.ops.arith.Add.add := add;
  }.
End Impl_core_ops_arith_Add_operator_overloading_Bar_t_for_operator_overloading_Foo_t.
End Impl_core_ops_arith_Add_operator_overloading_Bar_t_for_operator_overloading_Foo_t.

Module  Impl_core_ops_arith_Add_operator_overloading_Foo_t_for_operator_overloading_Bar_t.
Section Impl_core_ops_arith_Add_operator_overloading_Foo_t_for_operator_overloading_Bar_t.
  Ltac Self := exact operator_overloading.Bar.t.
  
  (*
      type Output = BarFoo;
  *)
  Definition Output : Set := operator_overloading.BarFoo.t.
  
  (*
      fn add(self, _rhs: Foo) -> BarFoo {
          println!("> Bar.add(Foo) was called");
  
          BarFoo
      }
  *)
  Definition add
      (self : M.Val ltac:(Self))
      (_rhs : M.Val operator_overloading.Foo.t)
      : M operator_overloading.BarFoo.t :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "> Bar.add(Foo) was called
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
          let* α4 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α3 in
          let* α5 := std.io.stdio._print α4 in
          M.alloc α5 in
        M.alloc tt in
      M.alloc operator_overloading.BarFoo.Build_t).
  
  Global Instance AssociatedFunction_add :
    Notations.DoubleColon ltac:(Self) "add" := {
    Notations.double_colon := add;
  }.
  
  Global Instance ℐ :
    core.ops.arith.Add.Trait ltac:(Self)
      (Rhs := operator_overloading.Foo.t) := {
    core.ops.arith.Add.Output := Output;
    core.ops.arith.Add.add := add;
  }.
End Impl_core_ops_arith_Add_operator_overloading_Foo_t_for_operator_overloading_Bar_t.
End Impl_core_ops_arith_Add_operator_overloading_Foo_t_for_operator_overloading_Bar_t.

(*
fn main() {
    println!("Foo + Bar = {:?}", Foo + Bar);
    println!("Bar + Foo = {:?}", Bar + Foo);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Foo + Bar = "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val operator_overloading.Foo.t)) :=
          M.alloc operator_overloading.Foo.Build_t in
        let* α4 : ltac:(refine (M.Val operator_overloading.Bar.t)) :=
          M.alloc operator_overloading.Bar.Build_t in
        let* α5 :=
          (core.ops.arith.Add.add
              (Self := operator_overloading.Foo.t)
              (Trait := ltac:(refine _)))
            α3
            α4 in
        let* α6 : ltac:(refine (M.Val operator_overloading.FooBar.t)) :=
          M.alloc α5 in
        let* α7 : ltac:(refine (M.Val (ref operator_overloading.FooBar.t))) :=
          borrow α6 in
        let* α8 := core.fmt.rt.Argument.t::["new_debug"] α7 in
        let* α9 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α8 in
        let* α10 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α9 ] in
        let* α11 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α10 in
        let* α12 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α11 in
        let* α13 := core.fmt.Arguments.t::["new_v1"] α2 α12 in
        let* α14 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α13 in
        let* α15 := std.io.stdio._print α14 in
        M.alloc α15 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Bar + Foo = "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val operator_overloading.Bar.t)) :=
          M.alloc operator_overloading.Bar.Build_t in
        let* α4 : ltac:(refine (M.Val operator_overloading.Foo.t)) :=
          M.alloc operator_overloading.Foo.Build_t in
        let* α5 :=
          (core.ops.arith.Add.add
              (Self := operator_overloading.Bar.t)
              (Trait := ltac:(refine _)))
            α3
            α4 in
        let* α6 : ltac:(refine (M.Val operator_overloading.BarFoo.t)) :=
          M.alloc α5 in
        let* α7 : ltac:(refine (M.Val (ref operator_overloading.BarFoo.t))) :=
          borrow α6 in
        let* α8 := core.fmt.rt.Argument.t::["new_debug"] α7 in
        let* α9 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α8 in
        let* α10 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α9 ] in
        let* α11 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α10 in
        let* α12 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α11 in
        let* α13 := core.fmt.Arguments.t::["new_v1"] α2 α12 in
        let* α14 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α13 in
        let* α15 := std.io.stdio._print α14 in
        M.alloc α15 in
      M.alloc tt in
    M.alloc tt).
