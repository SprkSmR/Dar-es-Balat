[[Conmutador]]

Dispositivo de **Capa 2** del [[Modelo OSI]]. Hay [[Switch]]es que pueden trabajar en capas superiores como **Capa 3** y **Capa 4**. Estos son llamados [[Switch Multicapa]].

## Funciones principales:
- Interconexión de los dispositivos de red en una [[Topología física de estrella]].
- Regeneración de la [[Señal]].
- **PRINCIPAL:** Entiende y envía tráfico basado en la dirección [[MAC]] de la [[Tarjeta de red]] de un [[Computador]].
- **PRINCIPAL:** Optimiza el tráfico por medio de [[Segmentación de redes]] para tener [[Dominios de colisión]] más pequeños, pero mantiene un solo [[Dominio de broadcast]].

## No tiene/hace:
- No entiende de direcciones [[IP]]. Solo [[MAC]]S, a no ser que sea un [[Switch Multicapa]] de **Capa 3**.

## Otras características y datos:
- Guarda una tabla de direcciones llamada [[MAC Address Table]].
- Un Switch retiene una dirección [[MAC]] por 5 minutos, si no se usa activamente.
- Al tratar de conectar dos Switches, se genera un [[Uplink]] donde ambos tratarán de aprender mutuamente sobre ellos, solicitándose su dirección [[MAC]] mutuamente. Esto genera lo que se conoce como un Loop. Para romper este protocolo, es necesario un [[STP]].

## Tipos:
Un [[Switch]] obedece los siguientes principios: **costo**, características de las [[Interfaces]]  y la [[Jerarquía]] del equipo en el [[Diagrama de red]].

Un [[Switch]] puede ubicarse en las siguientes funciones:

- [[Switch de Acceso]]
- [[Switch de Distribución]]
- [[Switch de Núcleo]]
 
## [[Beneficios del Uso de Switches]]

# Cómo aprende un Switch
#chatgpt 
**Por inundación:** La inundación de un switch es un fenómeno que ocurre en redes de computadoras cuando un switch reenvía todos los paquetes de datos entrantes a todas las interfaces, excepto a la interfaz por la cual se recibió el paquete. Este comportamiento puede ocurrir en ciertas circunstancias, como cuando el switch no tiene suficiente información sobre la ubicación de las direcciones MAC de los dispositivos conectados a sus puertos, lo que resulta en una estrategia de reenvío por difusión para garantizar que los paquetes lleguen a su destino.

En términos de aprendizaje, podemos considerar la inundación como una etapa inicial en la que el switch está "aprendiendo" la topología de la red. Cuando un switch recibe un paquete y no tiene información sobre la ubicación del dispositivo de destino en su tabla de direcciones MAC, opta por inundar la red, enviando el paquete a todas las interfaces, excepto la interfaz por la que se recibió el paquete. Si el dispositivo de destino está en la red, responderá al paquete, permitiendo al switch aprender la dirección MAC de ese dispositivo y actualizar su tabla de direcciones MAC para futuras comunicaciones.

Entonces, la inundación puede considerarse como una fase inicial de aprendizaje para el switch, ya que le permite recopilar información sobre la ubicación de los dispositivos en la red. Una vez que el switch ha aprendido las direcciones MAC de los dispositivos conectados a sus puertos, puede realizar un reenvío selectivo más eficiente, evitando la inundación y mejorando el rendimiento de la red.

# Tecnologías verdes en Switches
Algunos [[Switch]]es tienen un puerto de alimentación que permite que se conecten entre sí hasta 9 [[Switch]]es, de forma que solo uno de ellos deba estar conectado a la [[Corriente eléctrica]] y alimente al resto. 


## Imágenes:
### Imagen real:
![[Pasted image 20241128052429.png]]


