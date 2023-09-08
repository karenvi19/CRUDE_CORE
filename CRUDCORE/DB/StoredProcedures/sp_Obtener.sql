CREATE PROCEDURE [dbo].[sp_Obtener](
@IdContacto int
)
AS
BEGIN
	SELECT * FROM CONTACTO WHERE IdContacto = @IdContacto
END
