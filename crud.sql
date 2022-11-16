DROP DATABASE IF EXISTS  test_products_db;

CREATE DATABASE test_products_db;

\c test_products_db

CREATE TABLE test_products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  price FLOAT CHECK (price > 0),
  can_be_returned BOOLEAN NOT NULL
);
INSERT INTO test_products (name, price, can_be_returned)
    VALUES
    ('chair', 44.00, false),
    ('stool', 25.99, true),
    ('table', 124.00, false)


