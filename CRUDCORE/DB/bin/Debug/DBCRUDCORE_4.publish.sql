/*
Script de implementación para DBCRUDCORE

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DBCRUDCORE"
:setvar DefaultFilePrefix "DBCRUDCORE"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Modificando Procedimiento [dbo].[sp_Eliminar]...';


GO
ALTER PROCEDURE [dbo].[sp_Eliminar](
@IdContacto int
)
AS
BEGIN 
	DELETE FROM CONTACTO WHERE IdContacto = @IdContacto
END
GO
PRINT N'Modificando Procedimiento [dbo].[sp_Guardar]...';


GO
ALTER PROCEDURE [dbo].[sp_Guardar](
@Nombre varchar(100),
@Telefono varchar(100),
@Correo varchar(100)
)
AS
BEGIN 
	INSERT INTO CONTACTO(Nombre, Telefono, Correo) values (@Nombre, @Telefono, @Correo)
END
GO
PRINT N'Actualización completada.';


GO
