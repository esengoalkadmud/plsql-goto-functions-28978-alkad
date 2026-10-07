SET SERVEROUTPUT ON;

DECLARE
   v_salary NUMBER := &Enter_salary;
BEGIN
   IF v_salary >= 100000 THEN
      GOTO high_salary;
   ELSIF v_salary >= 50000 THEN
      GOTO medium_salary;
   ELSE
      GOTO low_salary;
   END IF;

   <<high_salary>>
   DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' - HIGH bracket.');
   GOTO review_end;

   <<medium_salary>>
   DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' - MEDIUM bracket.');
   GOTO review_end;

   <<low_salary>>
   DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' - LOW bracket.');

   <<review_end>>
   DBMS_OUTPUT.PUT_LINE('Salary review completed.');
END;
/