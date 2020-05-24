let version = "0.01" ;;

let usage () =
  let _ =
    Printf.eprintf
      "Usage: %s [file]\n\tRead a Html program from file (default is stdin)\n%!"
    Sys.argv.(0) in
  exit 1
;;

let main() =
  let input_channel =
    match Array.length Sys.argv with
    | 1 -> stdin
    | 2 -> (
        match Sys.argv.(1) with
        | "-" -> stdin
        | name ->
            (try open_in name with
            |_ -> Printf.eprintf "Opening %s failed\n%!" name; exit 1)
       )
    | n -> usage () in
  let _ = Printf.printf "        Welcome to Html, version %s\n%!" version in
  let lexbuf = Lexing.from_channel input_channel in
  while true do
    try
      let _ = Printf.printf  " %!" in
      let e = Htmlparse.main Htmllex.lex lexbuf in
      let _ = Htmlsem.printval (Htmlsem.eval e) in
      Printf.printf "\n%!"
    with
    | Htmllex.Eoi -> Printf.printf  "\nBye bye.\n%!" ; exit 0
    | Failure msg -> Printf.printf "Erreur: %s\n\n" msg
    | Parsing.Parse_error -> Printf.printf "Erreur de syntaxe\n\n"
  done
;;

if !Sys.interactive then () else main () ;;
