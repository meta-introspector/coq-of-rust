(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn increase(number: i32) {
    println!("{}", number + 1);
}
*)
Definition increase (number : M.Val i32.t) : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
        let* α4 : ltac:(refine (M.Val i32.t)) := BinOp.add number α3 in
        let* α5 : ltac:(refine (M.Val (ref i32.t))) := borrow α4 in
        let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α7 in
        let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α9 in
        std.io.stdio._print α10 in
      M.alloc tt in
    M.alloc tt).

(*
fn decrease(number: i32) {
    println!("{}", number - 1);
}
*)
Definition decrease (number : M.Val i32.t) : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
        let* α4 : ltac:(refine (M.Val i32.t)) := BinOp.sub number α3 in
        let* α5 : ltac:(refine (M.Val (ref i32.t))) := borrow α4 in
        let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α7 in
        let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α9 in
        std.io.stdio._print α10 in
      M.alloc tt in
    M.alloc tt).

(*
fn help() {
    println!(
        "usage:
match_args <string>
    Check whether given string is the answer.
match_args {{increase|decrease}} <integer>
    Increase or decrease given integer by one."
    );
}
*)
Definition help : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [
              mk_str
                "usage:
match_args <string>
    Check whether given string is the answer.
match_args {increase|decrease} <integer>
    Increase or decrease given integer by one.
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    M.alloc tt).

(*
fn main() {
    let args: Vec<String> = env::args().collect();

    match args.len() {
        // no arguments passed
        1 => {
            println!("My name is 'match_args'. Try passing some arguments!");
        }
        // one argument passed
        2 => match args[1].parse() {
            Ok(42) => println!("This is the answer!"),
            _ => println!("This is not the answer."),
        },
        // one command and one argument passed
        3 => {
            let cmd = &args[1];
            let num = &args[2];
            // parse the number
            let number: i32 = match num.parse() {
                Ok(n) => n,
                Err(_) => {
                    eprintln!("error: second argument not an integer");
                    help();
                    return;
                }
            };
            // parse the command
            match &cmd[..] {
                "increase" => increase(number),
                "decrease" => decrease(number),
                _ => {
                    eprintln!("error: invalid command");
                    help();
                }
            }
        }
        // all the other cases
        _ => {
            // show a help message
            help();
        }
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* args :
        ltac:(refine
          (M.Val
            (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t))) :=
      let* α0 : ltac:(refine (M.Val std.env.Args.t)) := std.env.args in
      let* α1 :
          ltac:(refine
            (M.Val
              (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t))) :=
        (core.iter.traits.iterator.Iterator.collect
            (Self := std.env.Args.t)
            (Trait := ltac:(refine _)))
          α0 in
      M.copy α1 in
    let* α0 :
        ltac:(refine
          (M.Val
            (ref
              (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)))) :=
      borrow args in
    let* α1 : ltac:(refine (M.Val usize.t)) :=
      (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)::["len"]
        α0 in
    let* α2 := M.read α1 in
    match α2 with
    | _ =>
      let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc
              [ mk_str "My name is 'match_args'. Try passing some arguments!
"
              ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt in
      M.alloc tt
    | _ =>
      let* α0 :
          ltac:(refine
            (M.Val
              (ref
                (alloc.vec.Vec.t
                  alloc.string.String.t
                  alloc.alloc.Global.t)))) :=
        borrow args in
      let* α1 : ltac:(refine (M.Val usize.t)) := M.alloc 1 in
      let* α2 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
        (core.ops.index.Index.index
            (Self := alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α0
          α1 in
      let* α3 : ltac:(refine (M.Val alloc.string.String.t)) := deref α2 in
      let* α4 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
        borrow α3 in
      let* α5 : ltac:(refine (M.Val (ref str.t))) :=
        (core.ops.deref.Deref.deref
            (Self := alloc.string.String.t)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : ltac:(refine (M.Val str.t)) := deref α5 in
      let* α7 : ltac:(refine (M.Val (ref str.t))) := borrow α6 in
      let* α8 :
          ltac:(refine
            (M.Val
              (core.result.Result.t i32.t core.num.error.ParseIntError.t))) :=
        str.t::["parse"] α7 in
      let* α9 := M.read α8 in
      match α9 with
      | core.result.Result.Ok _ =>
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "This is the answer!
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt
      | _ =>
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "This is not the answer.
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt
      end
    | _ =>
      let* cmd : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
        let* α0 :
            ltac:(refine
              (M.Val
                (ref
                  (alloc.vec.Vec.t
                    alloc.string.String.t
                    alloc.alloc.Global.t)))) :=
          borrow args in
        let* α1 : ltac:(refine (M.Val usize.t)) := M.alloc 1 in
        let* α2 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          (core.ops.index.Index.index
              (Self :=
                alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α0
            α1 in
        let* α3 : ltac:(refine (M.Val alloc.string.String.t)) := deref α2 in
        let* α4 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          borrow α3 in
        M.copy α4 in
      let* num : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
        let* α0 :
            ltac:(refine
              (M.Val
                (ref
                  (alloc.vec.Vec.t
                    alloc.string.String.t
                    alloc.alloc.Global.t)))) :=
          borrow args in
        let* α1 : ltac:(refine (M.Val usize.t)) := M.alloc 2 in
        let* α2 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          (core.ops.index.Index.index
              (Self :=
                alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α0
            α1 in
        let* α3 : ltac:(refine (M.Val alloc.string.String.t)) := deref α2 in
        let* α4 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          borrow α3 in
        M.copy α4 in
      let* number : ltac:(refine (M.Val i32.t)) :=
        let* α0 : ltac:(refine (M.Val alloc.string.String.t)) := deref num in
        let* α1 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref str.t))) :=
          (core.ops.deref.Deref.deref
              (Self := alloc.string.String.t)
              (Trait := ltac:(refine _)))
            α1 in
        let* α3 : ltac:(refine (M.Val str.t)) := deref α2 in
        let* α4 : ltac:(refine (M.Val (ref str.t))) := borrow α3 in
        let* α5 :
            ltac:(refine
              (M.Val
                (core.result.Result.t i32.t core.num.error.ParseIntError.t))) :=
          str.t::["parse"] α4 in
        let* α6 := M.read α5 in
        let* α7 : ltac:(refine (M.Val i32.t)) :=
          match α6 with
          | core.result.Result.Ok n =>
            let* n := M.alloc n in
            M.pure n
          | core.result.Result.Err _ =>
            let* _ : ltac:(refine (M.Val unit)) :=
              let* _ : ltac:(refine (M.Val unit)) :=
                let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
                  M.alloc [ mk_str "error: second argument not an integer
" ] in
                let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
                  borrow α0 in
                let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
                  pointer_coercion "Unsize" α1 in
                let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
                  core.fmt.Arguments.t::["new_const"] α2 in
                std.io.stdio._eprint α3 in
              M.alloc tt in
            let* _ : ltac:(refine (M.Val unit)) :=
              program_arguments_parsing.help in
            let* _ : ltac:(refine (M.Val never.t)) :=
              let* α0 : ltac:(refine (M.Val unit)) := M.alloc tt in
              M.return_ α0 in
            let* α0 : ltac:(refine (M.Val unit)) := M.alloc tt in
            never_to_any α0
          end in
        M.copy α7 in
      let* α0 : ltac:(refine (M.Val alloc.string.String.t)) := deref cmd in
      let* α1 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
        borrow α0 in
      let* α2 : ltac:(refine (M.Val core.ops.range.RangeFull.t)) :=
        M.alloc core.ops.range.RangeFull.Build_t in
      let* α3 : ltac:(refine (M.Val (ref str.t))) :=
        (core.ops.index.Index.index
            (Self := alloc.string.String.t)
            (Trait := ltac:(refine _)))
          α1
          α2 in
      let* α4 : ltac:(refine (M.Val str.t)) := deref α3 in
      let* α5 : ltac:(refine (M.Val (ref str.t))) := borrow α4 in
      let* α6 := M.read α5 in
      match α6 with
      | _ => program_arguments_parsing.increase number
      | _ => program_arguments_parsing.decrease number
      | _ =>
        let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
              M.alloc [ mk_str "error: invalid command
" ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_const"] α2 in
            std.io.stdio._eprint α3 in
          M.alloc tt in
        let* _ : ltac:(refine (M.Val unit)) := program_arguments_parsing.help in
        M.alloc tt
      end
    | _ =>
      let* _ : ltac:(refine (M.Val unit)) := program_arguments_parsing.help in
      M.alloc tt
    end).
