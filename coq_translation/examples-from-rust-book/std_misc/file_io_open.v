(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) :=
  let path := ImplPath.new "hello.txt" in
  let display := method "display" path in
  let file :=
    match ImplFile.open path with
    | Err (why) =>
      _crate.rt.panic_fmt
        (_crate::fmt::ImplArguments.new_v1
          ["couldn't open ";": "]
          [_crate::fmt::ImplArgumentV1.new_display
            display;_crate::fmt::ImplArgumentV1.new_display why])
    | Ok (file) => file
    end in
  let s := ImplString.new tt in
  match method "read_to_string" file s with
  | Err (why) =>
    _crate.rt.panic_fmt
      (_crate::fmt::ImplArguments.new_v1
        ["couldn't read ";": "]
        [_crate::fmt::ImplArgumentV1.new_display
          display;_crate::fmt::ImplArgumentV1.new_display why])
  | Ok (_) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["";" contains:\n"]
        [_crate::fmt::ImplArgumentV1.new_display
          display;_crate::fmt::ImplArgumentV1.new_display s]) ;;
    tt
  end.
