CREATE DATABASE database_design_db;

use database_design_db;

CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(30) NOT NULL,
    password VARCHAR(18) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE advertisements(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_title VARCHAR(20) NOT NULL,
    ad_desc VARCHAR(200) NOT NULL,
    user_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);


CREATE TABLE categories(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    category_title VARCHAR(40)
);

CREATE TABLE advertisement_category(
    advertisement_id INT UNSIGNED,
    category_id INT UNSIGNED,
    FOREIGN KEY (advertisement_id) REFERENCES advertisements(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO users(username, email, password)
    VALUES ('kenhow', 'ken@ken.com', 'kennyrocks'),
           ('miggarc', 'miguel@hotman.com', 'rockinrocker'),
           ('melinnn', 'melinda@gmailss.com', 'melmelmel');

SELECT * from users;

INSERT INTO categories(category_title)
    VALUES ('home'),
           ('tech'),
           ('apartments'),
           ('work'),
           ('free'),
           ('for sale');

SELECT * from categories;

DESCRIBE advertisements;

INSERT INTO advertisements(ad_title, ad_desc, user_id)
    VALUES ('sofa', 'really cushy',2);

SELECT * from advertisements;

INSERT INTO advertisement_category(advertisement_id, category_id)
    VALUES (4,1);

SELECT * from users;
SELECT * from advertisements;
SELECT * from advertisement_category;
SELECT * from categories;

# For given ad, what is e-mail of user created it?

SELECT email AS 'User E-mail'
FROM users
WHERE id IN (
    select user_id
    FROM advertisements
    WHERE id = 1
    );

# For given ad, what category/categories does it belong to

SELECT category_title as 'Category'
FROM categories
WHERE id IN (
    select category_id
    FROM advertisement_category
    WHERE advertisement_id = 4
    );

# For a given category, show all the ads in that category

SELECT ad_title as 'Title of Ad', ad_desc as 'Ad Contents'
FROM advertisements
WHERE id IN (
    select advertisement_id
    FROM advertisement_category
    WHERE category_id = 5
    );

# For a given user, show all the ads posted

SELECT ad_title as 'Ad Title', ad_desc as 'Ad Contents'
FROM advertisements
WHERE user_id IN (
    SELECT id FROM users
    WHERE username = 'miggarc'
    )

