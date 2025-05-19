CREATE TABLE BRONZE.LLAMADAS (
  [descripcion] varchar(100),
  [tipo] varchar(25),
  [numero_origen] varchar(25),
  [numero_destino] varchar(25),
  [fecha] varchar(25),
  [hora] varchar(25),
  [duracion] varchar(25)
);



select * from BRONZE.LLAMADAS;


CREATE TABLE SILVER.LLAMADAS_TIGO (
  [tipo] varchar(1),
  [numero_origen] varchar(25),
  [numero_destino] varchar(25),
  [fecha] date,
  [hora] time,
  [duracion] int,
  [costo] decimal
)

select tipo
  ,numero_origen
  ,numero_destino
  ,fecha
  ,hora
  ,duracion
  , (duracion*3) as costo
from BRONZE.LLAMADAS