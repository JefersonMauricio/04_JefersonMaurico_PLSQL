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
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Pedro Stward','Orellana','Hurtado','71587412','979 926 882');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Erick Joel','Portuguez','Zavala','72530589','981 774 991');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Max Sergi','Ramirez','Damian','72720474','951 878 860');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Jhonn Anderson','Sotomayor','Sanchez','73713789','958 768 412');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Rodrigo Roberto','Vicente','Malasquez','76806846','968 036 204');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Jonas','Zubieta','Leon','74032418','903 858 946');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Abel Jeremias','Huamani','Espinoza','77436585','922 887 754');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Jhanpool Esteban','Cupe','Perez','76473233','906 852 756');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Maria','Ester','Gamero','73932835','986 846 232');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Alvaro','Cortez','Capcha','73104535','983 446 252');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Jesus Moises','Carbonel','Alcala','73918535','943 705 795');
INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular) VALUES('Piero Asmir','Sanchez','Levano','78749322','925 532 195');
COMMIT;

--SELECT * FROM TRABAJADOR;

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

-- Insertar registros CLIENTE
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Alicia','García','Campos','47812333','929 185 236','agarcia@gmail.com','Av. Paula Sotelo','140409');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Juana','Ávila','Chumpitaz','15487922','923 568 741','javila@gmail.com','Jr. Ignacio Alicea ','140402');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Oscar','Coronado','Vásquez','15253588','932 615 478','ocoronado@gmail.com','Cl. Axel Aranda','140403');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Luis','Barrios','Palomino','85213566','932 817 645','lbarrios@outlook.com','Cl. Juan José Meléndez','140409');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('María','Tarazona','Mendoza','15482566','978 400 123','mtarazona@outlook.com','Urb. Isaac Olmos','140407');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Pedro','Sánchez','Dávila','15428211','941 533 268','psanchez@yahoo.com','Av. Juan Diego Rivero','140402');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Aldo','Torres','Zavala','47129533','958 866 221','atorres@yahoo.com','Urb. Juan José Portillo','140405');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Fiorella','Monteza','Alzamora','48171533','992 255 441','fmonteza@gmail.com','Cl. Josefina Guillen','140408');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Gloria','Linares','Rodríguez','15429866','954 415 950','gli@hotmail.com','Cl. Montserrat Sánchez','140403');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Esperanza','Stark','Parker','85251592','901 133 258','estark@yahoo.com','Urb. Juan José Portillo','140405');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Esmeralda','Sánchez','Lévano','15437783','918 253 554','Esmesan@gmail.com','Cl. Juan José Meléndez','140409');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Alexander','Vicente','Campos','15365377','912 873 460','Alexampos@gmail.com','Urb. Isaac Olmos','140407');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Maria','Chamorro','Vicente','73467458','913 466 467','Mariacha@gmail.com','Av. Paula Sotelo','140409');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Daniela','Cuzcano','Luyo','56478936','923 536 576','Daniluyo@yahoo.com','Av. Juan Diego Rivero','140402');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Carmen','Sánchez','Sánchez','15385177','926 327 843','Carmen@gmail.com','Cl. Juan José Meléndez','140409');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Miguel','Sánchez','De la cruz','87214363','907 547 644','Miguelcruz@outlook.com','Cl. Josefina Guillen','140408');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Yulissa','Vicente','Luyo','18923737','957 672 146','Yulissaluyo@hotmail.com','Cl. Axel Aranda','140403');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Raul','Vicente','Rojas','14564367','956 465 890','Raulrojas@gmail.com','Jr. Ignacio Alicea','140402');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Ruben','Ruiz','Quispe','15745889','918 746 334','rubenquispe@yahoo.com','Urb. Juan José Portillo','140405');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Alvaro','Alcala','Quispe','15545889','918 746 367','Alvaroalcala@outlook.es','Urb. Juan José Portillo','140405');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Ruben','Ruiz','Mesa','15744588','918 747 654','rubenruiz@yahoo.com','Urb. Vicente','140405');
INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) VALUES ('Cristhian','Contreras','Barrios','15438799','915 112 334','crisbarrios@yahoo.com','Urb. Juan José Portillo','140405');
COMMIT;

SELECT * FROM CLIENTE;

--Exepciones definidos por el usuario
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


--Exepciones definidos por oracle
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

--Otro tipo de excepciones definidas que ayuda a complementar por el usuario y las predefinidas

DECLARE
  v_cli cliente.id%type := &id_cliente;
BEGIN
  DELETE FROM cliente
  WHERE id = v_cli;
  
  IF SQL%NOTFOUND THEN 
    DBMS_OUTPUT.PUT_LINE ('No se encontró el ID de cliente nro: ' || v_cli || ' o bien este no existe.');
  ELSE 
    DBMS_OUTPUT.PUT_LINE ('Se eliminó: ' || SQL%ROWCOUNT || ' registro(s) con ID de cliente.');
  END IF;
EXCEPTION 
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE ('ERROR: ' || SQLERRM);
END;
--SQLERRM se utiliza para obtener una descripción textual del error ocurrido.
--Proporciona información detallada sobre el error, incluyendo el código y el mensaje de error.



SET SERVEROUTPUT on;
DECLARE
  v_trabajador_nombre VARCHAR2(100);
  v_id_trabajador NUMBER := 8; -- ID que genera más de un resultado
BEGIN
  SELECT nombres || ' ' || apellido_paterno || ' ' || apellido_materno
    INTO v_trabajador_nombre
    FROM TRABAJADOR
   WHERE id = v_id_trabajador;
   
   -- Realizar alguna acción con el nombre del trabajador encontrado
   
  DBMS_OUTPUT.PUT_LINE('Nombre del trabajador: ' || v_trabajador_nombre);
EXCEPTION
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Se encontraron múltiples trabajadores con el mismo ID.');
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontró ningún trabajador con el ID proporcionado.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo una excepción no esperada: ' || SQLERRM);
END;



SET SERVEROUTPUT on;
DECLARE
  v_id CLIENTE.id%type := &id;
BEGIN
  INSERT INTO CLIENTE (nombres, apellido_paterno, apellido_materno, dni, celular, email, domicilio, ubigeo_codigo) 
    VALUES 
    ('Alicia','García','Campos',v_id,'929 185 236','agarcia@gmail.com','Av. Paula Sotelo','140409');

  IF SQL%ROWCOUNT = 0 THEN
    DBMS_OUTPUT.PUT_LINE('No existe el cliente con el ID proporcionado');
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('---------------------------');
    DBMS_OUTPUT.PUT_LINE('---------------------------');
    DBMS_OUTPUT.PUT_LINE('Error SQLCODE   |  DESCRIPCION');
    DBMS_OUTPUT.PUT_LINE('---------------------------');
    
    DBMS_OUTPUT.PUT_LINE(
        RPAD(SQLCODE, 15) || ' | ' ||
        RPAD(SQLERRM, 200)
            );
END;
/



SET SERVEROUTPUT on;
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE RESERVA_DETALLE';
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('---------------------------');
    DBMS_OUTPUT.PUT_LINE('---------------------------');
    DBMS_OUTPUT.PUT_LINE('Error SQLCODE   |  DESCRIPCION');
    DBMS_OUTPUT.PUT_LINE('---------------------------');
    
    DBMS_OUTPUT.PUT_LINE(
        RPAD(SQLCODE, 15) || ' | ' ||
        RPAD(SQLERRM, 200)
            );
END;
/



DECLARE
    v_id NUMBER;
    v_nombres VARCHAR2(50);
    v_apellido_paterno VARCHAR2(50);
    v_apellido_materno VARCHAR2(50);
    v_dni CHAR(8);
    v_celular CHAR(11);
    CURSOR c_trabajador IS
        SELECT * FROM TRABAJADOR ORDER BY ID ASC;
BEGIN
    -- Solicitar los datos al usuario por consola
    DBMS_OUTPUT.PUT('Ingrese los nombres del trabajador: ');
    v_nombres := '&nombres';
    DBMS_OUTPUT.PUT_LINE(v_nombres);

    DBMS_OUTPUT.PUT('Ingrese el apellido paterno del trabajador: ');
    v_apellido_paterno := '&apellido_paterno';
    DBMS_OUTPUT.PUT_LINE(v_apellido_paterno);

    DBMS_OUTPUT.PUT('Ingrese el apellido materno del trabajador: ');
    v_apellido_materno := '&apellido_materno';
    DBMS_OUTPUT.PUT_LINE(v_apellido_materno);

    DBMS_OUTPUT.PUT('Ingrese el DNI del trabajador: ');
    v_dni := '&dni';
    DBMS_OUTPUT.PUT_LINE(v_dni);

    DBMS_OUTPUT.PUT('Ingrese el número de celular del trabajador: ');
    v_celular := '&celular';
    DBMS_OUTPUT.PUT_LINE(v_celular);

    -- Insertar los datos en la tabla TRABAJADOR
    BEGIN
        INSERT INTO TRABAJADOR (nombres, apellido_paterno, apellido_materno, dni, celular)
        VALUES (v_nombres, v_apellido_paterno, v_apellido_materno, v_dni, v_celular)
        RETURNING id INTO v_id;
        
        -- Mostrar el ID del trabajador insertado
        DBMS_OUTPUT.PUT_LINE('El nuevo trabajador ha sido insertado. ID: ' || v_id);
        
        -- Realizar consulta SELECT en la tabla TRABAJADOR
        DBMS_OUTPUT.PUT_LINE('Datos de la tabla TRABAJADOR:');
        FOR rec IN c_trabajador LOOP
            DBMS_OUTPUT.PUT_LINE('ID: ' || rec.id || ', Nombres: ' || rec.nombres || ', Apellido Paterno: ' || rec.apellido_paterno || ', Apellido Materno: ' || rec.apellido_materno || ', DNI: ' || rec.dni || ', Celular: ' || rec.celular);
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('');
             DBMS_OUTPUT.PUT_LINE(' ');
              DBMS_OUTPUT.PUT_LINE('Error al insertar el trabajador: ' || SQLERRM);
    END;

    COMMIT;
END;
