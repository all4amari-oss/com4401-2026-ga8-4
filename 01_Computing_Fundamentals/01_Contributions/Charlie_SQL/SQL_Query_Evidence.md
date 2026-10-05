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
This query displays all the roles stored in the EmployeeRoles table. The * means that every column is selected.

### Query 2: Just the names and budgets

```sql
SELECT RoleName, BudgetPerUnit
FROM EmployeeRoles;
```
<img width="2553" height="1391" alt="Query2" src="https://github.com/user-attachments/assets/3261d164-36ba-4fe7-b354-9babcd1072b1" />
This query displays only the role name and budget for each role instead of showing every column in the table.

## Query 3: The higher-budget roles 

```sql
SELECT RoleName, BudgetPerUnit
FROM EmployeeRoles
WHERE BudgetPerUnit > 1000;
```
<img width="2559" height="1390" alt="Query3" src="https://github.com/user-attachments/assets/1c713bab-23c7-4771-ac8d-4ddc9bf32b2a" />
This query uses WHERE to filter the results and only show roles with a workstation budget greater than £1,000.

### Query 4: Roles by team size

```sql
SELECT RoleName, StaffCount
FROM EmployeeRoles
ORDER BY StaffCount DESC;
```
<img width="2559" height="1390" alt="Query4" src="https://github.com/user-attachments/assets/56375331-f788-4259-9b7a-67c8a04991a0" />
This query uses ORDER BY to arrange the roles by team size. DESC means the largest team is shown first.

### Query 5: Find one build's items 
```sql
SELECT *
FROM BuildItems
WHERE BuildID = 1;
```
<img width="2559" height="1390" alt="Query5" src="https://github.com/user-attachments/assets/aec0a512-b1ac-4372-bc54-ecdd7b665b58" />
This query uses WHERE to find all the hardware items belonging to Build 1. It displays the item's category, name, specification and cost.

### Query 6: Count the items in a build
```sql
SELECT COUNT(*) AS ItemCount
FROM BuildItems
WHERE BuildID = 1;
```
<img width="2559" height="1390" alt="Query6" src="https://github.com/user-attachments/assets/b293496c-6163-4502-b5bd-e611f4862e28" />
This query uses COUNT(*) to count how many hardware items are stored for Build 1. The result gives the total number of items.

## Part B: Totals and summaries 

### Query 7: Total cost of one build
```sql
SELECT SUM(Cost) AS TotalCost
FROM BuildItems
WHERE BuildID = 1;
```
<img width="2559" height="1386" alt="Query7" src="https://github.com/user-attachments/assets/5d7bcc5e-9b91-4d92-b9b0-21db63bf2146" />
This query uses SUM(Cost) to add together the costs of all the hardware items in Build 1 and calculate its total hardware cost.

### Query 8: Cost of every build
```sql
SELECT BuildID, SUM(Cost) AS TotalCost
FROM BuildItems
GROUP BY BuildID
ORDER BY TotalCost DESC;
```
<img width="2558" height="1392" alt="Query8" src="https://github.com/user-attachments/assets/ae0e9941-3849-4ab9-8444-f4e40666fd5f" />
This query uses SUM to calculate the total cost of each build. GROUP BY creates a separate total for each BuildID, while ORDER BY puts the most expensive build first.

## Part C: Across tables with JOINs

### Query 9: Which role is each build for? 
```sql
SELECT b.BuildName, r.RoleName
FROM WorkstationBuilds b
JOIN EmployeeRoles r
ON b.RoleID = r.RoleID;
```
<img width="2559" height="1388" alt="Query9" src="https://github.com/user-attachments/assets/04e34b34-8a7f-464d-aa0c-844fbc746501" />
This query uses a JOIN to connect the WorkstationBuilds and EmployeeRoles tables. This allows the build name and the role it belongs to to be displayed together.

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
This query joins three tables together. It shows each hardware item, the workstation build it belongs to and the role that build is designed for.

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
This query joins the roles, workstation builds and hardware items together. SUM calculates the total hardware spending and GROUP BY produces a separate total for each role.

## Extra: Role totals against the budget

```sql
SELECT r.RoleName,
       r.StaffCount,
       SUM(i.Cost) AS CostPerPC,
       SUM(i.Cost) * r.StaffCount AS RoleTotal,
       r.BudgetPerUnit * r.StaffCount AS RoleBudget
FROM BuildItems i
JOIN WorkstationBuilds b
ON i.BuildID = b.BuildID
JOIN EmployeeRoles r
ON b.RoleID = r.RoleID
GROUP BY r.RoleID, r.RoleName, r.StaffCount, r.BudgetPerUnit;
```
<img width="2556" height="1390" alt="Extra" src="https://github.com/user-attachments/assets/000423b9-15a0-4816-bc5d-86bbcada3d64" />
This query calculates the cost of one workstation for each role and multiplies it by the number of staff to calculate the total role cost. It also calculates the total budget available for each role, allowing the costs to be compared with the budget.

---

## Checking the other tables

The brief requires every table in the databse to be queried at least once. The main 11 queries already use EmployeeRoles and BuildItems, so I also checked the WorkstationBuilds and Recommendations tables separately.

### WorkstationBuilds

```sql
SELECT * FROM WorkstationBuilds;
```
<img width="2558" height="1390" alt="Check_WorkstationBuilds" src="https://github.com/user-attachments/assets/d4d9a42e-9a09-4155-9784-9c5bc32f61c9" />
This query displays all the workstation builds stored in the database. It shows the BuildID, RoleID, BuildName and Source for each build.

### Recommendations 

```sql
SELECT RecommendationID, RoleID, Approved
FROM Recommendations;
```
<img width="2559" height="1390" alt="Check_Recommendations" src="https://github.com/user-attachments/assets/cff2eb27-bcb0-4ba9-bc37-9631899fbeaa" />
This query checks the recommendations stored for each role. It shows the recommendation ID, the role it belongs to and whether the recommendation has been approved.
