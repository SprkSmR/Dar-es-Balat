Parte de [[Procesamiento de Lenguaje Natural]].

Es la parte de [[Aprendizaje Automático]] que requiere más preprocesamiento.
# ¿Cómo representar un texto?
Pasar el texto escrito en [[Lenguaje Natural]] a un conjunto de filas y columnas numéricas. 

## Texto - características
- Vocabulario (universo de palabras)
- Lemas
- Categorías gramaticales
- [[Stemming]]
- Sentimientos
## Números - Representación
- [[Binario]]
- Frecuencia de términos (TF)
- Frecuencia inversa (IDF)
- Ponderación TF - IDF

# Definición de características
[[NLTK]]
## [[Token]]ización
Divide un texto en una lista de subcadenas.
## [[Lematización]]
[[WordNet]]

## [[Stemming]]
[[Stem]]

## [[POS]] tagging
[[tag]]
Recibe como entrada el texto en algún lenguaje y como salida regresa un conjunto de pares de la forma palabra-etiqueta gramatical (sustantivo, adjetivo, verbo, etc).

## StopWords
Términos extremadamente comunes que suelen aparecer en muchas ocasiones y no agregan significado importante, así que suelen eliminarse del procesamiento de texto.

- Suelen ser artículos, pronombres y proposiciones. 
- NO hay una lista definitiva de ellas, depende del dominio y las consideraciones de los investigadores.
- No siempre es conveniente eliminar las palabras.


# Definición de la representación
## Ocurrencia
Agrega un valor de atributo 0 cuando la palabra no aparece en la instancia, y 1 cuando aparece, sin importar las veces que lo haga
![[Pasted image 20240425162911.png]]

## Frecuencia de términos
Se puede representar como:
![[Pasted image 20240425162936.png]]

t =  término
d = distancia

![[Pasted image 20240425163012.png]]

## Frecuencia inversa del documento
Le asigna un peso a cada término 
![[Pasted image 20240425163146.png]]

N = Número de documentos
df<sub>t</sub> = Frecuencia de documentos (número de documentos en los que aparece el término)

![[Pasted image 20240425163328.png]]

## Ponderación TF - IDF 
Produce un peso para cada término del documento
![[Pasted image 20240425163528.png]]

Asigna a un término _t_ un peso en documento _d_ que es:
- Muy alto cuando _t_ ocurre muchas veces en pocos documentos.
- Bajo cuando el término ocurre pocas veces en muchos documentos.
- Muy bajo cuando el término ocurre en la mayoría de documentos.