# Reformat Department Table

![Difficulty](https://img.shields.io/badge/Difficulty-Easy-green)

## Problem

Table: Department

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| revenue     | int     |
| month       | varchar |
+-------------+---------+
In SQL,(id, month) is the primary key of this table.
The table has information about the revenue of each department per month.
The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].


 

Reformat the table such that there is a department id column and a revenue column for each month.

Return the result table in any order.

The result format is in the following example.

 
Example 1:

Input: 
Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+
Output: 
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+
Explanation: The revenue from Apr to Dec is null.
Note that the result table has 13 columns (1 for the department id + 12 for the months).

## Solution

**Language:** SQL  
**Runtime:** 82 ms  
**Memory:** 0B  
**Submitted:** 2026-08-18T14:51:55.920Z  

```sql
    SUM(CASE WHEN month = 'Mar' THEN revenue ELSE 0 END) AS Mar_Revenue,
    SUM(CASE WHEN month = 'Apr' THEN revenue ELSE 0 END) AS Apr_Revenue,
    SUM(CASE WHEN month = 'May' THEN revenue ELSE 0 END) AS May_Revenue,
    SUM(CASE WHEN month = 'Jun' THEN revenue ELSE 0 END) AS Jun_Revenue,
    SUM(CASE WHEN month = 'Jul' THEN revenue ELSE 0 END) AS Jul_Revenue,
    SUM(CASE WHEN month = 'Aug' THEN revenue ELSE 0 END) AS Aug_Revenue,
    SUM(CASE WHEN month = 'Sep' THEN revenue ELSE 0 END) AS Sep_Revenue,
    SUM(CASE WHEN month = 'Oct' THEN revenue ELSE 0 END) AS Oct_Revenue,
    SUM(CASE WHEN month = 'Nov' THEN revenue ELSE 0 END) AS Nov_Revenue,
    SUM(CASE WHEN month = 'Feb' THEN revenue ELSE 0 END) AS Feb_Revenue,
    SUM(CASE WHEN month = 'Jan' THEN revenue ELSE 0 END) AS Jan_Revenue,
    id,
SELECT

```

---

[View on LeetCode](https://leetcode.com/problems/reformat-department-table/)