USE universidad;

INSERT INTO asignaturas(asignatura_name, asignatura_professor_id)
VALUES ('Basic Computing', (SELECT professor_id FROM professors ORDER BY RAND() LIMIT 1));
INSERT INTO asignaturas(asignatura_name, asignatura_professor_id)
VALUES ('Circuit analysis', (SELECT professor_id FROM professors ORDER BY RAND() LIMIT 1));
INSERT INTO asignaturas(asignatura_name, asignatura_professor_id)
VALUES ('Introduction to electronics', (SELECT professor_id FROM professors ORDER BY RAND() LIMIT 1));
INSERT INTO asignaturas(asignatura_name, asignatura_professor_id)
VALUES ('Engineering computing', (SELECT professor_id FROM professors ORDER BY RAND() LIMIT 1));
INSERT INTO asignaturas(asignatura_name, asignatura_professor_id)
VALUES ('Calculation', (SELECT professor_id FROM professors ORDER BY RAND() LIMIT 1));
INSERT INTO asignaturas(asignatura_name, asignatura_professor_id)
VALUES ('Embedded systems', (SELECT professor_id FROM professors ORDER BY RAND() LIMIT 1));
INSERT INTO asignaturas(asignatura_name, asignatura_professor_id)
VALUES ('Computer networks', (SELECT professor_id FROM professors ORDER BY RAND() LIMIT 1));







 
