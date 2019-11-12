SELECT students.name,avg(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.end_date is NULL
GROUP BY students.name
ORDER BY avg(assignment_submissions.duration) DESC;