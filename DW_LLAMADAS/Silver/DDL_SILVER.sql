CREATE TABLE SILVER.LLAMADAS_TIGO (
  [tipo] varchar(1),
  [numero_origen] varchar(25),
  [numero_destino] varchar(25),
  [fecha] date,
  [hora] time,
  [duracion] int,
  [costo] decimal
)






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


select distinct(tipo) from SILVER.LLAMADAS_TIGO 
select distinct(numero_origen) from SILVER.LLAMADAS_TIGO
select distinct(numero_destino) from SILVER.LLAMADAS_TIGO
select distinct(fecha) from SILVER.LLAMADAS_TIGO
select distinct(hora) from SILVER.LLAMADAS_TIGO

select 
  tipo
  ,numero_origen
  ,numero_destino
  ,fecha
  ,hora
  ,duracion
  ,costo
from SILVER.LLAMADAS_TIGO



select * from GOLD.DIM_TIPO;


delete from GOLD.DIM_TIPO;





