# Bases de datos
## Modelo Entidad-Relación (ER)
![[Pasted image 20240409220106.png]]

### Rectángulos
Entidades

### Elipses
Atributos

### Rombos
Relaciones

### Atributos fuertes y débiles
Clave? Fuerte, no clave? Débil

![[Pasted image 20240409220232.png]]

## Modelo relacional
### Tupla
Fila en una relación, una entidad.

### Grado
Número de atributos en una relación

### Cardinalidad
Número de tuplas en una relación

### Reglas de integridad
#### Primera: integridad de entidad
Ninguna clave primaria puede ser nula y ningún atributo que componga una clave primaria puede ser nulo tampoco

#### Primera: integridad de entidad referencial y llaves foráneas
Si hay una clave foránea, sus valores deben coincidir con los de la clave primaria a la que hacen referencia o ser nulos. Básicamente, si una tupla hace referencia a otra entidad por medio de la clave foránea, ésta debe coincidir con la clave primaria de esa otra entidad o ser nula (no tener relación).

#### Tercera
Todos los atributos de una entidad deben depender únicamente de la clave primaria. Es decir, que no haya información que pertenezca a otras entidades en una entidad.


# Patrones de diseño
## Creacionales

## Estructurales

## De comportamiento
# Anexos
![[Modelo Relacional.pdf]]

![[Patrones de Diseño.pdf]]

![[UML for analysis v0.1.pdf]]

![[Diagrama de Clases.pdf]]

![[Diagramas UML y Modelo 4+1.pdf]]

![[Modelo Entidad Relación.pdf]]