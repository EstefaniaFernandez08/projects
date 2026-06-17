-- ===========================================================
-- SET THEORY IN SQL | Level 1
-- Topic: UNION, INTERSECT, EXCEPT and WHERE as set operations
-- Run with: sqlite3 .read level_1.sql
-- ===========================================================

-- -----------------------------------------------------------
-- SETUP: Create the dataset
-- Two TABLE of customers by ID
-- Import data or replicate as needed
-- -----------------------------------------------------------


DROP TABLE IF EXISTS customer_q1;
DROP TABLE IF EXISTS customer_q2;

CREATE TABLE customer_q1 (
    customer_id INTEGER PRIMARY KEY,
    name        TEXT
);

CREATE TABLE customer_q2 (
    customer_id INTEGER PRIMARY KEY,
    name      TEXT 
);

INSERT INTO customer_q1 
    VALUES (1, 'OpenAI'), (2, 'Anthropic'), (3, 'CHANEL'), 
            (4, 'Louis Vuitton'), (5, 'Monsanto'); 

INSERT INTO customer_q2
    VALUES (6, 'Lululemon'), (2, 'Anthropic'),
            (7, 'Microsoft'), (4, 'Louis Vuitton');

-- ----------------------------------------------------------
-- BEFORE RUNNING EACH QUERY PREDICT THE OUTPUT
-- Write your prediction as a comment above each result.
-- ----------------------------------------------------------

-- EXERCISE 1: UNION A ∪ B
-- Business Question: Who are all unique customers across both quarters?
-- Definition: every element that belongs to Q1, Q2 of both
-- Predict: I expect seven rows as distinct customer list both id and name

SELECT customer_id, name FROM customer_q1
UNION -- including "ALL" duplicates show
SELECT customer_id, name FROM customer_q2
ORDER BY customer_id;

-- EXERCISE 2: INTERSECT A ∩ B
-- Business Question: Who purchased in BOTH quarters?
-- Predict: I expect two rows listing id and name 

SELECT customer_id, name FROM customer_q1
INTERSECT
SELECT customer_id, name FROM customer_q2
ORDER BY customer_id;