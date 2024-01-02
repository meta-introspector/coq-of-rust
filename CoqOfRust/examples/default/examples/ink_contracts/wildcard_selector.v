(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn decode_input<T>() -> Result<T, ()> {
    unimplemented!()
}
*)
Definition decode_input {T : Set} : M (core.result.Result.t T unit) :=
  let* α0 : ref str.t := M.read (mk_str "not implemented") in
  let* α1 : never.t := M.call (core.panicking.panic α0) in
  never_to_any α1.

Module  WildcardSelector.
Section WildcardSelector.
  Inductive t : Set := Build.
End WildcardSelector.
End WildcardSelector.

Module  Impl_wildcard_selector_WildcardSelector_t.
Section Impl_wildcard_selector_WildcardSelector_t.
  Definition Self : Set := wildcard_selector.WildcardSelector.t.
  
  (*
      pub fn new() -> Self {
          Self {}
      }
  *)
  Definition new : M Self := M.pure wildcard_selector.WildcardSelector.Build.
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
  
  (*
      pub fn wildcard(&mut self) {
          let (_selector, _message) = decode_input::<([u8; 4], String)>().unwrap();
          println!("Wildcard selector: {:?}, message: {}", _selector, _message);
      }
  *)
  Definition wildcard (self : mut_ref Self) : M unit :=
    let* self := M.alloc self in
    let* α0 :
        core.result.Result.t ((array u8.t) * alloc.string.String.t) unit :=
      M.call wildcard_selector.decode_input in
    let* α1 : (array u8.t) * alloc.string.String.t :=
      M.call
        ((core.result.Result.t
              ((array u8.t) * alloc.string.String.t)
              unit)::["unwrap"]
          α0) in
    let* α2 : M.Val ((array u8.t) * alloc.string.String.t) := M.alloc α1 in
    let* α3 : M.Val unit :=
      match_operator
        α2
        [
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | (_, _) =>
              let γ0 := Tuple.Access.left γ in
              let γ1 := Tuple.Access.right γ in
              let* _selector := M.copy γ0 in
              let* _message := M.copy γ1 in
              let* _ : M.Val unit :=
                let* _ : M.Val unit :=
                  let* α0 : ref str.t :=
                    M.read (mk_str "Wildcard selector: ") in
                  let* α1 : ref str.t := M.read (mk_str ", message: ") in
                  let* α2 : ref str.t := M.read (mk_str "\n") in
                  let* α3 : M.Val (array (ref str.t)) :=
                    M.alloc [ α0; α1; α2 ] in
                  let* α4 : M.Val (ref (array (ref str.t))) :=
                    M.alloc (borrow α3) in
                  let* α5 : ref (slice (ref str.t)) :=
                    M.read (pointer_coercion "Unsize" α4) in
                  let* α6 : core.fmt.rt.Argument.t :=
                    M.call
                      (core.fmt.rt.Argument.t::["new_debug"]
                        (borrow _selector)) in
                  let* α7 : core.fmt.rt.Argument.t :=
                    M.call
                      (core.fmt.rt.Argument.t::["new_display"]
                        (borrow _message)) in
                  let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
                    M.alloc [ α6; α7 ] in
                  let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                    M.alloc (borrow α8) in
                  let* α10 : ref (slice core.fmt.rt.Argument.t) :=
                    M.read (pointer_coercion "Unsize" α9) in
                  let* α11 : core.fmt.Arguments.t :=
                    M.call (core.fmt.Arguments.t::["new_v1"] α5 α10) in
                  let* α12 : unit := M.call (std.io.stdio._print α11) in
                  M.alloc α12 in
                M.alloc tt in
              M.alloc tt
            end) :
            M (M.Val unit)
        ] in
    M.read α3.
  
  Global Instance AssociatedFunction_wildcard :
    Notations.DoubleColon Self "wildcard" := {
    Notations.double_colon := wildcard;
  }.
  
  (*
      pub fn wildcard_complement(&mut self, _message: String) {
          println!("Wildcard complement message: {}", _message);
      }
  *)
  Definition wildcard_complement
      (self : mut_ref Self)
      (_message : alloc.string.String.t)
      : M unit :=
    let* self := M.alloc self in
    let* _message := M.alloc _message in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t :=
          M.read (mk_str "Wildcard complement message: ") in
        let* α1 : ref str.t := M.read (mk_str "\n") in
        let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
        let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
        let* α4 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α3) in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow _message)) in
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
  
  Global Instance AssociatedFunction_wildcard_complement :
    Notations.DoubleColon Self "wildcard_complement" := {
    Notations.double_colon := wildcard_complement;
  }.
End Impl_wildcard_selector_WildcardSelector_t.
End Impl_wildcard_selector_WildcardSelector_t.
