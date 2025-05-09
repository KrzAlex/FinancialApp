DELIMITER ^

CREATE TRIGGER before_user_insert
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