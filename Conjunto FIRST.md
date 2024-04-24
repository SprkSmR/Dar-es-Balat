En un [[Árbol de sintaxis abstracto]], el conjunto FIRST es aquel que a partir de una raíz, es el conjunto de símbolos que siempre serán hojas, hasta abajo y más a la izquierda. Es decir, son aquellos que llegan a símbolos terminales. Todos los símbolos tienen un conjunto FIRST. 

Para un símbolo terminal el conjunto FIRST es aquel que solo se incluye a sí mismo. 

Para aquellos que terminan en epsilon, su conjunto FIRST es ese epsilon

Para los que no tienen epsilon ni son terminales, es necesario desarrollarlos hasta llegar a todos los símbolos terminales posibles a los que se puede llegar. Incluye también los conjuntos FIRST de todas las expresiones en las que se puede derivar.
