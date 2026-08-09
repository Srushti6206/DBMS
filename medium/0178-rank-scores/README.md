# Rank Scores

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Table: Scores

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| score       | decimal |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains the score of a game. Score is a floating point value with two decimal places.


 

Write a solution to find the rank of the scores. The ranking should be calculated according to the following rules:


	The scores should be ranked from the highest to the lowest.
	If there is a tie between two scores, both should have the same ranking.
	After a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no holes between ranks.


Return the result table ordered by score in descending order.

The result format is in the following example.

 
Example 1:

Input: 
Scores table:
+----+-------+
| id | score |
+----+-------+
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |
+----+-------+
Output: 
+-------+------+
| score | rank |
+-------+------+
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |
+-------+------+

## Solution

**Language:** SQL  
**Runtime:** 77 ms  
**Memory:** 0B  
**Submitted:** 2026-08-09T06:42:28.404Z  

```sql
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    SELECT MAX(salary)
        FROM Employee e1
        WHERE (
            SELECT COUNT(DISTINCT e2.salary)
            FROM Employee e2
            WHERE e2.salary > e1.salary
        ) = N - 1
  );
END

```

---

[View on LeetCode](https://leetcode.com/problems/rank-scores/)