--inserta tipos
INSERT INTO dbo.TipoPrestatario (
	id,
	nombre
)
VALUES
(	1, 'estudiante'),
(	2, 'profesor');

--inserta bibliotecarios
INSERT INTO dbo.Bibliotecario (
	id,
	nombre
)
VALUES 
(	1, 'Sofia'	),
(	2, 'Luis');


--insertar autores
INSERT INTO dbo.Autor(
	id,
	nombre
)
VALUES
(	1, 'Tolkien'),
(	2, 'Woolf'),
(	3, 'Sanderson');

--inserta libros
INSERT INTO dbo.Libro(
	id,
	nombre,
	prestado
)
VALUES
(	1, 'Comunidad del Anillo', 0),
(	2, 'Dos Torres', 0),
(	3, 'Retorno del rey', 0),
(	4, 'Al faro', 0),
(	5, 'Orlando', 0),
(	6, 'Camino de los reyes', 0),
(	7, 'Juramentada', 0);

--inserta autoXLibro
INSERT INTO dbo.AutorXLibro(
	idAutor,
	idLibro
)
VALUES
(	1, 1 ),
(	1, 2 ),
(	1, 3 ),
(	2, 4 ),
(	2, 5 ),
(	3, 6 ),
(	3, 7 );




