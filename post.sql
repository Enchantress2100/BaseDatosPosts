CREATE DATABASE posts;

--acceder a la base de datos desde consola
\c posts
--una vez creada la base de datos, crear la tabla post con sus atributos
CREATE TABLE post (
    id int,
    usuario varchar(25),
    creacion varchar(20),
    contenido varchar(20),
    descripcion varchar(50),
    PRIMARY KEY (id)
);

--visualizar siempre
SELECT
    *
FROM
    post;

--insertar 3 post, 2 para usuario Pamela y 1 para Carlos
INSERT INTO post (id, usuario, creacion, contenido, descripcion)
    VALUES (1, 'Pamela', '2021,12,02', 'Materiales', 'Puedes crear muchos detalles con creatividad');

INSERT INTO post (id, usuario, creacion, contenido, descripcion)
    VALUES (2, 'Pamela', '2021,12,06', 'Regalos', 'opciones para comprar tus regalos de navidad');

INSERT INTO post (id, usuario, creacion, contenido, descripcion)
    VALUES (3, 'Carlos', '2021,12,10', 'Vinos', 'Maridaje de vinos para las fiestas');

--modificar la tabla post agregando la columna titulo
ALTER TABLE post
    ADD titulo VARCHAR(50);

--agregar titulos a las publicaciones
UPDATE post SET titulo = 'Ingenio para regalar'
WHERE id = 1;

UPDATE post SET titulo = 'Catálogo de regalos'
WHERE id = 2;

UPDATE post SET titulo = 'Las mejores opciones de vino'
WHERE id = 3;

--insertar dos post para el usuario Pedro
INSERT INTO post (id, usuario, creacion, contenido, descripcion, titulo)
    VALUES (4, 'Pedro', '2021,12,01', 'Fin de año', 'Organizar', 'Optimiza tus gastos');

INSERT INTO post (id, usuario, creacion, contenido, descripcion, titulo)
    VALUES (5, 'Pedro', '2021,12,08', 'Detalles', 'Ideas para sorprender', 'Los detalles son todo');

--eliminar el post de carlos
DELETE FROM post
WHERE id = 3;

--ingresar nuevo post para carlos
INSERT INTO post (id, usuario, creacion, contenido, descripcion, titulo)
    VALUES (6, 'Carlos', '2021,12,10', 'Gadgets', 'Opciones para todos', 'Ideas para regalar');

--segunda parte, creacion de nueva tabla
CREATE TABLE comentarios (
    id_com int,
    fecha date,
    hora time,
    contenido varchar(20),
    FOREIGN KEY (id_com) REFERENCES post (id)
);

--visualizar
SELECT
    *
FROM
    comentarios;

--crear 2 comentarios para el post de pamela y 4 para carlos
INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (1, '2021-12-11', '00:00:00', 'gracias, muy util');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (2, '2021-12-20', '00:00:00', 'me gusto mucho');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (6, '2021-12-16', '00:00:00', 'no me gusto');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (6, '2021-12-11', '00:00:00', 'me sirvio');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (6, '2021-12-12', '00:00:00', 'gracias');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (6, '2021-12-12', '00:00:00', 'buenisimo');

--crear post para margarita
INSERT INTO post (id, usuario, creacion, contenido, descripcion, titulo)
    VALUES (7, 'Margarita', '2021,12,02', 'Quesos', 'Tablas para navidad', 'quesos y tablas');

--5 comentarios para margarita
INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (7, '2021-12-04', '00:00:00', 'buenisimo');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (7, '2021-12-06', '00:00:00', 'me gusto');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (7, '2021-12-08', '00:00:00', 'gracias');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (7, '2021-12-12', '00:00:00', 'genial');

INSERT INTO comentarios (id_com, fecha, hora, contenido)
    VALUES (7, '2021-12-15', '00:00:00', 'bien');

