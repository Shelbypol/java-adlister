CREATE DATABASE adlister_db;

DROP DATABASE adlister_db;

SELECT user, host FROM mysql.user;
SHOW GRANTS for 'adlister_user'@'localhost';

# CREATE USER 'admin'@'adlister_db' IDENTIFIED BY 'codeup';
# GRANT ALL ON *.* TO 'admin'@'adlister_db';

USE adlister_db;
SHOW TABLES;

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    contact_email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id_fk INT UNSIGNED NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    saved boolean,
    created_date DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id_fk)  REFERENCES users (id)
);

CREATE TABLE cats(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cat_name VARCHAR(50) NOT NULL ,
    PRIMARY KEY (id)
);

CREATE TABLE ad_cats(
    ads_id_fk INT UNSIGNED NOT NULL,
    cats_id_fk INT UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id_fk) REFERENCES ads (id),
    FOREIGN KEY (cats_id_fk) REFERENCES cats (id)
);

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
# DROP TABLE ads;
# DROP TABLE cats;
# DROP TABLE images;


DESCRIBE users;
SELECT * FROM users;
DESCRIBE ads;
SELECT * FROM ads;