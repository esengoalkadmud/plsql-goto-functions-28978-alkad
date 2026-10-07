SET SERVEROUTPUT ON;

DECLARE
   v_number NUMBER := &Enter_number;
BEGIN
   IF v_number > 0 THEN
      DBMS_OUTPUT.PUT_LINE(v_number || ' is POSITIVE.');
   ELSIF v_number < 0 THEN
      DBMS_OUTPUT.PUT_LINE(v_number || ' is NEGATIVE.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('The number is ZERO.');
   END IF;
   DBMS_OUTPUT.PUT_LINE('Classification complete.');
END;
/