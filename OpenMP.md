Una [[API]] que permite que la computadora emplee varios [[Core]]s del [[Procesador]] sin tener que lidiar con los pormenores de la lógica paralela ([[semáforos]], etc).  Permite que el desarrollador se preocupe solo por hacer la aplicación y no de la lógica del [[Paralelismo]].


# Uso
# Directivas
## '#pragma omp parallel'
Inicia un bloque paralelo. Todo el código que se ejecuta dentro del bloque se ejecutará en paralelo en múltiples [[Hilo]]s.

## Número de [[Thread]]s
OpenMP usa el número máximo de [[Thread]]s disponibles en el sistema. Sin embargo, se puede especificar el número a usar manualmente con 'num_threads' seguido del número de [[Thread]]s.

## División del trabajo 
Cuando se ejecuta un bloque en paralelo, OpenMP divide automáticamente el trabajo entre los [[Thread]]s disponibles. Cada [[Thread]] ejecuta una copia de las instrucciones del bloque paralelo.

## Sincronización Implícita 
Después de ejecutar el bloque paralelo, los [[Thread]]s se sincronizan implícitamente antes de continuar con el resto del código. Esto significa que OpenMP se encarga automáticamente de la sincronización y la gestión de la [[Concurrencia]].

## Cláusulas y Directivas Específicas
OpenMP proporciona diversas cláusulas y directivas para controlar el comportamiento de los [[Thread]]s, como la cláusula `private` para variables privadas por [[Thread]], la cláusula `shared` para variables compartidas entre todos los [[Thread]]s, y la directiva `for` para paralelizar bucles `for`.

## Notas misceláneas sobre el uso
- Para detener la ejecución de los [[Hilo]]s, se llama al [[Hilo]] 0.
- La ejecución de los [[Hilo]]s es arbitraria.
- Main manda a llamar un solo del [[Procesador]]. 
- Los [[Hilo]]s están sujetos a la disposición de los [[Sistemas Operativos]]. Conforme se van liberando los [[Thread]]s, los [[Sistemas Operativos]] les asignan las tareas pendientes. 


