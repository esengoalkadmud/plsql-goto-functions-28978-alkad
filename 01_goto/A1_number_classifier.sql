SET SERVEROUTPUT ON;

DECLARE
   v_number NUMBER := &Enter_number;
BEGIN
   IF v_number > 0 THEN
      GOTO positive_label;
   ELSIF v_number < 0 THEN
      GOTO negative_label;
   ELSE
      GOTO zero_label;
   END IF;

   <<positive_label>>
   DBMS_OUTPUT.PUT_LINE(v_number || ' is POSITIVE.');
   GOTO end_label;

   <<negative_label>>
   DBMS_OUTPUT.PUT_LINE(v_number || ' is NEGATIVE.');
   GOTO end_label;

   <<zero_label>>
   DBMS_OUTPUT.PUT_LINE('The number is ZERO.');

   <<end_label>>
   DBMS_OUTPUT.PUT_LINE('Classification complete.');
END;
/