CREATE DATABASE IF NOT EXISTS CSD430;
CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;
USE CSD430;
DROP TABLE IF EXISTS colby_movies_data;

CREATE TABLE colby_movies_data (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    release_year INT NOT NULL,
    director VARCHAR(100),
    genre VARCHAR(50),
    rating DECIMAL(3,1)
);

INSERT INTO colby_movies_data (title, release_year, director, genre, rating)
VALUES ('Iron Man', 2008, 'Jon Favreau', 'Action', 7.9),
       ('The Avengers', 2012, 'Joss Whedon', 'Action', 8.0),
       ('Black Panther', 2018, 'Ryan Coogler', 'Action', 7.3),
       ('Doctor Strange', 2016, 'Scott Derrickson', 'Fantasy', 7.5),
       ('Guardians of the Galaxy', 2014, 'James Gunn', 'Sci-Fi', 8.0),
       ('Captain America: Civil War', 2016, 'Anthony Russo', 'Action', 7.8),
       ('Thor: Ragnarok', 2017, 'Taika Waititi', 'Fantasy', 7.9),
       ('Spider-Man: Homecoming', 2017, 'Jon Watts', 'Action', 7.4),
       ('Avengers: Endgame', 2019, 'Anthony Russo', 'Action', 8.4),
       ('Shang-Chi', 2021, 'Destin Daniel Cretton', 'Fantasy', 7.4);

SELECT * FROM colby_movies_data;
