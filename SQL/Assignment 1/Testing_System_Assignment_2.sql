DROP DATABASE IF EXISTS practice_code;
CREATE DATABASE	practice_code;
USE	practice_code;

-- create table:Department
DROP DATABASE IF EXISTS Department;
CREATE TABLE	Department	(
	departmentID			TINYINT UNSIGNED PRIMARY KEY,
	departmentname			VARCHAR(20)
);

-- create table:Position
DROP DATABASE IF EXISTS Position;
CREATE TABLE	Position	(
	PositionID				TINYINT UNSIGNED PRIMARY KEY,
	PositionName			ENUM('Dev','Test','Scrum Master','PM') NOT NULL
);

-- create table:`Account`
DROP DATABASE IF EXISTS `Account`;
CREATE TABLE	`Account`	(
	AccountID		TINYINT UNSIGNED PRIMARY KEY,
	Email 			VARCHAR(50),
    Username		CHAR(15) NOT NULL,
    FullName		VARCHAR(50) NOT NULL,
    DepartmentID	TINYINT UNSIGNED,
    PositionID		TINYINT UNSIGNED,
    CreateDate		DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- create table:
DROP DATABASE IF EXISTS `Group`;
    CREATE TABLE	`Group`	(
	GroupID			TINYINT UNSIGNED PRIMARY KEY,
	GroupName		VARCHAR(50) NOT NULL,
    CreatorID		TINYINT UNSIGNED,
    CreateDate		DATE,
    FOREIGN KEY (CreatorID)	REFERENCES `Account` (AccountID)
    );
    
    -- create table:GroupAccount
    DROP DATABASE IF EXISTS GroupAccount;
CREATE TABLE	GroupAccount	(
	GroupID			TINYINT UNSIGNED PRIMARY KEY,
	AccountID		VARCHAR(20),
   JoinDate			DATE,
   FOREIGN KEY (AccountID) REFERENCES `Account` (AccountID)
    );
    
    -- create table:TypeQuestion
    DROP DATABASE IF EXISTS TypeQuestion;
    CREATE TABLE	TypeQuestion	(
	TypeID			TINYINT UNSIGNED PRIMARY KEY,
	TypeName		ENUM('Essay', 'Multiple-Choice') NOT NULL
    );
    
    -- create table:CategoryQuestion
    DROP DATABASE IF EXISTS CategoryQuestion;
    CREATE TABLE	CategoryQuestion	(
	CategoryID			TINYINT UNSIGNED PRIMARY KEY,
	CategoryName 		VARCHAR(20)
	);	
    
    -- create table:Question
    DROP DATABASE IF EXISTS Question;
    CREATE TABLE	Question	(
	QuestionID			TINYINT UNSIGNED PRIMARY KEY,
	Content		 		VARCHAR(100) NOT NULL,
    CategoryID			TINYINT UNSIGNED,
    TypeID				TINYINT UNSIGNED,
    CreatorID			TINYINT UNSIGNED,
    CreateDate			DATE,
    FOREIGN KEY (TypeID) REFERENCES TypeQuestion (TypeID)
	);	
    
    -- create table:Answer
    DROP DATABASE IF EXISTS Answer;
    CREATE TABLE	Answer	(
	AnswerID			TINYINT UNSIGNED PRIMARY KEY,
	Content		 		VARCHAR(100)  NOT NULL,
    QuestionID			TINYINT UNSIGNED,
    isCorrect			ENUM('TRUE','FALL'),
    FOREIGN KEY (QuestionID) REFERENCES Question (QuestionID)
    );
    
    -- create table:Exam
    DROP DATABASE IF EXISTS Exam;
    CREATE TABLE	Exam	(
	ExamID			TINYINT UNSIGNED PRIMARY KEY,
	`Code`			CHAR(10) NOT NULL,
    Title			VARCHAR(100),
    CategoryID		TINYINT UNSIGNED,
    Duration		TINYINT UNSIGNED NOT NULL,
    CreatorID		TINYINT UNSIGNED,
    CreateDate		DATE,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID)
	);
    
    -- create table:ExamQuestion
    DROP DATABASE IF EXISTS ExamQuestion;
    CREATE TABLE	ExamQuestion	(
	ExamID			TINYINT UNSIGNED,
	QuestionID	 	TINYINT UNSIGNED PRIMARY KEY,
    FOREIGN KEY (ExamID) REFERENCES Exam (ExamID)
    );