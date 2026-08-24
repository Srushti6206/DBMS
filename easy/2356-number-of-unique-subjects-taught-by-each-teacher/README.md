# Number of Unique Subjects Taught by Each Teacher

![Difficulty](https://img.shields.io/badge/Difficulty-Easy-green)

## Problem

Table: Teacher

+-------------+------+
| Column Name | Type |
+-------------+------+
| teacher_id  | int  |
| subject_id  | int  |
| dept_id     | int  |
+-------------+------+
(subject_id, dept_id) is the primary key (combinations of columns with unique values) of this table.
Each row in this table indicates that the teacher with teacher_id teaches the subject subject_id in the department dept_id.


 

Write a solution to calculate the number of unique subjects each teacher teaches in the university.

Return the result table in any order.

The result format is shown in the following example.

 
Example 1:

Input: 
Teacher table:
+------------+------------+---------+
| teacher_id | subject_id | dept_id |
+------------+------------+---------+
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |
+------------+------------+---------+
Output:  
+------------+-----+
| teacher_id | cnt |
+------------+-----+
| 1          | 2   |
| 2          | 4   |
+------------+-----+
Explanation: 
Teacher 1:
  - They teach subject 2 in departments 3 and 4.
  - They teach subject 3 in department 3.
Teacher 2:
  - They teach subject 1 in department 1.
  - They teach subject 2 in department 1.
  - They teach subject 3 in department 1.
  - They teach subject 4 in department 1.

## Solution

**Language:** SQL  
**Runtime:** 89 ms  
**Memory:** 0B  
**Submitted:** 2026-08-24T17:05:19.873Z  

```sql
# Write your MySQL query statement below
SELECT e1.name from Employee e1
JOIN Employee e2 
ON e1.id = e2.managerID
GROUP BY e1.id , e1.name
having count(e2.id) >= 5 ;

# Direct report : An employee whose managerId equals that manager's id
```

---

[View on LeetCode](https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/)