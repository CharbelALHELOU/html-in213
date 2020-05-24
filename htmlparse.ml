type token =
  | INT of (int)
  | STRING of (string)
  | TAG of (string)
  | IDENT of (string)
  | CLASS of (string)
  | PLUS
  | MOINS
  | DIV
  | MULT
  | H1
  | H2
  | H3
  | H4
  | H5
  | H6
  | PAR
  | BR
  | IMG
  | HLINK
  | LINK
  | LIST
  | ARROW
  | SEMICOLON
  | RIGHTBRACKET
  | LEFTBRACKET
  | LEFTPAR
  | RIGHTPAR
  | COMMA

open Parsing;;
let _ = parse_error;;
# 2 "htmlparse.mly"
  open Htmlast;;

# 37 "htmlparse.ml"
let yytransl_const = [|
  262 (* PLUS *);
  263 (* MOINS *);
  264 (* DIV *);
  265 (* MULT *);
  266 (* H1 *);
  267 (* H2 *);
  268 (* H3 *);
  269 (* H4 *);
  270 (* H5 *);
  271 (* H6 *);
  272 (* PAR *);
  273 (* BR *);
  274 (* IMG *);
  275 (* HLINK *);
  276 (* LINK *);
  277 (* LIST *);
  278 (* ARROW *);
  279 (* SEMICOLON *);
  280 (* RIGHTBRACKET *);
  281 (* LEFTBRACKET *);
  282 (* LEFTPAR *);
  283 (* RIGHTPAR *);
  284 (* COMMA *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* STRING *);
  259 (* TAG *);
  260 (* IDENT *);
  261 (* CLASS *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\004\000\004\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\006\000\003\000\003\000\005\000\005\000\
\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\008\000\006\000\004\000\007\000\
\007\000\002\000\003\000\002\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\002\000\001\000\005\000\000\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\002\000\004\000\000\000\003\000\000\000\000\000\
\000\000\025\000\000\000\000\000\000\000\000\000\000\000\000\000\
\010\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\007\000\021\000\000\000\000\000\000\000\
\000\000\000\000\011\000\000\000\000\000\000\000\000\000\000\000\
\000\000\006\000\000\000\000\000\023\000\008\000\000\000\009\000\
\005\000"

let yydgoto = "\002\000\
\010\000\019\000\022\000\020\000\017\000\000\000"

let yysindex = "\013\000\
\000\255\000\000\000\000\000\000\238\254\000\000\245\254\250\254\
\002\255\000\000\003\255\000\255\022\255\004\255\026\255\005\255\
\000\000\000\000\006\255\007\255\022\255\008\255\009\255\010\255\
\012\255\000\255\000\255\000\000\000\000\011\255\030\255\031\255\
\015\255\017\255\000\000\000\255\016\255\014\255\000\255\002\255\
\020\255\000\000\032\255\021\255\000\000\000\000\019\255\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\243\254\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\251\254\000\000\000\000\000\000\
\000\000\000\000\023\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\243\254\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\255\255\247\255\233\255\008\000\000\000"

let yytablesize = 48
let yytable = "\011\000\
\003\000\004\000\005\000\035\000\024\000\023\000\012\000\013\000\
\021\000\024\000\024\000\029\000\041\000\001\000\014\000\044\000\
\006\000\007\000\008\000\015\000\009\000\022\000\022\000\016\000\
\034\000\018\000\021\000\025\000\027\000\026\000\028\000\037\000\
\038\000\047\000\030\000\036\000\031\000\032\000\033\000\039\000\
\040\000\043\000\042\000\046\000\048\000\049\000\012\000\045\000"

let yycheck = "\001\000\
\001\001\002\001\003\001\027\000\014\000\002\001\025\001\026\001\
\005\001\023\001\024\001\021\000\036\000\001\000\026\001\039\000\
\017\001\018\001\019\001\026\001\021\001\027\001\028\001\022\001\
\026\000\023\001\005\001\002\001\023\001\025\001\024\001\002\001\
\002\001\002\001\027\001\025\001\028\001\028\001\027\001\025\001\
\024\001\028\001\027\001\024\001\024\001\027\001\024\001\040\000"

let yynames_const = "\
  PLUS\000\
  MOINS\000\
  DIV\000\
  MULT\000\
  H1\000\
  H2\000\
  H3\000\
  H4\000\
  H5\000\
  H6\000\
  PAR\000\
  BR\000\
  IMG\000\
  HLINK\000\
  LINK\000\
  LIST\000\
  ARROW\000\
  SEMICOLON\000\
  RIGHTBRACKET\000\
  LEFTBRACKET\000\
  LEFTPAR\000\
  RIGHTPAR\000\
  COMMA\000\
  "

let yynames_block = "\
  INT\000\
  STRING\000\
  TAG\000\
  IDENT\000\
  CLASS\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 25 "htmlparse.mly"
                     ( _1 )
# 175 "htmlparse.ml"
               : Htmlast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 31 "htmlparse.mly"
          ( EInt _1)
# 182 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 32 "htmlparse.mly"
           ( EBR )
# 188 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 33 "htmlparse.mly"
           ( EString _1)
# 195 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'class_list) in
    let _5 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 34 "htmlparse.mly"
                                                              ( EImg(_3,_5,_7))
# 204 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 35 "htmlparse.mly"
                                             ( EImg("",_3,_5))
# 212 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr_seq) in
    Obj.repr(
# 36 "htmlparse.mly"
                                          ( ETag(_1,"","",_3))
# 220 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'class_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr_seq) in
    Obj.repr(
# 37 "htmlparse.mly"
                                                                      (ETag(_1,_3,"",_6))
# 229 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr_seq) in
    Obj.repr(
# 38 "htmlparse.mly"
                                                                    (ELink(_3,"", _6))
# 237 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'list_items) in
    Obj.repr(
# 39 "htmlparse.mly"
                    (EList("", _2))
# 244 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_seq) in
    Obj.repr(
# 42 "htmlparse.mly"
                            ( Eseq(_1,_3) )
# 252 "htmlparse.ml"
               : 'expr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 43 "htmlparse.mly"
                   (_1)
# 259 "htmlparse.ml"
               : 'expr_seq))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "htmlparse.mly"
       ("h1")
# 265 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 47 "htmlparse.mly"
       ("h2")
# 271 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "htmlparse.mly"
       ("h3")
# 277 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "htmlparse.mly"
       ("h4")
# 283 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "htmlparse.mly"
       ("h5")
# 289 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "htmlparse.mly"
       ("h6")
# 295 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "htmlparse.mly"
        ("div")
# 301 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 53 "htmlparse.mly"
        ( "p" )
# 307 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'class_list) in
    Obj.repr(
# 56 "htmlparse.mly"
                     ( String.concat " " [_1;_2] )
# 315 "htmlparse.ml"
               : 'class_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 57 "htmlparse.mly"
          ( _1 )
# 322 "htmlparse.ml"
               : 'class_list))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'list_items) in
    Obj.repr(
# 60 "htmlparse.mly"
                                                   (_3::_5)
# 330 "htmlparse.ml"
               : 'list_items))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "htmlparse.mly"
       ([])
# 336 "htmlparse.ml"
               : 'list_items))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Htmlast.expr)
