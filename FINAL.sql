CREATE TABLE PEDIDOS (
items integer,
cajas_grandes integer,
cajas_pequenas integer,
cantidad_cajas integer
)

CREATE OR REPLACE FUNCTION CALCULAR_CAJAS_NECESARIAS(numero_items integer, cantidad_cajas_grandes_disponibles integer, cantidad_cajas_pequenas_disponibles) RETURN INTEGER IS
    cantidad_cajas integer := 0;	 
    items integer := 0;
	numero_cajas_grandes integer := 0;
	numero_cajas_pequeñas integer := 0;
BEGIN
	IF cantidad_cajas_grandes_disponibles < 5
        pedidos.cajasgrandes := cantidad_cajas_grandes
    END IF;
    
    IF cantidad_cajas_pequenas_disponibles = 1
        pedidos.cajaspequenas := cantidad_cajas_pequenas
    END IF;
    cantidad_cajas := items / cantidad_cajas_grandes
    canatidd_cajas := numero + cantidad_cajas_pequenas
    IF numero <= items
        numero_items = -1
        pedidos.items = numero_items
	END IF;
END;

EXEC CALCULAR_CAJAS_NECESARIAS(16,5,10)

CREATE OR REPLACE PROCEDURE PROCESAR_PEDIDOS(cantidad_cajas) is
    p_items pedidos.items%TYPE;
    p_cajas_grandes pedidos.cajas_grandes%TYPE;
    p_cajas_pequenas pedidos.cajas_pequenas%TYPE;
    p_cantidad_cajas pedidos.cantidad_cajas%TYPE;
    CURSOR CURSORPEDIDOS IS SELECT items, cajas_grandes, cajas_pequeñas, cantidad_cajas FROM PEDIDOS;
BEGIN
  OPEN CURSORPEDIDOS;
    LOOP
        UPDATE PEDIDOS INTO p_items, p_cajas_grandes, p_cajas_pequenas,  p_cantidad_cajas; 
        EXIT  WHEN PEDIDOS%notfound;
        EXCEC CALCULAR_CAJAS_NECESARIAS(p_cantidad_cajas);
    END LOOP;
    CLOSE clientes;
 END;
 
 Initialize:
    max_so_far = 0
    max_ending_here = 0

CREATE TYPE number_array AS VARRAY(50) OF INTEGER;
BEGIN
i integer := 1;
max_fin integer;
max_fin = max_fin = max_fin + number_array(i);
IF (max_fin < 0)
    max_fin := 0;
END IF;

IF (max_lejos < max_fin)
    max_lejos := max_fin;
END IF;
DBMS.OUTPUT.PUT_LINE('max_lejos ' || max_lejos);
END;
