-- INTENTIONAL ERROR DEMO
SET SERVEROUTPUT ON;

BEGIN
   GOTO inside_if;
   IF 1 = 1 THEN
      <<inside_if>>
      DBMS_OUTPUT.PUT_LINE('This causes a compilation error.');
   END IF;
END;
/