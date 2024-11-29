Asociaciones lógicas entre dispositivos. 

Permite generar grupos en la [[Red]] que sean independientes del [[Segmento de red]] físico en que se encuentren. 

# Características
- [[Segmentación de redes]] para diversos grupos de dispositivos en los mismos [[Conmutador]]es.
- Proporciona una organización más manejable.
- [[Difusión]], [[Multidifusión]] y [[Unidifusión]] aisladas.
- Dominios más pequeños (permite aprovechar mejor las interfaces disponibles según su uso).

# Beneficios
- [[Seguridad]]
- Eficiencia de la tecnología
- Reducción de costos
- Mejor rendimiento
- Mejor gestión de la red

# Tipos
## VLAN 1
Predeterminada. Nunca se va a quitar. Nativa. Permite administrar todo. No se le puede cambiar el nombre tampoco. 

El problema es que se expone a [[Hacker]]s porque ya saben que siempre va a existir. Por esto se recomienda cambiar todas las interfaces de la [[VLAN]] 1 a otra [[VLAN]]

## VLAN de datos
Dedicado al tráfico generado por los usuarios.  La [[VLAN]] 1 es la predeterminada también para este caso.

## VLAN nativa
Se utiliza solo para [[Enlace troncal]]'es. En esas situaciones, actúa como un policía que se encarga de cuidad quién puede pasar y quién no.
Todas las tramas están etiquetadas con un [[Enlace troncal]] [[802.1Q]] excepto las de la [[VLAN]] nativa

## VLAN de administración
Se encarga del tráfico [[SSH]]/[[Telnet VTY]] y no maneja tráfico del usuario final. Se encarga de la configuración. 

Normalmente, es el [[SVI]] para el [[Conmutador]] de capa 2 ([[Enlace de datos]]).

## VLAN de voz
Requiere una [[VLAN]] separada porque el tráfico de voz requiere todo lo siguiente:
- [[Ancho de banda]] de banda asegurado y especial
- Alta prioridad de [[QoS]] 
- Capacidad de evitar la congestión
- Retraso de menos de 150ms desde el origen hasta el destino.

Todas las redes deben estar diseñadas para admitir voz.

# [[Enlace troncal]] de [[VLAN]] ([[Cisco]])
- Permitir más de una [[VLAN]]
- Extender la [[VLAN]] a través de toda la [[Red]]
- De forma predeterminada, admite todas las [[VLAN]]
- Soporta [[Enlace troncal]] [[IEEE 802.1Q]]


# Si no hubiera [[VLAN]]s
Todos los dispositivos conectados recibirían todo el tráfico de [[Unidifusión]], [[Multidifusión]] y [[Difusión]].

# Red con [[VLAN]]s
Habiendo [[VLAN]]s, el tráfico se limita a esa [[VLAN]]. Sin un dispositivo de capa 3 [[Red]] ([[Router]]), no pueden comunicarse entre sí los dispositivos en diferentes [[VLAN]]s. 

# Otros datos sobre [[VLAN]]s
Se pueden crear hasta 4096 [[VLAN]]s máximo. 

# Configuración


# Anexos
![[1.2 VLAN's.pdf]]