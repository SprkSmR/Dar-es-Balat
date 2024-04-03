Una [[API]] que permite que la computadora emplee varios [[Core]]s del [[Procesador]] sin tener que lidiar con los pormenores de la lógica paralela ([[semáforos]], etc).  Permite que el desarrollador se preocupe solo por hacer la aplicación y no de la lógica del [[Paralelismo]].


# Uso
## Notas misceláneas sobre el uso
- Para detener la ejecución de los [[Hilo]]s, se llama al [[Hilo]] 0.
- La ejecución de los [[Hilo]]s es arbitraria.
- Main manda a llamar un solo del [[Procesador]]. 
- Los [[Hilo]]s están sujetos a la disposición de los [[Sistemas Operativos]]. Conforme se van liberando los [[Thread]]s, los [[Sistemas Operativos]] les asignan las tareas pendientes. 
