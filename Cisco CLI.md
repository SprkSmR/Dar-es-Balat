# Comandos generales
````
enable
````

````
configure terminal
````

````
do
````

````
no
````

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

## Excluir direcciones [[IP]] del servicio [[DHCHP]]
````
ip dhcp excluded-address [ip excluida | rango de ip's contiguas]
````
