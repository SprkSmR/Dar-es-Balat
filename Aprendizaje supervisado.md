La máquina aprende entrenando un conjunto de datos de muestra que conducen al resultado deseado

Una vez que el modelo está listo, se introducen datos y la máquina predice resultados futuros utilizando la relación que ha establecido durante el [[Entrenamiento]].

El aprendizaje supervisado es más fácil de entender, porque así aprenden los humanos.

No se conocen las características de los datos por anticipado, pero sí se conoce el resultado que se espera. 

La salida de un algoritmo supervisado es una categoría para cada tupla.

Se divide en:
# [[Clasificación]]

# [[Regresión]]


# Conjunto de datos
- Materia prima del sistema de predicción
- Histórico de datos que se utiliza para entrenar al sistema que detecta patrones.
- Se compone de [[Instancia]]s de factores, [[Características]] o propiedades

# Métricas de evaluación
Dependiendo del objetivo del análisis, se deben seleccionar adecuadamente alguna(s) de las siguientes:

- [[Exactitud]]
- [[Matriz de confusión]]
- [[Precisión]]
- [[Recall]]
- [[F1-score]]

## ¿Cuándo se equivoca el clasificador?
Si una estancia debería ser negativa y el clasificador lo predice como positivo, entonces es un **Falso positivo** o **False positive**.

Si una estancia debería ser positiva y el clasificador lo predice como negativo, entonces es un **Falso negativo** o **False negative**.

## ¿Cuándo no se equivoca el clasificador?
Si es un resultado que en la realidad es positivo y que el clasificador efectivamente lo marca como positivo, entonces es **Verdadero positivo** o **VP** o **True positive**. 

Si es un resultado que en la realidad es negativo y el clasificador efectivamente lo marca como negativo, entonces es **Verdadero negativo** o **True negative**.




