eval $ typecheck $ parser $ lexer "let x = [let a = [3,4,5] in head(a),11] in menor(x)"

eval $ typecheck $ parser $ lexer "let x = [4+6,-11] in menor(x)"

eval $ typecheck $ parser $ lexer "let x = [] in menor(x)"