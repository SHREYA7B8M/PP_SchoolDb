create database PP_SchoolDb

use PP_SchoolDb

create table Student
(StudentId int primary key identity(101,1),
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
DOB Date not null,
ClassId int,
constraint FK_Student_ClassId foreign key (ClassId) references Classes (ClassId)
)

insert into Student (Fname,Lname,DOB,ClassId) values ('Ethan','Hunt','12/12/1999',1)
insert into Student (Fname,Lname,DOB,ClassId) values ('Benji','Dunn','02/23/2000',2)
insert into Student (Fname,Lname,DOB,ClassId) values ('Luther','Stickley','04/20/1999',1)
insert into Student (Fname,Lname,DOB,ClassId) values ('Ilsa','Faust','09/09/2000',2)
insert into Student (Fname,Lname,DOB,ClassId) values ('Grace','Williams','11/11/2000',1)


create index IX_Student_ClassId on Student (ClassId)

create table Subjects
(SubId int primary key identity(1001,2),
SubName nvarchar(50) not null
)

insert into Subjects (SubName) values ('Physics')
insert into Subjects (SubName) values ('Chemistry')
insert into Subjects (SubName) values ('Biology')



create table Classes
(ClassId int primary key identity(1,1),
ClassName nvarchar(50) not null
)

insert into Classes (ClassName) values ('Hope')
insert into Classes (ClassName) values ('Joy')

select * from Student
select * from Subjects
select * from Classes
select s.StudentId, s.Fname+ ' ' + s.Lname as 'Full Name', s.DOB, c.ClassId, c.ClassName
from Student s 
join Classes c on s.ClassId=c.ClassId

