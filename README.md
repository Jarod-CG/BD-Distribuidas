# BD-Distribuidas
Debe de crear un sistema para poder manejar los préstamos de la biblioteca del TEC.
En un servidor SQL Server se encuentra la bd de libros, planila, préstamos de los usuarios.
Un préstamo se puede otorgar solamente si el usuario es un estudiante activo.  La matrícula de estudiantes se encuentra en un servidor ORACLE(puede hacerlo en otro motor por ejemplo mysql/postgre sql).
También se debe validar que no se tengan ninguna deuda en financiero, el sistema de financiero se encuentra en MySQL o el mismo motor seleccionado para préstamos.
Los préstamos a profesores se pueden otorgar igualmente solo si el profesor estê activo, la bd de recursos humanos se encuentra en SQL Server, se encuentra particionada dependiendo del campus donde el profesor tenga la plaza.
Diseñe las bases de datos, y realice los procesos de consulta de libros, consulta de préstamos activos, préstamos vencidos, y el proceso de préstamo del libro.
