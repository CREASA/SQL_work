-- department Table
delete from department;
INSERT INTO `department` (idDepartment,`classWebsite`, `departName`) VALUES                            
('1','www.info.com', 'informatics');
SELECT * FROM myuw.department;

-- instructor Table
delete from instructor;
INSERT INTO `instructor` (idInstructor,instructorFirstName, `instructorTitle`,`phoneNumber`,`filedsOfInterest`,`introductionWebsite`,`instructorLastName`) VALUES 
(1,'bob', 'info','2068325679','info','{\"http\":\"www.infomatics.com\"}','boiko');
SELECT * FROM myuw.instructor;

-- student table
delete from student;
INSERT INTO `student` (idStudent,`localAddress`, `studentNumber`,`classStanding`,`studentName`,`permanentAddress`,`major`) VALUES 
(1,'{\"address\":\"trailside\"}', '2019232','foster','{\"name\":\"creasa\"}','{\"address\":\"trailside\"}','infomatics');
SELECT * FROM myuw.student;

-- study abroad table
delete from study_abroad;
INSERT INTO `study_abroad` (idStudy_abroad,`region`, `programName`,`city`,`country`, `idDepartment`) VALUES 
(1,'seattle', 'oversea','seattle','USA', '1');
SELECT * FROM myuw.study_abroad;

-- textbook table
delete from textbook;
INSERT INTO `textbook` (idTextbook,`productType`, `price`,`edition`,`internationalStandardBookNumber`,`bookTitle`,`author`) VALUES 
(1,'story', '110','good','3821','travel','thompson');
SELECT * FROM myuw.textbook;

-- building table
delete from building;
INSERT INTO `building` (idBuilding,`openHours`, `buildingNumber`,`contact`,`collegeFullName`,`photo`,`facNum`,`site`,`facCode`,`buildingType`,`buildingName`,`buildingAddress`) VALUES 
(2,'12', '110','3821','uw','no','1','apartment','1','good','trailside','{\"address\":\"24thAve\"}');
SELECT * FROM myuw.building;

-- course table
delete from course;
INSERT INTO `course` (idCourse,`courseName`, `curriculum`,`courseTitle`,`coursesDescription`,`recommendPre`,`genedureq`,`quarter`,`additionalDetails`,`section`,`credits`,`sln`,`capacity`,`prerequisite`,`idDepartment`,`idBuilding`) VALUES 
(1,'info330', 'good','{\"title\":\"database\"}','good','info200','info201','2022-06-19','good','{\"section\":\"ab\"}','w','10981','12','14021','1', '2');
SELECT * FROM myuw.course;

-- course-instructor bridge table
delete from `course-instructor`;
INSERT INTO `course-instructor`(`idCourse`, `idInstructor`) values
(1,1) ;
SELECT * FROM `course-instructor`;

-- course-textbook bridge table
delete from `course-textbook`;
INSERT INTO `course-textbook`(`idCourse`, `idTextbook`) values
(1,1) ;
SELECT * FROM `course-textbook`;

-- student-course bridge table
delete from `student-course`;
INSERT INTO `student-course`(`idStudent`, `idCourse`) values
(1,1) ;
SELECT * FROM `student-course`;

-- student-study_abroad bridge table
delete from `student-study_abroad`;
INSERT INTO `student-study_abroad`(`idStudent`, `idStudy_abroad`) values
(1,1) ;
SELECT * FROM `student-study_abroad`;