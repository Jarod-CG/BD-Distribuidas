--inserta campus para san josé
INSERT INTO dbo.Campus(
	id,
	nombre
)
VALUES
(2, 'Cartago');

--inserta escuela
INSERT INTO dbo.Escuela(
	id,
	idCampus,
	nombre
)
VALUES
(	1, 2,'Diseño'),
(	2, 2,'Ambiental');

--inserta profesores
INSERT INTO dbo.Profesor(
	id,
	idEscuela,
	nombre,
	apellido,
	fechaNacimiento,
	telefono,
	correo,
	activo
)
VALUES
(	5, 1, 'Cher', 'Cruz', '1980-03-05', 89237812, 'mariaCruz@gmail.com', 0),
(	6, 1, 'Loulogio', 'Fonseca', '1972-12-04', 12337812, 'mateoFonseca@gmail.com', 1),
(	7, 2, 'Ash', 'Hernandez', '1985-12-12', 54346534, 'roxanaHernandez@gmail.com', 0),
(	8, 2, 'Klaus', 'Torres', '1989-10-05', 12436587, 'ludovicoTorres@gmail.com', 1);


