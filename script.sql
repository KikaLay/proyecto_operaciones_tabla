------Creación Base de datos-------
----- Parte 1 -----
--(1) Crear Base de datos 'posts'
CREATE DATABASE posts_db;
--Ingresar a la Base de datos 'posts'
\c posts_db;
--(2) Crear tabla 'post' con los atributoss id, nombre_usuario, fecha_creación, contenido y descripción
CREATE TABLE post(id SERIAL NOT NULL PRIMARY KEY, nombre_usuario VARCHAR(50) NOT NULL, fecha_creacion DATE, contenido VARCHAR(255) NOT NULL, descripcion VARCHAR(255) NOT NULL);
--(3) Insertar 3 post, 2 para el usuario 'Pamela' y uno para 'Carlos'
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('0001', 'Pamela', '2022-04-05', 'post1 pamela', 'yyy');
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('0002', 'Pamela', '2022-04-05', 'post2 pamela', 'yyy');
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('0003', 'Carlos', '2022-04-05', 'post3 carlos', 'yyy');
--(4) Modificar la tabla post, agregando la columna título
ALTER TABLE pos ADD titulo VARCHAR(25);
--(5) Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo ='titulo1' WHERE id = 1;
UPDATE post SET titulo ='titulo2' WHERE id = 2;
UPDATE post SET titulo ='titulo3' WHERE id = 3;
--(6) Insertar 2 post para el usuario 'Pedro'
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('0004', 'Pedro', '2022-04-05', 'post4 pedro', 'yyy','titulo 4');
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('0005', 'Pedro', '2022-04-05', 'post5 pedro', 'yyy','titulo 5');
--(7) Eliminar el post de Carlos
DELETE FROM post WHERE id = 3;
--(8) Ingresar un nuevo post para el usuario 'Carlos'
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('0006', 'Carlos', '2022-04-05', 'post6 carlos', 'yyy','titulo 6');
----- Parte 2 -----
--(1) Crear una nueva tabla llamada 'comentarios_table', con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts
CREATE TABLE comentario(id SERIAL NOT NULL PRIMARY KEY, id_post bigint not null, fecha DATE NOT NULL, hora_creacion TIME NOT NULL, contenido VARCHAR(255)NOT NULL, id_post VARCHAR(10),  FOREIGN KEY (id_post) REFERENCES post_table(id));
--(2) Crear 2 comentarios_table para el post de 'Pamela' y 4 para 'Carlos'
INSERT INTO comentario(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:51', 'XXX', '0001');
INSERT INTO comentario(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:52', 'XXX', '0002');
INSERT INTO comentario(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:52', 'XXX', '0006');
INSERT INTO comentario(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:53', 'XXX', '0006');
INSERT INTO comentario(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:53', 'XXX', '0006');
INSERT INTO comentario(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:54', 'XXX', '0006');
--(3) Crear un nuevo post para 'Margarita'
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('0007', 'Margarita', '2022-04-05', 'post7 margarita', 'yyy','titulo 7');
--(4) Ingresar 5 comentarios_table para el post de 'Margarita'
INSERT INTO comentarios(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:56', 'XXX', '0007');
INSERT INTO comentarios(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:57', 'XXX', '0007');
INSERT INTO comentarios(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:57', 'XXX', '0007');
INSERT INTO comentarios(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:58', 'XXX', '0007');
INSERT INTO comentarios(fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '11:58', 'XXX', '0007');