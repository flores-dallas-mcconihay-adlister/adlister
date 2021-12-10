USE adlister_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS ads;
SELECT * FROM posts;
CREATE TABLE users (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     username VARCHAR(40) NOT NULL,
     email VARCHAR(60) NOT NULL,
     password VARCHAR(40) NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE posts (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE
);

CREATE TABLE comments (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    post_id INT UNSIGNED NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
    ON DELETE CASCADE
);

# Use a join maybe to connect post ands comments









# MySQL
#
# mysql.server status //shows status
# mysql -u root -p  //to enter password
# help // to see commands
#
# Search
# Checks current user: SELECT current_user;  //  SELECT database();
# Checks for all users: SELECT user, host FROM mysql.user;
# SHOW DATABASES;
#
# Build Database
# CREATE DATABASE database_name;
# CREATE DATABASE IF NOT EXISTS database_name;
#
# USE database_name;
# database_name.table_name
# SELECT database;
#
# SHOW tables
# SELECT *  FROM employees
# \q quit
#
# USE THIS TO BREAK OUT OF SQL LOOP
# Control C
# Then
# Enter
#
