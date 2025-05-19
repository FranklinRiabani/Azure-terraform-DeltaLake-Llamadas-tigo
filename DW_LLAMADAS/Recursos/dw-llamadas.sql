CREATE TABLE GOLD.DIM_TIPO (
  [tipo] varchar(1) PRIMARY KEY
)

CREATE TABLE GOLD.DIM_ORIGEN (
  [numero_origen] varchar(25) PRIMARY KEY
)


CREATE TABLE GOLD.DIM_DESTINO (
  [numero_destino] varchar(25) PRIMARY KEY
)


CREATE TABLE GOLD.DIM_FECHA (
  [fecha] date PRIMARY KEY
)


CREATE TABLE GOLD.DIM_HORA (
  [hora] time PRIMARY KEY
)


CREATE TABLE GOLD.HECHOS_LLAMADAS (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [tipo] varchar(1),
  [numero_origen] varchar(25),
  [numero_destino] varchar(25),
  [fecha] date,
  [hora] time,
  [duracion] int,
  [costo] decimal
)


ALTER TABLE GOLD.HECHOS_LLAMADAS ADD FOREIGN KEY ([numero_origen]) REFERENCES GOLD.DIM_ORIGEN ([numero_origen])

ALTER TABLE GOLD.HECHOS_LLAMADAS ADD FOREIGN KEY ([tipo]) REFERENCES GOLD.DIM_TIPO ([tipo])

ALTER TABLE GOLD.HECHOS_LLAMADAS ADD FOREIGN KEY ([fecha]) REFERENCES GOLD.DIM_FECHA ([fecha])

ALTER TABLE GOLD.HECHOS_LLAMADAS ADD FOREIGN KEY ([numero_destino]) REFERENCES GOLD.DIM_DESTINO ([numero_destino])

ALTER TABLE GOLD.HECHOS_LLAMADAS ADD FOREIGN KEY ([hora]) REFERENCES GOLD.DIM_HORA ([hora])













