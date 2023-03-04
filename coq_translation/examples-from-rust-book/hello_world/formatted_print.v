(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit :=
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ ""; " days\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display 31 ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1_formatted
      [ ""; ", this is "; ". "; ", this is "; "\n" ]
      [
        _crate.fmt.ImplArgumentV1.new_display "Alice";
        _crate.fmt.ImplArgumentV1.new_display "Bob"
      ]
      [
        {|
          _crate.fmt.rt.v1.Argument.position := 0;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill :=  ;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Unknown;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width :=
                _crate.fmt.rt.v1.Count.Implied;
            |};
        |};
        {|
          _crate.fmt.rt.v1.Argument.position := 1;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill :=  ;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Unknown;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width :=
                _crate.fmt.rt.v1.Count.Implied;
            |};
        |};
        {|
          _crate.fmt.rt.v1.Argument.position := 1;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill :=  ;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Unknown;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width :=
                _crate.fmt.rt.v1.Count.Implied;
            |};
        |};
        {|
          _crate.fmt.rt.v1.Argument.position := 0;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill :=  ;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Unknown;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width :=
                _crate.fmt.rt.v1.Count.Implied;
            |};
        |}
      ]
      (_crate.fmt.ImplUnsafeArg.new tt)) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ ""; " "; " "; "\n" ]
      match ("the lazy dog", "the quick brown fox", "jumps over") with
      | args =>
        [
          _crate.fmt.ImplArgumentV1.new_display
            (IndexedField.get (index := 1) args);
          _crate.fmt.ImplArgumentV1.new_display
            (IndexedField.get (index := 2) args);
          _crate.fmt.ImplArgumentV1.new_display
            (IndexedField.get (index := 0) args)
        ]
      end) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "Base 10:               "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display 69420 ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "Base 2 (binary):       "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_binary 69420 ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "Base 8 (octal):        "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_octal 69420 ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "Base 16 (hexadecimal): "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_lower_hex 69420 ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "Base 16 (hexadecimal): "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_upper_hex 69420 ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1_formatted
      [ ""; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display 1 ]
      [
        {|
          _crate.fmt.rt.v1.Argument.position := 0;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill :=  ;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Right;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width := _crate.fmt.rt.v1.Count.Is 5;
            |};
        |}
      ]
      (_crate.fmt.ImplUnsafeArg.new tt)) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1_formatted
      [ ""; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display 1 ]
      [
        {|
          _crate.fmt.rt.v1.Argument.position := 0;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill := 0;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Left;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width := _crate.fmt.rt.v1.Count.Is 5;
            |};
        |}
      ]
      (_crate.fmt.ImplUnsafeArg.new tt)) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1_formatted
      [ ""; "\n" ]
      [
        _crate.fmt.ImplArgumentV1.new_display 1;
        _crate.fmt.ImplArgumentV1.from_usize 5
      ]
      [
        {|
          _crate.fmt.rt.v1.Argument.position := 0;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill := 0;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Right;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width :=
                _crate.fmt.rt.v1.Count.Param 1;
            |};
        |}
      ]
      (_crate.fmt.ImplUnsafeArg.new tt)) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1_formatted
      [ "My name is "; ", "; " "; "\n" ]
      [
        _crate.fmt.ImplArgumentV1.new_display "Bond";
        _crate.fmt.ImplArgumentV1.new_display "James"
      ]
      [
        {|
          _crate.fmt.rt.v1.Argument.position := 0;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill :=  ;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Unknown;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width :=
                _crate.fmt.rt.v1.Count.Implied;
            |};
        |};
        {|
          _crate.fmt.rt.v1.Argument.position := 1;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill :=  ;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Unknown;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width :=
                _crate.fmt.rt.v1.Count.Implied;
            |};
        |};
        {|
          _crate.fmt.rt.v1.Argument.position := 0;
          _crate.fmt.rt.v1.Argument.format :=
            {|
              _crate.fmt.rt.v1.FormatSpec.fill :=  ;
              _crate.fmt.rt.v1.FormatSpec.align :=
                _crate.fmt.rt.v1.Alignment.Unknown;
              _crate.fmt.rt.v1.FormatSpec.flags := 0;
              _crate.fmt.rt.v1.FormatSpec.precision :=
                _crate.fmt.rt.v1.Count.Implied;
              _crate.fmt.rt.v1.FormatSpec.width :=
                _crate.fmt.rt.v1.Count.Implied;
            |};
        |}
      ]
      (_crate.fmt.ImplUnsafeArg.new tt)) ;;
  tt ;;
  Structure.

Module Structure.
  Inductive t : Set := Build (_ : i32).
  
  Global Instance Get_0 : IndexedField.Class t 0 _ := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End Structure.
Definition Structure := Structure.t.
