USE [biblioteca_DB]
GO

/****** Object:  StoredProcedure [dbo].[SP_consultarLibros]    Script Date: 29/4/2021 21:17:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	retorna los libros disponibles
-- =============================================
CREATE PROCEDURE [dbo].[SP_consultarLibros] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		SELECT 
				L.id AS id, 
				L.nombre AS nombre,
				L.prestado AS prestado
		FROM
				dbo.Libro AS L
		WHERE
				L.prestado = 1--disponible

	SET NOCOUNT OFF;
END
GO


