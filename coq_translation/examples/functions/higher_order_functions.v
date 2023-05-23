(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition is_odd (n : u32) : bool := (n.["rem"] 2).["eq"] 1.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "Find the sum of all the squared odd numbers under 1000
" ]) ;;
  tt ;;
  let upper := 1000 in
  let acc := 0 in
  match LangItem RangeFrom {| RangeFrom.start := 0; |} with
  | iter =>
    loop
      match LangItem iter with
      | None => Break
      | Some {| Some.0 := n; |} =>
        let n_squared := n.["mul"] n in
        if (n_squared.["ge"] upper : bool) then
          Break ;;
          tt
        else
          if (is_odd n_squared : bool) then
            acc.["add_assign"] n_squared ;;
            tt
          else
            tt
      end ;;
      tt
      from
      for
  end ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "imperative style: "; "
" ]
      [ format_argument::["new_display"] acc ]) ;;
  tt ;;
  let sum_of_squared_odd_numbers :=
    (((RangeFrom {| RangeFrom.start := 0; |}.["map"]
            (fun n => n.["mul"] n)).["take_while"]
          (fun n_squared => n_squared.["lt"] upper)).["filter"]
        (fun n_squared => is_odd n_squared)).["sum"] in
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "functional style: "; "
" ]
      [ format_argument::["new_display"] sum_of_squared_odd_numbers ]) ;;
  tt ;;
  tt.