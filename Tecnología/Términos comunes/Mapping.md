En español, "mapeo".

Buscar la representación de un componente en otro. Ver la conexión entre un componente de un tipo hacia otro de uno distinto. 

# Mapeo de modelos usando atributos
## [[Entity Framework]]
### Data annotations
#### ID
La configuración de [[Entity Framework]] permite detectar automáticamente la [[PK]] de la entidad. Se basa en el nombre de la variable y de la clase. Sin embargo, se puede agregar la etiqueta:

```
[Key]
```

Esto lo vuelve más explícito y es lo recomendado. Por ejemplo:

```
    [Key]
    public Guid CategoriaID {get; set;}
```

##### Clave foránea
También se pueden declarar claves foráneas para relaciones entre entidades. Para ello, es necesaria la etiqueta ForeignKey. Esta recibe además un [[String]], el cual debe ser el nombre de la variable que guarda la [[PK]] de la entidad relacionada.

Ejemplo:
```
    [ForeignKey("CategoriaId")]
    public Guid CategoriaId {get; set;}
```

#### Required
Fuerza que un atributo sea requerido al momento de insertar un registro en la tabla.

Ejemplo: 

```
    [Required]
    public string Nombre {get; set;}
```


#### MaxLength
Determina el tamaño del valor del atributo máximo.

Ejemplo:
```
    [Required]
    [MaxLength(150)]
    public string Nombre {get; set;}
```


#### NotMapped
Permite omitir ciertos atributos para que no sean considerados en la base de datos. Permanecen para manejor exclusivo en la [[API]].

Ejemplo:

```
    [NotMapped]
    public string Resumen {get; set;}
```
