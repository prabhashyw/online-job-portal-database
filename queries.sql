-- Query 1: Display All Job Seekers

SELECT *
FROM JobSeeker;

-- Query 2: Display All Employers

SELECT *
FROM Employer;

-- Query 3: Display All Jobs

SELECT *
FROM Job;

-- Query 4: Display Job Titles with Company Names

SELECT J.JobTitle,
       E.CompanyName
FROM Job J
JOIN Employer E
ON J.EmployerID = E.EmployerID;

-- Query 5: Display Applicant Name, Job Title and Application Status

SELECT
    JS.FirstName,
    JS.LastName,
    J.JobTitle,
    A.ApplicationStatus
FROM Application A
JOIN JobSeeker JS
ON A.JobSeekerID = JS.JobSeekerID
JOIN Job J
ON A.JobID = J.JobID;

-- Query 6: Display Jobs with Salary Greater Than 40000

SELECT JobTitle,
       Salary
FROM Job
WHERE Salary > 40000;

-- Query 7: Display Jobs Ordered by Salary

SELECT JobTitle,
       Salary
FROM Job
ORDER BY Salary DESC;

-- Query 8: Count Total Applications

SELECT COUNT(*) AS TotalApplications
FROM Application;

-- Query 9: Display Average Salary

SELECT AVG(Salary) AS AverageSalary
FROM Job;

-- Query 10: Display Scheduled Interviews

SELECT *
FROM Interview
WHERE InterviewStatus = 'Scheduled';
