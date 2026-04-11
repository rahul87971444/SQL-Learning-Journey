USE StudentDB;

INSERT INTO students (name, age, email)
VALUES 
('Rahul', 20, 'rahul@gmail.com'),
('Amit', 21, 'amit@gmail.com'),
('Neha', 22, 'neha@gmail.com');

INSERT INTO courses (course_name)
VALUES 
('SQL'),
('Java'),
('Python');

INSERT INTO enrollments (student_id, course_id)
VALUES 
(1,1),
(1,2),
(2,2),
(3,3);
