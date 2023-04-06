CREATE DATABASE actividades_agrupadas;

\c actividades_agrupadas

CREATE TABLE bitcoins (
    email VARCHAR(50),
    bitcoinAdress VARCHAR(50),
    monto DECIMAL(3, 2)
);

INSERT INTO bitcoins (email, bitcoinAdress, monto) VALUES ('jaime@email.com', '1HB8RTKNzFAQZ5LtLFRL3R7rbaLGuJt5Un', 0.32), ('diego@email.com', '15z6eAp7GGforurLkgntSLocJvTafMPThp', 0.08), ('francisca@email.com', '1NumuVDAuyYGy7b5G19X47dpvYRzRCCc4a', 0.04), ('francisca@email.com', '1NQpZnNzJL2ntadzXj2PbN9nGgEj8zeHVP', 0.28), ('jaime@email.com', '1NtsgLEjo3wXNH8ZSfQrF6CY3WRau3ic5Y', 0.53), ('camila@email.com', '1HbvwhvxXqSUB5FZGZjjrJzi7Y9SpUy4LW', 0.65), ('francisca@email.com', '14uX7dNXuU657AbNz3fh5K17UZYfmETidb', 0.38), ('diego@email.com', '18RfzSJsJJej9mzwFNoRs8hpg5tR8bmKim', 0.73), ('camila@email.com', '115A5LUmNVsjREzCHKbpuec2XueBViJG86', 0.19), ('jaime@email.com', '1DVP9ATi1H3QUcp7PQcSsTEJdMab1ZM78Q', 0.93), ('jaime@email.com', '1LcB8bsqyqRmJV8BSFdXMxFwnCWmKj3P7B', 0.83), ('diego@email.com', '1CNXt7BL8Cm5o8zd7jriC2bUoHmyVUENF7', 0.89), ('francisca@email.com', '17o3MhRdGL2e5uBUTCiH5mLbVxQ7JHbuck', 0.82), ('francisca@email.com', '1HtutwGyd573w1a8MB99yU3qZY2uUmvb5V', 0.18), ('camila@email.com', '12ZDMxk73Ej6zJZJ2XwnfmGUr4jBUDHmk9', 0.96), ('jaime@email.com', '13L3hqtQbAzVWbu5zhnMM7v6y7kEM4wW3K', 0.2), ('jaime@email.com', '14obJfGmgqFQeVeqBtpCWc7YE1r138djQt', 0.55), ('camila@email.com', '1MggBaGyQGDgSUcb63g4Pqb3FTUg3VQawy', 0.21), ('camila@email.com', '1L3281ktysdWfdkfGhq5SrmLkrwvTMdozS', 0.07), ('francisca@email.com', '19CLwEhWsVW2oHUC6Dy66abetBbqB4qTiQ', 0.53), ('jaime@email.com', '1A5oc25Q2Kj36aVT5JN3FBkXaHHrcKAR81', 0.43), ('francisca@email.com', '14qXaaDbKMiTbovAd8772uZ6YDy2bWeGZm', 0.04), ('jaime@email.com', '1M3dMYYngXbfbbjympmZAP57CaVDcx8Ffx', 0.95), ('diego@email.com', '16WDsrHZ375PKBCdYLhhxrGFtguDQtJDSq', 0.61), ('jaime@email.com', '1Jq2d8qk6a5p35Y3eqnrsgzDMdzTTCWUXv', 0.41), ('diego@email.com', '15CBFjbUw46xH2md5eEeFpzaLHRZgATuT7', 0.72), ('jaime@email.com', '1AFXgLKNCwPVTxVuHedTQrQY65yrAmyst5', 0.98), ('camila@email.com', '19iMdr6JK6HgarHsebHmMMVjdxnNbybG6L', 0.8), ('jaime@email.com', '1EL98fxNT1LyS6C8ckFBqocTho9NsEQATS', 0.96), ('camila@email.com', '1B8xZAcBbU3mTfb6bNJvGtLdPanyAK9kN6', 0.79);

-- emails unicos:
SELECT DISTINCT monto FROM bitcoins;

-- montos de transacción únicos:
SELECT COUNT(DISTINCT monto) FROM bitcoins;

--Datos actividad 3
CREATE TABLE ventas (
categoria VARCHAR(50),
monto INT
);

INSERT INTO ventas (categoria, monto) VALUES ('Books', 214), ('Games', 293), ('Baby', 241), ('Tools', 719), ('Tools', 385), ('Movies', 882), ('Outdoors', 654), ('Baby', 332), ('Grocery', 332), ('Toys', 952), ('Games', 682), ('Books', 527), ('Kids', 980), ('Grocery', 300);

-- Seleccionar el monto total de bitcoins de cada usuario
SELECT email, SUM(monto) AS monto_total FROM bitcoins GROUP BY email;

-- Seleccionar la cantidad de transacciones de cada categoría
SELECT categoria, SUM(monto) AS monto_final FROM ventas

-- Calcular el promedio de venta de cada categoría
SELECT categoria, ROUND(AVG(monto)) AS promedio_venta FROM ventas GROUP BY categoria;

-- Seleccionar el mínimo vendido de cada categoría
SELECT categoria, MIN(monto) AS minimo_venta FROM ventas GROUP BY categoria;

--Seleccionar el máximo vendido de cada categoría
SELECT categoria, MAX(monto) AS minimo_venta FROM ventas GROUP BY categoria;

-- Seleccionar la cantidad total de depósitos recibidos por cada usuario
SELECT email, COUNT(*) as total_depositos FROM bitcoins GROUP BY email;

-- Seleccionar el monto total de bitcoins de cada usuario
SELECT email, SUM(monto) as total_por_usuario FROM bitcoins GROUP BY email;

-- Seleccionar el menor depósito recibido por cada usuario
SELECT email, MIN(monto) as monto_minimo FROM bitcoins GROUP BY email;

-- Seleccionar el mayor depósito recibido por cada usuario
SELECT email, MAX(monto) as monto_minimo FROM bitcoins GROUP BY email;

-- Listar todos los correos de los usuarios que hayan recibido un solo depósito.
SELECT email, COUNT(*) as deposito_unico FROM deposits GROUP BY email HAVING COUNT(*) = 1