SET SERVEROUTPUT ON;

BEGIN
   DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(101, 5000));
   DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(102, 8500));
   DBMS_OUTPUT.PUT_LINE(fn_validate_payroll(999, 3000));
END;
/