Object-Relational [[Mapping]]. Permite enlazar los datos de la base de datos con su homologo en el backend. El [[ORM]] se basa en la [[Programación orientada a objetos]] para crear esta relación. Las propiedades y atributos de la clase representarán columnas de la tabla de la base de datos. En lugar de realizar consultas [[SQL]] directas, se utilizan funciones. 

Se utiliza [[LINQ]] para reemplazar lo que normalmente haría [[SQL]].

Existen múltiples [[ORM]]s disponibles:
- [[Hibernate]]
- [[Dapper]]
- [[NHibernate]]
- [[Django ORM]]
# Desafíos de la conexión con una base de datos
- Mantener el esquema de la base de datos. Su consistencia ante los cambios. Trazabilidad de los cambios (ej: llevar un control de versiones de la base de datos).
- Crear consultas utilizando [[SQL]]. 
- Transformar los datos recibidos de la base de datos y volverlos utilizables en el lenguaje de programación utilizado en el [[Backend]]. Debe haber conversiones entre los tipos de datos para volverlos manipulables.
- Garantizar la seguridad al manipular los datos. Ver [[SQL injection]].