[[Enrutador]]

Dispositivo de **Capa 3** en el [[Modelo OSI]].

## Funciones principales:
- **PRINCIPAL:** Interconexión de distintos [[Segmentos de red]]. Cada uno de estos segmentos representan [[Red]]es o [[Subred]]es [[IP]].
- **PRINCIPAL:** Optimiza la [[Red]] al bloquear tanto los [[Dominios de colisión]] como los [[Dominios de broadcast]]. Cada [[Interfaz]] o [[Subinterfaz]] de un [[Router]] representa un [[Dominio de broadcast]] individual. 
- **PRINCIPAL:** Establece conexiones entre segmentos [[LAN]] y [[WAN]]. Entiende la [[Jerarquía]] de la [[Red]].
- **PRINCIPAL:** Aprende direcciones [[IP]] de [[Red]]es. 
- [[Escalabilidad]], soporte multimedia, soporte [[Multiprotocolo]] y ricas características de configuración por medio del [[Cisco IOS]]

## No tiene/hace:
- No entiende direcciones [[IP]] de [[Host]]s.

## Otras características y datos:
- Envía tráfico desde una [[Red]] origen hasta una [[Red]] destino. El [[Router]] toma el [[Paquete]] por una [[Interfaz]] y lo reenvía a otra [[Interfaz]], haciendo una actividad de [[Relay efectivo]] y una [[Conmutación]] entre [[Interfaces]]. 
- Verifica la información de las redes [[IP]] conocidas y almacenadas en una [[Tabla de Enrutamiento IP]] que consulta cada vez que recibe y debe reenviar un paquete.
- Hace [[Conmutación]] y [[Enrutamiento]] . 

## Imágenes:
### Imagen real:
![[Pasted image 20241128052657.png]]

### Imagen [[Diagrama de red]]:
![[Pasted image 20241128052625.png]]