(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition is_odd (n : u32) : bool := eqb (rem n 2) 1.

Definition main (_ : unit) : unit :=
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Find the sum of all the squared odd numbers under 1000\n"]
      []) ;;
  tt ;;
  let upper := 1000 in
  let acc := 0 in
  match into_iter {| RangeFrom.start := 0; |} with
  | iter =>
    loop
      match next iter with
      | {|  |} => Break
      | {| Some.0 := n; |} =>
        let n_squared := mul n n in
        if ge n_squared upper then
          Break ;;
          tt
        else
          if is_odd n_squared then
            assign acc := add acc n_squared ;;
            tt
          else
            tt
      end ;;
      tt
      from
      for
  end ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["imperative style: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display acc]) ;;
  tt ;;
  let sum_of_squared_odd_numbers :=
    method
      "sum"
      (method
        "filter"
        (method
          "take_while"
          (method "map" {| RangeFrom.start := 0; |} (fun n => mul n n))
          (fun n_squared => lt n_squared upper))
        (fun n_squared => is_odd n_squared)) in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["functional style: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display sum_of_squared_odd_numbers]) ;;
  tt ;;
  tt.
