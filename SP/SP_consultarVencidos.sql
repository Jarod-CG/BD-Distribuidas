USE [biblioteca_DB]
GO

/****** Object:  StoredProcedure [dbo].[SP_consultarVencidos]    Script Date: 29/4/2021 21:18:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	prestamos vencidos
-- =============================================
CREATE PROCEDURE [dbo].[SP_consultarVencidos] 
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
				DATEDIFF (DAY, P.fechaVencimiento, GETDATE()) >= 1; -- si es diff >= 1 significa que est� vencida
	END TRY
	BEGIN CATCH

	END CATCH
    SET NOCOUNT OFF;
END
GO


