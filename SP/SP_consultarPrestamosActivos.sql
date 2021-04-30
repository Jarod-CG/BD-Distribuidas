USE [biblioteca_DB]
GO

/****** Object:  StoredProcedure [dbo].[SP_consultarPrestamosActivos]    Script Date: 29/4/2021 21:17:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	prestamos activos
-- =============================================
CREATE PROCEDURE [dbo].[SP_consultarPrestamosActivos] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRY
		
		SELECT
				*
		FROM
				dbo.Prestamo AS P
		WHERE
				P.activo = 1--es activo
		AND
				DATEDIFF (DAY, P.fechaVencimiento, GETDATE()) < 1; -- si es diff >= 1 significa que está vencida
	END TRY
	BEGIN CATCH

	END CATCH
    SET NOCOUNT OFF;
END
GO


