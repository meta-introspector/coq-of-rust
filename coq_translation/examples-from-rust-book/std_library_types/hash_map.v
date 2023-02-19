(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition call (_ : unit) :=
  match number with
  | Str("798-1364", Cooked) =>
    "We're sorry, the call cannot be completed as dialed. \n            Please hang up and try again."
  | Str("645-7689", Cooked) =>
    "Hello, this is Mr. Awesome's Pizza. My name is Fred.\n            What can I get for you today?"
  | _ => "Hi! Who is this again?"
  end.

Definition main (_ : unit) :=
  let contacts := ImplHashMap.new tt in
  insert contacts "Daniel" "798-1364" ;;
  insert contacts "Ashley" "645-7689" ;;
  insert contacts "Katie" "435-8291" ;;
  insert contacts "Robert" "956-1745" ;;
  match get contacts "Daniel" with
  | Some (number) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Calling Daniel: ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display (call number)]) ;;
    tt
  | _ =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Don't have Daniel's number.\n"]
        []) ;;
    tt
  end ;;
  insert contacts "Daniel" "164-6743" ;;
  match get contacts "Ashley" with
  | Some (number) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Calling Ashley: ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display (call number)]) ;;
    tt
  | _ =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Don't have Ashley's number.\n"]
        []) ;;
    tt
  end ;;
  remove contacts "Ashley" ;;
  match into_iter (iter contacts) with
  | iter =>
    loop
      match next iter with
      | {|  |} => Break
      | {| Some.0 := (contact, number); |} =>
        _crate.io._print
          (_crate::fmt::ImplArguments.new_v1
            ["Calling ";": ";"\n"]
            [_crate::fmt::ImplArgumentV1.new_display
              contact;_crate::fmt::ImplArgumentV1.new_display (call number)]) ;;
        tt ;;
        tt
      end ;;
      tt
      from
      for
  end.
