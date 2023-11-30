(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Owner.
Section Owner.
  Record t : Set := {
    x0 : i32.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End Owner.
End Owner.

Module  Impl_scoping_rules_lifetimes_methods_Owner_t.
Section Impl_scoping_rules_lifetimes_methods_Owner_t.
  Ltac Self := exact scoping_rules_lifetimes_methods.Owner.t.
  
  (*
      fn add_one<'a>(&'a mut self) {
          self.0 += 1;
      }
  *)
  Definition add_one (self : mut_ref ltac:(Self)) : M unit :=
    let* self : M.Val (mut_ref ltac:(Self)) := M.alloc self in
    let* _ : M.Val unit :=
      let* α0 : mut_ref scoping_rules_lifetimes_methods.Owner.t :=
        M.read self in
      let* α1 : M.Val i32.t := M.alloc (Integer.of_Z 1) in
      assign_op BinOp.Panic.add (deref α0).["0"] α1 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Global Instance AssociatedFunction_add_one :
    Notations.DoubleColon ltac:(Self) "add_one" := {
    Notations.double_colon := add_one;
  }.
  
  (*
      fn print<'a>(&'a self) {
          println!("`print`: {}", self.0);
      }
  *)
  Definition print (self : ref ltac:(Self)) : M unit :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "`print`: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : ref scoping_rules_lifetimes_methods.Owner.t := M.read self in
        let* α4 : core.fmt.rt.Argument.t :=
          M.call
            (core.fmt.rt.Argument.t::["new_display"]
              (borrow (deref α3).["0"])) in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α6) in
        let* α8 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α7) in
        let* α9 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α8) in
        let* α10 : unit := M.call (std.io.stdio._print α9) in
        M.alloc α10 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Global Instance AssociatedFunction_print :
    Notations.DoubleColon ltac:(Self) "print" := {
    Notations.double_colon := print;
  }.
End Impl_scoping_rules_lifetimes_methods_Owner_t.
End Impl_scoping_rules_lifetimes_methods_Owner_t.

(*
fn main() {
    let mut owner = Owner(18);

    owner.add_one();
    owner.print();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* owner : M.Val scoping_rules_lifetimes_methods.Owner.t :=
    M.alloc (scoping_rules_lifetimes_methods.Owner.Build_t (Integer.of_Z 18)) in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call
        (scoping_rules_lifetimes_methods.Owner.t::["add_one"]
          (borrow_mut owner)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call
        (scoping_rules_lifetimes_methods.Owner.t::["print"] (borrow owner)) in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
