(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition create_box (_ : unit) : unit :=
  let _box1 := Box::["new"] 3 in
  tt.

Definition main (_ : unit) : unit :=
  let _box2 := Box::["new"] 5 in
  let _box3 := Box::["new"] 4 in
  tt ;;
  match LangItem {| Range.start := 0; Range.end := 1000; |} with
  | iter =>
    loop
      match LangItem iter with
      | None => Break
      | Some {| Some.0 := _; |} =>
        create_box tt ;;
        tt
      end ;;
      tt
      from
      for
  end.

Definition main (_ : unit) : unit := test.
