-- Active: 1748140249333@@127.0.0.1@5432@conservation_db
CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    status VARCHAR(50),
    habitat VARCHAR(100)
);