--querys

-- nota media por profesor


USE universidad;


SELECT p.professor_name AS "Professor", AVG(c.calificaciones_value) as "Calificacion Media"
FROM asignaturas a
JOIN professors p
ON  a.asignatura_professor_id = p.professor_id
JOIN calificaciones c
ON a.asignatura_id = c.calificaciones_asignatura_id
GROUP BY p.professor_name;  

-- Las mejores notas de cada estudiante

USE universidad;

SELECT s.student_name AS "Student",
	MAX(c.calificaciones_value) AS "Mejor Calificacion"
FROM calificaciones c
JOIN students s
ON c.student_id = s.student_id
GROUP BY s.student_id;



-- Agrupar a los estudiantes por los cursos en los que están matriculados

USE universidad;

SELECT a.asignatura_name AS "Curso", s.student_name AS "Student"
FROM calificaciones c
JOIN students s ON s.student_id = c.student_id
JOIN asignaturas a ON  a.asignatura_id = c.calificaciones_asignatura_id
GROUP BY a.asignatura_name, s.student_name;   

--Crear un informe resumido de los cursos y sus notas medias, 
--ordenados desde el curso más difícil (curso con la nota media más baja) 
--hasta el curso más fácil 

USE universidad;

SELECT a.asignatura_name AS "Curso", AVG(c.calificaciones_value) as "Nota media"
FROM calificaciones c
JOIN asignaturas a
ON a.asignatura_id = c.calificaciones_asignatura_id
GROUP BY a.asignatura_id
ORDER BY AVG(c.calificaciones_value) ASC;     


-- Encontrar qué estudiante y qué profesor tienen más cursos en común


USE universidad;

SELECT student_name AS "Student", professor_name AS "Profesor", COUNT(*) AS cursos_en_comun
FROM calificaciones
JOIN students
ON calificaciones.student_id = students.student_id
JOIN asignaturas
ON calificaciones.calificaciones_asignatura_id = asignatura_id
JOIN professors
ON asignaturas.asignatura_professor_id = professor_id
GROUP BY student_name, professor_name
ORDER BY cursos_en_comun DESC;


