
type expr =
  | EInt of int                                 
  | EString of string  
  | EIdent of string                         
  | EBR
  | ETag of ( string * string * string * expr )
  | EImg of ( string * string * string )
  | ELink of ( string * string * expr )
  | Eseq of (expr * expr )
  | EList of (string * ((string * expr) list) )
  | ELet of (string * expr * expr)
;;
