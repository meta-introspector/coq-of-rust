(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error Enum.

Error Enum.

Definition main (_ : unit) :=
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["zero is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display Number.Zero]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["one is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display Number.One]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1_formatted
      ["roses are #";"\n"]
      [_crate::fmt::ImplArgumentV1.new_lower_hex Color.Red]
      [{|
        _crate.fmt.rt.v1.Argument.position := 0;
        _crate.fmt.rt.v1.Argument.format
          :=
          {|
            _crate.fmt.rt.v1.FormatSpec.fill :=  ;
            _crate.fmt.rt.v1.FormatSpec.align
              :=
              _crate.fmt.rt.v1.Alignment.Unknown;
            _crate.fmt.rt.v1.FormatSpec.flags := 8;
            _crate.fmt.rt.v1.FormatSpec.precision
              :=
              _crate.fmt.rt.v1.Count.Implied;
            _crate.fmt.rt.v1.FormatSpec.width := _crate.fmt.rt.v1.Count.Is 6;
          |};
      |}]
      (_crate::fmt::ImplUnsafeArg.new tt)) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1_formatted
      ["violets are #";"\n"]
      [_crate::fmt::ImplArgumentV1.new_lower_hex Color.Blue]
      [{|
        _crate.fmt.rt.v1.Argument.position := 0;
        _crate.fmt.rt.v1.Argument.format
          :=
          {|
            _crate.fmt.rt.v1.FormatSpec.fill :=  ;
            _crate.fmt.rt.v1.FormatSpec.align
              :=
              _crate.fmt.rt.v1.Alignment.Unknown;
            _crate.fmt.rt.v1.FormatSpec.flags := 8;
            _crate.fmt.rt.v1.FormatSpec.precision
              :=
              _crate.fmt.rt.v1.Count.Implied;
            _crate.fmt.rt.v1.FormatSpec.width := _crate.fmt.rt.v1.Count.Is 6;
          |};
      |}]
      (_crate::fmt::ImplUnsafeArg.new tt)) ;;
  tt ;;
  tt.
