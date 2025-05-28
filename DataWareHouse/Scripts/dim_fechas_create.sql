-- DataWareHouse.dbo.dim_fechas definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.dim_fechas;

CREATE TABLE DataWareHouse.dbo.dim_fechas (
	Annio int NOT NULL,
	Mes tinyint NOT NULL,
	Dia tinyint NOT NULL,
	Semana tinyint NOT NULL,
	Trimestre tinyint NOT NULL,
	DiaSemana tinyint NOT NULL,
	FechaHecho date NOT NULL,
	CONSTRAINT dim_fechas_pk PRIMARY KEY (FechaHecho),
	CONSTRAINT dim_fechas_dim_Dias_Semana_FK FOREIGN KEY (DiaSemana) REFERENCES DataWareHouse.dbo.dim_Dias_Semana(DiaSemana),
	CONSTRAINT dim_fechas_dim_Meses_FK FOREIGN KEY (Mes) REFERENCES DataWareHouse.dbo.dim_Meses(Mes),
	CONSTRAINT dim_fechas_dim_trimestres_FK FOREIGN KEY (Trimestre) REFERENCES DataWareHouse.dbo.dim_trimestres(Trimestre)
);
