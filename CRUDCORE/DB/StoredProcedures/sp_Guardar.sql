CREATE PROCEDURE [dbo].[sp_Guardar](
@Nombre varchar(100),
@Telefono varchar(100),
@Correo varchar(100)
)
AS
BEGIN 
	INSERT INTO CONTACTO(Nombre, Telefono, Correo) values (@Nombre, @Telefono, @Correo)
END
