IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'BANCO')
	BEGIN
		PRINT 'La base de datos ya existe'		
	END
ELSE 
	BEGIN
CREATE DATABASE BANCO;
USE BANCO;
CREATE TABLE CLIENTE(
CODIGO_CLIENTE INT NOT NULL,
DNI INT NOT NULL,
NOMBRE VARCHAR(20) NOT NULL,
APELLIDO1 VARCHAR(20) NOT NULL,
APELLIDO2 VARCHAR(20),
DIRECCION VARCHAR(50)
PRIMARY KEY (DNI),
UNIQUE (CODIGO_CLIENTE)
)
INSERT INTO CLIENTE VALUES(1, 117,'Alberto','Hernandez', NULL, NULL);
INSERT INTO CLIENTE VALUES(111,262, 'Mario','Arnedo','Gonzalez', 'Paseo De La Rioja');

CREATE TABLE CUENTA(
TIPO VARCHAR(1) NOT NULL,
FECHA_CREACION DATE NOT NULL,
SALDO INT NOT NULL,
COD_CUENTA INT NOT NULL,
PRIMARY KEY (COD_CUENTA),
UNIQUE (COD_CUENTA)
)
INSERT INTO CUENTA VALUES('1','2010-01-11',2333,0);
INSERT INTO CUENTA VALUES('1','2010-01-11',4000,1);
INSERT INTO CUENTA VALUES('1','2010-01-11',6000,2);
INSERT INTO CUENTA VALUES('1','2010-01-11',10700,3);
INSERT INTO CUENTA VALUES('1','2010-11-03',11700,4);
INSERT INTO CUENTA VALUES('1','2010-11-03',13000,5);
INSERT INTO CUENTA VALUES('1','2010-11-03',13200,6);
INSERT INTO CUENTA VALUES('1','2010-11-03',13000,7);

CREATE TABLE MOVIMIENTO(
FECHA DATETIME NOT NULL,
CANTIDAD DECIMAL(4,0) NOT NULL,
DNI INT NOT NULL,
COD_CUENTA INT NOT NULL,
ID_MOVIMIENTO INT NOT NULL
PRIMARY KEY (ID_MOVIMIENTO),
FOREIGN KEY (DNI) REFERENCES CLIENTE(DNI),
FOREIGN KEY (COD_CUENTA) REFERENCES CUENTA(COD_CUENTA)

)
INSERT INTO MOVIMIENTO VALUES ('2012-05-08 00:00:00.000',100,117,5,0);
INSERT INTO MOVIMIENTO VALUES ('2012-05-08 00:00:00.000',100,117,6,1);
INSERT INTO MOVIMIENTO VALUES ('2012-05-08 00:00:00.000',100,117,3,3);
INSERT INTO MOVIMIENTO VALUES ('2012-05-08 00:00:00.000',100,117,2,4);
INSERT INTO MOVIMIENTO VALUES ('2012-05-08 00:00:00.000',100,117,1,5);
INSERT INTO MOVIMIENTO VALUES ('2012-05-08 00:00:00.000',100,117,4,6);

CREATE TABLE TIENE(
DNI INT NOT NULL,
COD_CUENTA INT NOT NULL,
PRIMARY KEY (DNI,COD_CUENTA),
FOREIGN KEY (DNI) REFERENCES CLIENTE(DNI),
FOREIGN KEY (COD_CUENTA) REFERENCES CUENTA(COD_CUENTA)
)
INSERT INTO TIENE VALUES (117,1);
INSERT INTO TIENE VALUES (117,2);
INSERT INTO TIENE VALUES (117,3);
INSERT INTO TIENE VALUES (117,4);
INSERT INTO TIENE VALUES (117,5);
INSERT INTO TIENE VALUES (117,6);
INSERT INTO TIENE VALUES (262,0);
INSERT INTO TIENE VALUES (262,7);
END