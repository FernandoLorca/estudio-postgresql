# Estudio postgreSQL

## DBMS

- Sistema gestor de bases de datos (Database Management System)
- Resumen: Software que nos permite gestionar las bases de datos.
- Administrar, acceder, controlas permisos, respaldar, crear informes, etc.
- Este sistema necesita de alguna manera consultar estos datos y para ello, una alternativa es usar SQL.

## SQL

- SQL (Structures Query Language): lenguaje de consulta estructurada, diseñado para administrar y recuperar información de sistemas de gestión de bases de datos relacionales.
- Si un DBMS utiliza SQL sería 'un sistema de gestión de bases de datos relacionales' (RDBMS, por sis siglas en inglés)
- SQL es el lenguaje más común para realizar consultas en bases de datos.

## PostgreSQL

[Sitio web postgreSQL](https://www.postgresql.org/)
<br />
[Descargar postgreSQL](https://www.postgresql.org/download/)
<br />
[Documentación](https://www.postgresql.org/docs/)

- PostgreSQL, también llamado Postgres, es un sistema de gestión de bases de datos relacional orientado
  a objetos y de código abierto, publicado bajo la licencia PostgreSQL, similar a la BSD o la MIT.
- Como muchos otros proyectos de código abierto, el desarrollo de PostgreSQL no es manejado por una
  empresa o persona, sino que es dirigido por una comunidad de desarrolladores que trabajan de forma
  desinteresada, altruista, libre o apoyados por organizaciones comerciales. Dicha comunidad es
  denominada el PGDG (PostgreSQL Global Development Group).

## Ejecución de comandos

Para instalar postgress con wsl primero se debe tener activado wsl 2. Activar wsl 2:

Para revisar que distribucion y versión de wsl tengo:

```
wsl --list --verbose
```

Seleccionar wsl versión 1 o 2:

```
wsl --set-version <distribution name> <versionNumber>
```

Actualizar con `sudo apt update` y `sudo apt upgrade`. Posteriormente, para instalar postgres, ejecutar comando:

```
sudo apt installpostgresql postgresql-contrib
```

Confirmar la versión instalada:

```
psql --version
```

[Información de instalación de PostgreSQL en WSL](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-database)

Para comenzar el servicio postgres:

```
sudo service postgresql start
```

Para entrar al servicio postgres en mi terminal wsl debo ingresar el sgte comando

```
sudo -u postgres psql
```

- Para salir del servicio de postgres `\q`
- Para enlistar a los usuarios que tienen acceso a mis bases de datos `\du`

Crear base de datos:

```
CREATE DATABASE nombre_db;
```

Eliminar base de datos:

```
DROP DATABASE nombre_db
```

Para crear usuario en postgres

```
CREATE USER nombre_usuario WITH PASSWORD 'contraseña';
```

Para dar permisos de administrador al usuario:

```
ALTER USER nombre_usuario WITH SUPERUSER;
```

| Comando        | Acción                         |
| -------------- | ------------------------------ |
| `\c nombre_db` | Conectar a DB                  |
| `\l`           | Listar base de datos existente |
| `\du`          | Listar usuario                 |
| `\d`           | Listar relaciones              |
| `q o exit`     | Salir de la consola            |
| `\h`           | Lista de comandos              |

Ejercicio:

```
create database db_1;

-- ingresar a la base de datos
\c db_1;

-- listar tablas
\dt;

-- eliminar tabla telefonos si existe
drop table if exists telefonos;

-- crear tabla telefonos
create table telefonos (
    id serial,
    apellido varchar(50) not null,
    nombre varchar(50) not null,
    telefono varchar(50) not null
);

-- agregar columna direccion
alter table telefonos add direccion varchar(50);

-- insertar datos
insert into telefonos(apellido, nombre, telefono)
values (
    'Pino',
    'Fabian',
    '12345678'
);

insert into telefonos(apellido, nombre, telefono, direction)
values (
    'Fernández',
    'Alex ',
    '12345678',
    'Calle 111'
);

insert into telefonos(apellido, nombre, telefono, direction)
values (
    'Lorca',
    'Diego',
    '12345678',
    'Calle 222'
);

insert into telefonos(apellido, nombre, telefono, direction)
values (
    'Moya',
    'Francisco',
    '12345678',
    'Calle 333'
);

insert into telefonos(apellido, nombre, telefono, direction)
values (
    'Moya',
    'Francisco',
    '12345678',
    'Calle 444'
);

-- listar datos
select * from telefonos;

-- listar campos especificos
select nombre, telefono from telefonos;

-- concatenar datos y mostrar otro nombre de columna con alias
select nombre || ' ' || apellido as nombre_completo, telefono from telefonos;

-- listar datos con condicion
select * from telefonos where apellido = 'Pino';

-- listar datos y ordenar asc o desc
select * from telefonos order by nombre asc;

-- limitar cantidad de datos
select * from telefonos limit 2;

-- actualizar datos
update telefonos
    set telefono = '87654321'
    where id = 1;

-- eliminar datos
    delete from telefonos
    where id = 1;

-- eliminar tabla
drop table telefonos;
```
