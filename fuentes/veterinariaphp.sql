-- Eliminar tablas si existen
DROP TABLE IF EXISTS PERRO_RECIBE_SER;
DROP TABLE IF EXISTS EMPLEADOS;
DROP TABLE IF EXISTS PERROS;
DROP TABLE IF EXISTS SERVICIOS;
DROP TABLE IF EXISTS CLIENTES;

-- Crear tabla de CLIENTES
CREATE TABLE CLIENTES (
    Dni VARCHAR(9) PRIMARY KEY,
    Nombre VARCHAR(15) NOT NULL,
    Apellido1 VARCHAR(15) NOT NULL,
    Apellido2 VARCHAR(15) NOT NULL, 
    Direccion VARCHAR(200),
    Tlfno VARCHAR(9)
);

-- Insertar registros en la tabla CLIENTES
INSERT INTO CLIENTES (Dni, Nombre, Apellido1, Apellido2, Direccion, Tlfno) VALUES 
('12345678A', 'Carlos', 'García', 'López', 'Calle Mayor$10$45600$Talavera de la Reina$Toledo', '600000001'),
('12345678B', 'María', 'Martínez', 'Fernández', 'Avenida de la Constitución$20$45600$Talavera de la Reina$Toledo', '600000002'),
('12345678C', 'Juan', 'Rodríguez', 'Gómez', 'Calle San Juan$15$45600$Talavera de la Reina$Toledo', '600000003'),
('12345678D', 'Ana', 'González', 'Ruiz', 'Plaza del Reloj$5$45600$Talavera de la Reina$Toledo', '600000004'),
('12345678E', 'Pedro', 'Hernández', 'Díaz', 'Calle del Sol$25$45600$Talavera de la Reina$Toledo', '600000005'),
('12345678F', 'Laura', 'Jiménez', 'Moreno', 'Avenida de los Reyes Católicos$12$45600$Talavera de la Reina$Toledo', '600000006'),
('32345678A', 'Raúl', 'Fernández', 'Pérez', 'Calle del Castillo$1$45560$Oropesa$Toledo', '600000026'),
('32345678B', 'Sofía', 'Moreno', 'García', 'Calle Mayor$5$45560$Oropesa$Toledo', '600000027'),
('32345678C', 'Ignacio', 'Serrano', 'Hernández', 'Plaza de la Villa$3$45560$Oropesa$Toledo', '600000028'),
('32345678D', 'Julia', 'Blanco', 'López', 'Calle Real$10$45560$Oropesa$Toledo', '600000029'),
('32345678E', 'Miguel', 'Núñez', 'Martín', 'Calle Iglesia$7$45560$Oropesa$Toledo', '600000030'),
('32345678F', 'César', 'Rojas', 'Mendoza', 'Calle San Miguel$2$45567$Lagartera$Toledo', '600000031'),
('32345678G', 'Paula', 'Cruz', 'Torres', 'Calle del Sol$6$45567$Lagartera$Toledo', '600000032'),
('32345678H', 'Héctor', 'Medina', 'Ruiz', 'Avenida de la Constitución$4$45672$Ventas de San Julián$Toledo', '600000033'),
('32345678I', 'Aitana', 'Vega', 'Romero', 'Calle Nueva$11$45672$Ventas de San Julián$Toledo', '600000034'),
('32345678J', 'Rubén', 'González', 'Díaz', 'Calle Ancha$9$45634$Calzada de Oropesa$Toledo', '600000035'),
('12345678G', 'Luis', 'Sánchez', 'Pérez', 'Calle Nueva$30$45600$Talavera de la Reina$Toledo', '600000007'),
('12345678H', 'Carmen', 'Torres', 'Ramírez', 'Calle Real$8$45600$Talavera de la Reina$Toledo', '600000008'),
('12345678I', 'Miguel', 'Vázquez', 'Álvarez', 'Avenida de la Libertad$35$45600$Talavera de la Reina$Toledo', '600000009'),
('12345678J', 'Sara', 'Romero', 'García', 'Calle Jardines$17$45600$Talavera de la Reina$Toledo', '600000010'),
('12345678K', 'David', 'Molina', 'Ortiz', 'Calle Olmo$2$45600$Talavera de la Reina$Toledo', '600000011'),
('12345678L', 'Elena', 'Domínguez', 'Núñez', 'Plaza Mayor$1$45600$Talavera de la Reina$Toledo', '600000012'),
('12345678M', 'Fernando', 'Santos', 'Gutiérrez', 'Avenida de la Paz$40$45600$Talavera de la Reina$Toledo', '600000013'),
('12345678N', 'Isabel', 'Ramos', 'Méndez', 'Calle Gran Vía$22$45600$Talavera de la Reina$Toledo', '600000014'),
('12345678O', 'Javier', 'Navarro', 'Cano', 'Calle del Río$14$45600$Talavera de la Reina$Toledo', '600000015'),
('12345678P', 'Patricia', 'Ortega', 'Serrano', 'Calle Luna$27$45600$Talavera de la Reina$Toledo', '600000016'),
('12345678Q', 'Alberto', 'Rubio', 'Blanco', 'Avenida del Prado$19$45600$Talavera de la Reina$Toledo', '600000017'),
('12345678R', 'Raquel', 'Gil', 'Martín', 'Calle Verde$13$45600$Talavera de la Reina$Toledo', '600000018'),
('12345678S', 'Andrés', 'Castro', 'Ruiz', 'Plaza Nueva$7$45600$Talavera de la Reina$Toledo', '600000019'),
('12345678T', 'Marta', 'Vega', 'Cabrera', 'Calle Azul$9$45600$Talavera de la Reina$Toledo', '600000020'),
('22345678A', 'Roberto', 'Martínez', 'Alonso', 'Calle de la Constitución$12$45510$Fuensalida$Toledo', '600000021'),
('22345678B', 'Alicia', 'Gómez', 'Fernández', 'Calle de la Iglesia$5$45510$Fuensalida$Toledo', '600000022'),
('22345678C', 'Manuel', 'López', 'García', 'Calle Real$8$45510$Fuensalida$Toledo', '600000023'),
('22345678D', 'Laura', 'Pérez', 'Sánchez', 'Calle San Juan$3$45510$Fuensalida$Toledo', '600000024'),
('22345678E', 'José', 'Rodríguez', 'Hernández', 'Avenida de la Paz$10$45510$Fuensalida$Toledo', '600000025');

CREATE TABLE PERRO_RECIBE_SER (
    sr_cod INT PRIMARY KEY AUTO_INCREMENT,
    cod_servicio VARCHAR(6) NOT NULL,
    ID_Perro INT,
    Fecha DATE NOT NULL,
    Incidencias VARCHAR(400),
    Precio_final DECIMAL(5,2) NOT NULL,
    Dni VARCHAR(9) NOT NULL,
    FOREIGN KEY (Dni) REFERENCES EMPLEADOS(Dni),
    FOREIGN KEY (cod_servicio) REFERENCES SERVICIOS(Codigo),
    FOREIGN KEY (ID_Perro) REFERENCES PERROS(ID_Perro)
);

INSERT INTO PERRO_RECIBE_SER (sr_cod, cod_servicio, ID_Perro, Fecha, Incidencias, Precio_final, Dni) VALUES 
(1, 'SVBE03', 1, CURDATE() - INTERVAL 38 DAY, 'Sin incidencias', 9.99, '34567890C'),
(2, 'SVBE03', 2, CURDATE() - INTERVAL 38 DAY, 'Sin incidencias', 9.99, '34567890C'),
(3, 'SVBE03', 3, CURDATE() - INTERVAL 37 DAY, 'Sin incidencias', 9.99, '34567890C'),
(4, 'SVBE03', 4, CURDATE() - INTERVAL 37 DAY, 'No se realiza el servicio porque trae un cristal incrustado en la pezuña.', 0.00, '34567890C'),
(5, 'SVBE03', 5, CURDATE() - INTERVAL 36 DAY, 'Ayuda personal auxiliar. Perro muy inquieto', 15.00, '34567890C'),
(6, 'SVBE03', 6, CURDATE() - INTERVAL 36 DAY, 'Sin incidencias', 9.99, '34567890C'),
(7, 'SVBE03', 7, CURDATE() - INTERVAL 35 DAY, 'Ayuda personal auxiliar: el perro está muy nervioso', 15.00, '34567890C'),
(8, 'SVBE03', 9, CURDATE() - INTERVAL 35 DAY, 'Sin incidencias', 9.99, '34567890C'),
(9, 'SVBE03', 10, CURDATE() - INTERVAL 35 DAY, 'Ayuda personal auxiliar: el perro está asustado', 15.00, '34567890C'),
(10, 'SVBE04', 20, CURDATE() - INTERVAL 34 DAY, 'Sin incidencias', 10.99, '34567890C'),
(11, 'SVBE03', 21, CURDATE() - INTERVAL 34 DAY, 'Sin incidencias', 9.99, '34567890C'),
(12, 'SVBE03', 22, CURDATE() - INTERVAL 33 DAY, 'Sin incidencias', 9.99, '34567890C'),
(13, 'SVBE03', 23, CURDATE() - INTERVAL 33 DAY, 'El perro viene agresivo, no se le puede practicar el servicio', 0.00, '34567890C'),
(14, 'SVBE03', 24, CURDATE() - INTERVAL 31 DAY, 'Sin incidencias', 9.99, '34567890C'),
(15, 'SVBE04', 25, CURDATE() - INTERVAL 31 DAY, 'Ayuda P. Auxiliar: perro asustado', 15.00, '23456789B'),
(16, 'SVBE04', 26, CURDATE() - INTERVAL 31 DAY, 'Sin incidencias', 10.99, '34567890C'),
(17, 'SVBE04', 30, CURDATE() - INTERVAL 29 DAY, 'Sin incidencias', 10.99, '23456789B'),
(18, 'SVBE03', 35, CURDATE() - INTERVAL 28 DAY, 'Ayuda personal auxiliar: perro nervioso', 15.00, '34567890C'),
(19, 'SVBE03', 36, CURDATE() - INTERVAL 28 DAY, 'Sin incidencias', 9.99, '34567890C'),
(20, 'SVBE03', 37, CURDATE() - INTERVAL 27 DAY, 'Sin incidencias', 9.99, '34567890C'),
(21, 'SVBE03', 38, CURDATE() - INTERVAL 26 DAY, 'Sin incidencias', 9.99, '34567890C'),
(22, 'SVBE04', 39, CURDATE() - INTERVAL 26 DAY, 'Sin incidencias', 10.99, '34567890C'),
(23, 'SVBE03', 40, CURDATE() - INTERVAL 25 DAY, 'Sin incidencias', 9.99, '34567890C'),
(24, 'SVBE03', 41, CURDATE() - INTERVAL 25 DAY, 'Sin incidencias', 9.99, '34567890C'),
(25, 'SVBE04', 42, CURDATE() - INTERVAL 24 DAY, 'Sin incidencias', 10.99, '34567890C'),
(26, 'SVBE03', 43, CURDATE() - INTERVAL 24 DAY, 'Ayuda personal auxiliar: perro nervioso', 15.00, '34567890C'),
(27, 'SVBE03', 44, CURDATE() - INTERVAL 23 DAY, 'Sin incidencias', 9.99, '34567890C'),
(28, 'SVBE03', 45, CURDATE() - INTERVAL 23 DAY, 'Sin incidencias', 9.99, '34567890C'),
(29, 'SVBE03', 46, CURDATE() - INTERVAL 22 DAY, 'Sin incidencias', 9.99, '34567890C'),
(30, 'SVBE03', 47, CURDATE() - INTERVAL 22 DAY, 'Ayuda personal auxiliar: perro muy inquieto', 15.00, '34567890C'),
(31, 'SVBE03', 48, CURDATE() - INTERVAL 21 DAY, 'Sin incidencias', 9.99, '34567890C'),
(32, 'SVBE03', 49, CURDATE() - INTERVAL 21 DAY, 'Sin incidencias', 9.99, '34567890C'),
(33, 'SVBE03', 50, CURDATE() - INTERVAL 20 DAY, 'Sin incidencias', 9.99, '34567890C');
(34, 'SVBE03', 51, CURDATE() - INTERVAL 19 DAY, 'Sin incidencias', 9.99, '34567890C'),
(35, 'SVBE03', 52, CURDATE() - INTERVAL 19 DAY, 'Sin incidencias', 9.99, '34567890C'),
(36, 'SVBE04', 53, CURDATE() - INTERVAL 18 DAY, 'Ayuda personal auxiliar: perro muy inquieto', 15.00, '23456789B'),
(37, 'SVBE03', 54, CURDATE() - INTERVAL 18 DAY, 'Sin incidencias', 9.99, '34567890C'),
(38, 'SVBE03', 55, CURDATE() - INTERVAL 17 DAY, 'Perro muy nervioso, necesita ayuda de personal auxiliar', 15.00, '34567890C'),
(39, 'SVBE04', 56, CURDATE() - INTERVAL 17 DAY, 'Sin incidencias', 10.99, '23456789B'),
(40, 'SVBE03', 57, CURDATE() - INTERVAL 16 DAY, 'Perro agresivo, no se realiza el servicio', 0.00, '34567890C'),
(41, 'SVBE03', 58, CURDATE() - INTERVAL 16 DAY, 'Sin incidencias', 9.99, '34567890C'),
(42, 'SVBE04', 59, CURDATE() - INTERVAL 15 DAY, 'Perro muy asustado, necesita ayuda auxiliar', 15.00, '23456789B'),
(43, 'SVBE03', 60, CURDATE() - INTERVAL 15 DAY, 'Sin incidencias', 9.99, '34567890C'),
(44, 'SVBE03', 61, CURDATE() - INTERVAL 14 DAY, 'Perro muy inquieto, servicio complicado', 15.00, '34567890C'),
(45, 'SVBE04', 62, CURDATE() - INTERVAL 14 DAY, 'Sin incidencias', 10.99, '23456789B'),
(46, 'SVBE03', 63, CURDATE() - INTERVAL 13 DAY, 'Sin incidencias', 9.99, '34567890C'),
(47, 'SVBE03', 64, CURDATE() - INTERVAL 13 DAY, 'Ayuda auxiliar: perro muy asustado', 15.00, '23456789B'),
(48, 'SVBE04', 65, CURDATE() - INTERVAL 12 DAY, 'Sin incidencias', 10.99, '34567890C'),
(49, 'SVBE03', 66, CURDATE() - INTERVAL 12 DAY, 'Sin incidencias', 9.99, '34567890C'),
(50, 'SVBE03', 67, CURDATE() - INTERVAL 11 DAY, 'Perro agresivo, no se realiza el servicio', 0.00, '23456789B'),
(51, 'SVBE03', 68, CURDATE() - INTERVAL 11 DAY, 'Sin incidencias', 9.99, '34567890C'),
(52, 'SVBE04', 69, CURDATE() - INTERVAL 10 DAY, 'Perro muy nervioso, requiere asistencia extra', 15.00, '23456789B'),
(53, 'SVBE03', 70, CURDATE() - INTERVAL 10 DAY, 'Sin incidencias', 9.99, '34567890C'),
(54, 'SVBE03', 71, CURDATE() - INTERVAL 9 DAY, 'Sin incidencias', 9.99, '34567890C'),
(55, 'SVBE03', 72, CURDATE() - INTERVAL 9 DAY, 'Ayuda auxiliar: perro inquieto', 15.00, '23456789B'),
(56, 'SVBE04', 73, CURDATE() - INTERVAL 8 DAY, 'Sin incidencias', 10.99, '34567890C'),
(57, 'SVBE03', 74, CURDATE() - INTERVAL 8 DAY, 'Sin incidencias', 9.99, '34567890C'),
(58, 'SVBE03', 75, CURDATE() - INTERVAL 7 DAY, 'Perro nervioso, asistencia extra', 15.00, '23456789B'),
(59, 'SVBE03', 76, CURDATE() - INTERVAL 7 DAY, 'Sin incidencias', 9.99, '34567890C'),
(60, 'SVBE04', 77, CURDATE() - INTERVAL 6 DAY, 'Sin incidencias', 10.99, '23456789B'),
(61, 'SVBE03', 78, CURDATE() - INTERVAL 6 DAY, 'Sin incidencias', 9.99, '34567890C'),
(62, 'SVBE03', 79, CURDATE() - INTERVAL 5 DAY, 'Perro agresivo, no se realiza el servicio', 0.00, '23456789B'),
(63, 'SVBE03', 80, CURDATE() - INTERVAL 5 DAY, 'Sin incidencias', 9.99, '34567890C'),
(64, 'SVBE04', 81, CURDATE() - INTERVAL 4 DAY, 'Sin incidencias', 10.99, '23456789B'),
(65, 'SVBE03', 82, CURDATE() - INTERVAL 4 DAY, 'Sin incidencias', 9.99, '34567890C'),
(66, 'SVBE03', 83, CURDATE() - INTERVAL 3 DAY, 'Ayuda auxiliar: perro inquieto', 15.00, '23456789B'),
(67, 'SVBE03', 84, CURDATE() - INTERVAL 3 DAY, 'Sin incidencias', 9.99, '34567890C'),
(68, 'SVBE04', 85, CURDATE() - INTERVAL 2 DAY, 'Sin incidencias', 10.99, '23456789B'),
(69, 'SVBE03', 86, CURDATE() - INTERVAL 2 DAY, 'Sin incidencias', 9.99, '34567890C'),
(70, 'SVBE03', 87, CURDATE() - INTERVAL 1 DAY, 'Perro muy asustado, asistencia extra', 15.00, '23456789B'),
(71, 'SVBE03', 88, CURDATE() - INTERVAL 1 DAY, 'Sin incidencias', 9.99, '34567890C'),
(72, 'SVBE04', 89, CURDATE(), 'Sin incidencias', 10.99, '23456789B'),
(73, 'SVBE03', 90, CURDATE(), 'Sin incidencias', 9.99, '34567890C');
(104,'SVNUT2',1,DATE_SUB(NOW(), INTERVAL 24 DAY),'Sin incidencias',30,'45678901A'), 
(105,'SVNUT2',1,DATE_SUB(NOW(), INTERVAL 9 DAY),'Sin incidencias',30,'45678901A'), 
(106,'SVNUT2',10,DATE_SUB(NOW(), INTERVAL 24 DAY),'Sin incidencias',30,'45678901A'), 
(107,'SVNUT2',10,DATE_SUB(NOW(), INTERVAL 9 DAY),'Sin incidencias',30,'45678901A'), 
(108,'SVNUT2',15,DATE_SUB(NOW(), INTERVAL 16 DAY),'Sin incidencias',30,'45678901A'), 
(109,'SVNUT2',15,DATE_SUB(NOW(), INTERVAL 8 DAY),'Sin incidencias',30,'45678901A'), 
(110,'SVNUT2',20,DATE_SUB(NOW(), INTERVAL 16 DAY),'Sin incidencias',30,'89012345C'), 
(111,'SVNUT2',20,DATE_SUB(NOW(), INTERVAL 8 DAY),'Sin incidencias',30,'89012345C'), 
(72,'SVNUT2',25,NOW(),'Sin incidencias',30,'89012345C'), 
(73,'SVBE09',13,DATE_SUB(NOW(), INTERVAL 9 DAY),'Se le practica mechas con dos colores',67,'23456789B'), 
(74,'SVBE09',17,DATE_SUB(NOW(), INTERVAL 24 DAY),'Con extensiones',70,'23456789B'), 
(75,'SVBE09',31,DATE_SUB(NOW(), INTERVAL 5 DAY),'Ayuda personal auxiliar.Demasiado pelo.',70,'23456789B'), 
(76,'SVBE09',42,DATE_SUB(NOW(), INTERVAL 1 DAY),'Sin incidencias',40.99,'23456789B'), 
(77,'SVBE09',58,DATE_SUB(NOW(), INTERVAL 7 DAY),'Sin incidencias',40.99,'23456789B'), 
(78,'SVBE09',15,DATE_SUB(NOW(), INTERVAL 16 DAY),'El perro sufre una reacción alérgica. Se llama al veterinario',0,'23456789B'), 
(79,'SVBE09',61,DATE_SUB(NOW(), INTERVAL 8 DAY),'Sin incidencias',40.99,'23456789B'), 
(80,'SVBE10',17,DATE_SUB(NOW(), INTERVAL 9 DAY),'El perro se queda 1 hora más',89,'89012345C'), 
(81,'SVBE10',21,DATE_SUB(NOW(), INTERVAL 24 DAY),'Sin incidencias',75.99,'89012345C'), 
(82,'SVBE10',36,DATE_SUB(NOW(), INTERVAL 5 DAY),'Sin incidencias',75.99,'89012345C'), 
(83,'SVBE10',46,DATE_SUB(NOW(), INTERVAL 1 DAY),'Sin incidencias',75.99,'89012345C'), 
(84,'SVBE10',2,DATE_SUB(NOW(), INTERVAL 7 DAY),'Se necesita la ayuda del auxiliar',99,'89012345C'), 
(85,'SVBE10',19,DATE_SUB(NOW(), INTERVAL 16 DAY),'Dolor abdominal. No se realiza el servicio',0,'89012345C'), 
(86,'SVBE10',4,DATE_SUB(NOW(), INTERVAL 8 DAY),'Sin incidencias',75.99,'89012345C'), 
(87,'SVBE08',22,DATE_SUB(NOW(), INTERVAL 9 DAY),'El perro se queda 1 hora más',57,'67890123B'), 
(88,'SVBE08',26,DATE_SUB(NOW(), INTERVAL 24 DAY),'Ayuda personal auxiliar',55,'67890123B'), 
(89,'SVBE08',40,DATE_SUB(NOW(), INTERVAL 5 DAY),'Sin incidencias',45.99,'67890123B'), 
(90,'SVBE08',51,DATE_SUB(NOW(), INTERVAL 1 DAY),'Sin incidencias',45.99,'67890123B'), 
(91,'SVBE08',7,DATE_SUB(NOW(), INTERVAL 14 DAY),'Ayuda personal auxiliar. El perro tiene una crisis.',45.99,'67890123B'), 
(92,'SVBE08',24,DATE_SUB(NOW(), INTERVAL 16 DAY),'Se aprecia una reacción alérgica en piel previa. No se realiza el servicio',0,'67890123B'), 
(93,'SVBE08',8,DATE_SUB(NOW(), INTERVAL 8 DAY),'Sin incidencias',45.99,'67890123B'), 
(128, 'SVBE05', 1, DATE_SUB(NOW(), INTERVAL 3 DAY), 'Incremento de un 30% por ser de raza grande', 60, '45678901A'), 
(129, 'SVBE05', 3, DATE_SUB(NOW(), INTERVAL 4 DAY), 'Incremento de un 30% por ser de raza grande', 60, '89012345C'), 
(130, 'SVBE05', 4, DATE_SUB(NOW(), INTERVAL 5 DAY), 'Incremento de un 30% por ser de raza grande', 60, '45678901A'), 
(131, 'SVBE05', 7, DATE_SUB(NOW(), INTERVAL 5 DAY), 'Incremento de un 30% por ser de raza grande', 60, '89012345C'), 
(132, 'SVBE05', 10, DATE_SUB(NOW(), INTERVAL 8 DAY), 'Incremento de un 30% por ser de raza grande', 60, '45678901A'), 
(133, 'SVBE05', 16, DATE_SUB(NOW(), INTERVAL 8 DAY), 'Incremento de un 30% por ser de raza grande', 60, '89012345C'), 
(134, 'SVBE05', 18, DATE_SUB(NOW(), INTERVAL 8 DAY), 'Incremento de un 30% por ser de raza grande', 60, '45678901A'), 
(135, 'SVBE05', 20, DATE_SUB(NOW(), INTERVAL 15 DAY), 'Incremento de un 30% por ser de raza grande', 60, '89012345C'), 
(136, 'SVBE05', 21, DATE_SUB(NOW(), INTERVAL 15 DAY), 'Incremento de un 30% por ser de raza grande', 60, '45678901A'), 
(137, 'SVBE05', 22, DATE_SUB(NOW(), INTERVAL 15 DAY), 'Incremento de un 30% por ser de raza grande', 60, '89012345C'), 
(138, 'SVBE05', 46, DATE_SUB(NOW(), INTERVAL 20 DAY), 'Incremento de un 30% por ser de raza grande', 60, '45678901A'), 
(139, 'SVBE05', 47, DATE_SUB(NOW(), INTERVAL 20 DAY), 'Incremento de un 30% por ser de raza grande', 60, '89012345C'), 
(140, 'SVBE05', 51, DATE_SUB(NOW(), INTERVAL 20 DAY), 'Incremento de un 30% por ser de raza grande', 60, '45678901A'), 
(141, 'SVBE05', 55, DATE_SUB(NOW(), INTERVAL 20 DAY), 'Incremento de un 30% por ser de raza grande', 60, '89012345C'), 
(142, 'SVBE05', 57, DATE_SUB(NOW(), INTERVAL 21 DAY), 'Incremento de un 30% por ser de raza grande', 60, '45678901A'), 
(143, 'SVBE05', 59, DATE_SUB(NOW(), INTERVAL 30 DAY), 'Incremento de un 30% por ser de raza grande', 60, '89012345C');
(148, 'SVBE05', 5, SYSDATE - INTERVAL '3' DAY, 'Se incrementa el precio en un 20% por ser perro de raza media', 55.2,'45678901A');
(149, 'SVBE05', 31, SYSDATE - INTERVAL '10' DAY, 'Se incrementa el precio en un 20% por ser de raza media', 55.2,'89012345C');
(150, 'SVBE05', 32, SYSDATE - INTERVAL '11' DAY, 'Se incrementa el precio en un 20% por ser de raza media', 55.2,'45678901A');
(151, 'SVBE05', 33, SYSDATE - INTERVAL '12' DAY, 'Se incrementa el precio en un 20% por ser de raza media', 55.2,'89012345C');
(152, 'SVBE05', 34, SYSDATE - INTERVAL '12' DAY, 'Se incrementa el precio en un 20% por ser de raza media', 55.2,'45678901A');

-- Bichon Maltes - Servicio SVBE01
(153, 'SVBE01', 27, SYSDATE - INTERVAL '35' DAY, 'Sin incidencias', 25.99,'34567890C');
(154, 'SVBE01', 28, SYSDATE - INTERVAL '34' DAY, 'Sin incidencias', 25.99,'23456789B');
(155, 'SVBE01', 29, SYSDATE - INTERVAL '33' DAY, 'Sin incidencias', 25.99,'34567890C');
(156, 'SVBE01', 30, SYSDATE - INTERVAL '33' DAY, 'Sin incidencias', 25.99,'23456789B');

(158, 'SVBE02', 27, SYSDATE - INTERVAL '35' DAY, 'Precio especial pack baño+secado+corte', 15.99,'23456789B');
(159, 'SVBE02', 28, SYSDATE - INTERVAL '34' DAY, 'Precio especial pack baño+secado+corte', 15.99,'23456789B');
(160, 'SVBE02', 29, SYSDATE - INTERVAL '33' DAY, 'Precio especial pack baño+secado+corte', 15.99,'23456789B');
(161, 'SVBE02', 30, SYSDATE - INTERVAL '33' DAY, 'Precio especial pack baño+secado+corte', 15.99,'23456789B');

(163, 'SVBE01', 27, SYSDATE - INTERVAL '3' DAY, 'Sin incidencias', 25.99,'34567890C');
(164, 'SVBE01', 28, SYSDATE - INTERVAL '4' DAY, 'Sin incidencias', 25.99,'23456789B');
(165, 'SVBE01', 29, SYSDATE - INTERVAL '5' DAY, 'Sin incidencias', 25.99,'34567890C');
(166, 'SVBE02', 27, SYSDATE - INTERVAL '3' DAY, 'Precio especial pack baño+secado+corte', 15.99,'23456789B');
(167, 'SVBE02', 28, SYSDATE - INTERVAL '4' DAY, 'Precio especial pack baño+secado+corte', 15.99,'23456789B');
(168, 'SVBE02', 29, SYSDATE - INTERVAL '53' DAY, 'Precio especial pack baño+secado+corte', 15.99,'23456789B');

-- Más registros...
(207, 'SVBE01', 62, SYSDATE - INTERVAL '17' DAY, 'Ong Patitas', 0.00,'34567890C');
(208, 'SVBE02', 62, SYSDATE - INTERVAL '17' DAY, 'Ong Patitas', 0.00,'23456789B');
(209,'SVBE03',62,SYSDATE - INTERVAL '17' DAY,'Ong Patitas',0.00,'34567890C'); 
(210,'SVBE04',62,SYSDATE - INTERVAL '7' DAY,'Ong Patitas',0.00,'23456789B'); 
(211, 'SVBE01', 63, SYSDATE - INTERVAL '32' DAY, 'Ong The Dog Rescue', 0.00,'34567890C');
(212, 'SVBE02', 63, SYSDATE - INTERVAL '32' DAY, 'Ong The Dog Rescue', 0.00,'23456789B');
(213,'SVBE03',63,SYSDATE - INTERVAL '32' DAY,'Ong The Dog Rescue',0.00,'34567890C'); 
(214,'SVBE04',63,SYSDATE - INTERVAL '32' DAY,'Ong The Dog Rescue',0.00,'23456789B');
