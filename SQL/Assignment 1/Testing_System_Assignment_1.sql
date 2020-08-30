-- create datbase
DROP DATABASE IF EXISTS practice_code;
CREATE DATABASE	practice_code;
USE	practice_code;

-- create table: department
DROP DATABASE IF EXISTS Department;
CREATE TABLE	Department	(
	departmentID			INT,
	departmentname			VARCHAR(100)
);

-- create table:Position
DROP DATABASE IF EXISTS Position;
CREATE TABLE	Position	(
	PositionID				INT,
	PositionName			VARCHAR(100)
);

-- create table:`Account`
DROP DATABASE IF EXISTS `Account`;
CREATE TABLE	`Account`	(
	AccountID		INT,
	Email 			VARCHAR(100),
    Username		VARCHAR(100),
    FullName		VARCHAR(100),
    DepartmentID	INT,
    PositionID		VARCHAR(100),
    CreateDate		DATE
);

-- create table:`Group`
DROP DATABASE IF EXISTS GroupAccount;
    CREATE TABLE	`Group`	(
	GroupID			INT,
	GroupName		VARCHAR(100),
    CreatorID		INT,
    CreateDate		DATE
    );
    
    -- create table:GroupAccount
    DROP DATABASE IF EXISTS GroupAccount;
CREATE TABLE	GroupAccount	(
	GroupID			INT,
	AccountID		VARCHAR(100),
   JoinDate		INT
    );
    
    -- create table:TypeQuestion
    DROP DATABASE IF EXISTS TypeQuestion;
    CREATE TABLE	TypeQuestion	(
	TypeID			INT,
	TypeName		VARCHAR(100)
    );
    
    -- create table:CategoryQuestion
    DROP DATABASE IF EXISTS CategoryQuestion;
    CREATE TABLE	CategoryQuestion	(
	CategoryID			INT,
	CategoryName		VARCHAR(100)
	);	
    
    -- create table:Question
    DROP DATABASE IF EXISTS Question;
    CREATE TABLE	Question	(
	QuestionID			INT,
	Content		 		VARCHAR(100),
    CategoryID			INT,
    TypeID				INT,
    CreatorID			INT,
    CreateDate			DATE
	);	
    -- create table:Answer
    DROP DATABASE IF EXISTS Answer;
    CREATE TABLE	Answer	(
	AnswerID			INT,
	Content		 		VARCHAR(100),
    QuestionID			INT,
    isCorrect			VARCHAR(100)
    );
    
    -- create table:Exam
    DROP DATABASE IF EXISTS Exam;
    CREATE TABLE	Exam	(
	ExamID			INT,
	`Code`			VARCHAR(100),
    Title			VARCHAR(100),
    CategoryID		INT,
    Duration		INT,
    CreatorID		INT,
    CreateDate		DATE
	);

-- create table:ExamQuestion
DROP DATABASE IF EXISTS ExamQuestion;
    CREATE TABLE	ExamQuestion	(
	ExamID			INT,
	QuestionID	 	INT
    );