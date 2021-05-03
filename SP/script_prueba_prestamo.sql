--necesito:
--id libro
--		SELECT * FROM dbo.Libro WHERE prestado = 1--sí está disponible
--id prestatario
--		SELECT * FROM OPENQUERY(MATRICULA_MYSQL, 'SELECT * FROM estudiante AS E WHERE E.estaActivo = 1')
--		SELECT * FROM recursosHumanos_Cartago_DB.dbo.Profesor AS P WHERE P.activo = 1
--		SELECT * FROM recursosHumanos_SJ_DB.dbo.Profesor AS P WHERE P.activo = 1
--id bibliotecario
--		SELECT * FROM dbo.Bibliotecario
--tipo prestatario :
--			1	estudiante
--			2	profesor

--cambiar valores
EXECUTE dbo.SP_prestamo 1, 109840574, 1, 1

SELECT * FROM dbo.Prestamo
