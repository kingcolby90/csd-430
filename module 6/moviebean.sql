DROP USER IF EXISTS 'javauser'@'localhost';
CREATE USER 'javauser'@'localhost' IDENTIFIED BY 'yourpassword';
GRANT ALL PRIVILEGES ON CSD430.* TO 'javauser'@'localhost';
