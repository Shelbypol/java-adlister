CREATE DATABASE IF NOT EXISTS adlister_db;

SELECT user, host FROM mysql.user;
SHOW GRANTS for 'adlister_user'@'localhost';

USE adlister_db;
SHOW TABLES;

CREATE TABLE users(
    id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(150) NOT NULL
);
DROP TABLE users;
DROP TABLE ads;
DESCRIBE users;
SELECT * FROM users;

CREATE TABLE ads(
    id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (user_id)  REFERENCES users (id)
);

DESCRIBE ads;
SELECT * FROM ads;


