-- DataWareHouse.dbo.dim_departamentos definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.dim_departamentos;

CREATE TABLE DataWareHouse.dbo.dim_departamentos (
	CodDpto tinyint NOT NULL,
	NomDpto nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	Latitud float NOT NULL,
	Longitud float NOT NULL,
	CONSTRAINT dim_departamentos_pk PRIMARY KEY (CodDpto)
);
