Pieza de software que recibe un programa escrito en un lenguaje de programación fuente a otro programa equivalente desde el punto de vista [[Semántico]] en otro lenguaje objetivo (esto significa, que respete su significado original)

Ver [[Transpiler]]

Algunos compiladores generan ejecutables que corren en [[Maquina virtual]], como [[Java]]. Otros corren en la computadora como [[C++]] o [[C]]. Algunos otros, a veces, como Python no generan ejecutables, corre directamente en la [[Terminal]].

# Compiladores en contexto
_Conseguir la captura_


# Fases de un compilador
## Fases de análisis
### Análisis léxico
Se genera la secuencia de [[Token]]s. Verifica que sean correctos los tokens.

### Análisis sintáctico
Genera un [[Árbol de sintaxis abstracto]], en el cual se verifica que la relación entre [[Token]]s tenga sentido.

### Análisis semántico
Realiza la supervisión de tipos, tratando de procurar que concuerde la cadena con el tipo en el token y tenga sentido con el resto del código.

También se encarga de realizar la supervisión de [[Scope]]s. Para que todo lo que está empleando en el código concuerde con lo que está en entorno que se pasa.

Se encarga de analizar el [[Árbol de sintaxis abstracto]] generado anteriormente, básicamente. Genera, por tanto, un [[Árbol de sintaxis abstracto]] Anotado

## Fases de síntesis
### Generación de código intermedio
Genera el código intermedio en término de [[Bytecode]]

### Optimización de código intermedio
Optimiza el código intermedio. [[IR Optimizado]]

## Fases de código máquina*
### Generación de código máquina
[[Lenguaje ensamblador]]. Cuando se genera el código en lenguaje máquina, para partes del código como "Print"s u otras funciones, se guarda la dirección de memoria que corresponde a esa librería y a esa función. Funciones como esta y otras llamadas a librerías externas no las recompila, la compilación ya está guardada en algún lado. Todo lo externo, todo lo que no es propio del código, manda a llamar la versión ya compilada. 

### Optimización dependiente del hardware de código