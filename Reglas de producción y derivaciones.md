[[Notación BNF]] 

Son reglas que definen cómo se descomponen las oraciones, hasta llegar a los símbolos terminales (las palabras mismas). 

Es un proceso [[Top-down]]. Aunque también hay técnicas que trabajan [[Bottom-up]] 

Durante la elaboración de un lenguaje, primero se tienen que definir las reglas de producción y derivaciones, para saber en cómo se pueden disponer todas las [[Unidad Lexicográfica]]s del lenguaje.

# Reglas de producción con recursión por la izquierda
Cuando una regla se deriva en la definición de la regla y otra cosa

E -> E + T

El hecho de que E esté dentro de su propia definición lo vuelve una recursión. 

## Eliminación de recursión izquierda
Para resolverlo, hay que reescribir las reglas involucradas empleando la siguiente fórmula.

Para un caso como

A -> Aα | B
|        A -> BA'
|_>      A'->αA'
     A'->ε   

Se aplica como:

E -> E + T | T

   E -> TE'
   E'->+TE'
   E'->ε  


## [[Analizador sintáctico recursivo descendente]]


## [[Analizador sintáctico descendente predictivo]]

### [[Conjunto FIRST]]

### [[Conjunto FOLLOW]]