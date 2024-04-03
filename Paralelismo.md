Una condición del sistema en la que múltiples tareas son activadas al mismo tiempo.

Múltiples tareas son hechas al mismo tiempo. No hay tiempos muertos

## Paralelismo a nivel de datos (DLP)
Se produce cuando existen muchos tipos de datos que pueden ser operados simultáneamente. 

## Paralelismo a nivel de tareas (TLP)
Se produce cuando tareas de trabajo pueden ser operados independientemente y totalmente en paralelo. A cada [[Hilo]] se le asigna una función diferente.


El hardware puede explotar el paralelismo de diferentes formas:

## Paralelismo a nivel de instrucciones
Explota el nivel de [[Paralelismo]] con la ayuda del [[Compilador]] usando ideas de [[Pipelining]] (nivel bajo) y [[Ejecución especulativa]] (nivel medio)

## Arquitecturas vectoriales o [[GPU]]s
Explota el paralelismo aplicando una sola instrucción a una colección de datos en paralelo. Convierte los datos en un vector multidimensional para ser procesado por el [[GPU]].

## Paralelismo a nivel de [[Hilo]]s
Explota el [[Paralelismo]] de datos o tareas en un fuerte modelo de [[Hardware]] acoplado que permite la interacción entre tareas en paralelo. 

## Paralelismo a nivel de peticiones
Explota el [[Paralelismo]] a través de tareas específicas desacopladas especificadas por el programador o los [[sistemas operativos]]