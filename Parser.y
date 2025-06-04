{
module Parser where 

import Lexer
}

%name parser 
%tokentype { Token }
%error { parseError }

%token 
    num             { TokenNum $$ }
    true            { TokenTrue }
    false           { TokenFalse }
    '+'             { TokenAdd }
    "&&"            { TokenAnd }
    if              { TokenIf }
    then            { TokenThen }
    else            { TokenElse }
    var             { TokenVar $$ }
    '\\'            { TokenLam }
    ':'             { TokenColon }
    "->"            { TokenArrow }
    Number          { TokenTNum }
    Boolean         { TokenTBool }
    '('             { TokenLParen }
    ')'             { TokenRParen }
    -- Adição das atividades
    '-'             { TokenSub }
    '*'             { TokenMult }
    '/'             { TokenDiv }
    "||"            { TokenOr }
    '!'             { TokenNot }
    "=="            { TokenIgual }
    '>'             { TokenMaior }
    '<'             { TokenMenor }
    -- Adição para let
    '='            { TokenComp }
    let            { TokenLet }
    in             { TokenIn }
    -- Adição para listas
    null           { TokenNull }
    cons           { TokenCons }
    head           { TokenHead }
    tail           { TokenTail }
    isnull         { TokenIsNull }
    '['            { TokenLColchetes }
    ']'            { TokenRColchetes }
    ','            { TokenVirgula }

%nonassoc if then else 
%nonassoc '\\' 
%left '+' '-' 
%left '*' '/'
%left "&&" "||" "==" '!'

%% 

Exp     : num                           { Num $1 }
        | true                          { BTrue }
        | false                         { BFalse }
        | Exp '+' Exp                   { Add $1 $3 }
        | Exp "&&" Exp                  { And $1 $3 }
        | if Exp then Exp else Exp      { If $2 $4 $6 }
        | var                           { Var $1 }
        | '\\' var ':' Type "->" Exp    { Lam $2 $4 $6 }
        | Exp Exp                       { App $1 $2 }
        | '(' Exp ')'                   { Paren $2 }
        -- Adição das atividades
        | Exp '-' Exp                   { Sub $1 $3 }
        | Exp '*' Exp                   { Mult $1 $3 }
        | Exp '/' Exp                   { Div $1 $3 }
        | Exp "||" Exp                  { Or $1 $3 }
        | '!' Exp                       { Not $2 }
        | Exp "==" Exp                  { Igual $1 $3 }
        | Exp '>' Exp                   { Maior $1 $3 }
        | Exp '<' Exp                   { Menor $1 $3 }
        -- Adição para let
        | let var '=' Exp in Exp        { Let $2 $4 $6 }
        -- Adição para listas
        | null                          { Null }
        | cons Exp Exp                  { Cons $2 $3 }
        | head Exp                      { Head $2 }
        | tail Exp                      { Tail $2 }
        | isnull Exp                    { IsNull $2 }
        | '[' ExpList ']'               { $2 }
        | '[' ']'                       { Null }

ExpList : Exp       { Cons $1 Null }
        | Exp ',' ExpList { Cons $1 $3 }

Type    : Boolean                       { TBool }
        | Number                        { TNum }
        | '(' Type "->" Type ')'        { TFun $2 $4 }

{ 

parseError :: [Token] -> a 
parseError _ = error "Erro sintático!"

}