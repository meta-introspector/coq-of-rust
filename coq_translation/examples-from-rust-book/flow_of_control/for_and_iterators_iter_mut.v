(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) : unit :=
  let names := ComplexTypePath.into_vec ["Bob";"Frank";"Ferris"] in
  match into_iter (method "iter_mut" names) with
  | iter =>
    loop
      match next iter with
      | {|  |} => Break
      | {| Some.0 := name; |} =>
        assign
          deref name
          :=
          match name with
          | Str("Ferris", Cooked) => "There is a rustacean among us!"
          | _ => "Hello"
          end
      end ;;
      tt
      from
      for
  end ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["names: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug names]) ;;
  tt ;;
  tt.
