
/*

//Query to find if there is a record with this credentials

SELECT userId, username 
FROM Users 
WHERE Email = ? AND AccountPassword = SHA2(?, 256)

*/

/*  

//Record example

INSERT INTO Users (username, Email, AccountPassword) 
VALUES ('nuovo', 'nuovo@email.com', 'password');

*/ 


/*AuthenticateUser*/

DELIMITER //

CREATE PROCEDURE AuthenticateUser( IN p_email VARCHAR(35) , IN p_plain_password VARCHAR(100) )
BEGIN
    SELECT userId , username 
    FROM Users
    WHERE Email = p_email AND AccountPassword = SHA2(p_plain_password, 256);
END //

DELIMITER ;




/*AuthenticateUserAdvanced*/

DELIMITER //

CREATE PROCEDURE AuthenticateUserAdvanced(
    IN p_email VARCHAR(35),
    IN p_plain_password VARCHAR(100))
BEGIN
    DECLARE v_email_exists BOOLEAN DEFAULT FALSE;
    DECLARE v_password_match BOOLEAN DEFAULT FALSE;
    
    -- Controllo esistenza email
    SELECT EXISTS(SELECT 1 FROM Users WHERE Email = p_email)
    INTO v_email_exists;
    
    -- Controllo password solo se email esiste
    IF v_email_exists THEN
        SELECT EXISTS(
            SELECT 1 
            FROM Users 
            WHERE 
                Email = p_email 
                AND AccountPassword = SHA2(p_plain_password, 256)
        ) INTO v_password_match;
    END IF;
    
    -- Risultato dettagliato
    CASE
        WHEN NOT v_email_exists THEN
            SELECT 
                'FAILURE' AS auth_result,
                'Email non registrata' AS message;
        WHEN NOT v_password_match THEN
            SELECT 
                'FAILURE' AS auth_result,
                'Password errata' AS message;
        ELSE
            SELECT 
                userId,
                username,
                'SUCCESS' AS auth_result
            FROM Users
            WHERE Email = p_email;
    END CASE;
END //

DELIMITER ;