Servicio de [[Azure]] basado en [[HTTP]] para [[hosting]] de aplicaciones web, [[API]]s [[REST]], y [[Backend]]s móviles. [[PaaS]].

Documentación:
[Overview - Azure App Service | Microsoft Learn](https://learn.microsoft.com/en-us/azure/app-service/overview)

# Qué ofrece:
- Seguridad
- [[Load balancing]]
- [[Autoscaling]]
- Gestión automatizada
- Capacidades de [[DevOps]]
- [[Continuous deployment]] ([[GitHub]], [[Docker Hub]]). 
- Certificados [[TLS]]/[[SSL]]

# Por qué usar

- Múltiples [[Lenguaje de programación]] y [[Framework]]s.
- Ambiente de producción gestionado (es decir, automáticamente mantiene actualizado y parchado todo el software).
- [[**Containerization**]] y [[Docker]]. 
- Optimización [[DevOps]].
- Escala global con alta disponibilidad. [[SLA]].
- Conexión a plataformas [[SaaS]] y datos [[on-premises]]. [[Conexiones híbridas]], [[Azure Virtual Networks]].
- Seguridad y [[Compliance]]
- Autenticación
- Plantillas
- [[Visual Studio]] y [[Visual Studio Code]].
- Integración con herramientas de [[Java]].
- Características de [[API]] y mobiles. [[CORS]].
- [[Serverless]].


# Limitaciones
- El portal [[Azure]] muestra solo características que funcionan en aplicaciones [[Linux]].
- #documentación 
```
- When deployed to built-in images, your code and content are allocated a storage volume for web content, backed by Azure Storage. The disk latency of this volume is higher and more variable than the latency of the container filesystem. Apps that require heavy read-only access to content files may benefit from the custom container option, which places files in the container filesystem instead of on the content volume.
```
