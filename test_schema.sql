-- name: create-users-table
CREATE TABLE users (
  id  serial PRIMARY KEY,
  name varchar(50) not null,
  email varchar(50) not null
);

-- name: create-user
INSERT INTO users (name, email) VALUES (?, ?);

-- name: find-all-users
SELECT * from users;


-- name: drop-users-table
DROP TABLE users;
