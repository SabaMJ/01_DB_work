/* USER TAB. Version 2 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
-- Nachteil: PWDs liegen offen! 
INSERT INTO boo.users (userName, familyName, firstName, userPwd) 
VALUES ('johndoe123', 'Doe', 'John', SHA1('1234'));

INSERT INTO boo.users (userName, familyName, firstName, userPwd) 
VALUES ('emilybrown22', 'Brown', 'Emily', '7#Dx');

INSERT INTO boo.users (userName, familyName, firstName, userPwd) 
VALUES ('michaelsmith7', 'Smith', 'Michael', 'user1234');

--  private static void pollObj(Bird bird) {
--         output(bird.hasFeathers());
--         output(bird.fly());
--         output("------------");
--     }

ALTER TABLE 
    boo.users
ADD 
    userPLZ VARCHAR(5) NOT NULL DEFAULT '00000';


UPDATE boo.users SET userPLZ = "70367" WHERE id = 1; 


/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;