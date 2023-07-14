(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let data :=
    "86967897737416471853297327050364959
11861322575564723963297542624962850
70856234701860851907960690014725639
38397966707106094172783238747669219
52380795257888236525459303330302837
58495327135744041048897885734297812
69920216438980873548808413720956532
16278424637452589860345374828574668" in
  let* children := alloc.vec.Vec::["new"] tt in
  let* chunked_data := data.["split_whitespace"] in
  let* _ :=
    let* α0 := chunked_data.["enumerate"] in
    let* α1 := LangItem α0 in
    match α1 with
    | iter =>
      loop
        let* _ :=
          let* α0 := LangItem (addr_of iter) in
          match α0 with
          | None => Pure Break
          | Some {| Some.0 := (i, data_segment); |} =>
            let* _ :=
              let* _ :=
                let* α0 := format_argument::["new_display"] (addr_of i) in
                let* α1 :=
                  format_argument::["new_display"] (addr_of data_segment) in
                let* α2 :=
                  format_arguments::["new_v1"]
                    (addr_of [ "data segment "; " is ""; ""
" ])
                    (addr_of [ α0; α1 ]) in
                std.io.stdio._print α2 in
              Pure tt in
            let* _ :=
              let* α0 :=
                std.thread.spawn
                  (fun  =>
                    let* result :=
                      let* α0 := data_segment.["chars"] in
                      let* α1 :=
                        α0.["map"]
                          (fun c =>
                            let* α0 := c.["to_digit"] 10 in
                            α0.["expect"] "should be a digit") in
                      α1.["sum"] in
                    let* _ :=
                      let* _ :=
                        let* α0 :=
                          format_argument::["new_display"] (addr_of i) in
                        let* α1 :=
                          format_argument::["new_display"] (addr_of result) in
                        let* α2 :=
                          format_arguments::["new_v1"]
                            (addr_of [ "processed segment "; ", result="; "
" ])
                            (addr_of [ α0; α1 ]) in
                        std.io.stdio._print α2 in
                      Pure tt in
                    Pure result) in
              children.["push"] α0 in
            Pure tt
          end in
        Pure tt
        from
        for
    end in
  let* final_result :=
    let* α0 := children.["into_iter"] in
    let* α1 :=
      α0.["map"]
        (fun c =>
          let* α0 := c.["join"] in
          α0.["unwrap"]) in
    α1.["sum"] in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of final_result) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Final sum result: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.
