(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) : unit :=
  let vec1 := ComplexTypePath.into_vec [ 1; 2; 3 ] in
  let vec2 := ComplexTypePath.into_vec [ 4; 5; 6 ] in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "2 in vec1: "; "\n" ]
      [
        _crate.fmt.ImplArgumentV1.new_display
          (method "any" (method "iter" vec1) (fun x => eqb x 2))
      ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "2 in vec2: "; "\n" ]
      [
        _crate.fmt.ImplArgumentV1.new_display
          (method "any" (method "into_iter" vec2) (fun x => eqb x 2))
      ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "vec1 len: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (method "len" vec1) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "First element of vec1 is: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display vec1[0] ]) ;;
  tt ;;
  let array1 := [ 1; 2; 3 ] in
  let array2 := [ 4; 5; 6 ] in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "2 in array1: "; "\n" ]
      [
        _crate.fmt.ImplArgumentV1.new_display
          (method "any" (method "iter" array1) (fun x => eqb x 2))
      ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "2 in array2: "; "\n" ]
      [
        _crate.fmt.ImplArgumentV1.new_display
          (method "any" (method "into_iter" array2) (fun x => eqb x 2))
      ]) ;;
  tt ;;
  tt.
