Mecanismo de confiabilidad. Provee [[Recuperación de erroes]] durante la sesión de transmisión de datos entre dos dispositivos finales que han establecido una conexión.

Emplea los campos [[SEQUENCE]] y [[ACKNOWLEDGEMENT]] ([[ACK]]) de la cabecera [[TCP]] para llevar registro de cada [[Byte]] transferido para asegurar los [[Byte]]s perdidos son retransmitidos.

## Posibles escenarios:
### Sin pérdida de paquetes:
A este escenario se llama [[FORWARD ACKNOWLEDGEMENT]]

### Ejemplo con pérdida de algún paquete:
[[TCP]] realiza la recuperación de la data al solicitar el paquete faltante por medio de un [[ACK]]:

#### Diagrama:
![[Pasted image 20241129070314.png]]