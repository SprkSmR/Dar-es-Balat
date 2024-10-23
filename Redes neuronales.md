Modelo matemático basado en la operación del cerebro.

Los elementos sencillos corresponden a neuronas y la red es un conjunto de éstas.

# Neurona
Unidad funcional del sistema nervioso
![[Pasted image 20240522093453.png]]
## Estructura:
### Cuerpo (soma)
En términos computacionales, el cuerpo es el que lleva a cabo el procesamiento (función de activación).

### Grupo de fibras (dendritas)
Computacionalmente, corresponden con las entradas.

### Fibra más larga (axón)
Computacionalmente, es la salida del procesamiento.

La salida de un procesamiento puede ser la entrada de otro. 

![[Pasted image 20240522093720.png]]

# Neurona Artificial
![[Pasted image 20240522093813.png]]

En una red neuronal se ajustan los pesos de forma iterativa para ajustarse a la salida para que sea la esperada. 


## Funciones de transferencia
![[Pasted image 20240522094344.png]]

_p_: vector de entrada.
_w_: vector de pesos.
_b_: ganancia o sesgo de la neurona (este sesgo puede ser visto como el **desplazamiento** de la función en un gráfico).

La salida total está determinada por la función de transferencia (lineal o no lineal).

Funciones de transferencia más comunes:



### Función de transferencia lineal
La salida es proporcional a la entrada.
![[Pasted image 20240522094756.png]]


### Función de transferencia sigmoidal 
Admite valores de entrada de menos infinito a infinito y restringe la salida entre 0 y 1. Utilizada en redes multicapa. [[Back propagation]].
![[Pasted image 20240522094853.png]]

# Cómo funciona una red neuronal
## Entrenamiento
1. Se inicia la matriz de pesos y el valor de ganancia (aleatoriamente).
2. Se presenta el primer patrón a la red, junto con la salida esperada en un par {entrada, salida}
3. Se calcula la salida de la red _a_ de acuerdo con la función de transferencia seleccionada.
4. Si la red no retorna la salida correcta, se altera el valor de los pesos hasta llevarlos al valor _p_. Otra alternativa es adicionar _p_ a _w_ para que el vector _w_ apunte en dirección a _p_. Después de varias iteraciones de _p_, _w_ debería aproximarse asintóticamente a _w_