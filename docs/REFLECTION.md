# Reflection — PL/SQL GOTO and Functions

## What I Learned

- GOTO transfers control to labeled sections
- GOTO cannot jump into nested blocks (illegal GOTO)
- Functions must return a value
- Functions can be used in SQL when no DML inside
- Exception handling with RAISE_APPLICATION_ERROR

## Challenges

- Understanding GOTO label scope
- Writing SQL-compatible functions

## Key Takeaways

- Prefer structured programming over GOTO
- Always handle exceptions
- Test with edge cases (NULL, negative, zero)