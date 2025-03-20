create table students(studentID int(4) primary key auto_increment,studentName varchar(200) not null,email 
varchar(200)not null unique,BirthDate date, Phone varchar(10),Image varchar(200) not null,ParentPhone varchar(10));




use attendence;
create table Enrollements(CourseID int(4) primary key  
auto_increment,StudentID int(4),foreign key(StudentID) references  Students
(StudentID),EnrollementDate date ,CanCelled boolean ,CancellationReason varchar(200),
fees_paid   float,fees_pending  float , PreviousDeegee varchar(200),
faculty varchar(200));


create table Classes(CourseID int(4),foreign key(CourseID) references 
Courses(CourseID),ClassNo

create table Courses(CourseID int(4) primary key auto_increment,
CourseDescription varchar(200),Abstreact varchar(200),Prerequisits
varchar(200));

create table Teachers(TeacherID int(4) primary key auto_increment,
TeacherName varchar(200) not null,email varchar(200) not null unique ,Phone varchar(10),Image varchar(200));

create table Categories(CategoryID int(4) primary key auto_increment,
CategoryDescription varchar(200) );


create table TeachersCourse(CourseID int(4),TeacherID int(4),foreign key(TeacherID)
references Teachers(TeacherID));



create table Classes(CourseID int(4),foreign key(CourseID) 
references Courses(CourseID), class_No int(20) primary key auto_increment  not null unique
,TeacherID  int(4), foreign key(TeacherID) references Teachers(TeacherID),ClassTitle varchar(200),
ClassDate date ,Starttime time ,Endtime time);



create table student_attendance(CourseID int(4),foreign key(CourseID)
references Courses(CourseID), class_No int(20) , 
foreign key(class_No) references Classes(class_No), StudentID 
int(4) , foreign key(StudentID) references Students(StudentID)
, attendanceDate date , TimeArrive time , TimeLeave time )



create table tests(test_no varchar(20) primary key, CourseID 
int(4), foreign key(CoureseID) references courses(CourseID), 
test_date date , test_time time , test_type varchar(20), remark
text(200))

