CREATE DATABASE adlister_db;

USE  adlister_db;

# CREATE USER 'adlister_user'@'localhost' IDENTIFIED BY 'password';
DROP DATABASE adlister_db;
SELECT user, host FROM mysql.user;
# SHOW GRANTS for 'adlister_user'@'localhost';



# CREATE USER 'admin'@'adlister_db' IDENTIFIED BY 'codeup';
# GRANT ALL ON *.* TO 'admin'@'adlister_db';

USE adlister_db;
SHOW TABLES;

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    contact_email VARCHAR(255),
    password VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE cats(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cat_name VARCHAR(155) NOT NULL ,
    PRIMARY KEY (id)
);

CREATE TABLE ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id_fk INT UNSIGNED NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    saved boolean,
    created_date DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id_fk) REFERENCES users (id)
);

INSERT INTO ads (user_id_fk,title ,description, saved, created_date) VALUES (1,'TEST', 'test description', false, '2020-07-27');
INSERT INTO ads (id, user_id_fk,title ,description, saved, created_date) VALUES (2 ,1,'TEST 2 ', 'test description 2', true , '2020-07-27');
INSERT INTO ad_cats (ads_id_fk, cats_id_fk) VALUES (1, 1);
INSERT INTO ad_cats (ads_id_fk, cats_id_fk) VALUES (3, 4);

CREATE TABLE ad_cats(
    ads_id_fk INTEGER UNSIGNED NOT NULL,
    cats_id_fk INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id_fk) REFERENCES ads (id),
    FOREIGN KEY (cats_id_fk) REFERENCES cats (id)
);

DESCRIBE users;
DESCRIBE cats;
SELECT * FROM users;
SELECT * FROM ads;
SELECT * FROM cats;




CREATE TABLE images(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_img MEDIUMBLOB,
    PRIMARY KEY (id)
);

CREATE TABLE ad_img(
   ads_id_fk INT UNSIGNED NOT NULL,
   ad_img_id_fk INT UNSIGNED NOT NULL,
   FOREIGN KEY (ads_id_fk) REFERENCES ads (id),
   FOREIGN KEY (ad_img_id_fk) REFERENCES images (id)
);



# DROP TABLE users;
DROP TABLE ads;
DROP TABLE cats;
DROP TABLE ad_cats;
# DROP TABLE images;



