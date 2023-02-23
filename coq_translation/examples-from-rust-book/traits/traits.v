(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Sheep.
  Record t : Set := {
    naked : bool;
    name : ref str;
  }.
End Sheep.
Definition Sheep : Set := Sheep.t.

Module Animal.
  Class Class (Self : Set) : Set := {
    new : (ref str) -> Self;
    name : (ref Self) -> (ref str);
    noise : (ref Self) -> (ref str);
    talk : (ref Self) -> _;
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
    method := talk;
  |}.
End Animal.

(* Impl [Sheep] *)
Module ImplSheep.
  Definition is_naked (self : ref Sheep) : bool := self.naked.
  
  Definition shear (self : mut_ref Sheep) :=
    if method "is_naked" self then
      _crate.io._print
        (_crate::fmt::ImplArguments.new_v1
          ["";" is already naked...\n"]
          [_crate::fmt::ImplArgumentV1.new_display (method "name" self)]) ;;
      tt ;;
      tt
    else
      _crate.io._print
        (_crate::fmt::ImplArguments.new_v1
          ["";" gets a haircut!\n"]
          [_crate::fmt::ImplArgumentV1.new_display self.name]) ;;
      tt ;;
      assign self.naked := true ;;
      tt.
End ImplSheep.
(* End impl [Sheep] *)

Module Impl_Animal_for_Sheep.
  Definition Self := Sheep.
  
  Global Instance I : Animal.Class Self := {|
    Animal.new (name : ref str) :=
      {| Sheep.name := name; Sheep.naked := false; |};
    Animal.name (self : ref Sheep) := self.name;
    Animal.noise (self : ref Sheep) :=
      if method "is_naked" self then
        "baaaaah?"
      else
        "baaaaah!";
    Animal.talk (self : ref Sheep) :=
      _crate.io._print
        (_crate::fmt::ImplArguments.new_v1
          ["";" pauses briefly... ";"\n"]
          [_crate::fmt::ImplArgumentV1.new_display
            self.name;_crate::fmt::ImplArgumentV1.new_display
            (method "noise" self)]) ;;
      tt ;;
      tt;
  |}.
Module ImplSheep.

Definition main (_ : unit) : unit :=
  let dolly := Animal.new "Dolly" in
  method "talk" dolly ;;
  method "shear" dolly ;;
  method "talk" dolly ;;
  tt.
