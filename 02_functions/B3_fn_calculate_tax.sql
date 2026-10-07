CREATE OR REPLACE FUNCTION fn_calculate_tax (
   p_salary IN NUMBER
) RETURN NUMBER
IS
   v_tax NUMBER := 0;
BEGIN
   IF p_salary IS NULL OR p_salary < 0 THEN
      RAISE_APPLICATION_ERROR(-20004, 'Salary must be positive.');
   END IF;

   IF p_salary <= 50000 THEN
      v_tax := p_salary * 0.10;
   ELSIF p_salary <= 100000 THEN
      v_tax := 50000 * 0.10 + (p_salary - 50000) * 0.20;
   ELSE
      v_tax := 50000 * 0.10 + 50000 * 0.20 + (p_salary - 100000) * 0.30;
   END IF;

   RETURN ROUND(v_tax, 2);
END fn_calculate_tax;
/