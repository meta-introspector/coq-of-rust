(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit :=
  let collected_iterator :=
    {| Range.start := 0; Range.end := 10; |}.["collect"] in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Collected (0..10) into: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] collected_iterator ]) ;;
  tt ;;
  let xs := Slice::["into_vec"] [ 1; 2; 3 ] in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Initial vector: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] xs ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"] [ "Push 4 into the vector\n" ] [  ]) ;;
  tt ;;
  xs.["push"] 4 ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Vector: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] xs ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Vector length: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] xs.["len"] ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Second element: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] xs[1] ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Pop last element: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] xs.["pop"] ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"] [ "Contents of xs:\n" ] [  ]) ;;
  tt ;;
  match LangItem xs.["iter"] with
  | iter =>
    loop
      match LangItem iter with
      | None => Break
      | Some {| Some.0 := x; |} =>
        _crate.io._print
          (_crate.fmt.Arguments::["new_v1"]
            [ "> "; "\n" ]
            [ _crate.fmt.ArgumentV1::["new_display"] x ]) ;;
        tt ;;
        tt
      end ;;
      tt
      from
      for
  end ;;
  match LangItem xs.["iter"].["enumerate"] with
  | iter =>
    loop
      match LangItem iter with
      | None => Break
      | Some {| Some.0 := (i, x); |} =>
        _crate.io._print
          (_crate.fmt.Arguments::["new_v1"]
            [ "In position "; " we have value "; "\n" ]
            [
              _crate.fmt.ArgumentV1::["new_display"] i;
              _crate.fmt.ArgumentV1::["new_display"] x
            ]) ;;
        tt ;;
        tt
      end ;;
      tt
      from
      for
  end ;;
  match LangItem xs.["iter_mut"] with
  | iter =>
    loop
      match LangItem iter with
      | None => Break
      | Some {| Some.0 := x; |} =>
        (deref x).["mul_assign"] 3 ;;
        tt
      end ;;
      tt
      from
      for
  end ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Updated vector: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] xs ]) ;;
  tt ;;
  tt.

Definition main (_ : unit) : unit := test.
