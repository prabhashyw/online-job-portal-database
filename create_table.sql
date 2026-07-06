-- CREATE TABLE: JobSeeker

CREATE TABLE JobSeeker (
    JobSeekerID NUMBER(6),
    FirstName VARCHAR2(50) NOT NULL,
    LastName VARCHAR2(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender VARCHAR2(10),
    Email VARCHAR2(100) NOT NULL,
    PhoneNumber VARCHAR2(15) NOT NULL,
    Address VARCHAR2(150) NOT NULL,
    Qualification VARCHAR2(100) NOT NULL,
    Skills VARCHAR2(200),
    ExperienceYears NUMBER(2),
    ResumeFile VARCHAR2(255),

    CONSTRAINT PK_JobSeeker PRIMARY KEY (JobSeekerID),

    CONSTRAINT CHK_Gender
        CHECK (Gender IN ('Male', 'Female', 'Other')),

    CONSTRAINT CHK_Experience
        CHECK (ExperienceYears >= 0),

    CONSTRAINT UQ_JobSeeker_Email
        UNIQUE (Email)
);

-- CREATE TABLE: Employer

CREATE TABLE Employer (
    EmployerID NUMBER(6),
    CompanyName VARCHAR2(100) NOT NULL,
    Industry VARCHAR2(50) NOT NULL,
    ContactPerson VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    PhoneNumber VARCHAR2(15) NOT NULL,
    CompanyAddress VARCHAR2(150) NOT NULL,
    Website VARCHAR2(100),

    CONSTRAINT PK_Employer PRIMARY KEY (EmployerID),

    CONSTRAINT UQ_Employer_Email
        UNIQUE (Email)
);

-- CREATE TABLE: Job

CREATE TABLE Job (
    JobID NUMBER(6),
    EmployerID NUMBER(6) NOT NULL,
    JobTitle VARCHAR2(100) NOT NULL,
    JobDescription VARCHAR2(500) NOT NULL,
    JobCategory VARCHAR2(50) NOT NULL,
    Salary NUMBER(10,2),
    JobLocation VARCHAR2(100) NOT NULL,
    EmploymentType VARCHAR2(20),
    PostedDate DATE NOT NULL,
    ClosingDate DATE NOT NULL,

    CONSTRAINT PK_Job PRIMARY KEY (JobID),

    CONSTRAINT FK_Job_Employer
        FOREIGN KEY (EmployerID)
        REFERENCES Employer(EmployerID),

    CONSTRAINT CHK_Salary
        CHECK (Salary > 0),

    CONSTRAINT CHK_EmploymentType
        CHECK (EmploymentType IN ('Full-Time','Part-Time','Contract','Internship')),

    CONSTRAINT CHK_ClosingDate
        CHECK (ClosingDate > PostedDate)
);

-- CREATE TABLE: Application

CREATE TABLE Application (
    ApplicationID NUMBER(6),
    JobSeekerID NUMBER(6) NOT NULL,
    JobID NUMBER(6) NOT NULL,
    ApplicationDate DATE NOT NULL,
    ApplicationStatus VARCHAR2(20),

    CONSTRAINT PK_Application PRIMARY KEY (ApplicationID),

    CONSTRAINT FK_Application_JobSeeker
        FOREIGN KEY (JobSeekerID)
        REFERENCES JobSeeker(JobSeekerID),

    CONSTRAINT FK_Application_Job
        FOREIGN KEY (JobID)
        REFERENCES Job(JobID),

    CONSTRAINT CHK_ApplicationStatus
        CHECK (ApplicationStatus IN ('Pending','Reviewed','Accepted','Rejected'))
);

-- CREATE TABLE: Interview

CREATE TABLE Interview (
    InterviewID NUMBER(6),
    ApplicationID NUMBER(6) NOT NULL,
    InterviewDate DATE NOT NULL,
    InterviewTime VARCHAR2(10) NOT NULL,
    InterviewMode VARCHAR2(20),
    InterviewStatus VARCHAR2(20),

    CONSTRAINT PK_Interview PRIMARY KEY (InterviewID),

    CONSTRAINT FK_Interview_Application
        FOREIGN KEY (ApplicationID)
        REFERENCES Application(ApplicationID),

    CONSTRAINT CHK_InterviewMode
        CHECK (InterviewMode IN ('Online','Onsite')),

    CONSTRAINT CHK_InterviewStatus
        CHECK (InterviewStatus IN ('Scheduled','Completed','Cancelled'))
);
