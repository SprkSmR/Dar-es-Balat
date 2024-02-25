Sirve para compilar el proyecto sin ejecutarlo, para saber que compila correctamente y no hay errores.
## [[dotNET (.NET)]]

#### Compilar el proyecto actual:

```
dotnet build
```

#### Compilar el proyecto actual en modo de lanzamiento:

```
dotnet build --configuration release
```

Permite compilar el proyecto en modo de lanzamiento. Compila sin los archivos de Debug (archivos de pruebas, etc) y utiliza las configuraciones especificadas en el proyecto para lanzamiento.