Vecinos más cercanos
"Dime con quién andas y te diré quién eres"

Parte de la familia de modelos de [[Aprendizaje Perezoso]], porque solo almacena un conjunto de datos de [[Entrenamiento]] en lugar de pasar por una etapa de [[Entrenamiento]]. Esto también significa que todo el cálculo ocurre cuando se realiza una [[Clasificación]] o [[Predicción]].

No genera un [[Modelo]]. Al no generar uno, esto significa que cada vez que quiera generar una [[Predicción]], va a realizar todo el proceso desde cero, lo que es muy intensivo para los recursos. 

Fácil de usar e implementar, pero intensivo.

# Funcionamiento
El algoritmo clasifica un nuevo dato en el grupo que corresponde según los _k_ vecinos más cerca de un grupo u otro. 

Cada atributo es una dimensión en el [[Hiperplano]]

## Métricas de distancia

### Euclidiana
Es la más popular al trabajar con [[Minería de datos]]. Dados dos objetos descritos por _p_ atributos numéricos, la distancia entre los objetos _i_ y _j_ se define como: 

![[Pasted image 20240404154620.png]]


### Manhattan
Comúnmente usado para datos ordinales.
Llamada también distancia de manzanas. Es la distancia en bloques entre dos puntos cualquiera de una ciudad. 

![[Pasted image 20240404154727.png]]

![[Pasted image 20240404154753.png]]

### Coseno
Más que una distancia, es una medida de similitud entre 2 [[Vector]]es. Para que la medida de similitud esté en el rango **(0, 1)**, se calcula a través de:

![[Pasted image 20240404154856.png]]

**||X||:**  raíz cuadrada de la suma de todos los valores _X_ al cuadrado. 

![[Pasted image 20240404154954.png]]
