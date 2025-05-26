
-- shows option for a Question
SELECT * FROM Options WHERE questionId=19


-- Shows whole lessons material related to a single lessons, Es lessons 10
SELECT 
    Lessons.lessonId,
    Lessons.lessonTitle,
    Quizs.quizId,
    Quizs.quizTitle,
    Questions.questionId,
    Questions.questionBody,
    Options.optionId,
    Options.optionTitle,
    Options.correctness
FROM Lessons
JOIN Quizs ON Lessons.lessonId = Quizs.lessonId
JOIN Questions ON Quizs.quizId = Questions.quizId
JOIN Options ON Questions.questionId = Options.questionId
WHERE Lessons.lessonId = 10;