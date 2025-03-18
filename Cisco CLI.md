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
# [[Modo Privilegiado]] (#)
Habilitar el [[Modo de configuración global]] en [[Switch]]es y [[Router]]s [[Cisco]]:
````
configure terminal
````

Mostrar la configuración actual del dispositivo:
````
show running-config
````

Guardar configuración actual en la memoria [[NVRAM]] del dispositivo, para que los cambios persistan tras un reinicio:
````
write
````

Guardar configuración de la memoria [[RAM]] en la memoria [[NVRAM]] del dispositivo:
````
copy running-config startup-config
````

# [[Modo de configuración global]] (config)
Cambiar el nombre de un [[Dispositivos de red]]:
````
hostname [NOMBRE]
````

Habilitar contraseña para pasar del [[Modo usuario]] al [[Modo Privilegiado]]:
````
enable secret [CONTRASEÑA]
````

Acceder a una interfaz para configurarla:
````
interface [INTERFAZ]
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
 
## Dentro de una interfaz
Cambiar la descripción de la interfaz:
````
description [DESCRIPCIÓN]
````

Asignar una dirección [[IP]]:
````
ip address [IP] [MÁSCARA DE SUBRED]
````

Tirar un puerto:
````
shutdown
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

# PENDIENTE DE CATALOGAR 

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
