use matricula;

-- Provincias

INSERT INTO provincia (codigo, nombre)
	VALUES (1, 'San José');

INSERT INTO provincia (codigo, nombre)
	VALUES (2, 'Alajuela');

INSERT INTO provincia (codigo, nombre)
	VALUES (3, 'Cartago');

INSERT INTO provincia (codigo, nombre)
	VALUES (4, 'Heredia');

INSERT INTO provincia (codigo, nombre)
	VALUES (5, 'Guanacaste');

INSERT INTO provincia (codigo, nombre)
	VALUES (6, 'Puntarenas');

INSERT INTO provincia (codigo, nombre)
	VALUES (7, 'Limón');

-- Cantones

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (1, 1, 'San José');

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (15, 1, 'Montes de Oca');

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (18, 1, 'Curridabat');

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (1, 3, 'Cartago');

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (2, 3, 'Paraíso');

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (3, 3, 'La Unión');

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (7, 3, 'Oreamuno');

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (2, 4, 'Barva');

INSERT INTO provinciaXcanton (codCanton, codProvincia, nombre)
	VALUES (8, 4, 'Flores');

-- Distritos
INSERT INTO cantonXdistrito (codDistrito, codCanton, codProvincia, nombre)
	VALUES (1, 1, 3, 'Oriental');

INSERT INTO cantonXdistrito (codDistrito, codCanton, codProvincia, nombre)
	VALUES (1, 2, 3, 'Paraíso');

INSERT INTO cantonXdistrito (codDistrito, codCanton, codProvincia, nombre)
	VALUES (5, 2, 3, 'Llanos de Santa Lucía');

INSERT INTO cantonXdistrito (codDistrito, codCanton, codProvincia, nombre)
	VALUES (1, 1, 1, 'El Carmen');

INSERT INTO cantonXdistrito (codDistrito, codCanton, codProvincia, nombre)
	VALUES (1, 15, 1, 'San Pedro');

INSERT INTO cantonXdistrito (codDistrito, codCanton, codProvincia, nombre)
	VALUES (2, 15, 1, 'Sabanilla');

INSERT INTO cantonXdistrito (codDistrito, codCanton, codProvincia, nombre)
	VALUES (3, 15, 1, 'Mercedes');

INSERT INTO cantonXdistrito (codDistrito, codCanton, codProvincia, nombre)
	VALUES (2, 18, 1, 'Granadilla');

-- Direcciones

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (5, 2, 3, 'Calle Inglaterra');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (5, 2, 3, 'Boulevard Europa');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (1, 2, 3, 'La Joya');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (1, 1, 3, 'Los Ángeles');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (2, 15, 1, 'Calle 23');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (1, 15, 1, 'Avenida 2');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (1, 1, 1, 'Barrio Amón');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (2, 18, 1, 'Urbanización del Sur');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (3, 15, 1, 'Condominio Girasol');

INSERT INTO direccion (distrito, canton, provincia, senhas)
	VALUES (1, 1, 3, 'Avenida 4');

-- Jornadas

INSERT INTO jornada (codigo, descripcion)
	VALUES (1, 'diurna');

INSERT INTO jornada (codigo, descripcion)
	VALUES (2, 'nocturna');

-- Campus

INSERT INTO campus (codigo, nombre, telefono, direccion)
	VALUES (1, 'Campus Tecnológico Central', 25525333, 4);

INSERT INTO campus (codigo, nombre, telefono, direccion)
	VALUES (2, 'Campus Local San José', 22570470, 7);

-- Carreras

INSERT INTO carrera (codigo, nombre, codJornada, codCampus)
	VALUES (1, 'Ingeniería en Computación', 1, 1);

INSERT INTO carrera (codigo, nombre, codJornada, codCampus)
	VALUES (12, 'Ingeniería en Computación', 1, 2);

INSERT INTO carrera (codigo, nombre, codJornada, codCampus)
	VALUES (2, 'Ingeniería en Materiales', 1, 1);

INSERT INTO carrera (codigo, nombre, codJornada, codCampus)
	VALUES (3, 'Diseño Industrial', 1, 1);

INSERT INTO carrera (codigo, nombre, codJornada, codCampus)
	VALUES (4, 'Ingeniería en Mecatrónica', 1, 1);

INSERT INTO carrera (codigo, nombre, codJornada, codCampus)
	VALUES (5, 'Administración de Empresas', 2, 1);

-- Estudiantes

INSERT INTO estudiante (cedula, nombre, apellido1, apellido2, telefono, fechaNacimiento, direccion, codCarrera, estaActivo)
	VALUES (117450213, 'Germán', 'Zeledón', 'González', 87123695, '1999-04-11', 1, 12, true);

INSERT INTO estudiante (cedula, nombre, apellido1, apellido2, telefono, fechaNacimiento, direccion, codCarrera, estaActivo)
	VALUES (301540456, 'Julia', 'Mora', 'Salas', 70124569, '1995-04-17', 2, 5, true);

INSERT INTO estudiante (cedula, nombre, apellido1, apellido2, telefono, fechaNacimiento, direccion, codCarrera, estaActivo)
	VALUES (109840574, 'Kelly', 'Parrita', 'Rojas', 62458796, '2001-12-11', 3, 2, true);

INSERT INTO estudiante (cedula, nombre, apellido1, apellido2, telefono, fechaNacimiento, direccion, codCarrera, estaActivo)
	VALUES (501240789, 'Cristian', 'Martínez', 'Torijano', 89654782, '1998-10-01', 5, 2, false);

INSERT INTO estudiante (cedula, nombre, apellido1, apellido2, telefono, fechaNacimiento, direccion, codCarrera, estaActivo)
	VALUES (704560213, 'Ignacio', 'Zamora', 'Madrigal', 61452130, '1999-09-15', 6, 3, true);

INSERT INTO estudiante (cedula, nombre, apellido1, apellido2, telefono, fechaNacimiento, direccion, codCarrera, estaActivo)
	VALUES (116458757, 'Diana', 'Mendoza', 'Delgado', 89896574, '1997-06-24', 8, 5, true);

INSERT INTO estudiante (cedula, nombre, apellido1, apellido2, telefono, fechaNacimiento, direccion, codCarrera, estaActivo)
	VALUES (208740256, 'Sarah', 'Scott', 'Araya', 81022013, '1999-01-01', 9, 4, true);

INSERT INTO estudiante (cedula, nombre, apellido1, apellido2, telefono, fechaNacimiento, direccion, codCarrera, estaActivo)
	VALUES (401230654, 'Carolina', 'Artavia', 'Solorzano', 70004562, '2000-03-29', 10, 1, true);