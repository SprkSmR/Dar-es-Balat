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
end
````

````
exit
````

````
switchport mode [access | trunk] 
````

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

Dar de alta una interfaz.

**access** o **troncal**.
**access:** para un host, para una máquina
**troncal:** entre [[Switch]]es, actúa como oficial de tránsito

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
