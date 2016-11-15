CREATE DATABASE IF NOT EXISTS user;
DROP TABLE IF EXISTS user.message;
CREATE TABLE user.message(
  id INT AUTO_INCREMENT PRIMARY KEY ,
  email VARCHAR(255),
  password VARCHAR(255),
  cities VARCHAR(255),
  hobbies VARCHAR(255)
);
SELECT *
FROM user.message;