CREATE TABLE [dbo].[TestTablo] (
    [ID]      INT           IDENTITY (1, 1) NOT NULL,
    [NAME]    VARCHAR (150) NOT NULL,
    [SURNAME] VARCHAR (150) NOT NULL,
    [City]    VARCHAR (150) NULL,
    CONSTRAINT [PK_TestTablo_1] PRIMARY KEY CLUSTERED ([ID] ASC)
);



