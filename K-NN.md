Vecinos más cercanos
"Dime con quién andas y te diré quién eres"

Parte de la familia de modelos de [[Aprendizaje Perezoso]], porque solo almacena un conjunto de datos de [[Entrenamiento]] en lugar de pasar por una etapa de [[Entrenamiento]]. Esto también significa que todo el cálculo ocurre cuando se realiza una [[Clasificación]] o [[Predicción]].

No genera un [[Modelo]]. Al no generar uno, esto significa que cada vez que quiera generar una [[Predicción]], va a realizar todo el proceso desde cero, lo que es muy intensivo para los recursos. 

Fácil de usar e implementar, pero intensivo.

# Funcionamiento
El algoritmo clasifica un nuevo dato en el grupo que corresponde según los _k_ vecinos más cerca de un grupo u otro. 

Cada atributo es una dimensión en el [[Hiperplano]]

Emplea [[Métricas de distancia]]