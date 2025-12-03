CREATE DATABASE IF NOT EXISTS CSD430;
CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

USE CSD430;

DROP TABLE IF EXISTS colby_movies_data;
CREATE TABLE colby_movies_data (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(120) NOT NULL,
    release_year INT NOT NULL,
    director VARCHAR(120),
    mcu_phase VARCHAR(20),
    saga VARCHAR(40),
    box_office_usd DECIMAL(12,2),
    rating DECIMAL(3,1)
);

INSERT INTO colby_movies_data
(title, release_year, director, mcu_phase, saga, box_office_usd, rating) VALUES
('Iron Man', 2008, 'Jon Favreau', 'Phase 1', 'Infinity Saga', 585174222.00, 7.9),
('The Avengers', 2012, 'Joss Whedon', 'Phase 1', 'Infinity Saga', 1518812988.00, 8.0),
('Captain America: The Winter Soldier', 2014, 'Anthony & Joe Russo', 'Phase 2', 'Infinity Saga', 714421503.00, 7.8),
('Guardians of the Galaxy', 2014, 'James Gunn', 'Phase 2', 'Infinity Saga', 773350147.00, 8.0),
('Captain America: Civil War', 2016, 'Anthony & Joe Russo', 'Phase 3', 'Infinity Saga', 1153304495.00, 7.8),
('Doctor Strange', 2016, 'Scott Derrickson', 'Phase 3', 'Infinity Saga', 677796076.00, 7.5),
('Black Panther', 2018, 'Ryan Coogler', 'Phase 3', 'Infinity Saga', 1346913161.00, 7.3),
('Avengers: Infinity War', 2018, 'Anthony & Joe Russo', 'Phase 3', 'Infinity Saga', 2048359754.00, 8.4),
('Avengers: Endgame', 2019, 'Anthony & Joe Russo', 'Phase 3', 'Infinity Saga', 2797501328.00, 8.4),
('Spider-Man: No Way Home', 2021, 'Jon Watts', 'Phase 4', 'Multiverse Saga', 1921916616.00, 8.2),
('Guardians of the Galaxy Vol. 3', 2023, 'James Gunn', 'Phase 5', 'Multiverse Saga', 845500000.00, 8.0);

SELECT * FROM colby_movies_data;

