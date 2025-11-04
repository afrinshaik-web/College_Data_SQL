-- Create DEPARTMENTS table
CREATE TABLE DEPARTMENTS (
    department_id TEXT PRIMARY KEY,
    department_name TEXT NOT NULL,
    hod_id TEXT  -- Will be updated after faculty insertion
);

-- Create FACULTY table
CREATE TABLE FACULTY (
    faculty_id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    email TEXT,
    phone TEXT,
    designation TEXT,
    FOREIGN KEY (department) REFERENCES DEPARTMENTS(department_id)
);

-- Create STUDENTS table
CREATE TABLE STUDENTS (
    student_id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT,
    phone TEXT,
    address TEXT,
    gender TEXT,
    enrollment_date TEXT,
    department_id TEXT,
    FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(department_id)
);

-- Create COURSES table
CREATE TABLE COURSES (
    course_id TEXT PRIMARY KEY,
    course_name TEXT NOT NULL,
    credits INTEGER,
    semester INTEGER,
    department_id TEXT,
    faculty_id TEXT,
    max_capacity INTEGER,
    FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(department_id),
    FOREIGN KEY (faculty_id) REFERENCES FACULTY(faculty_id)
);

-- Create ENROLLMENTS table
CREATE TABLE ENROLLMENTS (
    enrollment_id TEXT PRIMARY KEY,
    student_id TEXT,
    course_id TEXT,
    enrollment_date TEXT,
    semester INTEGER,
    grade TEXT,
    FOREIGN KEY (student_id) REFERENCES STUDENTS(student_id),
    FOREIGN KEY (course_id) REFERENCES COURSES(course_id)
);


-- Insert departments with HOD IDs directly
INSERT INTO DEPARTMENTS VALUES 
('CS', 'Computer Science', 'F001'),
('EC', 'Electronics', 'F003'),
('ME', 'Mechanical', 'F005'),
('CE', 'Civil', 'F007'),
('MA', 'Mathematics', 'F009'),
('PH', 'Physics', 'F010');



INSERT INTO FACULTY VALUES 
('F001', 'Dr. Rajesh Kumar', 'CS', 'rajesh.kumar@college.edu', '9876543210', 'Professor'),
('F002', 'Dr. Priya Sharma', 'CS', 'priya.sharma@college.edu', '9876543211', 'Associate Professor'),
('F003', 'Prof. Amit Singh', 'EC', 'amit.singh@college.edu', '9876543212', 'Professor'),
('F004', 'Dr. Anjali Patel', 'EC', 'anjali.patel@college.edu', '9876543213', 'Assistant Professor'),
('F005', 'Dr. Sanjay Verma', 'ME', 'sanjay.verma@college.edu', '9876543214', 'Professor'),
('F006', 'Prof. Neha Gupta', 'ME', 'neha.gupta@college.edu', '9876543215', 'Associate Professor'),
('F007', 'Dr. Ravi Menon', 'CE', 'ravi.menon@college.edu', '9876543216', 'Professor'),
('F008', 'Dr. Sunita Reddy', 'CE', 'sunita.reddy@college.edu', '9876543217', 'Assistant Professor'),
('F009', 'Dr. Arun Joshi', 'MA', 'arun.joshi@college.edu', '9876543218', 'Professor'),
('F010', 'Prof. Kavita Das', 'PH', 'kavita.das@college.edu', '9876543219', 'Associate Professor'),
('F011', 'Dr. Vikram Malhotra', 'CS', 'vikram.malhotra@college.edu', '9876543220', 'Assistant Professor'),
('F012', 'Prof. Geeta Nair', 'EC', 'geeta.nair@college.edu', '9876543221', 'Assistant Professor');



INSERT INTO STUDENTS VALUES 
('S001', 'Aarav Sharma', 'aarav.sharma@student.edu', '9123456701', 'Bangalore', 'M', '2022-08-01', 'CS'),
('S002', 'Priya Patel', 'priya.patel@student.edu', '9123456702', 'Mumbai', 'F', '2022-08-01', 'CS'),
('S003', 'Rohan Kumar', 'rohan.kumar@student.edu', '9123456703', 'Delhi', 'M', '2022-08-01', 'EC'),
('S004', 'Ananya Singh', 'ananya.singh@student.edu', '9123456704', 'Chennai', 'F', '2022-08-01', 'EC'),
('S005', 'Vikram Joshi', 'vikram.joshi@student.edu', '9123456705', 'Hyderabad', 'M', '2022-08-01', 'ME'),
('S006', 'Neha Gupta', 'neha.gupta@student.edu', '9123456706', 'Pune', 'F', '2022-08-01', 'ME'),
('S007', 'Arun Reddy', 'arun.reddy@student.edu', '9123456707', 'Bangalore', 'M', '2022-08-01', 'CE'),
('S008', 'Sneha Nair', 'sneha.nair@student.edu', '9123456708', 'Kochi', 'F', '2022-08-01', 'CE'),
('S009', 'Rahul Verma', 'rahul.verma@student.edu', '9123456709', 'Kolkata', 'M', '2023-08-01', 'CS'),
('S010', 'Pooja Mehta', 'pooja.mehta@student.edu', '9123456710', 'Ahmedabad', 'F', '2023-08-01', 'CS'),
('S011', 'Karan Malhotra', 'karan.malhotra@student.edu', '9123456711', 'Delhi', 'M', '2023-08-01', 'EC'),
('S012', 'Divya Iyer', 'divya.iyer@student.edu', '9123456712', 'Chennai', 'F', '2023-08-01', 'EC'),
('S013', 'Amit Das', 'amit.das@student.edu', '9123456713', 'Kolkata', 'M', '2023-08-01', 'ME'),
('S014', 'Sunita Rao', 'sunita.rao@student.edu', '9123456714', 'Bangalore', 'F', '2023-08-01', 'ME'),
('S015', 'Rajesh Nair', 'rajesh.nair@student.edu', '9123456715', 'Kochi', 'M', '2023-08-01', 'CE'),
('S016', 'Anjali Kapoor', 'anjali.kapoor@student.edu', '9123456716', 'Mumbai', 'F', '2023-08-01', 'CE'),
('S017', 'Sanjay Kumar', 'sanjay.kumar@student.edu', '9123456717', 'Hyderabad', 'M', '2022-08-01', 'MA'),
('S018', 'Latha Menon', 'latha.menon@student.edu', '9123456718', 'Chennai', 'F', '2022-08-01', 'PH'),
('S019', 'Deepak Sharma', 'deepak.sharma@student.edu', '9123456719', 'Delhi', 'M', '2023-08-01', 'MA'),
('S020', 'Meera Patel', 'meera.patel@student.edu', '9123456720', 'Ahmedabad', 'F', '2023-08-01', 'PH');


INSERT INTO COURSES VALUES 
('CS101', 'Programming Fundamentals', 4, 1, 'CS', 'F001', 60),
('CS201', 'Data Structures', 4, 2, 'CS', 'F002', 50),
('CS301', 'Database Systems', 4, 3, 'CS', 'F011', 45),
('CS401', 'Algorithms', 4, 4, 'CS', 'F001', 40),
('EC101', 'Circuit Theory', 4, 1, 'EC', 'F003', 55),
('EC201', 'Digital Electronics', 4, 2, 'EC', 'F004', 50),
('EC301', 'Signals & Systems', 4, 3, 'EC', 'F012', 45),
('ME101', 'Engineering Mechanics', 4, 1, 'ME', 'F005', 60),
('ME201', 'Thermodynamics', 4, 2, 'ME', 'F006', 50),
('CE101', 'Civil Engineering Basics', 4, 1, 'CE', 'F007', 55),
('CE201', 'Structural Analysis', 4, 2, 'CE', 'F008', 45),
('MA101', 'Calculus I', 3, 1, 'MA', 'F009', 100),
('MA201', 'Linear Algebra', 3, 2, 'MA', 'F009', 80),
('PH101', 'Physics I', 3, 1, 'PH', 'F010', 90),
('PH201', 'Modern Physics', 3, 2, 'PH', 'F010', 70);


INSERT INTO ENROLLMENTS VALUES 
('ENR001', 'S001', 'CS101', '2022-08-15', 1, 'A'),
('ENR002', 'S001', 'CS201', '2023-01-15', 2, 'B+'),
('ENR003', 'S001', 'CS301', '2023-08-15', 3, 'A'),
('ENR004', 'S002', 'CS101', '2022-08-15', 1, 'B'),
('ENR005', 'S002', 'CS201', '2023-01-15', 2, 'A'),
('ENR006', 'S003', 'EC101', '2022-08-15', 1, 'B+'),
('ENR007', 'S003', 'EC201', '2023-01-15', 2, 'A'),
('ENR008', 'S004', 'EC101', '2022-08-15', 1, 'A'),
('ENR009', 'S004', 'EC201', '2023-01-15', 2, 'B+'),
('ENR010', 'S005', 'ME101', '2022-08-15', 1, 'B'),
('ENR011', 'S005', 'ME201', '2023-01-15', 2, 'A'),
('ENR012', 'S006', 'ME101', '2022-08-15', 1, 'A'),
('ENR013', 'S007', 'CE101', '2022-08-15', 1, 'B+'),
('ENR014', 'S008', 'CE101', '2022-08-15', 1, 'A'),
('ENR015', 'S009', 'CS101', '2023-08-15', 1, NULL),
('ENR016', 'S010', 'CS101', '2023-08-15', 1, NULL),
('ENR017', 'S011', 'EC101', '2023-08-15', 1, NULL),
('ENR018', 'S012', 'EC101', '2023-08-15', 1, NULL),
('ENR019', 'S013', 'ME101', '2023-08-15', 1, NULL),
('ENR020', 'S014', 'ME101', '2023-08-15', 1, NULL),
('ENR021', 'S017', 'MA101', '2022-08-15', 1, 'A'),
('ENR022', 'S018', 'PH101', '2022-08-15', 1, 'B+'),
('ENR023', 'S019', 'MA101', '2023-08-15', 1, NULL),
('ENR024', 'S020', 'PH101', '2023-08-15', 1, NULL);



--List all Computer Science students
select s.student_id , s.name , d.department_id , d.department_name 
from STUDENTS s
JOIN DEPARTMENTS d 
ON s.department_id = d.department_id
where d.department_name = 'Computer Science';

--Find courses with capacity > 50
select course_id , course_name , max_capacity from COURSES 
where max_capacity > 50 ;

--Show faculty with Professor designation
select faculty_id , name , designation from FACULTY 
where designation = 'Professor';

--List all students who enrolled in the current semester
SELECT DISTINCT s.*
FROM STUDENTS s
JOIN ENROLLMENTS e ON s.student_id = e.student_id
WHERE e.semester = (SELECT MAX(semester) FROM ENROLLMENTS);

--Show all courses offered by the Electronics department
SELECT * FROM COURSES WHERE department_id = 'Electronics';

--Student enrollments with course names and grades
select e.student_id , e.enrollment_id , e.enrollment_date , c.course_id , c.course_name , e.grade 
from ENROLLMENTS e 
join COURSES c 
on e.course_id = c.course_id ;

--Courses with faculty names and departments
select c.course_id , c.course_name , f.faculty_id , f.name , d.department_id , d.department_name
from COURSES c 
join FACULTY f 
on c.faculty_id = f.faculty_id 
join DEPARTMENTS d 
on f.department = d.department_id 
order by c.course_id ;

--All students with their enrollment count
select student_id , count(course_id) as enrollment_count from ENROLLMENTS group by student_id order by student_id;

--List all faculty with the courses they teach and student enrollment count per course
SELECT f.faculty_id, f.name AS faculty_name, c.course_id, c.course_name, COUNT(e.enrollment_id) AS student_count
FROM FACULTY f
JOIN COURSES c ON f.faculty_id = c.faculty_id
LEFT JOIN ENROLLMENTS e ON c.course_id = e.course_id
GROUP BY f.faculty_id, f.name, c.course_id, c.course_name;

--Get each student's department along with their latest enrollment grade
SELECT s.student_id, s.name, d.department_name, e.grade, e.semester
FROM STUDENTS s
JOIN DEPARTMENTS d ON s.department_id = d.department_id
JOIN ENROLLMENTS e ON s.student_id = e.student_id
WHERE e.semester = (
    SELECT MAX(semester)
    FROM ENROLLMENTS e2
    WHERE e2.student_id = s.student_id
);

--Count students by department and gender
select d.department_name , s.gender , count(s.student_id) as student_count
from STUDENTS s
join DEPARTMENTS d 
on s.department_id = d.department_id 
group by d.department_id , s.gender ;

--Average credits by department
select d.department_name , avg(c.credits) as average_credits 
from DEPARTMENTS d 
join COURSES c 
on d.department_id = c.department_id 
group by d.department_name;

--Courses with high enrollment (> 80% capacity)
select c.course_id , c.course_name , count(e.enrollment_id) as current_enroll,
round((count(e.enrollment_id) * 100.0)/c.max_capacity) as enroll_percentage 
from COURSES c 
join ENROLLMENTS e 
on c.course_id = e.course_id 
group by c.course_id , c.course_name 
having enroll_percentage > 0.8;

--Find the course with the maximum number of students enrolled
SELECT c.course_id, c.course_name, COUNT(e.enrollment_id) AS enrollment_count
FROM COURSES c
JOIN ENROLLMENTS e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY enrollment_count DESC
LIMIT 1;

--Calculate the average number of courses taken per student by department
SELECT d.department_name, AVG(enroll_counts.course_count) AS avg_courses_per_student
FROM DEPARTMENTS d
JOIN (
    SELECT s.student_id, s.department_id, COUNT(e.course_id) AS course_count
    FROM STUDENTS s
    LEFT JOIN ENROLLMENTS e ON s.student_id = e.student_id
    GROUP BY s.student_id, s.department_id
) enroll_counts ON d.department_id = enroll_counts.department_id
GROUP BY d.department_name;

--Grade distribution by department
select d.department_id , d.department_name , e.grade , count(*) as grade_count
from ENROLLMENTS e
join STUDENTS s 
on e.student_id = s.student_id 
join DEPARTMENTS d 
on s.department_id = d.department_id
group by d.department_id , d.department_name ;

--Faculty workload analysis
select f.faculty_id , f.name , f.department , count(c.course_id ) as courses_assigned
from FACULTY f 
join COURSES c 
on f.faculty_id = c.faculty_id
group by f.faculty_id , f.name ;

--Department performance summary
select d.department_id , d.department_name , count(distinct c.course_id) as total_courses ,
count(distinct s.student_id) as total_students ,
round(avg(case
	   when e.grade like 'A%' then 10
	   when e.grade like 'B%' THEN 8
       when e.grade like 'C%' THEN 6
       when e.grade like 'D%' THEN 4
       when e.grade like 'E%' THEN 2
       else 0
end) , 2) as avg_grade_points
from DEPARTMENTS d 
join COURSES c on d.department_id = c.department_id
join STUDENTS s on d.department_id = s.department_id 
join ENROLLMENTS e on s.student_id = e.student_id 
group by d.department_id , d.department_name 
order by avg_grade_points desc;

--Identify departments where average grades improved or declined across semesters
SELECT d.department_name, e.semester,
       ROUND(AVG(CASE
           WHEN e.grade = 'A' THEN 10
           WHEN e.grade = 'B' THEN 8
           WHEN e.grade = 'C' THEN 6
           WHEN e.grade = 'D' THEN 4
           WHEN e.grade = 'E' THEN 2
           ELSE 0
       END), 2) AS avg_grade_points
FROM ENROLLMENTS e
JOIN STUDENTS s ON e.student_id = s.student_id
JOIN DEPARTMENTS d ON s.department_id = d.department_id
GROUP BY d.department_name, e.semester
ORDER BY d.department_name, e.semester;

--Show top 3 faculty by student enrollments handled, with course breakdown
SELECT f.faculty_id, f.name, c.course_id, c.course_name, COUNT(e.enrollment_id) AS student_count
FROM FACULTY f
JOIN COURSES c ON f.faculty_id = c.faculty_id
LEFT JOIN ENROLLMENTS e ON c.course_id = e.course_id
GROUP BY f.faculty_id, f.name, c.course_id, c.course_name
ORDER BY student_count DESC
LIMIT 3;










































