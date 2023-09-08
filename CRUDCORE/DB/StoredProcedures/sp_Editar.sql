CREATE PROCEDURE [dbo].[sp_Editar](
@IdContacto int,
@Nombre varchar(100),
@Telefono varchar(100),
@Correo varchar(100)
)
AS
BEGIN 
	UPDATE CONTACTO SET Nombre = @Nombre, Telefono = @Telefono, Correo = @Correo WHERE IdContacto = @IdContacto
END
