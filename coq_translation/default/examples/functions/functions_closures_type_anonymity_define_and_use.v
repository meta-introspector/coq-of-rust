(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition apply
    `{H : State.Trait}
    {F : Set}
    `{core.ops.function.Fn.Trait F (Args := unit)}
    (f : F)
    : M (H := H) unit :=
  let* _ := f in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let x := 7 in
  let print :=
    fun  =>
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of x) in
        let* α1 :=
          format_arguments::["new_v1"] (addr_of [ ""; "
" ]) (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
  let* _ := functions_closures_type_anonymity_define_and_use.apply print in
  Pure tt.
