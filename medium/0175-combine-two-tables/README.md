# Combine Two Tables

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

_Description not available._

## Solution

**Language:** SQL  
**Runtime:** 548 ms (beats 13.09%)  
**Memory:** 0B (beats 100.00%)  
**Submitted:** 2026-08-08T14:21:25.524Z  

```sql
# Write your MySQL query statement below
SELECT p.firstName , p.lastName , a.city ,a.state
FROM Person p 
left join Address a 
on p.personId = a.personId ;
```

---

[View on LeetCode](https://leetcode.com/problems/combine-two-tables/)