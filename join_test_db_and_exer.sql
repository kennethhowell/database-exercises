# created db

create database join_test_db;

use join_test_db;

# seed db
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

show tables;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);


INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');


INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

#seeded

#Insert 4 new users into the database. One should have a NULL role. The other three should be authors.

INSERT INTO users (name, email, role_id) VALUES
('ken', 'kendog@doggywyld.com', 2),
('aubs', 'topaubana@bananas.com', 2),
('jw', 'wolfymans@wolfs.com',2),
('nico', 'stylekyng@worldstar.com', null);

select * from users;
select * from roles;

select roles.name as role_title, users.name as first_name from roles join users on roles.id = users.role_id;
select roles.name as role_in_company, concat(users.name, ', e-mail: ', users.email) as first_name_email from roles join users on roles.id = users.role_id;

select roles.name, count(*) from roles join users on roles.id = users.role_id group by roles.name order by count(*) desc;


