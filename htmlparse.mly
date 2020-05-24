%{
  open Htmlast;;

%}


%token <int> INT
%token <string> STRING
%token <string> TAG
%token <string> IDENT CLASS
%token PLUS MOINS DIV MULT
%token H1 H2 H3 H4 H5 H6 DIV PAR BR IMG HLINK
%token BR IMG LINK LIST ARROW
%token SEMICOLON RIGHTBRACKET LEFTBRACKET LEFTPAR RIGHTPAR COMMA
%left PLUS MINUS
%left MULT DIV


%start main
%type <Htmlast.expr> main

%%

main: 
    | expr SEMICOLON { $1 }
;



expr:
  INT     { EInt $1}
  |BR      { EBR }
  |STRING  { EString $1}
  | IMG LEFTPAR class_list COMMA STRING COMMA STRING RIGHTPAR { EImg($3,$5,$7)}
  | IMG LEFTPAR STRING COMMA STRING RIGHTPAR { EImg("",$3,$5)}
  | TAG LEFTBRACKET expr_seq RIGHTBRACKET { ETag($1,"","",$3)}
  | TAG LEFTPAR class_list RIGHTPAR LEFTBRACKET expr_seq RIGHTBRACKET {ETag($1,$3,"",$6)}
  | HLINK LEFTPAR STRING RIGHTPAR LEFTBRACKET expr_seq RIGHTBRACKET {ELink($3,"", $6)}
  | LIST list_items {EList("", $2)}

expr_seq:
  | expr SEMICOLON expr_seq { Eseq($1,$3) }
  | expr SEMICOLON {$1}

tag :
  | H1 {"h1"}
  | H2 {"h2"}
  | H3 {"h3"}
  | H4 {"h4"}
  | H5 {"h5"}
  | H6 {"h6"}
  | DIV {"div"}
  | PAR { "p" }

class_list :
  | CLASS class_list { String.concat " " [$1;$2] }
  | CLASS { $1 }

list_items :
  | ARROW LEFTBRACKET expr RIGHTBRACKET list_items {$3::$5}
  |    {[]}