module Lexer where 

import Data.Char

data Expr = BTrue 
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | And Expr Expr 
          | If Expr Expr Expr 
          | Var String 
          | Lam String Ty Expr 
          | App Expr Expr 
          | Paren Expr 
          -- Adição da atividade solicitada
          | Sub Expr Expr
          | Mult Expr Expr
          | Div Expr Expr
          | Maior Expr Expr
          | Menor Expr Expr
          | Igual Expr Expr
          | Or Expr Expr
          | Not Expr
          -- Adição para let
          | Let String Expr Expr
          -- Adição para listas
          | Null
          | Cons Expr Expr
          | Head Expr
          | Tail Expr
          | IsNull Expr
          -- Beecrowd
          | MenorL Expr
          | Float Double
          deriving Show 

data Ty = TBool 
        | TNum 
        | TFloat
        | TFun Ty Ty 
        | TList Ty
        | TVar
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenAnd 
           | TokenIf 
           | TokenThen
           | TokenElse 
           | TokenVar String 
           | TokenLam 
           | TokenColon
           | TokenArrow 
           | TokenTNum 
           | TokenTBool
           | TokenLParen 
           | TokenRParen  
           -- Adição da atividade solicitada
           | TokenSub
           | TokenMult
           | TokenDiv
           | TokenMaior
           | TokenMenor
           | TokenIgual
           | TokenOr
           | TokenNot
           -- Adição para let
           | TokenLet
           | TokenIn
           | TokenComp
           -- Adição para listas
           | TokenNull
           | TokenCons
           | TokenHead
           | TokenTail
           | TokenIsNull
           | TokenLColchetes
           | TokenRColchetes
           | TokenVirgula
           -- Beecrowd
           | TokenMenorL
           | TokenFloat Double
           deriving Show 

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('\\':cs) = TokenLam : lexer cs 
lexer (':':cs) = TokenColon : lexer cs 
lexer ('(':cs) = TokenLParen : lexer cs 
lexer (')':cs) = TokenRParen : lexer cs 
lexer ('&':'&':cs) = TokenAnd : lexer cs 
lexer ('-':'>':cs) = TokenArrow : lexer cs 
-- Adição da atividade solicitada
lexer ('-':c:cs) | isDigit c = lexNum ('-':c:cs)
lexer ('-':cs) = TokenSub : lexer cs
lexer ('*':cs) = TokenMult : lexer cs 
lexer ('/':cs) = TokenDiv : lexer cs 
lexer ('|':'|':cs) = TokenOr : lexer cs
lexer ('!':cs) = TokenNot : lexer cs
lexer ('=':'=':cs) = TokenIgual : lexer cs
lexer ('>':cs) = TokenMaior : lexer cs
lexer ('<':cs) = TokenMenor : lexer cs
-- Adição para let
lexer ('=':cs) = TokenComp : lexer cs
-- Adição para listas
lexer (',':cs) = TokenVirgula : lexer cs
lexer ('[':cs) = TokenLColchetes : lexer cs
lexer (']':cs) = TokenRColchetes : lexer cs

lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs) 
             | isAlpha c = lexKW (c:cs)

lexNum :: String -> [Token]
lexNum ('-':cs) = case span isDigit cs of
                (num, rest) -> TokenNum (read ('-':num)) : lexer rest
lexNum cs = case span isDigit cs of 
              (num, '.':rest) -> case span isDigit rest of
                (fracPart, rest') -> TokenFloat (read (num ++ "." ++ fracPart)) : lexer rest'
              (num, rest) -> TokenNum (read num) : lexer rest 

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest 
             ("if", rest) -> TokenIf : lexer rest 
             ("then", rest) -> TokenThen : lexer rest 
             ("else", rest) -> TokenElse : lexer rest 
             ("Number", rest) -> TokenTNum : lexer rest 
             ("Boolean", rest) -> TokenTBool : lexer rest 
             -- Adição para let
             ("let", rest) -> TokenLet : lexer rest 
             ("in", rest) -> TokenIn : lexer rest 
             -- Adição para listas
             ("null", rest) -> TokenNull : lexer rest 
             ("cons", rest) -> TokenCons : lexer rest 
             ("head", rest) -> TokenHead : lexer rest 
             ("tail", rest) -> TokenTail : lexer rest 
             ("isnull", rest) -> TokenIsNull : lexer rest 
             -- Beecrowd
             ("menor", rest) -> TokenMenorL : lexer rest
             (var, rest) -> TokenVar var : lexer rest 
 
