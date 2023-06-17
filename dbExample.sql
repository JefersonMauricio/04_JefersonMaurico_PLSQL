/* Crear tablespace para el proyecto */
CREATE TABLESPACE TBSEXAMPLE
DATAFILE 'tbsexample.dbf'
SIZE 300M;

/* PERMITE EJECUCION DE SCRIPTS DENTRO DEL TABLESPACE CREADO */
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

/* Crear usuario */
CREATE USER user_admin03 IDENTIFIED BY mauricio
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON USERS;
/* Asignar los permisos al usuario */
GRANT CREATE SESSION TO user_admin03;
GRANT CREATE TABLE TO user_admin03;
GRANT CREATE VIEW TO user_admin03;
GRANT CREATE PROCEDURE TO user_admin03;
GRANT CREATE TRIGGER TO user_admin03;
GRANT CREATE SEQUENCE TO user_admin03;
GRANT CREATE JOB TO user_admin03;

-- Table: CLIENTE
CREATE TABLE CLIENTE (
    id int GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    nombres varchar2(40)  NOT NULL,
    apellido_paterno varchar2(50)  NOT NULL,
    apellido_materno varchar2(50)  NOT NULL,
    dni char(8)  NOT NULL UNIQUE,
    celular char(11)  NOT NULL UNIQUE,
    email varchar2(80)  NOT NULL UNIQUE,
    domicilio varchar2(80)  NOT NULL,
    ubigeo_codigo char(6)  NOT NULL,
    activo CHAR(1) DEFAULT 'A',
    CONSTRAINT CLIENTE_pk PRIMARY KEY (id)
) ;
COMMIT;

-- Table: TRABAJADOR
CREATE TABLE TRABAJADOR (
    id int GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    nombres varchar2(50)  NOT NULL,
    apellido_paterno varchar2(50)  NOT NULL,
    apellido_materno varchar2(50)  NOT NULL,
    dni char(8)  NOT NULL UNIQUE,
    celular char(11)  NOT NULL UNIQUE,
    activo char(1)  DEFAULT 'A',
    CONSTRAINT TRABAJADOR_pk PRIMARY KEY (id)
) ;
COMMIT;

-- Insertar registros CLIENTE
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Alicia','García','Campos','47812333','929 185 236','agarcia@gmail.com','Av. Paula Sotelo # 423 Dpto. 073','140409');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Juana','Ávila','Chumpitaz','15487922','923 568 741','javila@gmail.com','Jr. Ignacio Alicea # 7304','140402');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Oscar','Coronado','Vásquez','15253588','932 615 478','ocoronado@gmail.com','Cl. Axel Aranda # 2 Hab. 133','140403');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Luis','Barrios','Palomino','85213566','932 817 645','lbarrios@outlook.com','Cl. Juan José Meléndez # 5','140409');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('María','Tarazona','Mendoza','15482566','978 400 123','mtarazona@outlook.com','Urb. Isaac Olmos # 4648','140407');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Aldo','Torres','Zavala','47129533','958 866 221','atorres@yahoo.com','Urb. Juan José Portillo # 3 Piso 2','140405');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Fiorella','Monteza','Alzamora','48171533','992 255 441','fmonteza@gmail.com','Cl. Josefina Guillen # 466 Piso 48','140408');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Gloria','Linares','Rodríguez','15429866','954 415 950','glinares@hotmail.com','Cl. Montserrat Sánchez # 8955 Piso 2','140403');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Esperanza','Stark','Parker','85251592','901 133 258','estark@yahoo.com','Urb. Juan José Portillo # 3 Piso 2','140405');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Esmeralda','Sánchez','Lévano','15437783','918 253 554','Esmesan@gmail.com','Cl. Juan José Meléndez # 5','140409');
COMMIT;

-- Insertar registros TRABAJADOR
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Jeferson','Mauricio','Sanchez','73954835','918 304 550');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Pedro','Porras','Luyo','73183575','986 062 248');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Edy Anthony','Beingolea','Castro','76564965','952 359 226');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Maria De Los Angeles ','Guando','Campos ','76519749','926 806 121');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Luis Alberto','Juscamayta','Huaman','76439535','935 001 857');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Angelo Rodrigo','La Madrid','Escalante','76093144','931 276 512');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Kimberling Emilia','Lipa','Yactayo','71093166','944 176 856');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Cinthia','Mayuri','Chamarro','45849584','979 653 253');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Anthony Ruben','Monteza','Caton','70669421','939 142 260');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Gian Alexander','Nuñez','Saenz','75834813','921 176 693');
COMMIT;

--1
declare
e_cliente exception;
begin
  delete from cliente
  where cliente.id=&id_cliente;
    if sql%notfound then
      raise e_cliente;
    else
     DBMS_OUTPUT.PUT_LINE('EL CLIENTE SE ELIMINO CORRECTAMENTE.');
    end if;
exception 
    when e_cliente then
     DBMS_OUTPUT.PUT_LINE('EL CLIENTE NO EXISTE');
end;

--Cuando no se me muestra, habilito la salida con esta sentencia       
set SERVEROUTPUT on;

--2
DECLARE
  r_tra trabajador%rowtype;
  v_id trabajador.id%type := &id;
BEGIN
  SELECT * INTO r_tra
  FROM trabajador
  WHERE id = v_id;
  
  DBMS_OUTPUT.PUT_LINE(r_tra.nombres || ',' || r_tra.activo);
EXCEPTION
  WHEN no_data_found THEN
    DBMS_OUTPUT.PUT_LINE('EL TRABAJADOR NO EXISTE');
  WHEN too_many_rows THEN
    DBMS_OUTPUT.PUT_LINE('EL TRABAJADOR ESTÁ REPETIDO');
END;


--3
DECLARE
  v_cli cliente.id%type := &id_cliente;
BEGIN
  DELETE FROM cliente
  WHERE id = v_cli;
  
  IF SQL%NOTFOUND THEN 
    DBMS_OUTPUT.PUT_LINE ('No se encontró el ID de cliente nro: ' || v cli || ' o bien este no existe.');
  ELSE 
    DBMS_OUTPUT.PUT_LINE ('Se eliminó: ' || SQL%ROWCOUNT || ' registro(s) con ID de cliente.');
  END IF;
EXCEPTION 
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE ('ERROR: ' || SQLERRM);
END;
--SQLERRM se utiliza para obtener una descripción textual del error ocurrido.
--Proporciona información detallada sobre el error, incluyendo el código y el mensaje de error.

--4
DECLARE
  v_trabajador_nombre VARCHAR2(100);
  v_id_trabajador NUMBER := 1; -- ID que genera más de un resultado
BEGIN
  SELECT nombres || ' ' || apellido_paterno || ' ' || apellido_materno
    INTO v_trabajador_nombre
    FROM TRABAJADOR
   WHERE id = v_id_trabajador;
   
   -- Realizar alguna acción con el nombre del trabajador encontrado
   
  DBMS_OUTPUT.PUT_LINE('Nombre del trabajador: ' || v trabajador nombre);
EXCEPTION
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Se encontraron múltiples trabajadores con el mismo ID.');
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontró ningún trabajador con el ID proporcionado.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo una excepción no esperada: ' || SQLERRM);
END;
