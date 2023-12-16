CREATE DATABASE IF NOT EXISTS lendo;
use lendo;

CREATE TABLE users (
 id bigint PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL ,
  gender TEXT,
  status TEXT
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


CREATE TABLE posts (
  id bigint PRIMARY KEY ,
  userId bigint NOT NULL,
  title varchar(255) NOT NULL,
  body text NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


CREATE TABLE comments (
  id BIGINT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  postId bigint NOT NULL,
  body text NOT NULL 
)ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


CREATE TABLE `UserInfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



INSERT INTO users (id, name, email, gender, status)
VALUES (1, 'John Doe', 'john.doe@example.com', 'male', 'active'),
       (2, 'Jane Smith', 'jane.smith@example.com', 'female', 'active'),
       (3, 'Alice Johnson', 'alice.johnson@example.com', 'female', 'inactive');
	   
	   
INSERT INTO posts (id, userId, title, body)
VALUES (1, 1, 'My First Post', 'This is my first post on this amazing platform!'),
       (2, 2, 'Learning PostgreSQL', 'Sharing my journey of learning PostgreSQL and its awesome features.'),
       (3, 3, 'Ask Me Anything', 'Feel free to ask me anything about anything! I am happy to help.');

INSERT INTO comments (id, name, email, body, postId)
VALUES (1, 'Mark', 'mark@example.com', 'Great post, John! I enjoyed reading it.', 1),
       (2, 'Sarah', 'sarah@example.com', 'I agree with Jane! PostgreSQL is indeed powerful.', 2),
       (3, 'David', 'david@example.com', 'Alice, what are you working on these days?', 3);






