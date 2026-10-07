CREATE OR REPLACE FUNCTION fn_validate_payroll (
   p_employee_id IN NUMBER,
   p_monthly_salary IN NUMBER
) RETURN VARCHAR2
IS
   v_annual NUMBER;
   v_tax NUMBER;
   v_net NUMBER;
BEGIN
   IF p_employee_id IS NULL THEN
      RAISE_APPLICATION_ERROR(-20010, 'Employee ID cannot be NULL.');
   END IF;

   IF p_monthly_salary IS NULL OR p_monthly_salary <= 0 THEN
      RAISE_APPLICATION_ERROR(-20011, 'Monthly salary must be positive.');
   END IF;

   v_annual := fn_annual_salary(p_monthly_salary);
   v_tax := fn_calculate_tax(v_annual);
   v_net := v_annual - v_tax;

   RETURN 'Emp: ' || p_employee_id ||
          ' | Annual: ' || v_annual ||
          ' | Tax: ' || v_tax ||
          ' | Net: ' || v_net;
EXCEPTION
   WHEN OTHERS THEN
      RETURN 'ERROR: ' || SQLERRM;
END fn_validate_payroll;
/