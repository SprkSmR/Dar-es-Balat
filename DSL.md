Digital Subscriber Line

Es una mejora al [[Modem Analógico]]. Ofrece un mayor [[Ancho de banda]] y permite el tráfico de voz y datos a través del mismo [[Local Loop]]. Línea de datos siempre activa.

Puede ser implementado como una tecnología **simétrica** o **asimétrica** y requiere terminar en un [[DSLAM]] del lado del [[Switch]] [[Telco]].

Es eficiente, pero puede degradar su rendimiento y velocidad si la distancia entre el [[Switch]] [[Telco]] y el cliente es muy larga, es decir a mayor distancia del [[CO]]

También influyen las calidades del [[Cableado]] del [[Local Loop]] y del [[DSLAM]].
## Tipos:
- ### [[ADSL]]
- ### [[CDSL]]
- ### [[VDSL]]
- ### [[SDSL]]
- ### [[HDSL]]
- ### [[IDSL]]

## Funcionamiento
![[Pasted image 20250109125905.png]]

1. La [[Interfaz]] recibe una dirección **Pública** desde la [[Red]] [[ISP]]
2. El [[Servidor]] [[DHCP]] del [[ISP]] es quien entrega la [[IP]] **Pública** asignada al punto 1. 
3. El [[Router]] actúa como un [[Servidor]] de [[DHCP]] para la [[LAN]], entregando direcciones [[IP]] **Privadas** a los dos [[Computador]]es de la [[LAN]].
4. Los [[Computador]]es emplearán [[IP]]s **Privadas** asignadas por el [[Servidor]] [[DHCP]] del [[Router]] el punto 3.
5. El [[Router de Acceso]] o [[Gateway]] realiza la traducción de direcciones desde la [[Red]] **Privada** hacia la [[Red]] **Pública** utilizando [[PAT]].

## Diagrama:

![[Pasted image 20241128061931.png]]