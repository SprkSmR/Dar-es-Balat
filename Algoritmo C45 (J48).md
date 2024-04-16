Árbol para atributos continuos. Cuando el [[Árboles de Decisión (ID3)]] ya no es suficiente. Puede trabajar también con datos faltantes.

# Funcionamiento
## Puntos de corte
Es un análisis de los datos en el que la información es segmentada en rangos de acuerdo con los cambios que tienen respecto a la categoría que se quiere definir.

## Poda
Permite [[Poda]]r los nodos del árbol que no son significativos, ya sea por error humano o porque los datos abarcan muy pocas instancias para ser relevante.

### Por nivel
Vuelve todos los nodos de un nivel seleccionado en hojas. Los que antes eran sus hijos son podados. Para volver en hojas nodos que tenían hijos, hay que asignarles una clase/categoría. Para eso hay que basarse en el total de clases/categorías que tiene cada uno de sus hijos y los hijos de sus hijos.

El problema es que puede sobresimplificar casos.

### Por número de instancias
Hay que seleccionar un número mínimo de instancias que debe tener un nodo para que se pueda dividir. Los nodos que tengan menos de ese número, se volverán en hojas y se les asigna una clase. El resto puede continuar ramificándose hasta que sus hijos ya no cumplan con el mínimo.