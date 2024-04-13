Una [[API]] que permite que la computadora emplee varios [[Core]]s del [[Procesador]] sin tener que lidiar con los pormenores de la lógica paralela ([[semáforos]], etc).  Permite que el desarrollador se preocupe solo por hacer la aplicación y no de la lógica del [[Paralelismo]].


# Uso
# Directivas
#chatgpt 
## '#pragma omp parallel'
Inicia un bloque paralelo. Todo el código que se ejecuta dentro del bloque se ejecutará en paralelo en múltiples [[Hilo]]s.

## '#pragma omp single'
Inicia un bloque que asigna un solo [[Thread]] para una actividad única. Inicializa un proceso.

## Número de [[Thread]]s
OpenMP usa el número máximo de [[Thread]]s disponibles en el sistema. Sin embargo, se puede especificar el número a usar manualmente con 'num_threads' seguido del número de [[Thread]]s.

## División del trabajo 
Cuando se ejecuta un bloque en paralelo, OpenMP divide automáticamente el trabajo entre los [[Thread]]s disponibles. Cada [[Thread]] ejecuta una copia de las instrucciones del bloque paralelo.

## Sincronización Implícita 
Después de ejecutar el bloque paralelo, los [[Thread]]s se sincronizan implícitamente antes de continuar con el resto del código. Esto significa que OpenMP se encarga automáticamente de la sincronización y la gestión de la [[Concurrencia]].

## Cláusulas y Directivas Específicas
OpenMP proporciona diversas cláusulas y directivas para controlar el comportamiento de los [[Thread]]s, como la cláusula `private` para variables privadas por [[Thread]], la cláusula `shared` para variables compartidas entre todos los [[Thread]]s, y la directiva `for` para paralelizar bucles `for`.


# Clausulas
Son atributos que tienen algunas funciones en OMP
Por ejemplo: 

## Clausulas de acceso
Cuando se utilizan variables dentro de una directiva, éstas son locales por defecto. Eso significa que no se pueden utilizar fuera del bloque de la directiva. Se pueden utilizar ambas para una sola directiva.

### shared
Esta clausula permite que las variables englobadas en ella sean utilizadas fuera del bloque de la directiva.

### private
Esta clausula se cerciora de que las variables englobadas sean privadas. Por defecto ya lo son, pero agrega esa certeza adicional.

## Otras clausulas

### nowait
Es una forma en que se pueden quitar las barreras de tiempo impuestas por otros atributos de OMP

### static
Las tareas son asignadas según llega la solicitud de ejecución en forma de [[Round Robin]].

### dynamic
Las iteraciones son asignadas a los [[Hilo]]s conforme son solicitados.

### guided
Las iteraciones son asignadas a los [[Hilo]]s conforme son solicitados. (???? por qué es lo mismo???)

### runtime


# Secciones
Es la forma más simple para que diferentes [[Hilo]]s realicen diferentes trabajos. Al permitir especificar diferentes regiones de código, la cuál será ejecutada por cada [[Hilo]]. Cada sección debe ser completamente independiente entre ellas. Cada bloque de código se ejecuta una sola vez en el [[Hilo]] asignado. 

Se debe emplear [[Balanceo de cargas]] para que no queden [[Hilo]]s en desuso mientras otros siguen trabajando .


## Notas misceláneas sobre el uso
- Para detener la ejecución de los [[Hilo]]s, se llama al [[Hilo]] 0.
- La ejecución de los [[Hilo]]s es arbitraria.
- Main manda a llamar un solo del [[Procesador]]. 
- Los [[Hilo]]s están sujetos a la disposición de los [[Sistemas Operativos]]. Conforme se van liberando los [[Thread]]s, los [[Sistemas Operativos]] les asignan las tareas pendientes. 



# Anexos
![[OpenMP-4.0-C.pdf]]