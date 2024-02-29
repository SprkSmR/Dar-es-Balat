Componente de [[dotNET (.NET)]] que permite la conexión con [[Base de datos]].

# Fundamentos
[[Entity Framework]] es un [[ORM]] de código abierto para [[dotNET (.NET)]]. Utiliza internamente [[ADO.NET]] para facilitar la conexión con [[Base de datos]] y la manipulación de su contenido. No requiere configuración alguna del usuario.

Compatible con múltiples [[Base de datos]], como:
- [[SQL Server]]
- [[Azure SQL Database]]
- [[SQLite]]
- [[Azure Cosmos DB]]
- [[MySQL]]
- [[PostgreSQL]]

Se puede conectar a otras utilizando [[plugin]]s.

# Entity Framework vs Entity Framework Core
Mismo caso que con [[dotNET (.NET) Framework]] y [[dotNET (.NET) Core]]. Es importante revisar la documentación de uno y del otro por temas de compatibilidad.

# Ventajas de Entity Framework
- Mejora la velocidad del desarrollo al realizar muchas implementaciones intermedias por el programador.
- Permite manejar un repositorio único para [[Backend]] y [[Base de datos]]. No hace falta crear distinciones entre ambos en temas de implementación.
- Mejora la seguridad. Tanto contra ataques como confiabilidad en el manejo de los datos entre las [[Base de datos]] y el [[Backend]]. 
- Es una forma más amigable de realizar la tarea para los desarrolladores. Evita la necesidad de conocer el lenguaje [[SQL]] ni todo lo que ello implica. Permite que uno solo trabaje con [[Csharp]] o cualquiera que sea el lenguaje del [[Backend]].
- Permite mantener un historial de cambios de la [[Base de datos]]. [[Entity Framework]] ofrece [[Migraciones]] para hacer esto. Evita tener scripts de [[SQL]], control de versiones y un repositorio aparte para las [[Base de datos]].

# [[Minimal API]]
Plantilla de [[dotNET (.NET)]] para crear [[API]]s mínimas. Mantiene el desarrollo de la [[API]] minimalista, solo con lo fundamental. 

Comando para generar la plantilla:
```
dotnet new web
```

En el archivo Program.cs de esta plantilla están las rutas de la aplicación.
![[Pasted image 20231003151500.png]]

Es necesario instalar manualmente los siguientes paquetes el proyecto:
- **Microsoft.EntityFrameworkCore**: paquete principal de [[Entity Framework]].
- **Microsoft.EntityFrameworkCore.InMemory**: paquete para trabajar con[[Entity Framework]] en la memoria local.
- **Microsoft.EntityFrameworkCore.SqlServer u otros**: paquetes específicos para trabajar con alguna [[Base de datos]] en particular.


# Creación de modelos
Estos modelos son clases que se convertirán en tablas en la [[Base de datos]] y viceversa.

Es recomendable comenzar por una carpeta de modelos:
![[Pasted image 20231003152838.png]]

## Ejemplo de modelo
![[Pasted image 20231003153016.png]]

- Necesita un espacio de nombres. En este caso se utiliza el formato:
```
[Nombre del servicio].Models
```
- Una clase pública para poder ser manipulada en el resto del código.
- Diferentes atributos. Entre ellos es importante una llave primaria. Cada uno con sus métodos set y get.

## Enlazar modelos entre sí (crear relaciones)
Para crear relaciones entre modelos, existen dos opciones:

### Objeto virutal
![[Pasted image 20231003154651.png]]
- **Línea 17**: en esta clase, se agrega un atributo [[virtual]] que es una instancia de la clase relacionada. Esto con el fin de que en las consultas se pueda obtener la clase relacionada a partir de la clase actual.
- Aplica para un caso de relación de 1:1 o del lado derecho de * : 1

### ICollection
![[Pasted image 20231003154944.png]]
- **Línea 11:** En esta clase de agrega un atributo [[ICollection]] [[virtual]] de la clase Tarea. Esto con el fin de que en las consultas se puedan obtener todas las tareas relacionadas con esta categoría. 
- Aplica para un caso de de relación * : * o del lado izquierdo de * : 1

# Contexto
Es necesario para configurar [[Entity Framework]]. Contiene la relación entre los modelos. Esto permite transformarlo en [[colecciones]] dentro de las [[Base de datos]].

Se crea como un archivo de [[Csharp]].

Se utiliza el formato:
```
[Nombre de la base de datos]Context.cs
```

Requiere crear una clase para el contexto. Esta clase incluye los atributos [[DbSet]], los cuales representan tablas en la [[Base de datos]]. 

## Ejemplo de contexto
![[Pasted image 20231003162742.png]]

Esta clase hereda de la clase DbContext. De la documentación oficial:

#documentación
```
A DbContext instance represents a session with the database and can be used to query and save instances of your entities. DbContext is a combination of the Unit Of Work and Repository patterns.

Typically you create a class that derives from DbContext and contains DbSet properties for each entity in the model. If the DbSet properties have a public setter, they are automatically initialized when the instance of the derived context is created.
```


Esta clase incluye los [[DbSet]]s que representan las tablas ([[entidad]]) en la [[Base de datos]]. También incluye las opciones del contexto (línea 11). Explicado según [[ChatGPT]]:

#chatgpt
```
La línea 11 en este código es la definición del constructor de la clase `ProjectefContext`. Aquí se está utilizando el patrón de inyección de dependencias en Entity Framework Core para configurar y proporcionar las opciones del contexto de la base de datos al constructor de la clase.

La línea se puede desglosar de la siguiente manera:

- `public`: Esto indica que el constructor es accesible desde fuera de la clase.
    
- `ProjectefContext`: Es el nombre del constructor de la clase, que coincide con el nombre de la clase en sí.
    
- `DbContextOptions<ProjectefContext> options`: Este es el parámetro del constructor. Está esperando un objeto de tipo `DbContextOptions<ProjectefContext>`, que contiene configuraciones y opciones para el contexto de la base de datos. Este objeto se utiliza para configurar cómo se conectará y comportará el contexto de la base de datos.
    
- `: base(options)`: Esta parte del constructor llama al constructor de la clase base `DbContext` con el objeto `options` como argumento. La clase `DbContext` es parte de Entity Framework Core y es la clase base para los contextos de la base de datos. Pasar las opciones al constructor de la clase base permite que Entity Framework Core configure el contexto de la base de datos según las opciones proporcionadas.
    

En resumen, esta línea de código define un constructor para la clase `ProjectefContext` que toma un objeto de opciones de contexto de base de datos como argumento y lo pasa al constructor de la clase base `DbContext` para configurar el contexto de la base de datos. Esto es fundamental para establecer la configuración de la base de datos y cómo se comportará el contexto al interactuar con la misma.
```

