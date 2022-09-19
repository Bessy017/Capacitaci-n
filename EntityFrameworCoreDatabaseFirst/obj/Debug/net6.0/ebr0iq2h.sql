IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211112231028_MigracionInicial')
BEGIN
    CREATE TABLE [notas] (
        [idnota] int NOT NULL IDENTITY,
        [titulo] nvarchar(50) NOT NULL,
        [descripcion] nvarchar(200) NULL,
        [fecha] date NOT NULL,
        [usuario_id] int NULL,
        CONSTRAINT [PK_notas] PRIMARY KEY ([idnota])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211112231028_MigracionInicial')
BEGIN
    CREATE TABLE [usuario] (
        [id] int NOT NULL IDENTITY,
        [email] nvarchar(50) NOT NULL,
        [nombre] nvarchar(200) NOT NULL,
        [telefono] nvarchar(30) NULL,
        [test_campo] varchar(100) NOT NULL,
        [password] nvarchar(max) NOT NULL,
        [es_admin] int NULL,
        CONSTRAINT [PK_usuario] PRIMARY KEY ([id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20211112231028_MigracionInicial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20211112231028_MigracionInicial', N'6.0.0');
END;
GO

COMMIT;
GO

