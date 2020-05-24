open Htmlast;;

type htmlval =
  | Intval of int
  | Stringval of string
  | Brval
  | Tagval of {tag:string; body: htmlval; c: string }
  | Imgval of {src:string; alt:string; c: string }
  | Linkval of {link:string; body:htmlval; c: string}
  | Listval of {c:string ; items: (string * htmlval) list}
  | Seqval of (htmlval * htmlval)

and environment = (string * htmlval) list
;;


let rec printval oc = function
  | Intval n -> Printf.fprintf oc "%d" n
  | Stringval s -> Printf.fprintf oc "%s" s
  | Brval -> Printf.fprintf oc "<br>"
  | Tagval b -> Printf.fprintf oc "\n<%s class='%s'>" b.tag b.c ; printval oc b.body ; Printf.fprintf oc "</%s>" b.tag
  | Imgval i -> Printf.fprintf oc "\n<img class ='%s' src='%s' alt='%s' >" i.c i.src i.alt
  | Linkval h -> Printf.fprintf oc "\n<a class='%s' href='%s'>" h.c h.link ; printval oc h.body ; Printf.fprintf oc "</a>"
  | Seqval (e1, e2) -> printval oc e1;Printf.fprintf oc " "; printval oc e2
  | Listval l -> (
    let rec aux=function
    | (cl,h)::t -> Printf.fprintf oc "<li class='%s'>" cl; printval oc h;Printf.fprintf oc "</li>\n"; aux t;
    | [] -> () in
    Printf.fprintf oc "\n<ul class='%s'>\n" l.c ; aux l.items; Printf.fprintf oc "</ul>"
  )
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
  | EIdent v -> lookup v rho
  | EBR -> Brval
  | EImg (cl,s,a) -> Imgval {src = s; alt= a; c = cl}
  | ELink (l,cl,e) -> Linkval {link = l; body = (eval e rho); c=cl}
  | ETag (t,cl,id,e) -> Tagval { tag = t; c = cl ; body = (eval e rho) }
  | Eseq (e1, e2) -> Seqval (eval e1 rho, eval e2 rho)
  | ELet (x, e1, e2) -> eval e2 (extend rho x (eval e1 rho))
  | EList (cl,l) -> (
    let rec aux = function
    | (clh,h) ::t -> (clh,(eval h rho))::(aux t)
    | [] -> [] in
    Listval {c = cl; items = (aux l)}
  )
;;


let eval e = eval e init_env ;;