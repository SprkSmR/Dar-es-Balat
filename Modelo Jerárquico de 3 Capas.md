**Modelo Lógico** (ver [[Topología lógica]]). Determina las funciones de los [[Dispositivos de red]] en una [[Red]] según su ubicación. Al ser un modelo lógico, un mismo equipo puede tener dos funciones dentro de la misma [[Red]].

## Capas:
### Capa de Acceso:
Es la capa que da acceso a los recursos de la [[Red]]. 

Encontramos alguno de los siguientes:
- [[Switch]]
- [[ASA]]
- [[Router]]

### Capa de Distribución: 
Capa donde se implementan políticas de [[Seguridad]] de la red. Conecta la **Capa de acceso** con la **Capa de Núcleo**. 

Encontramos alguno de los siguientes:
- [[Switch]]
- [[Router]]
- [[ASA]]
- Cualquier otro dispositivo de red con capacidad de manejar políticas de [[Seguridad]].

### Capa de Núcleo:
A cargo del envío de data a la mayor tasa de transferencia posible dentro de la red. **No** maneja políticas de [[Seguridad]] ni conecta con equipos finales. Solo se conecta con los equipos en la **Capa de Distribución**.

## Diagrama:
![[Pasted image 20241128185628.png]]
