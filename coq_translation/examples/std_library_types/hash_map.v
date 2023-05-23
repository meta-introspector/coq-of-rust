(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module HashMap := std.collections.HashMap.
Definition HashMap := HashMap.t.

Definition call (number : ref str) : ref str :=
  match number with
  | "798-1364" =>
    "We're sorry, the call cannot be completed as dialed. 
            Please hang up and try again."
  | "645-7689" =>
    "Hello, this is Mr. Awesome's Pizza. My name is Fred.
            What can I get for you today?"
  | _ => "Hi! Who is this again?"
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let contacts := HashMap::["new"] tt in
  contacts.["insert"] "Daniel" "798-1364" ;;
  contacts.["insert"] "Ashley" "645-7689" ;;
  contacts.["insert"] "Katie" "435-8291" ;;
  contacts.["insert"] "Robert" "956-1745" ;;
  match contacts.["get"] "Daniel" with
  | Some number =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "Calling Daniel: "; "
" ]
        [ format_argument::["new_display"] (call number) ]) ;;
    tt
  | _ =>
    _crate.io._print
      (format_arguments::["new_const"] [ "Don't have Daniel's number.
" ]) ;;
    tt
  end ;;
  contacts.["insert"] "Daniel" "164-6743" ;;
  match contacts.["get"] "Ashley" with
  | Some number =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "Calling Ashley: "; "
" ]
        [ format_argument::["new_display"] (call number) ]) ;;
    tt
  | _ =>
    _crate.io._print
      (format_arguments::["new_const"] [ "Don't have Ashley's number.
" ]) ;;
    tt
  end ;;
  contacts.["remove"] "Ashley" ;;
  match LangItem contacts.["iter"] with
  | iter =>
    loop
      match LangItem iter with
      | None => Break
      | Some {| Some.0 := (contact, number); |} =>
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "Calling "; ": "; "
" ]
            [
              format_argument::["new_display"] contact;
              format_argument::["new_display"] (call number)
            ]) ;;
        tt ;;
        tt
      end ;;
      tt
      from
      for
  end.