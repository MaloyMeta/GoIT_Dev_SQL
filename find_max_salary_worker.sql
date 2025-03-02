SELECT NAME, SALARY 
FROM worker
<<<<<<< HEAD
 ORDER BY SALARY 
 DESC
 LIMIT 1;

=======
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM worker
)
>>>>>>> master
