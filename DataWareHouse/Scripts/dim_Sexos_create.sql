-- DataWareHouse.dbo.dim_Sexos definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.dim_Sexos;

CREATE TABLE DataWareHouse.dbo.dim_Sexos (
	IdSexo tinyint IDENTITY(1,1) NOT NULL,
	NomSexo nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT dim_Sexos_pk PRIMARY KEY (IdSexo)
);
