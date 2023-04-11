(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit := sum_odd_numbers.

Definition sum_odd_numbers (up_to : u32) : u32 :=
  let acc := 0 in
  match LangItem {| Range.start := 0; Range.end := up_to; |} with
  | iter =>
    loop
      match LangItem iter with
      | None => Break
      | Some {| Some.0 := i; |} =>
        let addition :=
          match (i.["rem"] 2).["eq"] 1 with
          | Bool(true) => i
          | Bool(false) => Continue
          end in
        assign acc (add acc addition) ;;
        tt
      end ;;
      tt
      from
      for
  end ;;
  acc.
