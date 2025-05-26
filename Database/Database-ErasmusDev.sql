
CREATE schema ErasmusDev_Database;

Use ErasmusDev_Database;

DROP TABLE `Attempts`, `Lessons`, `Made`, `Options`, `Posts`, `Questions`, `Quizs`, `refer`, `sessions`, `Sets`, `Users`, `Voices`;
-- drop table Made,Attempts,Options,Questions,Quizs;

CREATE TABLE Users(
    userId INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    sex CHAR(1), 
    name VARCHAR(30),
    surname VARCHAR(30),
    birthdate DATE ,

    Email VARCHAR(35) UNIQUE,
    AccountPassword VARCHAR(65) NOT NULL,

    constraint DomainSex_Constraint check(sex='F' OR sex='M' OR sex='O')
)ENGINE="InnoDB";

CREATE TABLE Voices(
    voiceId INT AUTO_INCREMENT PRIMARY KEY,
    denotation VARCHAR(30) UNIQUE,
    description TEXT(800) 
)ENGINE="InnoDB";


CREATE TABLE Sets(
    setId INT AUTO_INCREMENT PRIMARY KEY,
    setDateTime TIME,
    setDateDay DATE,

    userId INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES Users(userId),
    voiceId INT NOT NULL,
    FOREIGN KEY (voiceId) REFERENCES Voices(voiceId)
)ENGINE="InnoDB";

CREATE TABLE Sessions(
    sessionId INT AUTO_INCREMENT PRIMARY KEY,
    LoginTime TIME,
    LogoutTime TIME,
    LoginDate DATE,
    LogoutDate DATE,

    userId INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES Users(userId),   

    constraint TimeConsistency_Constraint check(LoginTime > LogoutTime),
    constraint DateConsistency_Constraint check(LoginDate > LogoutDate)
)ENGINE="InnoDB";


CREATE TABLE Lessons(
    lessonId INT AUTO_INCREMENT PRIMARY KEY,
    lessonTitle VARCHAR(100) UNIQUE,
    lessonDescription TEXT(3000),
    lessonLevel CHAR(20) NOT NULL,

    constraint LevelChoice_Constraint check(lessonLevel='beginner' OR lessonLevel='intermediate' OR lessonLevel='advanced')    
)ENGINE="InnoDB";


CREATE TABLE Posts(
    postId INT AUTO_INCREMENT PRIMARY KEY,
    postTitle VARCHAR(100) UNIQUE,
    postDescription TEXT(3000), 
    postLink VARCHAR(100),

    lessonId INT NOT NULL,
    FOREIGN KEY ( lessonId) REFERENCES Lessons(lessonId)
    
)ENGINE="InnoDB";


CREATE TABLE Refer(
    referId INT AUTO_INCREMENT PRIMARY KEY,

    lessonId INT NOT NULL,
    FOREIGN KEY ( lessonId) REFERENCES Lessons(lessonId),
    sessionId INT NOT NULL,
    FOREIGN KEY (sessionId) REFERENCES Sessions(sessionId)
    
)ENGINE="InnoDB";


CREATE TABLE Quizs(
    quizId INT AUTO_INCREMENT PRIMARY KEY,
    quizTitle VARCHAR(100) UNIQUE,
    quizOverview TEXT(1000),
    quizLevel CHAR(20) NOT NULL,

    lessonId INT NOT NULL,
    FOREIGN KEY ( lessonId) REFERENCES Lessons(lessonId)
)ENGINE="InnoDB";


CREATE TABLE Questions(
    questionId INT AUTO_INCREMENT PRIMARY KEY,
    questionTitle VARCHAR(100) UNIQUE,
    questionBody TEXT(600),

    QuizId INT NOT NULL,
    FOREIGN KEY (quizId) REFERENCES Quizs(quizId)
)ENGINE="InnoDB";


CREATE TABLE Options(
    optionId INT AUTO_INCREMENT PRIMARY KEY,
    optionTitle VARCHAR(200) ,
    correctness BOOLEAN NOT NULL,

    questionId INT NOT NULL,
    FOREIGN KEY (questionId) REFERENCES Questions(questionId)
)ENGINE="InnoDB";


CREATE TABLE Attempts(
    attemptId INT AUTO_INCREMENT PRIMARY KEY,
    score INT ,

    sessionId INT NOT NULL,
    FOREIGN KEY (sessionId) REFERENCES Sessions(sessionId),
    QuizId INT NOT NULL,
    FOREIGN KEY (quizId) REFERENCES Quizs(quizId),

    constraint ScoreRange_Constraint check( score BETWEEN 0 AND 100)    

)ENGINE="InnoDB";


CREATE TABLE Made(
    madeId INT AUTO_INCREMENT PRIMARY KEY,

    attemptId INT NOT NULL,
    FOREIGN KEY (attemptId) REFERENCES Attempts(attemptId),
    questionId INT NOT NULL,
    FOREIGN KEY (questionId) REFERENCES Questions(questionId)
)ENGINE="InnoDB";





















































DELIMITER ^

CREATE TRIGGER UserDataInsert
BEFORE INSERT ON Users
FOR EACH ROW
BEGIN

    
    -- Check username 
    IF(
       (SELECT COUNT(*)  
        FROM Users 
        WHERE username = NEW.username) >0
    )  
    THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This username is already taken';
    END IF;


    
    -- Check email 
    IF(
       (SELECT COUNT(*) 
        FROM Users 
        WHERE Email = NEW.Email) >0
    )    
    THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This email is already taken';
    END IF;

    
    -- Password hashing SHA-256
    SET NEW.AccountPassword = SHA2(NEW.AccountPassword, 256);
END;

^

