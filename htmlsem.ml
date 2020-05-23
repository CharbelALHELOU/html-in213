open Htmlast;;

type htmlval =
  | Intval of int
  | Stringval of string
  | Brval
  | Tagval of {tag:string; body: htmlval; c: string }
  | Imgval of {src:string; alt:string; c: string }
  | Linkval of {link:string; body:htmlval; c: string}
  | Seqval of (htmlval * htmlval)

and environment = (string * htmlval) list
;;


let rec printval = function
  | Intval n -> Printf.printf "%d" n
  | Stringval s -> Printf.printf "%s" s
  | Brval -> Printf.printf "<br>"
  | Tagval b -> Printf.printf "\n<%s class='%s'>" b.tag b.c ; printval b.body ; Printf.printf "</%s>" b.tag
  | Imgval i -> Printf.printf "\n<img class ='%s' src='%s' alt='%s' >" i.c i.src i.alt
  | Linkval h -> Printf.printf "\n<a class='%s' href='%s'>" h.c h.link ; printval h.body ; Printf.printf "</a>"
  | Seqval (e1, e2) -> printval e1;Printf.printf " "; printval e2
;;

(* Environnement. *)
let init_env = [] ;;

let error msg = raise (Failure msg) ;;

let extend rho x v = (x, v) :: rho ;;

let lookup var_name rho =
  try List.assoc var_name rho
  with Not_found -> error (Printf.sprintf "Undefined ident '%s'" var_name)
;;


let rec eval e rho =
  match e with
  | EInt n -> Intval n
  | EString s -> Stringval s
  | EBR -> Brval
  | EImg (cl,s,a) -> Imgval {src = s; alt= a; c = cl}
  | ELink (l,cl,e) -> Linkval {link = l; body = (eval e rho); c=cl}
  | ETag (t,cl,id,e) -> Tagval { tag = t; c = cl ; body = (eval e rho) }
  | Eseq (e1, e2) -> Seqval (eval e1 rho, eval e2 rho)
;;


let eval e = eval e init_env ;;