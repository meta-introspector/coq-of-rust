(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition Result : Set :=
  core.result.Result T defining_an_error_type.DoubleError.

Module DoubleError.
  Inductive t : Set := Build.
End DoubleError.
Definition DoubleError := DoubleError.t.

Module Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError.
  Definition Self := defining_an_error_type.DoubleError.
  
  Definition fmt
      `{State.Trait}
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M core.fmt.Result :=
    core.fmt.Formatter::["write_str"] f "DoubleError".
  
  Global Instance Method_fmt `{State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{State.Trait} := fmt;
  }.
End Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError.

Module Impl_core_clone_Clone_for_defining_an_error_type_DoubleError.
  Definition Self := defining_an_error_type.DoubleError.
  
  Definition clone
      `{State.Trait}
      (self : ref Self)
      : M defining_an_error_type.DoubleError :=
    Pure defining_an_error_type.DoubleError.Build.
  
  Global Instance Method_clone `{State.Trait} : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : core.clone.Clone.Trait Self := {
    core.clone.Clone.clone `{State.Trait} := clone;
  }.
End Impl_core_clone_Clone_for_defining_an_error_type_DoubleError.

Module Impl_core_fmt_Display_for_defining_an_error_type_DoubleError.
  Definition Self := defining_an_error_type.DoubleError.
  
  Definition fmt
      `{State.Trait}
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M core.fmt.Result :=
    let* α0 :=
      format_arguments::["new_const"]
        (addr_of [ "invalid first item to double" ]) in
    f.["write_fmt"] α0.
  
  Global Instance Method_fmt `{State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Display.Trait Self := {
    core.fmt.Display.fmt `{State.Trait} := fmt;
  }.
End Impl_core_fmt_Display_for_defining_an_error_type_DoubleError.

Definition double_first
    `{State.Trait}
    (vec : alloc.vec.Vec (ref str))
    : M (defining_an_error_type.Result i32) :=
  let* α0 := vec.["first"] in
  let* α1 := α0.["ok_or"] defining_an_error_type.DoubleError.Build in
  α1.["and_then"]
    (fun s =>
      let* α0 := s.["parse"] in
      let* α1 :=
        α0.["map_err"]
          (fun _ => Pure defining_an_error_type.DoubleError.Build) in
      α1.["map"] (fun i => 2.["mul"] i)).

Definition print
    `{State.Trait}
    (result : defining_an_error_type.Result i32)
    : M unit :=
  match result with
  | core.result.Result.Ok n =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of n) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "The first doubled is "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  | core.result.Result.Err e =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of e) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Error: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} (_ : unit) : M unit :=
  let* numbers :=
    let* α0 := alloc.boxed.Box::["new"] [ "42"; "93"; "18" ] in
    Slice::["into_vec"] α0 in
  let* empty := alloc.vec.Vec::["new"] tt in
  let* strings :=
    let* α0 := alloc.boxed.Box::["new"] [ "tofu"; "93"; "18" ] in
    Slice::["into_vec"] α0 in
  let* _ :=
    let* α0 := defining_an_error_type.double_first numbers in
    defining_an_error_type.print α0 in
  let* _ :=
    let* α0 := defining_an_error_type.double_first empty in
    defining_an_error_type.print α0 in
  let* _ :=
    let* α0 := defining_an_error_type.double_first strings in
    defining_an_error_type.print α0 in
  Pure tt.
