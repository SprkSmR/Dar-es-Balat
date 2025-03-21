# [[Azure App Service]]
[Deployment best practices - Azure App Service | Microsoft Learn](https://learn.microsoft.com/en-us/azure/app-service/deploy-best-practices)
## [[Azure DevOps]]
Tiene [[Continuous delivery]] integrado a través del centro de despliegue en el [[Azure Portal]]. 

# Componentes
- Fuente de despliegue.
- Build [[Pipeline]]s.
- Mecanismos de despliegue.

# Fuente de despliegue
(Deployment source)
Localización del código de la aplicación. 
- En el caso de aplicaciones en producción, esta fuente suele ser el software de versiones, como [[GitHub]], [[BitBucket]] o [[Azure Repo]]s. 
- En el caso de escenarios de pruebas y desarrollo, el despliegue suele ser el proyecto en la máquina local. 
### [[Azure App Service]]
- Permite que sea [[OneDrive]] o [[Dropbox]].

# Build [[Pipeline]]
Lee el código fuente de la **Fuente de despliegue** y ejecuta una serie de pasos, tales como [[Compilar]] el código, [[minificar]] el [[HTML]], empaquetar componentes, etc. Es para lograr que la aplicación esté en un estado ejecutable. 

### [[Azure App Service]]
- Puede utilizarse [[Azure Pipelines]]

# Mecanismo de despliegue
Acción utilizada para colocar la aplicación compilada en el directorio [[wwwroot]] de la aplicación web (de algún proveedor de la [[Nube]]).  

### [[Azure App Service]]
Soporta los siguientes mecanismos:
- [[Kudu]] [[Endpoint]]s
- [[FTP]] y [[WebDeploy]]

# Ranuras de despliegue
Utilizar ranuras de despliegue para desplegar una nueva compilación de despliegue, siempre que sea posible. 

# Despliegue continuo de código
Si el proyecto cuenta con ramas designadas para pruebas, [[QA]] y demás, entonces cada una de esas ramas debería ser desplegada continuamente hacia una ranura ([[Gitflow]]). 
Sin embargo, en la ranura de producción no debería haber despliegue continuo de código. En cambio, lo correcto es que el código de la rama de producción sea desplegado a una ranura no productiva. Posteriormente, cuando los cambios estén listos, se intercambian las ranuras productiva y no productiva.

![[Pasted image 20231011090506.png]]

# Despliegue continuo de contenedores
Desplegar la [[Imagen]] del [[contenedor]] en una ranura provisional e intercambiar con la ranura de producción. 
Este tipo de automatización es más compleja que con código porque debe subirse la [[Imagen]] a un [[registro de contenedor]]  y actualizar la etiqueta de la [[Imagen]] en la [[Web App]].

Para cada rama que deba desplegarse en una ranura, lo siguiente debe automatizarse tras cada [[commit]] en la rama:
- [[Compilar]] y etiquetar la [[Imagen]]. Como parte del [[Pipeline]], etiquetar la [[Imagen]]con el ID del [[commit]] de [[Git]], marca de tiempo y otra información identificable. No utilizar la etiqueta "último", "final" o parecidos. 
- Subir la [[Imagen]] etiquetada al [[registro de contenedor]]. 
- Actualizar la ranura de despliegue con la nueva etiqueta de [[Imagen]]. El servicio se reinicia y jala la nueva [[Imagen]] del [[contenedor]] del [[registro de contenedor]].

![[Pasted image 20231011113021.png]]

# Consideraciones
## [[Cache]] Local
Para casos donde la aplicación necesita una unidad de almacenamiento de solo lectura de alto rendimiento con alta disponibilidad.

El [[Cache]] local debe usarse en conjunto con las ranuras de despliegue.
### [[Azure App Service]]
Se almacena en [[Azure Storage]], de forma duradera como un almacenamiento compartido. 


## Alto consumo de [[CPU]] o [[Memoria]]
Un alto consumo de ambos puede significar que la [[Maquina virtual]] está teniendo problemas procesando el despliegue. Como solución, se plantea escalar hacia arriba la cuenta de la estancia para llevar a cabo el despliegue. Una vez concluido, se regresa la cuenta de la estancia a su valor anterior.

