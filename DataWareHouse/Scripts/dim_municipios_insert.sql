INSERT INTO DataWareHouse.dbo.dim_Municipios 
(CodMpio, CodDpto, NomMpio, Latitud, Longitud)
SELECT COD_MPIO, COD_DPTO, NOM_MPIO, LATITUD, LONGITUD
FROM DataLake.dbo.dl_Municipios
