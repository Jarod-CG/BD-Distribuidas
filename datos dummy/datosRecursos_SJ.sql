--inserta campus para san josé
INSERT INTO dbo.Campus(
	id,
	nombre
)
VALUES
(1, 'San José');

--inserta escuela
INSERT INTO dbo.Escuela(
	id,
	idCampus,
	nombre
)
VALUES
(	1, 1,'Compu'),
(	2, 1,'Arqui');

--inserta profesores
INSERT INTO dbo.Profesor(
	id,
	idEscuela,
	nombre,
	apellido,
	fechaNacimiento,
	telefono,
	correo
)
VALUES
(	1, 1, 'Maria', 'Cruz', '1980-03-05', 89237812, 'mariaCruz@gmail.com'),
(	2, 1, 'Mateo', 'Fonseca', '1972-12-04', 12337812, 'mateoFonseca@gmail.com'),
(	3, 2, 'Roxana', 'Hernandez', '1985-12-12', 54346534, 'roxanaHernandez@gmail.com'),
(	4, 2, 'Ludovico', 'Torres', '1989-10-05', 12436587, 'ludovicoTorres@gmail.com'),
(	5, 2, 'Patrocla', 'Lobo', '1992-12-12', 09567845, 'patroclaLobo@gmail.com');


