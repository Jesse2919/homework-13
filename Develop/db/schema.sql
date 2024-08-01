-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- Connect to the database
\c ecommerce_db;

-- CREATE TABLES
-- Create Category table
CREATE TABLE Category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Create Product table
CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL NOT NULL,
    stock INTEGER NOT NULL DEFAULT 10,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

-- Create Tag table
CREATE TABLE Tag (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(255)
);

-- Create ProductTag table
CREATE TABLE ProductTag (
    id SERIAL PRIMARY KEY,
    product_id INTEGER,
    tag_id INTEGER,
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (tag_id) REFERENCES Tag(id)
);

