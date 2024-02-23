# Instagram Clone Database Schema
## Overview
This project involves creating a MySQL database schema for an Instagram clone. The process includes creating tables, defining columns, data types, primary keys, foreign keys, and constraints.

## Tables
Users Table
Columns: Id (Primary Key), Username, Created_at
Photo Table
Columns: Id, Image_url, User_id (Foreign Key), Created_at
Comments Table
Columns: Id, Comment_text, User_id (Foreign Key), Photo_id (Foreign Key), Created_at
Likes Table
Columns: User_id, Photo_id, Created_at
Note: No separate Id column, using a composite primary key (User_id, Photo_id) to ensure uniqueness and limit one like per user.
Followers Table
Columns: Follower_id, Followee_id, Created_at
Note: Using a composite primary key (Follower_id, Followee_id) to capture one-way relationships.
Hashtags Tables
Photo_tags
Columns: Photo_id, Tag_id
Tags
Columns: Id, Tag_name

## Questions
Find the 5 oldest users:

Query to identify the users who have been around the longest.
What day of the week do most users register on?

Determine the peak registration day to optimize ad campaign scheduling.
Identify users who have never posted a photo:

Find inactive users for targeted email campaigns.
Winner of the most-liked photo contest:

Locate the user with the highest number of likes on a single photo.
Average user post frequency:

Calculate how many times, on average, a user posts.
Top 5 most commonly used hashtags:

Retrieve the most frequently used hashtags.
Identify users who liked every photo on the site:

Find potential bot accounts by locating users who liked every photo.
Additional Resources
For performance considerations related to hashtags, refer to this article: Tagsystems Performance Tests
