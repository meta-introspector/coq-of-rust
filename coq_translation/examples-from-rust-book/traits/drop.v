(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Droppable.
  Record t : Set := {
    name : ref str;
  }.
  
  Global Instance Get_name : NamedField.Class t "name" _ := {|
    NamedField.get '(Build_t x0) := x0;
  |}.
  Class AssociatedFunction (name : string) (T : Set) : Set := {
    associated_function : T;
  }.
  Arguments associated_function name {T AssociatedFunction}.
End Droppable.
Definition Droppable : Set := Droppable.t.

Module Impl_Drop_for_Droppable.
  Definition Self := Droppable.
  
  Definition drop (self : mut_ref Self) :=
    _crate.io._print
      (_crate.fmt.ImplArguments.new_v1
        [ "> Dropping "; "\n" ]
        [
          _crate.fmt.ImplArgumentV1.new_display
            (NamedField.get (name := "name") self)
        ]) ;;
    tt ;;
    tt.
  
  Global Instance M_drop : Method "drop" _ := {|
    method := drop;
  |}.
  Global Instance AF_drop : Droppable.AssociatedFunction "drop" _ := {|
    Droppable.associated_function := drop;
  |}.
  Global Instance AFT_drop : Drop.AssociatedFunction "drop" _ := {|
    Drop.associated_function := drop;
  |}.
  
  Global Instance I : Drop.Class Self := {|
    Drop.drop := drop;
  |}.
End Impl_Drop_for_Droppable.

Definition main (_ : unit) : unit :=
  let _a := {| Droppable.name := "a"; |} in
  let _b := {| Droppable.name := "b"; |} in
  let _c := {| Droppable.name := "c"; |} in
  let _d := {| Droppable.name := "d"; |} in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1 [ "Exiting block B\n" ] [  ]) ;;
  tt ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1 [ "Just exited block B\n" ] [  ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1 [ "Exiting block A\n" ] [  ]) ;;
  tt ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1 [ "Just exited block A\n" ] [  ]) ;;
  tt ;;
  drop _a ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1 [ "end of the main function\n" ] [  ]) ;;
  tt ;;
  tt.
