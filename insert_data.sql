--INSERT DATA: JobSeeker

INSERT INTO JobSeeker VALUES 
(101,'John','Smith',DATE '2000-05-15','Male', 
'john.smith@email.com','0711111111', 
'London','BSc Computer Science', 
'Python, SQL',2,'john_cv.pdf'); 
INSERT INTO JobSeeker VALUES 
(102,'Emma','Brown',DATE '1999-08-20','Female', 
'emma.brown@email.com','0722222222', 
'Manchester','BSc Data Science', 
'Python, Power BI',3,'emma_cv.pdf'); 
INSERT INTO JobSeeker VALUES 
(103,'David','Wilson',DATE '1998-02-10','Male', 
'david.wilson@email.com','0733333333', 
'Birmingham','BSc Software Engineering', 
'Java, C++',4,'david_cv.pdf'); 
INSERT INTO JobSeeker VALUES 
(104,'Sophia','Taylor',DATE '2001-11-25','Female', 
'sophia.taylor@email.com','0744444444', 
'Liverpool','BSc Information Technology', 
'HTML, CSS, JavaScript',1,'sophia_cv.pdf'); 
INSERT INTO JobSeeker VALUES 
(105,'Michael','Johnson',DATE '1997-07-18','Male', 
'michael.johnson@email.com','0755555555', 
'Leeds','BSc Cyber Security', 
'Networking, Linux',5,'michael_cv.pdf');

--INSERT DATA: Employer

INSERT INTO Employer VALUES 
(201,'Tech Solutions Ltd', 
'Information Technology', 
'James Carter', 
'info@techsolutions.com', 
'0201111111', 
'London', 
'www.techsolutions.com'); 
INSERT INTO Employer VALUES 
(202,'Smart Systems Ltd', 
'Software', 
'Emily Harris', 
'hr@smartsystems.com', 
'0202222222', 
'Manchester', 
'www.smartsystems.com'); 
INSERT INTO Employer VALUES 
(203,'Global IT Solutions', 
'Information Technology', 
'Daniel Scott', 
'careers@globalit.com', 
'0203333333', 
'Birmingham', 
'www.globalit.com'); 
INSERT INTO Employer VALUES 
(204,'Future Technologies', 
'Technology', 
'Olivia Green', 
'jobs@futuretech.com', 
'0204444444', 
'Liverpool', 
'www.futuretech.com'); 
INSERT INTO Employer VALUES 
(205,'Digital Innovations', 
'Data Analytics', 
'William Turner', 
'contact@digitalinnovations.com', 
'0205555555', 
'Leeds', 
'www.digitalinnovations.com');

--INSERT DATA: Job

INSERT INTO Job VALUES 
(301,201,'Software Developer', 
'Develop and maintain software applications.', 
'IT', 
45000, 
'London', 
'Full-Time', 
DATE '2026-06-01', 
DATE '2026-06-30'); 
INSERT INTO Job VALUES 
(302,202,'Data Analyst', 
'Analyse business data and prepare reports.', 
'Analytics', 
42000, 
'Manchester', 
'Full-Time', 
DATE '2026-06-03', 
DATE '2026-07-03'); 
INSERT INTO Job VALUES 
(303,203,'Web Developer', 
'Develop responsive websites.', 
'IT', 
40000, 
'Birmingham', 
'Full-Time', 
DATE '2026-06-05', 
DATE '2026-07-05'); 
INSERT INTO Job VALUES 
(304,204,'UI/UX Designer', 
'Design user-friendly interfaces.', 
'Design', 
38000, 
'Liverpool', 
'Contract', 
DATE '2026-06-07', 
DATE '2026-07-07'); 
INSERT INTO Job VALUES 
(305,205,'Network Engineer', 
'Maintain network infrastructure.', 
'Networking', 
47000, 
'Leeds', 
'Full-Time', 
DATE '2026-06-10', 
DATE '2026-07-10'); 

--INSERT DATA: Application

INSERT INTO Application VALUES 
(401,101,301,DATE '2026-06-05','Pending'); 
INSERT INTO Application VALUES 
(402,102,302,DATE '2026-06-06','Reviewed'); 
INSERT INTO Application VALUES 
(403,103,303,DATE '2026-06-08','Accepted'); 
INSERT INTO Application VALUES 
(404,104,304,DATE '2026-06-10','Pending'); 
INSERT INTO Application VALUES 
(405,105,305,DATE '2026-06-12','Rejected'); 
INSERT INTO Application VALUES 
(406,101,302,DATE '2026-06-14','Reviewed'); 
INSERT INTO Application VALUES 
(407,102,305,DATE '2026-06-15','Pending');

--INSERT DATA: Interview

INSERT INTO Interview VALUES 
(501,403,DATE '2026-06-20','10:00', 
'Online','Scheduled'); 
INSERT INTO Interview VALUES 
(502,402,DATE '2026-06-21','11:00', 
'Onsite','Completed'); 
INSERT INTO Interview VALUES 
(503,406,DATE '2026-06-23','09:30', 
'Online','Scheduled'); 
INSERT INTO Interview VALUES 
(504,407,DATE '2026-06-25','02:00', 
'Onsite','Scheduled');
