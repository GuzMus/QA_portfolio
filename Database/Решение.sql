SELECT 
    pr.project_name AS "Название проекта",
    t.titel_name AS "Название должности",
    AVG(p.salary) AS "Средняя заработная плата"
FROM 
    projects pr
JOIN 
    positions p ON pr.project_id = p.project_id
JOIN 
    titles t ON p.title_id = t.Id
WHERE 
    pr.project_name = 'ПУМЧД' AND t.titel_name = 'qa engineer'
GROUP BY 
    pr.project_name, t.titel_name;


SELECT 
    e.first_name || ' ' || e.last_name AS "Имя и фамилия сотрудника",
    t.titel_name AS "Название должности"
FROM 
    employee e
JOIN 
    positions p ON e.employee_id = p.employee_id
JOIN 
    titles t ON p.title_id = t.Id
GROUP BY 
    e.first_name, e.last_name, t.titel_name
HAVING 
    COUNT(DISTINCT p.project_id) > 1;

