USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50),
    record_name VARCHAR(50),
    release_date int,
    sales float,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);