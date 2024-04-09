[PLY (Python Lex-Yacc) — ply 4.0 documentation](https://ply.readthedocs.io/en/latest/index.html)

[PLY (Python Lex-Yacc) (dabeaz.com)](https://www.dabeaz.com/ply/ply.html)

Librería de [[Python]] para [[Expresiones Regulares]].

# Estados condicionales
Esto puede ser comprendido como "Saltos" entre [[Automata]]s

En Ply es posible manejar estados condicionales, los cuales son capaces de mover el [[Lexer]] a través de diferentes estados, cada uno con sus propios [[Token]]s, reglas, etc. Ver, por ejemplo, el caso de los [[String]]s en el siguiente archivo. ![[lexer.l]]

## Estados exclusivos
Permite definir [[Token]]s y reglas específicos para ese estado en particular. Solo aplicaran cuando el [[Lexer]] se encuentre en ese estado.

## Estados inclusivos
Permite que los [[Token]]s y reglas definidos por defecto (en el resto del [[Lexer]] siempre y cuando no estén dentro de estados) sean utilizados también durante este estado, además de los que son definidos para este estado en particular.

## Estado INITIAL
Es el estado por defecto. Toda regla y [[Token]] que no sea asignado a un estado exclusivo o inclusivo en particular será asignado a este estado.

## Salir de un estado
Para salir, se debe utilizar la función **begin('INITIAL')**, para regresar al estado INITIAL. 

## Uso
Consultar la sección **4.19 Conditional lexing and start conditions** en [PLY (Python Lex-Yacc) (dabeaz.com)](https://www.dabeaz.com/ply/ply.html)
