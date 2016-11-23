DROP TABLE students;
DROP TABLE houses;


CREATE TABLE houses (
    id SERIAL8 primary key,
    name VARCHAR(255),
    head VARCHAR(255),
    logo_url VARCHAR(255)
);

CREATE TABLE students (
    id SERIAL8 primary key,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    house_id INT8 references houses(id),
    age INT2
);
