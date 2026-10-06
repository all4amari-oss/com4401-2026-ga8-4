# SQL Queries: Evidence

**Mini Project 1: Northwest Architecture Studio** · Charlie Broughton (3D Visualisation Specialist build)

Every query below was run on OneCompiler (MySQL) using the shared team database. Each screenshot shows the query and its result.

---

## Part A: Reading single tables

### Query 1: List every role

```sql
SELECT * FROM EmployeeRoles;
```
<img width="2559" height="1382" alt="Query1" src="https://github.com/user-attachments/assets/ed52ce10-c874-4459-9d4a-fedac28ca3b6" />
This query displays all the roles stored in the EmployeeRoles table. The * means that every column is selected.

### Query 2: Just the names and budgets

```sql
SELECT RoleName, BudgetPerUnit
FROM EmployeeRoles;
```
<img width="2553" height="1391" alt="Query2" src="https://github.com/user-attachments/assets/3261d164-36ba-4fe7-b354-9babcd1072b1" />
This query displays only the role name and budget for each role instead of showing every column in the table.

### Query 3: The higher-budget roles 

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

<img width="2540" height="1391" alt="Query9" src="https://github.com/user-attachments/assets/0fffe7f5-c43e-4517-af6e-72a7ddc9c616" />
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
<img width="2559" height="1389" alt="Query11" src="https://github.com/user-attachments/assets/4c83bbeb-5042-43a7-89d4-da047ccc7be4" />
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

---

## Data Integrity

### Data Integrity Test 1: Unique IDs

Each table uses a `PRIMARY KEY` to make sure every record has a unique ID. I tested this by trying to add another hardware item with ItemID 401, which already exists in the BuildItems table.
<img width="2557" height="1384" alt="Test_1" src="https://github.com/user-attachments/assets/586bad6e-250d-49b6-8957-804471efb4c7" />
The database rejected the duplicate and produced an error. This shows that the PRIMARY KEY prevents two hardware items from having the same ItemID.

### Data Integrity Test 2: Valid Relationships

The `BuildItems` table uses a `FOREIGN KEY` on `BuildID` to make sure every hardware item belongs to a build that exists. I tested this by trying to add an item with BuildID 9, which does not exist in the WorkstationBuilds table.
<img width="2559" height="1389" alt="Test_2" src="https://github.com/user-attachments/assets/b8d30ea5-360f-4ba3-b198-0863003e8bdb" />
The database rejected the entry with a foreign key constraint error. This shows that the foreign key prevents hardware items from being linked to a non-existent build.

### Data Integrity Test 3: Required fields cannot be blank

The `ItemName` column is set to `NOT NULL`, which means every item in the database must have a name. I tested this by trying to add an item with a blank `ItemName`. 
<img width="2559" height="1386" alt="Test_3" src="https://github.com/user-attachments/assets/1636c8c6-fb60-4a37-9d18-671ad348e60d" />
The database rejected it and returned an error saying that `ItemName` cannot be null. This shows that the database prevents required information from being left blank.

### Data Integrity Test 4: Costs must be numbers 

The `Cost` column is stored as `DECIMAL(8,2)`, so it is designed to contain numerical costs with two decimal places. I tested this by trying to enter the word `'cheap'` instead of a number.
<img width="2559" height="1396" alt="Test_4" src="https://github.com/user-attachments/assets/55fa5ac5-acea-456c-9cb5-3e5f36d6c197" />
The database rejected the value and returned an error showing that it was an incorrect decimal value. This shows that the database prevents non-numeric values from being stored as costs.

### Consistent category names

The hardware categories use the same naming format throughout the database, such as `CPU`, `Motherboard`, `RAM`, `Storage`, `GPU`, `PSU`, `Case/Cooling`, `Monitor`, `Keyboard`, `Mouse`, `Webcam/Headset` and `Network/Cables/Adapters`. Keeping the category names consistent is important because different spellings or names could make `COUNT`, `SUM` and `GROUP BY` queries produce inaccurate results. This rule relies on the team using the agreed category names when entering data.

### Team numbering

Each workstation build has its own range of `ItemID` numbers. The Administrative Assistant build uses IDs beginning with 101, the Project Manager build uses 201, the Architect/CAD Designer build uses 301, and the 3D Visualisation Specialist build uses 401. This makes it easier to identify which build an item belongs to and helps prevent different team members from accidentally using the same `ItemID`.

---

## Checklist

- [x] All 4 roles are included in the `EmployeeRoles` table.
- [x] All 4 workstation builds are included in the `WorkstationBuilds` table.
- [x] `BuildItems` contains the hardware items for the workstation builds.
- [x] `Recommendations` contains a recommendation for each role.
- [x] Every table has been queried at least once.
- [x] Used `SELECT` to retrieve data from the database.
- [x] Used `WHERE` to filter results.
- [x] Used `ORDER BY` to sort results.
- [x] Used `COUNT` to count items in a build.
- [x] Used `SUM` to calculate hardware costs.
- [x] Used `GROUP BY` to calculate totals for each build or role.
- [x] Used `JOIN` to connect information from multiple tables.
- [x] Completed all 11 queries required by the brief.
- [x] Added an explanation underneath each query.
- [x] Added screenshots showing the query results.
- [x] Completed the extra role totals and budget comparison query.
- [x] Completed the data integrity section.
- [x] Tested duplicate IDs, invalid foreign keys, blank required fields and invalid cost values.
- [x] Explained consistent category names and team numbering.
- [x] Added screenshots as evidence for the data integrity tests.


