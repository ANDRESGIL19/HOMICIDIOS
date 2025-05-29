-- DataWareHouse.dbo.Fac_homicidios definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.Fac_homicidios;

CREATE TABLE DataWareHouse.dbo.Fac_homicidios (
	IdHomicidio int IDENTITY(1,1) NOT NULL,
	FechaHecho date NOT NULL,
	CodMpio int NOT NULL,
	IdZona tinyint NOT NULL,
	IdSexo tinyint NOT NULL,
	Cantidad tinyint NOT NULL,
	CONSTRAINT fac_homicidios_pk PRIMARY KEY (IdHomicidio),
	CONSTRAINT ac_homicidios_dim_Sexos_FK FOREIGN KEY (IdSexo) REFERENCES DataWareHouse.dbo.dim_Sexos(IdSexo),
	CONSTRAINT ac_homicidios_dim_fechas_FK FOREIGN KEY (FechaHecho) REFERENCES DataWareHouse.dbo.dim_fechas(FechaHecho),
	CONSTRAINT ac_homicidios_dim_municipios_FK FOREIGN KEY (CodMpio) REFERENCES DataWareHouse.dbo.dim_municipios(CodMpio),
	CONSTRAINT ac_homicidios_dim_zonas_FK FOREIGN KEY (IdZona) REFERENCES DataWareHouse.dbo.dim_zonas(IdZona)
);