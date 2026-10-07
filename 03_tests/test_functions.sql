SET SERVEROUTPUT ON;

BEGIN
   DBMS_OUTPUT.PUT_LINE('Annual: ' || fn_annual_salary(5000));
   DBMS_OUTPUT.PUT_LINE('Years: ' || fn_years_of_service(TO_DATE('2015-01-01','YYYY-MM-DD')));
   DBMS_OUTPUT.PUT_LINE('Tax: ' || fn_calculate_tax(75000));
   DBMS_OUTPUT.PUT_LINE('Dept: ' || fn_dept_name(10));
   DBMS_OUTPUT.PUT_LINE('Payroll: ' || fn_validate_payroll(101, 5000));
END;
/