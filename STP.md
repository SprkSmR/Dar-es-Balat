Spanning Tree Protocol. 

Calcula el destino y el costo de todas desde y hacia todos los nodos. 


# [[Switch]]es

Con [[Switch]]es, el [[Ancho de banda]] es el costo entre [[Switch]]es. El algoritmo [[STP]] funciona así:
- Conocer el [[Switch]] que actúe como raíz del árbol empleando la [[MAC]] de menor valor. [[Root bridge]]. Si no hay una [[MAC]] de menor valor, entonces se usa el número mágico 32768
- Define la prioridad de cada [[Switch]] ([[BPDU]])
- De esta forma genera todo el árbol de expansión.

*Es un algoritmo en constante cambio y adaptación de acuerdo con la inclusión de nuevos [[Switch]]es y los cambios en los existentes.*