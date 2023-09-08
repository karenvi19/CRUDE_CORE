CREATE PROCEDURE [dbo].[sp_Eliminar](
@IdContacto int
)
AS
BEGIN 
	DELETE FROM CONTACTO WHERE IdContacto = @IdContacto
END
