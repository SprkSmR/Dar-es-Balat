# Iniciar servidor
```
sudo service postgresql start
```

# Acceder a un usuario sin contraseña
## Editar archivo pg_hba.conf

```
sudo nano /etc/postgresql/16/main/pg_hba.conf
```

## Cambiar method por trust

![[Pasted image 20240225234735.png]]

## Reiniciar servidor

```
sudo service postgresql restart
```

## Acceder

```
psql -U postgres
```


# Crear rol nuevo

```
CREATE ROLE wintermute WITH LOGIN PASSWORD 'your_password' SUPERUSER;
```

# Crear usuario nuevo

```
CREATE USER myuser WITH PASSWORD 'mypassword';

```

# Crear base de datos nueva

```
CREATE DATABASE mynewdatabase;
```


# Entrar con un usuario y con una base de datos

```
psql -U <username> -d <database>
```
