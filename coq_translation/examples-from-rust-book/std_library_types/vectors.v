(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

Definition u8 : Set := Z.

(* Approximation *)
Definition f64 : Set := Z.

Definition main (_ : unit) :=
  let collected_iterator := collect {| Range.start := 0; Range.end := 10; |} in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Collected (0..10) into: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug collected_iterator]) ;;
  tt ;;
  let xs := ComplexTypePath.into_vec [1;2;3] in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Initial vector: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug xs]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["Push 4 into the vector\n"] []) ;;
  tt ;;
  push xs 4 ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Vector: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug xs]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Vector length: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display (len xs)]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Second element: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display xs[1]]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Pop last element: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug (pop xs)]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["Contents of xs:\n"] []) ;;
  tt ;;
  match into_iter (iter xs) with
  | iter =>
    loop match next iter with
    | {|  |} => Break
    | {| Some.0 := x; |} =>
      _crate.io._print
        (_crate::fmt::ImplArguments.new_v1
          ["> ";"\n"]
          [_crate::fmt::ImplArgumentV1.new_display x]) ;;
      tt ;;
      tt
    end ;;
    tt from for
  end ;;
  match into_iter (enumerate (iter xs)) with
  | iter =>
    loop match next iter with
    | {|  |} => Break
    | {| Some.0 := (i, x); |} =>
      _crate.io._print
        (_crate::fmt::ImplArguments.new_v1
          ["In position ";" we have value ";"\n"]
          [_crate::fmt::ImplArgumentV1.new_display
            i;_crate::fmt::ImplArgumentV1.new_display x]) ;;
      tt ;;
      tt
    end ;;
    tt from for
  end ;;
  match into_iter (iter_mut xs) with
  | iter =>
    loop match next iter with
    | {|  |} => Break
    | {| Some.0 := x; |} =>
      assign deref x := mul (deref x) 3 ;;
      tt
    end ;;
    tt from for
  end ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Updated vector: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug xs]) ;;
  tt ;;
  tt.