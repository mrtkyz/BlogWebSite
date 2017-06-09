
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/09/2017 10:17:04
-- Generated from EDMX file: D:\MyProjects\Me\BlogWebSite\MrtkyzBlog\MrtkyzBlog\Models\DataEntities\DataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MrtkyzTest];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[MrtkyzTestModelStoreContainer].[TestTablo]', 'U') IS NOT NULL
    DROP TABLE [MrtkyzTestModelStoreContainer].[TestTablo];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TestTablo'
CREATE TABLE [dbo].[TestTablo] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [NAME] varchar(150)  NOT NULL,
    [SURNAME] varchar(150)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID], [NAME], [SURNAME] in table 'TestTablo'
ALTER TABLE [dbo].[TestTablo]
ADD CONSTRAINT [PK_TestTablo]
    PRIMARY KEY CLUSTERED ([ID], [NAME], [SURNAME] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------