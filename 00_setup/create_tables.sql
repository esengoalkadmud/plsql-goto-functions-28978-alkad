SET SERVEROUTPUT ON;

CREATE TABLE departments (
   department_id   NUMBER PRIMARY KEY,
   department_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
   employee_id   NUMBER PRIMARY KEY,
   first_name    VARCHAR2(50),
   last_name     VARCHAR2(50),
   email         VARCHAR2(100),
   hire_date     DATE,
   salary        NUMBER(10,2),
   department_id NUMBER,
   CONSTRAINT fk_dept FOREIGN KEY (department_id)
      REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (10, 'Sales');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'IT');
INSERT INTO departments VALUES (40, 'HR');
INSERT INTO departments VALUES (50, 'Marketing');

INSERT INTO employees VALUES (101, 'Alice', 'Smith', 'alice@company.com', TO_DATE('2015-01-15','YYYY-MM-DD'), 5000, 10);
INSERT INTO employees VALUES (102, 'Bob', 'Johnson', 'bob@company.com', TO_DATE('2018-03-20','YYYY-MM-DD'), 8500, 20);
INSERT INTO employees VALUES (103, 'Carol', 'Williams', 'carol@company.com', TO_DATE('2012-07-10','YYYY-MM-DD'), 12000, 30);
INSERT INTO employees VALUES (104, 'David', 'Brown', 'david@company.com', TO_DATE('2020-11-05','YYYY-MM-DD'), 4500, 40);
INSERT INTO employees VALUES (105, 'Eve', 'Davis', 'eve@company.com', TO_DATE('2019-06-25','YYYY-MM-DD'), 7000, 50);

COMMIT;
DBMS_OUTPUT.PUT_LINE('Setup complete.');
