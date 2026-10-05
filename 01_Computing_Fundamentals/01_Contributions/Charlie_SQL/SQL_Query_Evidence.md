# SQL Queries: Evidence

**Mini Project 1: Northwest Architecture Studio** · Charlie Broughton (3D Visualisation Specialist build)

Every query below was run on OneCompiler (MySQL) using the shared team database. Each screenshot shows the query and its result.

---

## Part A: Reading single tables

### Query 1: List every role

```sql
SELECT * FROM EmployeeRoles;
```
<img width="2559" height="1389" alt="Query1" src="https://github.com/user-attachments/assets/f88d9f2d-68ae-4a7d-a35f-49e10fa20142" />

### Query 2: Just the names and budgets

```sql
SELECT RoleName, BudgetPerUnit
FROM EmployeeRoles;
```
<img width="2553" height="1391" alt="Query2" src="https://github.com/user-attachments/assets/3261d164-36ba-4fe7-b354-9babcd1072b1" />

## Query 3: The higher-budget roles 

```sql
SELECT RoleName, BudgetPerUnit
FROM EmployeeRoles
WHERE BudgetPerUnit > 1000;
```
<img width="2559" height="1390" alt="Query3" src="https://github.com/user-attachments/assets/1c713bab-23c7-4771-ac8d-4ddc9bf32b2a" />

### Query 4: Roles by team size

```sql
SELECT RoleName, StaffCount
FROM EmployeeRoles
ORDER BY StaffCount DESC;
```
<img width="2559" height="1390" alt="Query4" src="https://github.com/user-attachments/assets/56375331-f788-4259-9b7a-67c8a04991a0" />

### Query 5: Find one build's items 
```sql
SELECT *
FROM BuildItems
WHERE BuildID = 1;
```
<img width="2559" height="1390" alt="Query5" src="https://github.com/user-attachments/assets/aec0a512-b1ac-4372-bc54-ecdd7b665b58" />

### Query 6: Count the items in a build
```sql
SELECT COUNT(*) AS ItemCount
FROM BuildItems
WHERE BuildID = 1;
```
<img width="2559" height="1390" alt="Query6" src="https://github.com/user-attachments/assets/b293496c-6163-4502-b5bd-e611f4862e28" />

## Part B: Totals and summaries 

### Query 7: Total cost of one build
```sql
SELECT SUM(Cost) AS TotalCost
FROM BuildItems
WHERE BuildID = 1;
```
<img width="2559" height="1386" alt="Query7" src="https://github.com/user-attachments/assets/5d7bcc5e-9b91-4d92-b9b0-21db63bf2146" />

### Query 8: Cost of every build
```sql
SELECT BuildID, SUM(Cost) AS TotalCost
FROM BuildItems
GROUP BY BuildID
ORDER BY TotalCost DESC;
```
<img width="2558" height="1392" alt="Query8" src="https://github.com/user-attachments/assets/ae0e9941-3849-4ab9-8444-f4e40666fd5f" />

## Part C: Across tables with JOINs

### Query 9: Which role is each build for? 
```sql
SELECT b.BuildName, r.RoleName
FROM WorkstationBuilds b
JOIN EmployeeRoles r
ON b.RoleID = r.RoleID;
```
<img width="2559" height="1388" alt="Query9" src="https://github.com/user-attachments/assets/04e34b34-8a7f-464d-aa0c-844fbc746501" />

### Query 10: Items with their build and role
```sql
SELECT i.ItemName, b.BuildName, r.RoleName
FROM BuildItems i
JOIN WorkstationBuilds b
ON i.BuildID = b.BuildID
JOIN EmployeeRoles r
ON b.RoleID = r.RoleID;
```
<img width="2556" height="1392" alt="Query10" src="https://github.com/user-attachments/assets/997c220d-2aa9-40a9-b8e2-55257be4480e" />

### Query 11: Spend per role
```sql
SELECT r.RoleName, SUM(i.Cost) AS TotalSpend
FROM BuildItems i
JOIN WorkstationBuilds b
ON i.BuildID = b.BuildID
JOIN EmployeeRoles r
ON b.RoleID = r.RoleID
GROUP BY r.RoleName
ORDER BY TotalSpend DESC;
```
<img width="2559" height="1379" alt="Query11" src="https://github.com/user-attachments/assets/95af4944-0d66-465a-bd0e-ed7021b94617" />

