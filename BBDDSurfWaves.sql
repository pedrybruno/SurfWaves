CREATE TABLE mareas
(id_marea int NOT NULL PRIMARY KEY,
marea_alta varchar(50),
marea_baja varchar(50),
amanecer varchar(50),
anochecer varchar(50));

CREATE TABLE playa
(id_playa int NOT NULL PRIMARY KEY,
nombre varchar(50),
lugar varchar(50),
fondo varchar(50),
tipo_ola varchar(50),
nivel varchar(50),
locales varchar(50),
vestuarios varchar(50),
alquiler varchar(50),
id_marea int,
FOREIGN KEY (id_marea) references mareas(id_marea));

INSERT INTO mareas (id_marea, marea_alta, marea_baja, amanecer, anochecer)
VALUES (1, '11:54am 2.1m', '6:22pm 0.9m', '7:04am', '6:32pm');

INSERT INTO mareas (id_marea, marea_alta, marea_baja, amanecer, anochecer)
VALUES (2, '10:54am 3.1m', '5:22pm 1.0m', '7:02am', '6:30pm');

INSERT INTO mareas (id_marea, marea_alta, marea_baja, amanecer, anochecer)
VALUES (3, '12:54pm 6.1m', '7:22pm 2.9m', '7:15am', '6:45pm');

INSERT INTO mareas (id_marea, marea_alta, marea_baja, amanecer, anochecer)
VALUES (4, '9:54am 1.1m', '5:22pm 0.4m', '7:10am', '6:20pm');

INSERT INTO mareas (id_marea, marea_alta, marea_baja, amanecer, anochecer)
VALUES (5, '11:50am 1.1m', '6:20pm 0.5m', '7:00am', '6:28pm');

INSERT INTO playa (id_playa, nombre, lugar, fondo, tipo_ola, nivel, locales, vestuarios, alquiler, id_marea)
VALUES (1, 'La Cicer', 'Las Palmas de Gran Canaria', 'Arena', 'Derechas y Izquierdas', 'Todos', 'No', 'Si', 'Si', 1);

INSERT INTO playa (id_playa, nombre, lugar, fondo, tipo_ola, nivel, locales, vestuarios, alquiler, id_marea)
VALUES (2, 'Confital', 'Las Palmas de Gran Canaria', 'Roca', 'Derechas', 'Avanzado', 'Si, muchos', 'No', 'No', 2);

INSERT INTO playa (id_playa, nombre, lugar, fondo, tipo_ola, nivel, locales, vestuarios, alquiler, id_marea)
VALUES (3, 'Fronton', 'Galdar', 'Roca', 'Tuberas', 'Avanzado', 'Si', 'No', 'Si', 3);

INSERT INTO playa (id_playa, nombre, lugar, fondo, tipo_ola, nivel, locales, vestuarios, alquiler, id_marea)
VALUES (4, 'Vagabundos', 'San Felipe', 'Arena', 'Derechas y Izquierdas', 'Todos', 'Algunos', 'No', 'No', 4);

INSERT INTO playa (id_playa, nombre, lugar, fondo, tipo_ola, nivel, locales, vestuarios, alquiler, id_marea)
VALUES (5, 'La Laja', 'Las Palmas de Gran Canaria', 'Arena', 'Izquierdas', 'Intermedio', 'No', 'No', 'No', 5);

INSERT INTO playa (id_playa, nombre, lugar, fondo, tipo_ola, nivel, locales, vestuarios, alquiler, id_marea)
VALUES (6, 'Las canteras', 'Las Palmas de Gran Canaria', 'Arena', 'Derechas y Izquierdas', 'Todos', 'No', 'Si', 'No', 1);

INSERT INTO playa (id_playa, nombre, lugar, fondo, tipo_ola, nivel, locales, vestuarios, alquiler, id_marea)
VALUES (7, 'Lloret', 'Las Palmas de Gran Canaria', 'Arena', 'Derechas', 'Intermedio', 'Si', 'No', 'No', 1);