INSERT INTO DataWareHouse.dbo.dim_Departamentos
(CodDpto, NomDpto, Latitud, Longitud)
SELECT COD_DPTO, NOM_DPTO, LATITUD, LONGITUD
FROM DataLake.dbo.dl_departamentos
