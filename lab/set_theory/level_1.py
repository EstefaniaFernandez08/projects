"""
SET THEORY IN PYTHON | Level 1
Topic: set type, union, intersection, difference, filtering
Mirrors: level_1.sql (same dataset, same questions)
Run with: python level_1.py
================================================================
Goal: confirm that Python's set type produces identical 
results to the SQL queries. Same logic, different syntax.
================================================================
"""

# --------------------------------------------------------------
# DATASET - same data as the SQL
# Sets contain only customer IDs
# --------------------------------------------------------------

customer_q1 = {1, 2, 3, 4, 5}
customer_q2 = {6, 2, 7, 4}

# Names are stored in a dictionary
customer_names = {
    1: "OpenAI",
    2: "Anthropic",
    3: "CHANEL",
    4: "Louis Vuitton",
    5: "Monsanto",
    6: "Lululemon",
    7: "Microsoft",
}

print("=" * 50)
print("SET THEORY IN PYTHON | Level 1")
print("=" * 50)

# ----------------------------------------------------------------
# BEFORE RUNNING PREDICT THE OUTPUT OF EACH OPERATION
# Write your prediction as a comment above each print line
# -----------------------------------------------------------------

# EXERCISE 1: UNION A u B 
# Business Question: Who are all unique customers across both quarters

# I expect seven rows as the distinct values across quarters 1 & 2

all_customers = customer_q1 | customer_q2
print(f"\n [1] UNION - ALL unique customer:")
for customer_id in sorted(all_customers):
    print(f" {customer_id}: {customer_names[customer_id]}")

# EXERCISE 2: INTERSECTION A ∩ B
# Business question: Who are the recurring customers
# Predict: Anthropic & Louis Vuitton

recurring = customer_q1 & customer_q2
print(f"\n [2] INTERSECT - Returning customers:")
for customer_id in recurring:
    print(f"{customer_id}: {customer_names[customer_id]}")