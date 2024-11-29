Es el mecanismo a través del cual el [[Protocolo]] [[TCP]] logra el **Control de flujo**. Dos dispositivos finales negocian dinámicamente el tamaño de la ventana de transferencia de datos al momento de establecer la conexión. 


## Otros datos:
- Esta ventana permanece activa durante la vida de la conexión.
- La ventana puede incrementar su tamaño máximo hasta **65,535** [[Byte]]s o hasta que ocurra un error.
- El tamaño de la ventana se especifica en el campo [[WINDOW]] de la cabecera [[TCP]]. 

## Diagrama:
![[Pasted image 20241129070726.png]]
