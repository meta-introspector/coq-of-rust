(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Borrowed.
Section Borrowed.
  Record t : Set := {
    x0 : ref i32.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>));
  }.
End Borrowed.
End Borrowed.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Borrowed_t.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Borrowed_t.
  Definition Self : Set := scoping_rules_lifetimes_structs.Borrowed.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : ref str.t := M.read (mk_str "Borrowed") in
    let* α2 : ref scoping_rules_lifetimes_structs.Borrowed.t := M.read self in
    let* α3 : M.Val (ref (ref i32.t)) := M.alloc (borrow (deref α2).["0"]) in
    let* α4 : M.Val (ref (ref (ref i32.t))) := M.alloc (borrow α3) in
    let* α5 : ref dynamic := M.read (pointer_coercion "Unsize" α4) in
    M.call (core.fmt.Formatter.t::["debug_tuple_field1_finish"] α0 α1 α5).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Borrowed_t.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Borrowed_t.

Module  NamedBorrowed.
Section NamedBorrowed.
  Record t : Set := {
    x : ref i32.t;
    y : ref i32.t;
  }.
  
  Global Instance Get_x : Notations.Dot "x" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(x)) (fun β α => Some (α <| x := β |>));
  }.
  Global Instance Get_AF_x : Notations.DoubleColon t "x" := {
    Notations.double_colon (α : M.Val t) := α.["x"];
  }.
  Global Instance Get_y : Notations.Dot "y" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(y)) (fun β α => Some (α <| y := β |>));
  }.
  Global Instance Get_AF_y : Notations.DoubleColon t "y" := {
    Notations.double_colon (α : M.Val t) := α.["y"];
  }.
End NamedBorrowed.
End NamedBorrowed.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_NamedBorrowed_t.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_NamedBorrowed_t.
  Definition Self : Set := scoping_rules_lifetimes_structs.NamedBorrowed.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : ref str.t := M.read (mk_str "NamedBorrowed") in
    let* α2 : ref str.t := M.read (mk_str "x") in
    let* α3 : ref scoping_rules_lifetimes_structs.NamedBorrowed.t :=
      M.read self in
    let* α4 : M.Val (ref (ref i32.t)) := M.alloc (borrow (deref α3).["x"]) in
    let* α5 : ref dynamic := M.read (pointer_coercion "Unsize" α4) in
    let* α6 : ref str.t := M.read (mk_str "y") in
    let* α7 : ref scoping_rules_lifetimes_structs.NamedBorrowed.t :=
      M.read self in
    let* α8 : M.Val (ref (ref i32.t)) := M.alloc (borrow (deref α7).["y"]) in
    let* α9 : M.Val (ref (ref (ref i32.t))) := M.alloc (borrow α8) in
    let* α10 : ref dynamic := M.read (pointer_coercion "Unsize" α9) in
    M.call
      (core.fmt.Formatter.t::["debug_struct_field2_finish"] α0 α1 α2 α5 α6 α10).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_NamedBorrowed_t.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_NamedBorrowed_t.

Module Either.
  Inductive t : Set :=
  | Num (_ : i32.t)
  | Ref (_ : ref i32.t).
  
  Global Instance Get_Num_0 : Notations.Dot "Num.0" := {
    Notations.dot :=
      Ref.map
        (fun α => match α with | Num α0 => Some α0 | _ => None end)
        (fun β α => match α with | Num _ => Some (Num β) | _ => None end);
  }.
  
  Global Instance Get_Ref_0 : Notations.Dot "Ref.0" := {
    Notations.dot :=
      Ref.map
        (fun α => match α with | Ref α0 => Some α0 | _ => None end)
        (fun β α => match α with | Ref _ => Some (Ref β) | _ => None end);
  }.
End Either.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Either_t.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Either_t.
  Definition Self : Set := scoping_rules_lifetimes_structs.Either.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : M.Val (core.result.Result.t unit core.fmt.Error.t) :=
      match_operator
        self
        [
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | scoping_rules_lifetimes_structs.Either.Num _ =>
              let γ0 := γ.["Num.0"] in
              let* __self_0 := M.alloc (borrow_mut γ0) in
              let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
              let* α1 : ref str.t := M.read (mk_str "Num") in
              let* α2 : M.Val (ref (ref i32.t)) := M.alloc (borrow __self_0) in
              let* α3 : ref dynamic := M.read (pointer_coercion "Unsize" α2) in
              let* α4 : core.result.Result.t unit core.fmt.Error.t :=
                M.call
                  (core.fmt.Formatter.t::["debug_tuple_field1_finish"]
                    α0
                    α1
                    α3) in
              M.alloc α4
            | _ => M.break_match
            end) :
            M (M.Val (core.result.Result.t unit core.fmt.Error.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | scoping_rules_lifetimes_structs.Either.Ref _ =>
              let γ0 := γ.["Ref.0"] in
              let* __self_0 := M.alloc (borrow_mut γ0) in
              let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
              let* α1 : ref str.t := M.read (mk_str "Ref") in
              let* α2 : M.Val (ref (ref (ref i32.t))) :=
                M.alloc (borrow __self_0) in
              let* α3 : ref dynamic := M.read (pointer_coercion "Unsize" α2) in
              let* α4 : core.result.Result.t unit core.fmt.Error.t :=
                M.call
                  (core.fmt.Formatter.t::["debug_tuple_field1_finish"]
                    α0
                    α1
                    α3) in
              M.alloc α4
            | _ => M.break_match
            end) :
            M (M.Val (core.result.Result.t unit core.fmt.Error.t))
        ] in
    M.read α0.
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Either_t.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Either_t.

(*
fn main() {
    let x = 18;
    let y = 15;

    let single = Borrowed(&x);
    let double = NamedBorrowed { x: &x, y: &y };
    let reference = Either::Ref(&x);
    let number = Either::Num(y);

    println!("x is borrowed in {:?}", single);
    println!("x and y are borrowed in {:?}", double);
    println!("x is borrowed in {:?}", reference);
    println!("y is *not* borrowed in {:?}", number);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* x : M.Val i32.t := M.alloc (Integer.of_Z 18) in
  let* y : M.Val i32.t := M.alloc (Integer.of_Z 15) in
  let* single : M.Val scoping_rules_lifetimes_structs.Borrowed.t :=
    M.alloc (scoping_rules_lifetimes_structs.Borrowed.Build_t (borrow x)) in
  let* double : M.Val scoping_rules_lifetimes_structs.NamedBorrowed.t :=
    M.alloc
      {|
        scoping_rules_lifetimes_structs.NamedBorrowed.x := borrow x;
        scoping_rules_lifetimes_structs.NamedBorrowed.y := borrow y;
      |} in
  let* reference : M.Val scoping_rules_lifetimes_structs.Either.t :=
    M.alloc (scoping_rules_lifetimes_structs.Either.Ref (borrow x)) in
  let* number : M.Val scoping_rules_lifetimes_structs.Either.t :=
    let* α0 : i32.t := M.read y in
    M.alloc (scoping_rules_lifetimes_structs.Either.Num α0) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "x is borrowed in ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow single)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "x and y are borrowed in ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow double)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "x is borrowed in ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow reference)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "y is *not* borrowed in ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow number)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
