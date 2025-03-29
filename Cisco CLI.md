# General
Comandos que sirven desde [[Modo usuario]] (>) hasta [[Modo de configuración global]].

Habilitar el [[Modo Privilegiado]] en [[Switch]]es y [[Router]]s [[Cisco]]: 
````
enable
````

Negar un comando, para hacer lo opuesto:
````
no [COMANDO]
````

Salir del modo actual ([[Modo de configuración global]]  > [[Modo Privilegiado]] > [[Modo usuario]]):
````
exit
````

Sugerir opciones de comandos disponibles a partir del actual: 
````
?
````

# [[Modo Privilegiado]] (#)
Deshabilitar el [[Modo Privilegiado]] en [[Switch]]es y [[Router]]s [[Cisco]]: 
````
disable
````

Habilitar el [[Modo de configuración global]] en [[Switch]]es y [[Router]]s [[Cisco]]:
````
configure terminal
````

Mostrar la configuración actual del dispositivo:
````
show running-config
````

Mostrar la configuración almacenada en la [[NVRAM]] del dispositivo:
````
show startup-config
````


Guardarla configuración que está almacenada en un sitio, en otro. Por ejemplo, la configuración actual ([[RAM]]) en la memoria [[NVRAM]] del dispositivo, para que los cambios persistan tras un reinicio:
````
copy [startup-config | running-config | tftp | flash] [startup-config | running-config | tftp | flash]
````

Guardar configuración actual en la memoria [[NVRAM]] del dispositivo, para que los cambios persistan tras un reinicio (forma abreviada. No disponible en algunos equipos [[Legacy]]):
````
write
````

Habilitar reloj:
````
clock set [HH:MM:SS] [DIA] [MES] [AÑO]
````

Mostrar información de una interfaz:
````
show interface [INTERFAZ]
````

Mostrar información de una [[VLAN]](**para [[Switch]]es**):
````
show interface vlan [NÚMERO DE VLAN]
````

Muestra la versión del [[Cisco IOS]] y otros datos como el valor del [[Registro de Configuración]]: 
````
show version
````

Muestra la versión del [[Cisco IOS]] almacenada en la [[Memoria]] [[Flash]] y el espacio en la [[Memoria]]:
````
show flash
````

Ver si hay [[Boot System]]s configurados (cargado actualmente en [[RAM]]): 
````
show running-config
````

Ver el archivo de configuración actualmente guardado en [[NVRAM]]:
````
show startup-config
````

Reiniciar el dispositivo:
````
reload
````

Eliminar archivos en [[Memoria]] [[Flash]]. Después se pasa el nombre del archivo:
````
delete flash
````

# [[Modo de configuración global]] (config)
Deshabilitar el [[Modo de configuración global]] en [[Switch]]es y [[Router]]s [[Cisco]]:
````
end
````

Cambiar el nombre de un [[Dispositivos de red]]:
````
hostname [NOMBRE]
````

Habilitar contraseña para pasar del [[Modo usuario]] al [[Modo Privilegiado]] (texto plano):
````
enable password [CONTRASEÑA]
````

Habilitar contraseña para pasar del [[Modo usuario]] al [[Modo Privilegiado]] ([[MD5]]):
````
enable secret [CONTRASEÑA]
````

Crear una nueva [[VLAN]]:
````
vlan [NÚMERO DE VLAN]
````

Acceder a una interfaz para configurarla:
````
interface [INTERFAZ]
````

Acceder a una [[VLAN]] para configurarla (**para [[Switch]]es**):
````
interface vlan [NÚMERO DE VLAN]
````

Acceder a una [[Línea de acceso]] para configurarla:
````
line [LÍNEA] [RANGO INICIO] [RANGO FIN]
````

Permite ejecutar comandos del [[Modo Privilegiado]] en el [[Modo de configuración global]]:
````
do [COMANDO]
````

Permite crear un usuario en la [[Base de datos]] de [[Cisco]] para acceder al equipo por nombre y contraseña:
````
username [NOMBRE] privilege [NÚMERO DE PRIVILEGIO] secret [CONTRASEÑA]
````

Definir [[Puerta de Enlace Predeterminada]]:
````
ip default-gateway [IP DE LA PUERTA DE ENLACE]
````

Definir [[Registro de Configuración]]:
````
config-register [REGISTRO (DEFAULT=0x2102)]
````

Carga la [[Imagen]] del [[Cisco IOS]] desde una [[Memoria]] [[Flash]]:
````
boot system [flash | tftp] [NOMBRE DE LA IMAGEN]
````

## Dentro de una interfaz o [[VLAN]]
Cambiar la descripción de la interfaz o [[VLAN]]:
````
description [DESCRIPCIÓN]
````

Configurar nombre de [[VLAN]]: 
````
name [NOMBRE DE VLAN]
````

Asignar una dirección [[IP]]:
````
ip address [IP] [MÁSCARA DE SUBRED]
````

Tirar un puerto:
````
shutdown
````

Configurar mecanismo de transmisión [[Duplex]]: 
````
duplex [auto | half | full]
````

Configurar [[Ancho de banda]]: 
````
speed [AUTO | 10 | 100 | 1000]
````

Cambiar el modo de un puerto:
````
switchport mode [trunk | access]
````
	
Desactivar [[DTP]]:
````
switchport nonegotiate
````

## Dentro de una [[Línea de acceso]]
Configurar una contraseña para acceder por esta [[Línea de acceso]]:
````
password [CONTRASEÑA]
````

Habilitar autenticación (requiere que haya antes configurada una contraseña):
````
login
````

Solicita el inicio de sesión usando la [[Base de datos]] local del dispositivo (requiere que NO se tenga configurada una contraseña como antes) **ESTA ES LA RECOMENDACIÓN**:
````
login local
````

Hace que los mensajes del sistema aparezcan en una nueva línea sin interrumpir lo que estás escribiendo (por eso logging, de registro y synchronous, de que aparecen los registros a la par que sigues escribiendo):
````
logging synchronous
````

Saca al usuario tras un tiempo configurable de inactividad:
````
exec-timeout [MINUTOS] [SEGUNDOS]
````

Permite solo uno o ambos [[Protocolo]]s de acceso remoto ([[Telnet]] y [[SSH]]):
````
transport input [PROTOCOLO]
````

# Modo [[ROMmon]] (rommon #>)

Definir [[Registro de Configuración]]:
````
confreg [REGISTRO (DEFAULT=0x2102)]
````

Leer contenido e información de [[Memoria]] [[Flash]]:
````
dir flash:
````

Cargar una [[Imagen]] del [[Cisco IOS]] que esté almacenado en la [[Memoria]] [[Flash]]
````
boot [IMAGEN IOS]:
````

Cargar una [[Imagen]] del [[Cisco IOS]] que esté a través de la [[Red]] por medio de [[TFTP]]
````
tftpdnld [IMAGEN IOS]:
````

Salir del modo [[ROMmon]]
````
reset
````

# vvv PENDIENTE DE CATALOGAR vvv

````
end
````

````
exit
````

````
switchport mode [access | trunk] 
````

Dar de alta una interfaz.

**access** o **troncal**.
**access:** para un host, para una máquina
**troncal:** entre [[Switch]]es, actúa como oficial de tránsito

````
no ip domain lookup 
````

````
no shutdown 
````

````
running-config startup 
````

````
wr 
````

````
service password-encryption
````

````
password [contraseña]
````

````
login
````

````
enable secret [secret]
````

````
banner motd #[mensaje]#
````
## Activar una interfaz
````
interface *interfaz*
````
# Comandos para [[VLAN]]
## Mostrar información sobre [[VLAN]]s
````
show vlan [brief | id *vlan-id*]
````

## Crear [[VLAN]]
````
vlan *vlan-id*
````
Al crear una [[VLAN]] con este comando, no requiere un no shutdown

## Nombrar [[VLAN]]
````
name *nombre*
````

## Cambiar un puerto a otra [[VLAN]]
````
switchport access vlan *vlan-id*
````

## Eliminar configuración de [[VLAN]]
````
delete flash:vlan.dat 
````


# Comandos [[OSPF]]

````
show ip ospf neighbor 
````

````
show ip ospf database
````

````
show ip ospf database
````

````
show ip route
````

````
show ip protocols | include Router ID
````

````
router-id x.x.x.x
````
Asigna un [[Router ID]] 


# Configurar ruteo
## Configurar ruteo
````
router [tipo de ruteo, ej: OSPF]
````

## Configurar redes permitidas
````
network [redes permitidas (process ID)] [wildcard] [Area]
````

# [[DHCP]]
## Generar pool
````
ip dhcp pool [nombre]
````

## Dentro del modo de configuración de DHCP
### Asignar red desde la cual ofrecer las [[IP]]s(omarapesta)
````
network [red] [máscara]
````

### Asignar [[Gateway]] predeterminado para distribuir las [[IP]]s
````
default-router [ip de la interfaz del router]
````

### (Opcional) Asignar un servidor de [[DNS]]
````
dns-server [ip del servidor]
````

## Excluir direcciones [[IP]] del servicio [[DHCP]]
````
ip dhcp excluded-address [ip excluida | rango de ip's contiguas]
````
