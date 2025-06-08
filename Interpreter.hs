module Interpreter where 

import Lexer 

isValue :: Expr -> Bool 
isValue BTrue       = True 
isValue BFalse      = True  
isValue (Num _)     = True 
isValue (Lam _ _ _) = True
-- Adição para listas
isValue (Cons e1 e2) = isValue e1 && isValue e2
isValue Null = True

isValue _           = False 

subst :: String -> Expr -> Expr -> Expr
subst v e BTrue = BTrue 
subst v e BFalse = BFalse 
subst v e (Num x) = Num x 
subst v e (Add e1 e2) = Add (subst v e e1) (subst v e e2)
subst v e (And e1 e2) = And (subst v e e1) (subst v e e2)
subst v e (If e1 e2 e3) = If (subst v e e1) (subst v e e2) (subst v e e3)
subst v e (Var x) = if v == x then 
                      e 
                    else 
                      Var x 
subst v e (Lam x t b) = Lam x t (subst v e b)
subst v e (App e1 e2) = App (subst v e e1) (subst v e e2)
subst v e (Paren e1) = Paren (subst v e e1)
-- Adição atividade solicitada
subst v e (Or e1 e2) = Or (subst v e e1) (subst v e e2)
subst v e (Not e1) = Not (subst v e e1)
subst v e (Maior e1 e2) = Maior (subst v e e1) (subst v e e2)
subst v e (Menor e1 e2) = Menor (subst v e e1) (subst v e e2)
subst v e (Igual e1 e2) = Igual (subst v e e1) (subst v e e2)
subst v e (Sub e1 e2) = Sub (subst v e e1) (subst v e e2)
subst v e (Mult e1 e2) = Mult (subst v e e1) (subst v e e2)
subst v e (Div e1 e2) = Div (subst v e e1) (subst v e e2)
-- Adição para let
subst v e (Let x e1 e2) = Let x (subst v e e1) (subst v e e2)
-- Adição para listas
subst v e Null = Null
subst v e (Cons e1 e2) = Cons (subst v e e1) (subst v e e2)
subst v e (IsNull e1) = IsNull (subst v e e1)
subst v e (Head e1) = Head (subst v e e1)
subst v e (Tail e1) = Tail (subst v e e1)
-- Beecrowd
subst v e (MenorL e1) = MenorL (subst v e e1)


step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)     -- S-Add
step (Add (Num n1) e2) = let e2' = step e2       -- S-Add2
                           in Add (Num n1) e2' 
step (Add e1 e2) = Add (step e1) e2              -- S-Add1
step (And BTrue e2) = e2 
step (And BFalse e2) = BFalse 
step (And e1 e2) = And (step e1) e2 
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2
step (If e e1 e2) = If (step e) e1 e2 
step (App e1@(Lam x t b) e2) | isValue e2 = subst x e2 b
                             | otherwise  = App e1 (step e2)
step (App e1 e2) = App (step e1) e2 
step (Paren e) = e 
-- Adição atividade solicitada
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)     
step (Sub (Num n1) e2) = Sub (Num n1) (step e2)
step (Sub e1 e2) = Sub (step e1) e2
step (Mult (Num n1) (Num n2)) = Num (n1 * n2)
step (Mult (Num n1) e2) = Mult (Num n1) (step e2)
step (Mult e1 e2) = Mult (step e1) e2
step (Div (Num n1) (Num n2)) = Num (quot n1 n2)
step (Div (Num n1) e2) = Div (Num n1) (step e2)
step (Div e1 e2) = Div (step e1) e2
step (Maior (Num n1) (Num n2)) |n1 > n2 = BTrue
                               | otherwise = BFalse
step (Maior (Num n1) e2) = Maior (Num n1) (step e2)
step (Maior e1 e2) = Maior (step e1) e2
step (Menor (Num n1) (Num n2)) |n1 < n2 = BTrue
                               | otherwise = BFalse
step (Menor (Num n1) e2) = Menor (Num n1) (step e2)
step (Menor e1 e2) = Menor (step e1) e2
step (Igual (Num n1) (Num n2)) |n1 == n2 = BTrue
                               | otherwise = BFalse
step (Igual (Num n1) e2) = Igual (Num n1) (step e2)
step (Igual e1 e2) = Igual (step e1) e2
step (Or BTrue e2) = BTrue 
step (Or BFalse e2) = e2 
step (Or e1 e2) = Or (step e1) e2 
step (Not BTrue ) = BFalse 
step (Not BFalse ) = BTrue 
step (Not e1) = Not (step e1)
-- Adição para let
step (Let v e1 e2) | isValue e1 = subst v e1 e2 
                   | otherwise = Let v (step e1) e2
-- Adição para listas
step (Cons v1 v2) | isValue v1 && isValue v2 = Cons v1 v2
step (Cons e1 e2) | not (isValue e1) = Cons (step e1) e2
                  | otherwise = Cons e1 (step e2)
step (IsNull Null) = BTrue
step (IsNull (Cons _ _)) = BFalse
step (IsNull e) = IsNull (step e)
step (Head Null) = Null
step (Head (Cons v1 _)) | isValue v1 = v1
step (Head e) = Head (step e)
step (Tail Null) = Null
step (Tail (Cons _ v2)) | isValue v2 = v2
step (Tail e) = Tail (step e)
-- Beecrowd
step (MenorL Null) = Null
step (MenorL (Cons (Num n1) Null)) = Num n1 
step (MenorL (Cons (Num n1) (Cons (Num n2) vs))) =
    if n1 < n2 then step (MenorL (Cons (Num n1) vs)) else step (MenorL (Cons (Num n2) vs))
step (MenorL (Cons e1 e2)) = MenorL (Cons (step e1) e2) -- Avalia o primeiro elemento da lista
step (MenorL e) = MenorL (step e) -- Avalia a lista
        
eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)

