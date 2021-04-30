-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	realiza el prestamo
-- =============================================
CREATE PROCEDURE SP_prestamo 
	-- Add the parameters for the stored procedure here
	@inIdLibro INT,
	@inIdPrestatario INT,--consultar tipo
	@inBibliotecario INT,
	@inIdTipo INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE		@puede INT = 0; --0 es no puede
		--consultar que el libro esté disponible
		IF (EXISTS (SELECT 1 FROM dbo.Libro AS L WHERE L.id = @inIdLibro AND L.prestado = 0))
		BEGIN 
			IF (@inIdTipo = 1)--estudiante
			BEGIN
				--consultar si es activo, eso en DB MySQL
				--consultar que no tenga deudas en financiero, eso en DB MySQL

			END--fin de estudiante
			IF (@inIdTipo = 2)--profesor
			BEGIN
				--consultar si el profesor es activo,
				IF (EXISTS(SELECT 1 FROM recursosHumanos_Cartago_DB.dbo.Profesor AS P WHERE P.id = @inIdPrestatario AND P.activo = 1)
					OR
					EXISTS(SELECT 1 FROM recursosHumanos_SJ_DB.dbo.Profesor AS P WHERE P.id = @inIdPrestatario AND P.activo = 1)
					)
				BEGIN
					--no sé si las particiones se consultan así
					SET @puede = 1;
				END
			END--fin de profesor
		END --fin if si libro disponible

		IF (@puede = 1)
		BEGIN
			BEGIN TRANSACTION
				INSERT INTO dbo.Prestamo(
					idLibro,
					idPrestatario,
					idBibliotecario,
					idTipoPrestatario,
					activo,
					fechaPrestamo,
					fechaVencimiento
				)
				VALUES(
					@inIdLibro,
					@inIdPrestatario,
					@inBibliotecario,
					@inIdTipo,
					1,
					GETDATE(),
					DATEADD(MONTH, 1, GETDATE())--un mes
				)


			COMMIT TRANSACTION
		END--fin puede
		
			
	END TRY
	BEGIN CATCH

	END CATCH
	SET NOCOUNT OFF;
END
GO
