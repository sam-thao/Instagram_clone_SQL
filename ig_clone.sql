-- Creating a clone IG schema
-- Using https://www.dpriver.com/pp/sqlformat.htm to help format

CREATE DATABASE ig_clone;

USE ig_clone; 

CREATE TABLE users
  (
     id         INT auto_increment PRIMARY KEY,
     username   VARCHAR(255) UNIQUE NOT NULL,
     created_at TIMESTAMP DEFAULT now()
  );
  
  DESC users; 
  
  CREATE TABLE photos
  (
     id         INT auto_increment PRIMARY KEY,
     image_url  VARCHAR(255) NOT NULL,
     user_id    INT NOT NULL,
     created_at TIMESTAMP DEFAULT now(),
     FOREIGN KEY(user_id) REFERENCES users(id)
  ); 
  
  DESC photos;
  
  CREATE TABLE comments
  (
     id           INTEGER auto_increment PRIMARY KEY,
     comment_text VARCHAR(255) NOT NULL,
     photo_id     INTEGER NOT NULL,
     user_id      INTEGER NOT NULL,
     created_at   TIMESTAMP DEFAULT now(),
     FOREIGN KEY(photo_id) REFERENCES photos(id),
     FOREIGN KEY(user_id) REFERENCES users(id)
  ); 
  
  DESC comments;
  
  CREATE TABLE likes
  (
     user_id    INT NOT NULL,
     photo_id   INT NOT NULL,
     created_at TIMESTAMP DEFAULT Now(),
     FOREIGN KEY(user_id) REFERENCES users(id),
     FOREIGN KEY(photo_id) REFERENCES photos(id),
     PRIMARY KEY(user_id, photo_id)
  ); 
  
   DESC likes;
  
  CREATE TABLE follows
  (
     follower_id INT NOT NULL,
     followee_id INT NOT NULL,
     created_at  TIMESTAMP DEFAULT Now(),
     FOREIGN KEY (follower_id) REFERENCES users(id),
     FOREIGN KEY (followee_id) REFERENCES users(id),
     PRIMARY KEY(follower_id, followee_id)
  ); 
  
  DESC follows;
  
  CREATE TABLE tags
  (
     id         INT auto_increment PRIMARY KEY,
     tag_name   VARCHAR(255) UNIQUE,
     created_at TIMESTAMP DEFAULT now()
  );

CREATE TABLE photo_tags
  (
     photo_id INT NOT NULL,
     tag_id   INT NOT NULL,
     FOREIGN KEY(photo_id) REFERENCES photos(id),
     FOREIGN KEY(tag_id) REFERENCES tags(id),
     PRIMARY KEY(photo_id, tag_id)
  ); 
  
  
  
  
  
  
  
  