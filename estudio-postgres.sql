-- ingresar a bd
\c db_1;

-- listar tablas
\dt;

-- crear tablas telefonos
CREATE TABLE telefonos (
  id serial,
  apellido varchar(50) not null,
  nombre varchar(50) not null,
  telefono varchar(50) not null
);

-- agregar columna direccion
ALTER TABLE telefonos ADD direction varchar(50);

-- insertar datos
INSERT INTO telefonos(apellido, nombre, telefono) VALUES (
  'Pino',
  'Fabian',
  '12345678'
);

INSERT INTO telefonos(apellido, nombre, telefono, direction)
VALUES (
    'Fernández',
    'Alex ',
    '12345678',
    'Calle 111'
);

INSERT INTO telefonos(apellido, nombre, telefono, direction)
VALUES (
    'Lorca',
    'Diego',
    '12345678',
    'Calle 222'
);

INSERT INTO telefonos(apellido, nombre, telefono, direction)
VALUES (
    'Moya',
    'Francisco',
    '12345678',
    'Calle 333'
);

INSERT INTO telefonos(apellido, nombre, telefono, direction)
VALUES (
    'Moya',
    'Francisco',
    '12345678',
    'Calle 444'
);
