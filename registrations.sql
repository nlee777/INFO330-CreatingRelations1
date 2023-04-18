-- Create the student_courses table
CREATE TABLE student_courses (
    studentid INTEGER REFERENCES student(id),
    course VARCHAR(40) REFERENCES courses(code),
    grade FLOAT DEFAULT NULL
);

-- Enroll the students in their courses
INSERT INTO student_courses (studentid, course)
VALUES
  ((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flinstone'), 'INFO330A'),
  ((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flintstone'), 'INFO448A'),
  ((SELECT id FROM students WHERE firstname = 'Fred' AND lastname = 'Flintstone'), 'INFO314'),
  ((SELECT id FROM students WHERE firstname = 'Barney' AND lastname = 'Rubble'), 'INFO330A'),
  ((SELECT id FROM students WHERE firstname = 'Barney' AND lastname = 'Rubble'), 'INFO449A'),
  ((SELECT id FROM students WHERE firstname = 'Wilma' AND lastname = 'Flintstone'), 'BAW010'),
  ((SELECT id FROM students WHERE firstname = 'Wilma' AND lastname = 'Flintstone'), 'BAW100'),
  ((SELECT id FROM students WHERE firstname = 'Betty' AND lastname = 'Rubble'), 'BAW010');