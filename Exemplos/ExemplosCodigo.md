eval $ typecheck $ parser $ lexer "let x = [let a = [3,4,5] in head(a),11] in menor(x)"

eval $ typecheck $ parser $ lexer "let x = [4+6,-11] in menor(x)"

eval $ typecheck $ parser $ lexer "let x = [] in menor(x)"

eval $ typecheck $ parser $ lexer "let x = [(\\a : Number -> a + 6)1, 5] in x"

eval $ typecheck $ parser $ lexer "let x = [(\\a : Number -> a + 6)1, 5, let t = [-6,0,-4] in head(t)] in head(x)"