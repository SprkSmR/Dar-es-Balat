# Fundamentos
## ¿Qué es?
Plataforma de desarrollo de aplicaciones creada por Microsoft. Crear aplicaciones utilizando un solo [[SDK]] . Creada en 2016. Código abierto y gratuito. Multiplataforma. [[Csharp#]] y [[C++]]. Enfoque en la [[Nube]].

## .NET Framework vs .NET Core
[[dotNET (.NET) Framework]] y [[dotNET (.NET) Core]] no son lo mismo. El primero es el más viejo y el otro el más moderno, su evolución.
 
![[Pasted image 20231002122122.png]]
 
## Ventajas y usos
- [[Aplicaciones de consola]] y [[librerías]]
- Aplicaciones para Windows utilizando [[WinForms]], [[WPF]], [[UWP]], [[WinUI 3]].
- Aplicaciones [[Web]] y [[API]]s usando [[ASP.NET]]. Backend muy simple y eficiente. 
- Aplicaciones móviles usando [[Xamarin]] y [[NET MAUI]]. Desarrollo en [[Android]] y en [[iOS]] de manera nativa.
- Aplicaciones [[Web]] usando [[Web assembly]] con [[Blazor]].
- Integración con otros productos de Microsoft como [[Teams]], [[Azure]]. Se puede hacer con otras tecnologías, pero con [[dotNET (.NET)]] está garantizado por estar bajo el cobijo de Microsoft.
![[Pasted image 20231002123232.png]]

## Historia (línea de tiempo)
![[Pasted image 20231002123450.png]]
![[Pasted image 20231002123705.png]]
![[Pasted image 20231002123633.png]]
![[Pasted image 20231002123610.png]]
Muchas versiones tienen la etiqueta [[LTS]].

## Componentes
- [[CLR]] 
- [[Compilador Roslyn]] 
- [[Common language specification]]
- [[Common Type System]]


## dotNet CLI

**Documentación:** [.NET CLI | Microsoft Learn](https://learn.microsoft.com/en-us/dotnet/core/tools/)

Comando base:
```
dotnet 
```

Ver versión (por defecto es la más reciente):
```
dotnet --version
```

Ver todas las versiones instaladas:
```
dotnet --info
```


El [[CLI]] de [[dotNET (.NET)]]. Tiene dos tipos de comandos que se dividen en:
### Generales:
Permiten interactuar con el sistema operativo y sistema de archivos.
- [[Creación de proyectos]].
- [[Creación de archivos de configuración]]
- [[Invocación de herramientas]].
### Sobre un proyecto
Permiten interactuar con un proyecto ya creado. Deben ejecutarse dentro de un folder donde ya haya un proyecto creado.
- [[Restaurar]]
- [[Compilar]]
- [[Ejecutar]]
- [[Limpiar]]
- [[Ejecutar pruebas]]

## Estructura de un proyecto

![[Pasted image 20231002154953.png]]

Dependiendo de la plantilla, van a variar los archivos en gran medida. Sin embargo, los principales son:
#### Program.cs
Es el archivo principal del proyecto.
#### consoleapp.csproj 
archivo de configuración. Contiene todas las características del programa. Es un archivo [[XML]].  Declara el [[SDK]] a utilizar, OutputType (tipo de archivo que se va a generar para el proyecto). Versión del framework. Dos opciones nuevas para indicar configuraciones generales: ImplicitUsings (permite que no sea necesario importar explícitamente las librerías predeterminadas de [[dotNET (.NET)]] para utilizar sus funciones) y Nullable. También se incluyen en este archivo referencias a paquetes que sean necesarios para el proyecto.
![[Pasted image 20231002155151.png]]

### Archivos de compilación
#### Carpeta obj
![[Pasted image 20231003110700.png]]

Archivos temporales generados en la compilación. El [[Compilador]] traduce estos archivos y genera el paquete que se requiere para correr el programa. El resultado de la compilación de los archivos de obj es la carpeta bin.

#### Carpeta bin
![[Pasted image 20231003110858.png]]

Archivos específicos, incluye la lógica de la aplicación en el archivo **.dll**. Significa que es un archivo resultante de la compilación de un lenguaje de alto nivel. 

El archivo **.exe** es exclusivo para Windows y consiste en el programa ejecutable. En otros [[Sistemas Operativos]] generará otras extensiones de archivos.

#### Archivo global.json
Es un archivo de configuración global del proyecto.

Necesita crearse utilizando el comando:
```
dotnet new globaljson
```

![[Pasted image 20231003113846.png]]
Por defecto solo incluye la versión del [[SDK]]. Tiene múltiples configuraciones que pueden agregarse a manera de propiedades del [[json]], como:
- **allowPrerelease**: true/false. Habilita o deshabilita el uso de lanzamientos del [[SDK]] que no son oficiales. Por motivos de compatibilidad y estabilidad.

## NuGet

Gestor de paquetes de [[dotNET (.NET)]]. Permite administrar librerías y paquetes públicos creados por la comunidad. 

**Sitio web: ** [NuGet Gallery | Home](https://www.nuget.org/)

También se puede crear un servidor privado de NuGet, el cual permite tener librerías privadas solo para uso interno en la organización.

### Instalar paquetes NuGet
#### [[dotNET (.NET)]] [[CLI]]
```
dotnet add package [NOMBRE DEL PAQUETE] --version [VERSIÓN]
```

#### PackageReference
En el archivo **.csproj**:
```
<PackageReference Include="NOMBRE DEL PAQUETE" Version="VERSION"/>
```

Una vez instalado el paquete, utilizar la siguiente línea en el archivo .cs donde se necesite:

```
using [NOMBRE DE LA LIBRERÍA]
```
