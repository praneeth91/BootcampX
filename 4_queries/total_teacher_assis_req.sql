SELECT count(assistance_requests.id) as total_assistances,teachers.name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE teachers.name ='Waylon Boehm'
GROUP BY teachers.name;