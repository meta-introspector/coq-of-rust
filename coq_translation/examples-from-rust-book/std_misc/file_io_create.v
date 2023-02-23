(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition LOREM_IPSUM (_ : unit) :=
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n".

Definition main (_ : unit) : unit :=
  let path := ImplPath.new "lorem_ipsum.txt" in
  let display := method "display" path in
  let file :=
    match ImplFile.create path with
    | Err (why) =>
      _crate.rt.panic_fmt
        (_crate::fmt::ImplArguments.new_v1
          ["couldn't create ";": "]
          [_crate::fmt::ImplArgumentV1.new_display
            display;_crate::fmt::ImplArgumentV1.new_display why])
    | Ok (file) => file
    end in
  match method "write_all" file (method "as_bytes" LOREM_IPSUM) with
  | Err (why) =>
    _crate.rt.panic_fmt
      (_crate::fmt::ImplArguments.new_v1
        ["couldn't write to ";": "]
        [_crate::fmt::ImplArgumentV1.new_display
          display;_crate::fmt::ImplArgumentV1.new_display why])
  | Ok (_) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["successfully wrote to ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display display]) ;;
    tt
  end.
