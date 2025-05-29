-- DataWareHouse.dbo.dim_zonas definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.dim_zonas;

CREATE TABLE DataWareHouse.dbo.dim_zonas (
	IdZona tinyint IDENTITY(1,1) NOT NULL,
	NomZona nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT dim_zonas_pk PRIMARY KEY (IdZona)
);