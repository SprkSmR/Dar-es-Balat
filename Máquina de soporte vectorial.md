[[Support Vector Machine]]

Algoritmo de [[Aprendizaje Automático]] que permite clasificar datos empleando un [[Hiperplano]]. 

# Frontera de decisión
[[Hiperplano]]. Es el plano multidimensional que permite separar los datos en diferentes categorías según su posición como puntos dentro del [[Hiperplano]].

# Uso
## 1. Obtener la ecuación que permita definir el [[Hiperplano]]
### El mejor [[Hiperplano]] ([[Hiperplano]] óptimo)
Existen muchas formas de crear un [[Hiperplano]], pero el mejor es aquel que quede más alejado de todos los puntos, ya que evita sesgos cuando se agreguen datos nuevos. 

Para hacer esto, encuentra los puntos de diferentes categorías más cercanos entre sí, traza una línea recta entre ambos y otra perpendicular que pase en medio de esa línea para dividirla en dos. 

### Partes
- **Vectores de soporte:** son aquellos puntos más cercanos entre sí de categorías diferente.
- **Margen (_hard margin_):** distancia entre el [[Hiperplano]] y los vectores de soporte.
- **[[Hiperplano]] óptimo:** la frontera de separación que consigue el mayor margen posible.
- **_Soft margin_**: alternativa al _hard margin_ para lidiar con [[Outlier]]s. Emplea un [[Hiper parametro]] llamado _C_. Mientras menor sea _C_, mayor será el margen será más amplio y viceversa. El valor de este [[Hiper parametro]] se asigna de manera [[empírica]]. Para ello, debe realizarse una experimentación que permita comparar el error obtenido por cada valor de _C_ y elegir aquel valor donde el error sea menor:
	![[Pasted image 20240421010613.png]]

## 2. Usar la ecuación obtenida para clasificar el dato deseado
Dependiendo del signo del resultado resulta en una o en otra categoría.

# Consideraciones
- El algoritmo es mejor cuando la diferencia entre ambas categorías está lo suficientemente marcada.
- Los [[Outlier]]s pueden llevar al [[Overfitting]], ya que generan un margen muy reducido que no permitirá clasificar bien entradas nuevas.
- El margen predeterminado (_hard margin_) no es muy útil cuando hay [[Outlier]]s presentes. En solución, se debe utilizar un **_soft margin_** 
- Existen ocasiones donde la separación entre los datos no es tan clara. Idealmente, es posible separar los datos con una línea recta, pero en ocasiones puede existir una separación que no es lineal. Para estos casos, una posible solución es agregar más atributos a los datos para que en esa dimensión sea posible trazar un [[Hiperplano]] que los separe. Esto se conoce como **Truco de kernel**

# Truco de Kernel
Consiste en tomar el set de datos original y mapearlo a un espacio de mayores dimensiones por medio de una función no lineal. Una vez es posible obtener un [[Hiperplano]] en esa nueva dimensión, se regresa a las dimensiones originales. 

Para emplear este truco, se recurre a [[Algebra lineal]]:

- Funciones [[Polinomial]]es
- [[Funciones Gaussianas]]
