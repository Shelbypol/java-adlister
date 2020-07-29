CREATE DATABASE adlister_db;

USE  adlister_db;

DROP DATABASE adlister_db;
# SELECT user, host FROM mysql.user;
# SHOW GRANTS for 'adlister_user'@'localhost';

USE adlister_db;
SHOW TABLES;

CREATE TABLE users(
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    contact_email VARCHAR(255),
    password VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads(
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INTEGER UNSIGNED NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    saved boolean,
    created_date VARCHAR(20),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE

);

CREATE TABLE cats(
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    cat_name VARCHAR(155) NOT NULL ,
    PRIMARY KEY (id)
);

CREATE TABLE ad_cats(
    ads_id INTEGER UNSIGNED NOT NULL,
    cats_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ads_id) REFERENCES ads (id),
    FOREIGN KEY (cats_id) REFERENCES cats (id)
);

# ad primary id is incrementing but not displaying when run through form...why?
DESCRIBE users;
DESCRIBE ads;
SELECT * FROM users;
SELECT * FROM ads;
SELECT * FROM cats;
SELECT * FROM ad_cats;


INSERT INTO ads (user_id ,title, description, created_date) VALUES ( 2,'TEST', 'test description','2020-07-27', );
INSERT INTO ad_cats (ads_id, cats_id) VALUES (1, 2);

DROP TABLE IF EXISTS ad_cats;
DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS ads;
# DROP TABLE IF EXISTS users;
# DROP TABLE images;


# CREATE TABLE images(
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     ad_img MEDIUMBLOB,
#     PRIMARY KEY (id)
# );

# CREATE TABLE ad_img(
#    ads_id INT UNSIGNED NOT NULL,
#    ad_img_id INT UNSIGNED NOT NULL,
#    FOREIGN KEY (ads_id) REFERENCES ads (id),
#    FOREIGN KEY (ad_img_id) REFERENCES images (id)
# );






