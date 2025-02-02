USE portfolioproject;

CREATE TABLE badges (
    id INT PRIMARY KEY,
    user_id INT,
    name VARCHAR(255),
    date DATE
);

INSERT INTO badges (id, user_id, name, date) VALUES
(1, 1001, 'Gold Contributor', '2024-01-01'),
(2, 1002, 'Silver Helper', '2024-01-05'),
(3, 1003, 'Bronze Reviewer', '2024-02-10'),
(4, 1001, 'Silver Helper', '2024-03-15'),
(5, 1004, 'Gold Contributor', '2024-04-20'),
(6, 1001, 'Gold Contributor', '2024-05-05'),
(7, 1002, 'Bronze Reviewer', '2024-06-10'),
(8, 1003, 'Silver Helper', '2024-07-10'),
(9, 1004, 'Gold Contributor', '2024-08-01'),
(10, 1001, 'Bronze Reviewer', '2024-09-01');


CREATE TABLE comments (
    id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    creation_date DATE,
    text TEXT
);

INSERT INTO comments (id, post_id, user_id, creation_date, text) VALUES
(1, 2001, 1001, '2024-01-01', 'Great explanation!'),
(2, 2002, 1002, '2024-01-05', 'This helped a lot.'),
(3, 2003, 1003, '2024-01-10', 'Can you clarify?'),
(4, 2004, 1001, '2024-01-15', 'Excellent resource.'),
(5, 2005, 1004, '2024-01-20', 'Thank you for sharing.'),
(6, 2001, 1002, '2024-01-25', 'I agree, very useful.'),
(7, 2003, 1003, '2024-02-01', 'This solved my issue.'),
(8, 2004, 1001, '2024-02-05', 'Thanks for the info.'),
(9, 2005, 1004, '2024-02-10', 'Could use more detail.'),
(10, 2006, 1002, '2024-02-15', 'Good job on this one!');


CREATE TABLE post_history (
    id INT PRIMARY KEY,
    post_history_type_id INT,
    post_id INT,
    user_id INT,
    text TEXT,
    creation_date DATE
);

INSERT INTO post_history (id, post_history_type_id, post_id, user_id, text, creation_date) VALUES
(1, 1, 2001, 1001, 'Initial post creation', '2024-01-01'),
(2, 2, 2002, 1002, 'Edited post for clarity', '2024-01-05'),
(3, 3, 2003, 1003, 'Comment added by moderator', '2024-01-10'),
(4, 1, 2004, 1001, 'First version of the post', '2024-01-15'),
(5, 2, 2005, 1004, 'Reworded answer', '2024-01-20'),
(6, 3, 2001, 1002, 'User updated answer with additional info', '2024-01-25'),
(7, 1, 2003, 1003, 'Post originally created', '2024-02-01'),
(8, 3, 2004, 1001, 'Moderators edited content', '2024-02-05'),
(9, 2, 2005, 1004, 'User revised explanation', '2024-02-10'),
(10, 3, 2006, 1002, 'Moderators flagged inappropriate content', '2024-02-15');


CREATE TABLE post_links (
    id INT PRIMARY KEY,
    post_id INT,
    related_post_id INT,
    link_type_id INT
);

INSERT INTO post_links (id, post_id, related_post_id, link_type_id) VALUES
(1, 2001, 2002, 1),
(2, 2002, 2003, 2),
(3, 2003, 2004, 1),
(4, 2004, 2005, 3),
(5, 2005, 2006, 2),
(6, 2001, 2004, 3),
(7, 2002, 2006, 1),
(8, 2003, 2005, 2),
(9, 2004, 2006, 3),
(10, 2005, 2001, 2);


CREATE TABLE posts_answers (
    id INT PRIMARY KEY,
    post_type_id INT,
    creation_date DATE,
    score INT,
    view_count INT,
    owner_user_id INT
);

INSERT INTO posts_answers (id, post_type_id, creation_date, score, view_count, owner_user_id) VALUES
(1, 1, '2024-01-01', 10, 100, 1001),
(2, 2, '2024-01-05', 20, 150, 1002),
(3, 1, '2024-01-10', 5, 50, 1003),
(4, 2, '2024-01-15', 15, 120, 1001),
(5, 1, '2024-01-20', 30, 200, 1004),
(6, 2, '2024-01-25', 25, 180, 1002),
(7, 1, '2024-02-01', 40, 300, 1003),
(8, 2, '2024-02-05', 10, 80, 1001),
(9, 1, '2024-02-10', 8, 90, 1004),
(10, 2, '2024-02-15', 50, 400, 1002);

CREATE TABLE tags (
    id INT PRIMARY KEY,
    tag_name VARCHAR(255)
);

INSERT INTO tags (id, tag_name) VALUES
(1, 'SQL'),
(2, 'JavaScript'),
(3, 'React'),
(4, 'Python'),
(5, 'AI'),
(6, 'Machine Learning'),
(7, 'Node.js'),
(8, 'CSS'),
(9, 'HTML'),
(10, 'Database');


CREATE TABLE users (
    id INT PRIMARY KEY,
    display_name VARCHAR(255),
    reputation INT,
    creation_date DATE
);

INSERT INTO users (id, display_name, reputation, creation_date) VALUES
(1001, 'Alice', 1500, '2024-01-01'),
(1002, 'Bob', 1200, '2024-01-05'),
(1003, 'Charlie', 800, '2024-01-10'),
(1004, 'Dave', 1800, '2024-01-15'),
(1005, 'Eve', 1000, '2024-01-20'),
(1006, 'Frank', 2000, '2024-01-25'),
(1007, 'Grace', 1300, '2024-02-01'),
(1008, 'Hank', 1100, '2024-02-05'),
(1009, 'Ivy', 900, '2024-02-10'),
(1010, 'Jack', 1600, '2024-02-15');


CREATE TABLE votes (
    id INT PRIMARY KEY,
    post_id INT,
    vote_type_id INT,
    creation_date DATE
);

INSERT INTO votes (id, post_id, vote_type_id, creation_date) VALUES
(1, 2001, 1, '2024-01-01'),
(2, 2002, 2, '2024-01-05'),
(3, 2003, 1, '2024-01-10'),
(4, 2004, 2, '2024-01-15'),
(5, 2005, 1, '2024-01-20'),
(6, 2001, 2, '2024-01-25'),
(7, 2003, 1, '2024-02-01'),
(8, 2004, 2, '2024-02-05'),
(9, 2005, 1, '2024-02-10'),
(10, 2006, 2, '2024-02-15');


CREATE TABLE posts (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    post_type_id INT,
    creation_date DATE,
    score INT,
    view_count INT,
    owner_user_id INT
);

INSERT INTO posts (id, title, post_type_id, creation_date, score, view_count, owner_user_id)
VALUES
(2001, 'How to solve SQL JOIN issues?', 1, '2023-01-01', 10, 100, 1),
(2002, 'Best practices for writing SQL queries', 2, '2023-01-02', 15, 150, 2),
(2003, 'Understanding INNER JOIN in SQL', 1, '2023-01-03', 20, 200, 3),
(2004, 'What is a LEFT JOIN?', 2, '2023-01-04', 25, 250, 4),
(2005, 'Database indexing techniques', 1, '2023-01-05', 30, 300, 5),
(2006, 'Explaining SQL subqueries', 2, '2023-01-06', 35, 350, 6),
(2007, 'How to optimize SQL queries?', 1, '2023-01-07', 40, 400, 7),
(2008, 'Database normalization concepts', 2, '2023-01-08', 45, 450, 8),
(2009, 'SQL Aggregate Functions explained', 1, '2023-01-09', 50, 500, 9),
(2010, 'Introduction to SQL Window Functions', 2, '2023-01-10', 55, 550, 10);



-- Part 1: Basics

-- 1. Explore the structure and first 10 rows of each table.
select * from badges
limit 10;
select * from post_links
limit 10;
select * from comments
limit 10;
select * from post_history
limit 10;
select * from tags
limit 10;
select * from posts_answers
limit 10;
select * from users
limit 10;
select * from votes
limit 10;
select * from posts
limit 10;

-- 2. Identify the total number of records in each table.
select count(*) as total_records
from badges;

select count(*) as total_records
from post_links;

select count(*) as total_records
from comments;

select count(*) as total_records
from post_history;

select count(*) as total_records
from tags;

select count(*) as total_records
from posts_answers;

select count(*) as total_records
from users;

select count(*) as total_records
from votes;

select count(*) as total_records
from posts;

-- 2. Find all posts with a view_count greater than 100.
select * from posts 
where view_count>100;

-- 3. Display comments made in 2005, sorted by creation_date (commentstable).
select * from comments
where post_id= "2005"
order by creation_date asc;

-- 4. Count the total number of badges (badges table).
select sum(id) as total_badges
 from badges;
 
-- 5. Calculate the average score of posts grouped by post_type_id(posts_answer table).

select round(avg(score),2) as scoreavg
from posts
group by post_type_id;


-- art 2: Joins:

-- 1. Combine the post_history and posts tables to display the title of posts and the corresponding changes made in the post history.
select a.title, b.creation_date, b.`text`
 from posts a
 join post_history b on a.id = b.post_id
 order by  b.creation_date asc;

-- 2. Join the users table with badges to find the total badges earned by each user.
select a.id, 
a.display_name,
 count(b.`id`) AS total_badges
 from users a
 left join 
 badges b on 
 a.id = b.user_id
 group by a.id, 
a.display_name
order by a.id asc;


-- Multi-Table Joins:

-- 3. Fetch the titles of posts (posts), their comments (comments), and the users who made those comments (users).
select a.id, display_name, title, `text`
from users a 
inner join comments b on a.id = b.user_id
inner join posts c on c.id= b.post_id;

-- 4. Combine post_links with posts to list related questions.
select b.id ,title 
from posts a 
inner join post_links b on a.id = b.post_id;

-- 5. Join the users, badges, and comments tables to find the users who have earned badges and made comments.
select display_name 
 from users a
 join 
 badges b on 
 a.id = b.user_id
 join
comments c on a.id= c.user_id
group by a.display_name;


-- Part 3: Subqueries:

-- 1. Find the user with the highest reputation (users table).
select display_name , reputation as highestreputation
from users
where reputation = (select max(reputation)  from users);

-- 2. Retrieve posts with the highest score in each post_type_id (poststable).
select  title, post_type_id, score
from posts
where score = (select max(score) from posts);

-- 3. For each post, fetch the number of related posts from post_links.
select id, title,
(select count(related_post_id) as relatedps 
from post_links as pl
where pl.post_id = posts.id) as relatedpsnumber
from posts;

-- Part 4: Common Table Expressions (CTEs)

-- 1. Create a CTE to calculate the average score of posts by each user and use it to:
-- List users with an average score above 50. Rank users based on their average post score.

with ranking_avg_score as ( select owner_user_id,
round(avg(score),2) as avg_score  
from posts
group by owner_user_id )
select owner_user_id as user_id, avg_score , 
Rank () over (ORDER BY avg_score asc) as ranking
from ranking_avg_score
where avg_score> 50
order by user_id asc;


-- Recursive CTE

-- 2. Simulate a hierarchy of linked posts using the post_links table.
with recursive post_hierarchy as ( select 
post_id , link_type_id, related_post_id,
1 as level
from post_links
union all
select pl.post_id , 
pl.link_type_id, 
pl.related_post_id,
ph.level + 1 AS level
from post_links pl
inner join post_hierarchy ph on ph.post_id = ph.related_post_id)
select * from post_hierarchy;

-- ADVANCE QUESTIONS WINDOW FUNCTIONS:

-- 1. Rank posts based on their score within each year (posts table).
SELECT 
    id,
    title,
    score,
    YEAR(creation_date) AS post_year,
    RANK() OVER (
        PARTITION BY YEAR(creation_date) 
        ORDER BY score DESC
    ) AS rank_within_year
FROM 
    posts;
    
-- 2. Calculate the running total of badges earned by users (badges table).
SELECT 
    user_id,
    name,
    date,
    SUM(1) OVER (
        PARTITION BY user_id 
        ORDER BY date
    ) AS running_total_badges
FROM 
    badges;
    

-- New insights and questions:

-- 1. Which users have contributed the most in terms of comments, edits, and votes?
select count(`text`) as comments, 
user_id
from comments
group by user_id;

-- 2.  What types of badges are most commonly earned, and which users are the top earners?
select count(id) as no_of_badges, `name`
from badges
group by `name`;

-- which users are the top earners?
select count(`name`) as top_earner, user_id
from badges
group by user_id;

-- Which tags are associated with the highest-scoring posts?
select  title, post_type_id, score
from posts
where score = (select max(score) from posts);

-- How often are related questions linked, and what does this say about knowledge sharing?
select post_id , title,
count(related_post_id) as linked_question 
from post_links a
join posts b on a.post_id = b.id
group by post_id ;



select* from votes;
select* from users;
select * from posts;
select * from tags;
select * from  post_links;







