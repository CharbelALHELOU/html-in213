(* Ce fichier contient la d�finition du type OCaml des arbres de
 * syntaxe abstraite du langage, ainsi qu'un imprimeur des phrases
 * du langage.
*)

type expr =
  | EInt of int                                 (* 1, 2, 3 *)
  | EString of string                           (* "hello" *)
  | EBR
  | ETag of ( string * string * string * expr )
  | EImg of ( string * string * string )
  | ELink of ( string * string * expr )
  | Eseq of (expr * expr )
  | EList of (string * expr list)
;;


let rec print oc = Printf.printf "HEYYYYYYY";;
