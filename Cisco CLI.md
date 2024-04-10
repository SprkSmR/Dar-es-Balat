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
