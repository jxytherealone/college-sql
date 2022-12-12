--Ques: 1 Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – 968.

SELECT EmpId, FullName
FROM EmployeeDetails
WHERE ManagerId = 986;


--Ques: 2 Write an SQL query to fetch the different projects available from the EmployeeSalary table.

SELECT DISTINCT Project
FROM EmployeeSalary;


--Ques: 3 Write an SQL query to fetch the count of employees working in project ‘P1’.

SELECT COUNT(*)
FROM EmployeeSalary
WHERE Project = 'P1';


--Ques: 4 Write an SQL query to find the maximum, minimum, and average salary of the employees. 

SELECT MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary, AVG(Salary) AS AvgSalary
FROM EmployeeSalary;


--Ques: 5 Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.

SELECT EmpId
FROM EmployeeSalary
WHERE Salary BETWEEN 9000 AND 15000;


--Ques: 6 Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.

SELECT EmpId, FullName
FROM EmployeeDetails
WHERE City = 'Toronto' AND ManagerId = 321;


--Ques: 7 Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.

SELECT EmpId, FullName
FROM EmployeeDetails
WHERE City = 'California' OR ManagerId = 321;


--Ques 8: Write an SQL query to fetch all those employees who work on Projects other than P1.

SELECT EmpId, FullName
FROM EmployeeDetails
WHERE EmpId IN (SELECT EmpId FROM EmployeeSalary WHERE Project != 'P1');


--ques 9: Write an SQL query to display the total salary of each employee adding the Salary with Variable value.

SELECT EmpId, Salary + Variable AS TotalSalary
FROM EmployeeSalary;
