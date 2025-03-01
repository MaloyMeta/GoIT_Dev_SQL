SELECT p.ID AS NAME,
DATEDIFF(MONTH,p.START_DATE,p.FINISH_DATE) * SUM(w.SALARY)AS PRICE
FROM project p
JOIN project_worker pw ON p.ID = pw.PROJECT_ID
JOIN worker w ON pw.WORKER_ID = w.ID
GROUP BY p.ID, p.START_DATE, FINISH_DATE
ORDER BY PRICE DESC;