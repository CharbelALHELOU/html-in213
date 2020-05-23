type token =
  | INT of (int)
  | STRING of (string)
  | TAG of (string)
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

# 34 "htmlparse.ml"
let yytransl_const = [|
  261 (* PLUS *);
  262 (* MOINS *);
  263 (* DIV *);
  264 (* MULT *);
  265 (* H1 *);
  266 (* H2 *);
  267 (* H3 *);
  268 (* H4 *);
  269 (* H5 *);
  270 (* H6 *);
  271 (* PAR *);
  272 (* BR *);
  273 (* IMG *);
  274 (* HLINK *);
  275 (* LINK *);
  276 (* SEMICOLON *);
  277 (* RIGHTBRACKET *);
  278 (* LEFTBRACKET *);
  279 (* LEFTPAR *);
  280 (* RIGHTPAR *);
  281 (* COMMA *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* STRING *);
  259 (* TAG *);
  260 (* CLASS *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\004\000\004\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\003\000\003\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\008\000\006\000\004\000\007\000\
\007\000\003\000\002\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\002\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\002\000\004\000\000\000\003\000\000\000\000\000\
\022\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\
\020\000\000\000\000\000\000\000\000\000\010\000\000\000\000\000\
\000\000\000\000\000\000\006\000\000\000\000\000\008\000\000\000\
\009\000\005\000"

let yydgoto = "\002\000\
\009\000\016\000\019\000\017\000\000\000"

let yysindex = "\005\000\
\255\254\000\000\000\000\000\000\246\254\000\000\241\254\243\254\
\000\000\000\255\255\254\017\255\003\255\020\255\000\000\004\255\
\002\255\017\255\001\255\005\255\006\255\008\255\255\254\000\000\
\000\000\007\255\024\255\025\255\011\255\000\000\255\254\010\255\
\012\255\255\254\014\255\000\000\026\255\015\255\000\000\016\255\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\250\254\000\000\000\000\000\000\000\000\018\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\037\000\247\255\236\255\000\000"

let yytablesize = 40
let yytable = "\003\000\
\004\000\005\000\030\000\021\000\020\000\001\000\018\000\013\000\
\025\000\014\000\035\000\011\000\012\000\038\000\006\000\007\000\
\008\000\021\000\021\000\015\000\018\000\022\000\024\000\023\000\
\026\000\032\000\033\000\040\000\031\000\027\000\028\000\029\000\
\034\000\036\000\039\000\041\000\037\000\010\000\011\000\042\000"

let yycheck = "\001\001\
\002\001\003\001\023\000\013\000\002\001\001\000\004\001\023\001\
\018\000\023\001\031\000\022\001\023\001\034\000\016\001\017\001\
\018\001\024\001\025\001\020\001\004\001\002\001\021\001\020\001\
\024\001\002\001\002\001\002\001\022\001\025\001\025\001\024\001\
\022\001\024\001\021\001\021\001\025\001\001\000\021\001\024\001"

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
  CLASS\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 25 "htmlparse.mly"
                     ( _1 )
# 159 "htmlparse.ml"
               : Htmlast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 31 "htmlparse.mly"
          ( EInt _1)
# 166 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 32 "htmlparse.mly"
           ( EBR )
# 172 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 33 "htmlparse.mly"
           ( EString _1)
# 179 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'class_list) in
    let _5 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 34 "htmlparse.mly"
                                                              ( EImg(_3,_5,_7))
# 188 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 35 "htmlparse.mly"
                                             ( EImg("",_3,_5))
# 196 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr_seq) in
    Obj.repr(
# 36 "htmlparse.mly"
                                          ( ETag(_1,"","",_3))
# 204 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'class_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr_seq) in
    Obj.repr(
# 37 "htmlparse.mly"
                                                                      (ETag(_1,_3,"",_6))
# 213 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr_seq) in
    Obj.repr(
# 38 "htmlparse.mly"
                                                                    (EBR)
# 221 "htmlparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_seq) in
    Obj.repr(
# 41 "htmlparse.mly"
                            ( Eseq(_1,_3) )
# 229 "htmlparse.ml"
               : 'expr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 42 "htmlparse.mly"
                   (_1)
# 236 "htmlparse.ml"
               : 'expr_seq))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "htmlparse.mly"
       ("h1")
# 242 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "htmlparse.mly"
       ("h2")
# 248 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 47 "htmlparse.mly"
       ("h3")
# 254 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "htmlparse.mly"
       ("h4")
# 260 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "htmlparse.mly"
       ("h5")
# 266 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "htmlparse.mly"
       ("h6")
# 272 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "htmlparse.mly"
        ("div")
# 278 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "htmlparse.mly"
        ( "p" )
# 284 "htmlparse.ml"
               : 'tag))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'class_list) in
    Obj.repr(
# 55 "htmlparse.mly"
                     ( String.concat " " [_1;_2] )
# 292 "htmlparse.ml"
               : 'class_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "htmlparse.mly"
          ( _1 )
# 299 "htmlparse.ml"
               : 'class_list))
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
