-- Insert for Jerry information in student table
select * from student;
INSERT INTO `student` (idStudent,`localAddress`, `studentNumber`,`classStanding`,`studentName`,`permanentAddress`,`major`) VALUES 
(2,'{\"address\":\"Bridges\"}', '2020232','Sophomore','{\"name\":\"Jerry\"}','{\"address\":\"Bridges\"}','Biology')
on duplicate key update localAddress =values(localAddress),studentNumber=values(studentNumber),classStanding=values(classStanding),studentName=values(studentName),permanentAddress=values(permanentAddress),major=values(major);

-- Insert for Creasa information in student table
select * from student;
INSERT INTO `student` (idStudent,`localAddress`, `studentNumber`,`classStanding`,`studentName`,`permanentAddress`,`major`) VALUES 
(3,'{\"address\":\"Augusta\"}', '2020432','Junior','{\"name\":\"Creasa\"}','{\"address\":\"Augusta\"}','informatics')
on duplicate key update localAddress =values(localAddress),studentNumber=values(studentNumber),classStanding=values(classStanding),studentName=values(studentName),permanentAddress=values(permanentAddress),major=values(major);

-- Insert for Travis information in student table
select * from student;
INSERT INTO `student` (idStudent,`localAddress`, `studentNumber`,`classStanding`,`studentName`,`permanentAddress`,`major`) VALUES 
(4,'{\"address\":\"Augusta\"}', '2021352','Freshman','{\"name\":\"Travis\"}','{\"address\":\"Augusta\"}','pre-science')
on duplicate key update localAddress =values(localAddress),studentNumber=values(studentNumber),classStanding=values(classStanding),studentName=values(studentName),permanentAddress=values(permanentAddress),major=values(major);

-- Insert for Kevin information in student table
select * from student;
INSERT INTO `student` (idStudent,`localAddress`, `studentNumber`,`classStanding`,`studentName`,`permanentAddress`,`major`) VALUES 
(5,'{\"address\":\"Twelve\"}', '2020842','Junior','{\"name\":\"Kevin\"}','{\"address\":\"Twelve\"}','communication')
on duplicate key update localAddress =values(localAddress),studentNumber=values(studentNumber),classStanding=values(classStanding),studentName=values(studentName),permanentAddress=values(permanentAddress),major=values(major);

-- Insert for Bob information in instructor table
select * from instructor;
INSERT INTO `instructor`  (idInstructor,`instructorFirstName`, `instructorTitle`,`phoneNumber`,`filedsOfInterest`,`introductionWebsite`,`instructorLastName`) VALUES 
(2,'Ruolin', 'Teaching Assistant','2068325679','INFO','{\"http\":\"www.informatics.com\"}','Chen')
on duplicate key update instructorFirstName =values(instructorFirstName),instructorTitle=values(instructorTitle),phoneNumber=values(phoneNumber),filedsOfInterest=values(filedsOfInterest),introductionWebsite=values(introductionWebsite),instructorLastName=values(instructorLastName);

-- Insert for Nam-ho Park information in instructor table
select * from instructor;
INSERT INTO `instructor`  (idInstructor,`instructorFirstName`, `instructorTitle`,`phoneNumber`,`filedsOfInterest`,`introductionWebsite`,`instructorLastName`) VALUES 
(3,'Nam-ho', 'Professor','2064315672','INFO','{\"http\":\"www.infomatics.com\"}','Park')
on duplicate key update instructorFirstName =values(instructorFirstName),instructorTitle=values(instructorTitle),phoneNumber=values(phoneNumber),filedsOfInterest=values(filedsOfInterest),introductionWebsite=values(introductionWebsite),instructorLastName=values(instructorLastName);

-- Insert for Nicole information in instructor table
select * from instructor;
INSERT INTO `instructor`  (idInstructor,`instructorFirstName`, `instructorTitle`,`phoneNumber`,`filedsOfInterest`,`introductionWebsite`,`instructorLastName`) VALUES 
(4,'Nicole', 'Assistant Professor','2068324578','English','{\"http\":\"www.English.com\"}','Peter')
on duplicate key update instructorFirstName =values(instructorFirstName),instructorTitle=values(instructorTitle),phoneNumber=values(phoneNumber),filedsOfInterest=values(filedsOfInterest),introductionWebsite=values(introductionWebsite),instructorLastName=values(instructorLastName);

-- Insert for Elizabeth information in instructor table
select * from instructor;
INSERT INTO `instructor`  (idInstructor,`instructorFirstName`, `instructorTitle`,`phoneNumber`,`filedsOfInterest`,`introductionWebsite`,`instructorLastName`) VALUES 
(5,'Elizabeth', 'Professor','2068326054','Nutrition','{\"http\":\"www.Nutrition.com\"}','Kirk')
on duplicate key update instructorFirstName =values(instructorFirstName),instructorTitle=values(instructorTitle),phoneNumber=values(phoneNumber),filedsOfInterest=values(filedsOfInterest),introductionWebsite=values(introductionWebsite),instructorLastName=values(instructorLastName);

-- Insert for Informatics information in department table
select * from department;
INSERT INTO `department` (idDepartment,`classWebsite`, `departName`) VALUES 
(2,'www.Architecture.com', 'Architecture')
on duplicate key update classWebsite =values(classWebsite),departName=values(departName);

-- Insert for Mathematics information in department table
select * from department;
INSERT INTO `department` (idDepartment,`classWebsite`, `departName`) VALUES 
(3,'www.math.com', 'Mathematics')
on duplicate key update classWebsite =values(classWebsite),departName=values(departName);

-- Insert for Communication information in department table
select * from department;
INSERT INTO `department` (idDepartment,`classWebsite`, `departName`) VALUES 
(4,'www.com.com', 'Communication')
on duplicate key update classWebsite =values(classWebsite),departName=values(departName);

-- Insert for Business information in department table
select * from department;
INSERT INTO `department` (idDepartment,`classWebsite`, `departName`) VALUES 
(5,'www.foster.com', 'Business')
on duplicate key update classWebsite =values(classWebsite),departName=values(departName);

-- Insert for Travel information in textbook table
select * from textbook;
INSERT INTO `textbook` (idTextbook,`productType`, `price`,`edition`,`internationalStandardBookNumber`,`bookTitle`,`author`) VALUES 
(2,'Textbook', '105',' second edition','0976','Algebra','Haideh')
on duplicate key update productType =values(productType),price=values(price),edition =values(edition),internationalStandardBookNumber=values(internationalStandardBookNumber),bookTitle =values(bookTitle),author=values(author);

-- Insert for Hollow Kingdom information in textbook table
select * from textbook;
INSERT INTO `textbook` (idTextbook,`productType`, `price`,`edition`,`internationalStandardBookNumber`,`bookTitle`,`author`) VALUES 
(3,'story', '55',' first edition','0655','Hollow Kingdom','Anna')
on duplicate key update productType =values(productType),price=values(price),edition =values(edition),internationalStandardBookNumber=values(internationalStandardBookNumber),bookTitle =values(bookTitle),author=values(author);

-- Insert for Discovering French information in textbook table
select * from textbook;
INSERT INTO `textbook` (idTextbook,`productType`, `price`,`edition`,`internationalStandardBookNumber`,`bookTitle`,`author`) VALUES 
(4,'language', '133',' third edition','0741','Discovering French ','Lohanzo')
on duplicate key update productType =values(productType),price=values(price),edition =values(edition),internationalStandardBookNumber=values(internationalStandardBookNumber),bookTitle =values(bookTitle),author=values(author);

-- Insert for Peking University information in study abroad table
select * from study_abroad;
INSERT INTO `study_abroad` (idStudy_abroad,`region`, `programName`,`city`,`country`, `idDepartment`) VALUES 
(2,'China', 'Explore Chinese culture','Beijing','China', '2')
on duplicate key update region =values(region),programName=values(programName),city=values(city),country=values(country),idDepartment=values(idDepartment);

-- Insert for Lowen Hall information in building table
select * from building;
INSERT INTO `building` (idBuilding,`openHours`, `buildingNumber`,`contact`,`collegeFullName`,`photo`,`facNum`,`site`,`facCode`,`buildingType`,`buildingName`,`buildingAddress`) VALUES 
(3,8.00, '35','2067546378','Lowen Hall','345.jpg','6665','Seattle campus','253','building','Lowen Hall','{\"address\":\"4801 24 AVe NE\"}')
on duplicate key update openHours =values(openHours),buildingNumber=values(buildingNumber),contact=values(contact),collegeFullName=values(collegeFullName),photo=values(photo),facCode=values(facCode),buildingType=values(buildingType),buildingName=values(buildingName),buildingAddress=values(buildingAddress);

-- Insert for ENGL 281 information in course table
select * from course;
INSERT INTO `course` (idCourse,`courseName`, `curriculum`,`courseTitle`,`coursesDescription`,`recommendPre`,`genedureq`,`quarter`,`additionalDetails`,`section`,`credits`,`sln`,`capacity`,`prerequisite`,`idDepartment`,`idBuilding`) VALUES 
(4, 'ENGL281', 'English','{\"courseTitle\":\"Engl281\"}','Basic English writing','none','W or C','Autumn quarter','none','{\"coursesection\":\"B\"}','5','34578','25','none',2,2)
on duplicate key update courseName =values(courseName),curriculum=values(curriculum),courseTitle=values(courseTitle),coursesDescription=values(coursesDescription),recommendPre=values(recommendPre),genedureq=values(genedureq),`quarter`=values(`quarter`),additionalDetails=values(additionalDetails),section=values(section),credits=values(credits),sln=values(sln),capacity=values(capacity),prerequisite=values(prerequisite),sln=values(sln),capacity=values(capacity),prerequisite=values(prerequisite),idDepartment=values(idDepartment),idBuilding=values(idBuilding);

-- Retrive for course information where idcourse=1
select * from course where idcourse=1;

-- Delete for course information where idcourse=1
select * from course;
delete from course where idcourse = 1;

