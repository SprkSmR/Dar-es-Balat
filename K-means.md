#chatgpt 
K-means es un algoritmo de agrupamiento (clustering) utilizado en aprendizaje automático y minería de datos. Su objetivo es dividir un conjunto de datos en k grupos (clusters) basados en características similares, minimizando la varianza intra-cluster y maximizando la distancia entre clusters. Funciona asignando puntos de datos a los clusters más cercanos, recalculando los centroides de cada cluster y repitiendo este proceso hasta que la convergencia se alcanza o se cumple un criterio de parada predefinido.

El agrupamiento se realiza minimizando la suma de distancias entre cada objeto y el centroide de su grupo o cluster.

# Algoritmo
## 1. Inicialización
Se establecen _k_ **centroides** en el espacio de datos (aleatorios). Los atributos de esos centroides deben estar en el rango de los datos existentes.

## 2. Asignación de objetos a los centroides
Cada objeto de los datos es asignado a su centroide más cercano. Para esto se usa alguna [[Métricas de distancia]].

## 3. Actualización de centroides
Se actualiza la posición del centroide de cada grupo tomando como nuevo centroide la posición del promedio de los objetos pertenecientes a dicho grupo. 

---
Los puntos 1. y 2. se repiten en un ciclo hasta que se alcanza la **condición de parada.**

## Condición de parada
Puede ser cuando en el paso 3. los centroides ya no se actualizan. O si eso requiere demasiados ciclos, se puede definir un número fijo de ellos para que se detenga

# Validación de grupos
## Cohesión
El miembro de cada cluster debe ser lo más cercano a los otros miembros del mismo cluster. 

## Separación
Los cluster deben de estar ampliamente separados entre ellos.


## Coeficiente de Silhouette
### Cohesión a(x)
Distancia promedio de _x_ a todos los demás puntos del mismo cluster.
![[Pasted image 20240508102401.png]]

![[Pasted image 20240508102433.png]]

### Separación b(x)
Distancia promedio de _x_ a todos los demás puntos del cluster más cercano.
![[Pasted image 20240508102410.png]]

![[Pasted image 20240508102448.png]]
