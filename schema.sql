drop database if exists gobbler;
drop role if exists gobbler;

create user gobbler createdb createuser password 'g0bbl3r';
create database gobbler owner gobbler;
\connect gobbler

-- name: create-users-table
CREATE TABLE users (
  id integer not null,
  name varchar(50) not null,
  email varchar(50) not null,
  created_at date,
  updated_at date,
  CONSTRAINT users_pk PRIMARY KEY (id)
);
