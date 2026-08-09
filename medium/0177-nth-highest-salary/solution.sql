CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    SELECT DISTINCT salary
    FROM Employee 
    ORDER BY salary DESC
  );
    LIMIT N, 1
END

