(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Sheep.
  Record t : Set := {
    naked : bool;
    name : ref str;
  }.
  
  Global Instance Get_naked : NamedField.Class t "naked" _ := {|
    NamedField.get '(Build_t x0 _) := x0;
  |}.
  Global Instance Get_name : NamedField.Class t "name" _ := {|
    NamedField.get '(Build_t _ x1) := x1;
  |}.
  Class AssociatedFunction (name : string) (T : Set) : Set := {
    associated_function : T;
  }.
  Arguments associated_function name {T AssociatedFunction}.
End Sheep.
Definition Sheep : Set := Sheep.t.

Module Animal.
  Class Class (Self : Set) : Set := {
    new : (ref str) -> Self;
    name : (ref Self) -> (ref str);
    noise : (ref Self) -> (ref str);
  }.
  
  Global Instance Method_new `(Class) : Method "new" _ := {|
    method := new;
  |}.
  Global Instance Method_name `(Class) : Method "name" _ := {|
    method := name;
  |}.
  Global Instance Method_noise `(Class) : Method "noise" _ := {|
    method := noise;
  |}.
  Global Instance Method_talk `(Class) : Method "talk" _ := {|
    method (self : ref Self) :=
      (_crate.io._print
        (_crate.fmt.ImplArguments.new_v1
          [ ""; " says "; "\n" ]
          [
            _crate.fmt.ImplArgumentV1.new_display (method "name" self);
            _crate.fmt.ImplArgumentV1.new_display (method "noise" self)
          ]) ;;
      tt ;;
      tt
      : unit);
  |}.
  Class AssociatedFunction (name : string) (T : Set) : Set := {
    associated_function : T;
  }.
  Arguments associated_function name {T AssociatedFunction}.
End Animal.

Module ImplSheep.
  Definition Self := Sheep.
  
  Definition is_naked (self : ref Self) : bool :=
    NamedField.get (name := "naked") self.
  
  Global Instance M_is_naked : Method "is_naked" _ := {|
    method := is_naked;
  |}.
  Global Instance AF_is_naked : Sheep.AssociatedFunction "is_naked" _ := {|
    Sheep.associated_function := is_naked;
  |}.
End ImplSheep.

Module Impl_Animal_for_Sheep.
  Definition Self := Sheep.
  
  Definition new (name : ref str) : Sheep :=
    {| Sheep.name := name; Sheep.naked := false; |}.
  
  Global Instance AF_new : Sheep.AssociatedFunction "new" _ := {|
    Sheep.associated_function := new;
  |}.
  Global Instance AFT_new : Animal.AssociatedFunction "new" _ := {|
    Animal.associated_function := new;
  |}.
  
  Definition name (self : ref Self) : ref str :=
    NamedField.get (name := "name") self.
  
  Global Instance M_name : Method "name" _ := {|
    method := name;
  |}.
  Global Instance AF_name : Sheep.AssociatedFunction "name" _ := {|
    Sheep.associated_function := name;
  |}.
  Global Instance AFT_name : Animal.AssociatedFunction "name" _ := {|
    Animal.associated_function := name;
  |}.
  
  Definition noise (self : ref Self) : ref str :=
    if (method "is_naked" self : bool) then
      "baaaaah?"
    else
      "baaaaah!".
  
  Global Instance M_noise : Method "noise" _ := {|
    method := noise;
  |}.
  Global Instance AF_noise : Sheep.AssociatedFunction "noise" _ := {|
    Sheep.associated_function := noise;
  |}.
  Global Instance AFT_noise : Animal.AssociatedFunction "noise" _ := {|
    Animal.associated_function := noise;
  |}.
  
  Definition talk (self : ref Self) :=
    _crate.io._print
      (_crate.fmt.ImplArguments.new_v1
        [ ""; " pauses briefly... "; "\n" ]
        [
          _crate.fmt.ImplArgumentV1.new_display
            (NamedField.get (name := "name") self);
          _crate.fmt.ImplArgumentV1.new_display (method "noise" self)
        ]) ;;
    tt ;;
    tt.
  
  Global Instance M_talk : Method "talk" _ := {|
    method := talk;
  |}.
  Global Instance AF_talk : Sheep.AssociatedFunction "talk" _ := {|
    Sheep.associated_function := talk;
  |}.
  Global Instance AFT_talk : Animal.AssociatedFunction "talk" _ := {|
    Animal.associated_function := talk;
  |}.
  
  Global Instance I : Animal.Class Self := {|
    Animal.new := new;
    Animal.name := name;
    Animal.noise := noise;
  |}.
End Impl_Animal_for_Sheep.

Module ImplSheep_2.
  Definition Self := Sheep.
  
  Definition shear (self : mut_ref Self) :=
    if (method "is_naked" self : bool) then
      _crate.io._print
        (_crate.fmt.ImplArguments.new_v1
          [ ""; " is already naked...\n" ]
          [ _crate.fmt.ImplArgumentV1.new_display (method "name" self) ]) ;;
      tt ;;
      tt
    else
      _crate.io._print
        (_crate.fmt.ImplArguments.new_v1
          [ ""; " gets a haircut!\n" ]
          [
            _crate.fmt.ImplArgumentV1.new_display
              (NamedField.get (name := "name") self)
          ]) ;;
      tt ;;
      assign (NamedField.get (name := "naked") self) true ;;
      tt.
  
  Global Instance M_shear : Method "shear" _ := {|
    method := shear;
  |}.
  Global Instance AF_shear : Sheep.AssociatedFunction "shear" _ := {|
    Sheep.associated_function := shear;
  |}.
End ImplSheep_2.

Definition main (_ : unit) : unit :=
  let dolly := (Animal.associated_function "new") "Dolly" in
  method "talk" dolly ;;
  method "shear" dolly ;;
  method "talk" dolly ;;
  tt.
