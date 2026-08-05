-- ======================================================================
-- PREDICATE LOGIC & BOOLEAN ALGEBRA IN SQL | Level 1
-- Topic: AND, OR, NOT as logical connectives; WHERE as a predictive filter
-- Run with: sqlite3 ../mydatabase.db; .read level_1.sql
-- ======================================================================

-- ----------------------------------------------------------------------
-- SETUP: Create the dataset
-- One TABLE of companies with boolean attributes
-- (SQLite has no native BOOLEAN type)

DROP TABLE IF EXISTS company_profile;

CREATE TABLE company_profile (
    company_id   INTEGER PRIMARY KEY,
    name         TEXT,
    is_premium   INTEGER,
    is_active    INTEGER,
    on_watchlist INTEGER
);

INSERT INTO company_profile VALUES
    (1, 'OpenAI',        1, 1, 0),
    (2, 'Anthropic',     1, 1, 1),
    (3, 'CHANEL',        0, 1, 0),
    (4, 'Louis Vuitton', 1, 0, 1),
    (5, 'Monsanto',      0, 0, 1),
    (6, 'Lululemon',     0, 1, 0),
    (7, 'Microsoft',     1, 1, 0);

-- ----------------------------------------------------------------------
-- WE PREDICT OUT OUTPUTS BEFORE RUNNING EACH QUERY
-- Find the predictions as comments above each result.
-- ----------------------------------------------------------------------

-- EXERCISE 0: Building the truth table (root concept)
-- Definition: a truth table enumerates every combination of inputs p, q
-- and the output of each logical connective for that combination.
-- CROSS JOIN is doing the same job as itertools.products in Python.
