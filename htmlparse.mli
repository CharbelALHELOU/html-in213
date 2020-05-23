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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Htmlast.expr
