[[Heurística]] que servirá para la elección del mejor atributo para cada nodo de un [[Árboles de Decisión (ID3)]]. Es la reducción de la [[Entropía]] causada por particionar los ejemplos de acuerdo con un atributo.

Qué tanto nos ayuda un atributo en particular para predecir una clase. Si un atributo aporta mucha ganancia de información, estará al inicio del [[Árboles de Decisión (ID3)]].

Fórmula:
![[Pasted image 20240411151953.png]]

_S_: Clase o categoría
_A:_ Atributo bajo el cual estoy filtrando

_Entropia(S)_: la entropía de esa clase o categoría

![[Pasted image 20240411153853.png]]
Esto significa: el valor absoluto de la sumatoria de la entropía de cada posible valor que tiene ese atributo multiplicada por su proporción de la clase (cuántas instancias tienen ese valor para ese atributo). 

Esta fórmula se traduce como la incertidumbre que aporta cada atributo de una entidad

El resultado de la ganancia de informaicón es un valor de 0 a 1. Mientras más cerca de 1 mejor para predecir con certeza.

Es como hacer una subconsulta. Todos los cálculos que se hagan debe ser de acuerdo con una clase o categoría, pero se filtra a mayor profundidad con un atributo en particular para obtener información más específica.