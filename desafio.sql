sudo -u postgres psql

CREATE DATABASE fernandolorca123;

\c fernandolorca123;

CREATE TABLE clientes (
  email VARCHAR(50),
  nombre VARCHAR,
  telefono VARCHAR(16),
  empresa VARCHAR(50),
  prioridad SMALLINT CHECK (prioridad >= 1 AND prioridad <= 10)
);

INSERT INTO clientes(email, nombre, telefono, empresa, prioridad)
VALUES (
  'florcapinto@gmail.com',
  'Fernando Lorca',
  '12345678',
  'Saesa',
  1
);

INSERT INTO clientes(email, nombre, telefono, empresa, prioridad)
VALUES (
  'correo1@gmail.com',
  'Persona 1',
  '12345678',
  'Desafío Latam1',
  3
);

INSERT INTO clientes(email, nombre, telefono, empresa, prioridad)
VALUES (
  'correo2@gmail.com',
  'Persona 2',
  '12345678',
  'Desafío Latam2',
  6
);

INSERT INTO clientes(email, nombre, telefono, empresa, prioridad)
VALUES (
  'correo3@gmail.com',
  'Persona 3',
  '12345678',
  'Desafío Latam3',
  9
);

INSERT INTO clientes(email, nombre, telefono, empresa, prioridad)
VALUES (
  'correo4@gmail.com',
  'Persona 4',
  '12345678',
  'Desafío Latam4',
  10
);

SELECT * FROM clientes WHERE prioridad >= 6;

SELECT * FROM clientes WHERE empresa = 'Saesa' OR prioridad = 10;

\q