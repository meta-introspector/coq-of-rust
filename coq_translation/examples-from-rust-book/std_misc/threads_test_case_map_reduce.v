(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) : unit :=
  let data :=
    "86967897737416471853297327050364959\n11861322575564723963297542624962850\n70856234701860851907960690014725639\n38397966707106094172783238747669219\n52380795257888236525459303330302837\n58495327135744041048897885734297812\n69920216438980873548808413720956532\n16278424637452589860345374828574668" in
  let children := _crate::vec::ImplVec.new tt in
  let chunked_data := method "split_whitespace" data in
  match into_iter (method "enumerate" chunked_data) with
  | iter =>
    loop
      match next iter with
      | {|  |} => Break
      | {| Some.0 := (i, data_segment); |} =>
        _crate.io._print
          (_crate::fmt::ImplArguments.new_v1
            ["data segment ";" is \"";"\"\n"]
            [_crate::fmt::ImplArgumentV1.new_display
              i;_crate::fmt::ImplArgumentV1.new_display data_segment]) ;;
        tt ;;
        method
          "push"
          children
          (thread.spawn
            (fun  =>
              let result :=
                method
                  "sum"
                  (method
                    "map"
                    (method "chars" data_segment)
                    (fun c =>
                      method
                        "expect"
                        (method "to_digit" c 10)
                        "should be a digit")) in
              _crate.io._print
                (_crate::fmt::ImplArguments.new_v1
                  ["processed segment ";", result=";"\n"]
                  [_crate::fmt::ImplArgumentV1.new_display
                    i;_crate::fmt::ImplArgumentV1.new_display result]) ;;
              tt ;;
              result)) ;;
        tt
      end ;;
      tt
      from
      for
  end ;;
  let final_result :=
    method
      "sum"
      (method
        "map"
        (method "into_iter" children)
        (fun c => method "unwrap" (method "join" c))) in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Final sum result: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display final_result]) ;;
  tt ;;
  tt.
