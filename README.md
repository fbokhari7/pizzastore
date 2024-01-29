# pizzastore
It is a SQL file that generates relational DB schema for a pizza store. Schema can be used for data science projects. I plan to add data import files to the repo.
Table Name	Column Name	Data Type	Description
Students	StudentID	INT, PRIMARY KEY	Unique identifier for a student.
FirstName	VARCHAR(50)	First name of the student.
LastName	VARCHAR(50)	Last name of the student.
BirthDate	DATE	Date of birth of the student.
Gender	CHAR(1)	Gender of the student.
GradeLevel	INT	Grade level of the student.
Teachers	TeacherID	INT, PRIMARY KEY	Unique identifier for a teacher.
FirstName	VARCHAR(50)	First name of the teacher.
LastName	VARCHAR(50)	Last name of the teacher.
BirthDate	DATE	Date of birth of the teacher.
Gender	CHAR(1)	Gender of the teacher.
DepartmentID	INT	Identifier for the department the teacher belongs to.
Courses	CourseID	INT, PRIMARY KEY	Unique identifier for a course.
CourseName	VARCHAR(100)	Name of the course.
DepartmentID	INT	Identifier for the department the course belongs to.
Classes	ClassID	INT, PRIMARY KEY	Unique identifier for a class.
CourseID	INT	Identifier for the course the class is associated with.
TeacherID	INT	Identifier for the teacher teaching the class.
RoomNumber	VARCHAR(20)	Room number where the class is held.
Schedule	VARCHAR(50)	Schedule of the class.
Grades	GradeID	INT, PRIMARY KEY	Unique identifier for a grade.
StudentID	INT	Identifier for the student associated with the grade.
ClassID	INT	Identifier for the class associated with the grade.
Grade	DECIMAL(3, 2)	Grade obtained by the student in the class.
Attendance	AttendanceID	INT, PRIMARY KEY	Unique identifier for an attendance record.
StudentID	INT	Identifier for the student whose attendance is recorded.
ClassID	INT	Identifier for the class for which attendance is recorded.
AttendanceDate	DATE	Date for which the attendance is recorded.
Status	CHAR(1)	Attendance status of the student (e.g., "P" for present, "A" for absent).
Subjects	SubjectID	INT, PRIMARY KEY	Unique identifier for a subject.
SubjectName	VARCHAR(100)	Name of the subject.
Exams	ExamID	INT, PRIMARY KEY	Unique identifier for an exam.
ClassID	INT	Identifier for the class for which the exam is conducted.
SubjectID	INT	Identifier for the subject of the exam.
ExamDate	DATE	Date of the exam.
ExamResults	ExamResultID	INT, PRIMARY KEY	Unique identifier for an exam result.
ExamID	INT	Identifier for the exam associated with the result.
StudentID	INT	Identifier for the student associated with the result.
Score	DECIMAL(3, 2)	Score obtained by the student in the exam.
Classrooms	ClassroomID	INT, PRIMARY KEY	Unique identifier for a classroom.
RoomNumber	VARCHAR(20)	Room number of the classroom.
Capacity	INT	Capacity of the classroom.
Staff	StaffID	INT, PRIMARY KEY	Unique identifier for a staff member.
FirstName	VARCHAR(50)	First name of the staff member.
LastName	VARCHAR(50)	Last name of the staff member.
BirthDate	DATE	Date of birth of the staff member.
Gender	CHAR(1)	Gender of the staff member.
Position	VARCHAR(100)	Position or role of the staff member.
Fees	FeeID	INT, PRIMARY KEY	Unique identifier for a fee.
StudentID	INT	Identifier for the student associated with the fee.
Amount	DECIMAL(10, 2)	Amount of the fee.
DueDate	DATE	Due date for the fee.
Scholarships	ScholarshipID	INT, PRIMARY KEY	Unique identifier for a scholarship.
StudentID	INT	Identifier for the student awarded the scholarship.
Amount	DECIMAL(10, 2)	Amount of the scholarship.
AwardDate	DATE	Date when the scholarship was awarded to the student.
