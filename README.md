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

| nombre         | Apelido                        |
| -------------- | ------------------------------ |
| `\c nombre_db` | Conectar a DB                  |
| `\l`           | Listar base de datos existente |
| `\du`          | Listar usuario                 |
| `\d`           | Listar relaciones              |
| `q o exit`     | Salir de la consola            |
| `\h`           | Lista de comandos              |
