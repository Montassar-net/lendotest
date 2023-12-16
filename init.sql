CREATE DATABASE IF NOT EXISTS posts_db;
use posts_db;

CREATE TABLE users (
 id bigint PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL ,
  gender TEXT,
  status TEXT
);


CREATE TABLE posts (
  id bigint PRIMARY KEY ,
  user_id bigint NOT NULL,
  title varchar(255) NOT NULL,
  body text NOT NULL
);


CREATE TABLE comments (
  id BIGINT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  body text NOT NULL 
);



INSERT INTO users (id, name, email, gender, status)
VALUES (1, 'John Doe', 'john.doe@example.com', 'male', 'active'),
       (2, 'Jane Smith', 'jane.smith@example.com', 'female', 'active'),
       (3, 'Alice Johnson', 'alice.johnson@example.com', 'female', 'inactive');
	   
	   
INSERT INTO posts (id, user_id, title, body)
VALUES (1, 1, 'My First Post', 'This is my first post on this amazing platform!'),
       (2, 2, 'Learning PostgreSQL', 'Sharing my journey of learning PostgreSQL and its awesome features.'),
       (3, 3, 'Ask Me Anything', 'Feel free to ask me anything about anything! I am happy to help.');

INSERT INTO comments (id, name, email, body, post_id)
VALUES (1, 'Mark', 'mark@example.com', 'Great post, John! I enjoyed reading it.', 1),
       (2, 'Sarah', 'sarah@example.com', 'I agree with Jane! PostgreSQL is indeed powerful.', 2),
       (3, 'David', 'david@example.com', 'Alice, what are you working on these days?', 3);






