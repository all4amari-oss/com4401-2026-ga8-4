-- ============================================
-- Mini Project 1: Northwest Architecture Studio
-- Team: The Avengers
-- Follows the ER diagram on page 8 of the brief
-- Budgets from the brief (page 4)
-- ============================================

-- 1. EMPLOYEE ROLES
CREATE TABLE EmployeeRoles (
  RoleID INT PRIMARY KEY,
  RoleName VARCHAR(50) NOT NULL,
  StaffCount INT NOT NULL,
  Tasks VARCHAR(255) NOT NULL,
  PerformanceNeed VARCHAR(100) NOT NULL,
  BudgetPerUnit DECIMAL(8,2) NOT NULL
);

INSERT INTO EmployeeRoles
  (RoleID, RoleName, StaffCount, Tasks, PerformanceNeed, BudgetPerUnit)
VALUES
  (1, 'Administrative Assistant', 3, 'Email, documents, spreadsheets, web systems, online meetings, and basic customer records', 'Basic office hardware workstation', 950.00),
  (2, 'Project Manager', 2, 'Reports, meetings, project planning, reviewing drawings, dashboards, and client communication', 'Business workstation with stronger display/workflow setup', 1300.00),
  (3, 'Architect / CAD Designer', 5, 'CAD drawings, 2D drafting, 3D modelling, large design files, multiple monitors, and design reviews', 'CAD workstation with dedicated GPU and suitable display', 2500.00),
  (4, '3D Visualisation Specialist', 2, 'Rendering, 3D visualisation, large models, high-resolution textures, media output, and client visual presentations', 'High-performance rendering/visualisation workstation', 3750.00);

-- 2. WORKSTATION BUILDS
CREATE TABLE WorkstationBuilds (
  BuildID INT PRIMARY KEY,
  RoleID INT NOT NULL,
  BuildName VARCHAR(100) NOT NULL,
  Source VARCHAR(50) NOT NULL,
  FOREIGN KEY (RoleID) REFERENCES EmployeeRoles(RoleID)
);

INSERT INTO WorkstationBuilds (BuildID, RoleID, BuildName, Source)
VALUES
  (1, 1, 'Admin Build', 'BuildCores.com'),
  (2, 2, 'Project Manager Build', 'BuildCores.com'),
  (3, 3, 'CAD Build', 'BuildCores.com'),
  (4, 4, '3D Visualisation Build', 'BuildCores.com');

-- 3. BUILD ITEMS
CREATE TABLE BuildItems (
  ItemID INT PRIMARY KEY,
  BuildID INT NOT NULL,
  HardwareCategory VARCHAR(50) NOT NULL,
  ItemName VARCHAR(100) NOT NULL,
  Specification VARCHAR(150) NOT NULL,
  Cost DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (BuildID) REFERENCES WorkstationBuilds(BuildID)
);

-- CAD Build (Marcus) - ItemIDs 301+
INSERT INTO BuildItems
  (ItemID, BuildID, HardwareCategory, ItemName, Specification, Cost)
VALUES
  (301, 3, 'CPU', 'Intel Core i5 14400F', '10 cores (6P+4E), 16 threads, up to 4.7GHz, LGA1700, 65W, cooler included, no built-in graphics', 139.99),
  (302, 3, 'Motherboard', 'MSI B760 GAMING PLUS WIFI DDR5 ATX', 'LGA1700, Intel B760, 4x DDR5 slots, PCIe 4.0 x16, 2x M.2, WiFi 6E, 2.5Gb ethernet', 95.99),
  (303, 3, 'RAM', 'Patriot Viper Venom 32GB (2x16GB)', '32GB (2x16GB) DDR5-6000 CL30', 399.95),
  (304, 3, 'Storage', 'Kingston NV3 1TB', '1TB M.2-2280 PCIe 4.0 x4 NVMe SSD', 128.99),
  (305, 3, 'GPU', 'Gigabyte WINDFORCE OC GeForce RTX 3060 12GB', 'GeForce RTX 3060, 12GB GDDR6', 422.15),
  (306, 3, 'PSU', 'be quiet! Pure Power 12 650W', '650W, 80+ Gold, non-modular', 68.33),
  (307, 3, 'Case/Cooling', 'Montech X3 Mesh ATX Mid Tower', 'ATX mid tower, mesh front, tempered glass side, 6 fans pre-installed', 29.99),
  (308, 3, 'Monitor', 'KTC 27-inch QHD IPS Monitor', '27-inch, 2560x1440 QHD, IPS, 100Hz, HDMI + DisplayPort', 234.78),
  (309, 3, 'Monitor', 'KTC 27-inch QHD IPS Monitor', 'Second identical screen for dual-monitor setup', 234.78),
  (310, 3, 'Keyboard', 'Logitech K120', 'UK layout, wired USB', 10.99),
  (311, 3, 'Mouse', 'Lenovo ThinkPad Precision Wireless Optical Mouse', 'Wireless optical mouse', 36.11),
  (312, 3, 'Webcam/Headset', 'Logitech C270 Webcam', '720p USB webcam', 16.99),
  (313, 3, 'Webcam/Headset', 'Razer Kraken 7.1 Channel Closed Headset', 'Closed-back wired headset with microphone', 21.98),
  (314, 3, 'Network/Cables/Adapters', 'Nixsto Cat6 Ethernet Cable', 'Cat6 ethernet patch cable, 2m, RJ45', 3.48);

-- 4. RECOMMENDATIONS
CREATE TABLE Recommendations (
  RecommendationID INT PRIMARY KEY,
  RoleID INT NOT NULL,
  Justification TEXT NOT NULL,
  Compromise TEXT NOT NULL,
  Approved BOOLEAN NOT NULL,
  EthicalNotes TEXT NOT NULL,
  FOREIGN KEY (RoleID) REFERENCES EmployeeRoles(RoleID)
);

INSERT INTO Recommendations
  (RecommendationID, RoleID, Justification, Compromise, Approved, EthicalNotes)
VALUES
  (3, 3,
   'A CAD designer needs a proper graphics card, plenty of memory and room on screen, so that is where the money went. RTX 3060 with 12GB, 32GB of RAM, a fast 1TB drive and two matching QHD monitors. The keyboard, webcam and headset are basic because the job does not need anything fancy there. It comes to £1,844.50 a machine, £655.50 under the £2,500 budget.',
   'The RTX 3060 is not the newest card, but it handles 2D drafting and 3D modelling fine and cost a lot less than the newer ones. The i5 over an i7, the 1TB drive and the 100Hz monitors are the same idea. Good enough for the job and nothing extra.',
   TRUE,
   'The power supply is Gold rated so it wastes less electricity. Every part comes from known UK retailers with prices checked on the day. The board has spare memory and storage slots, so these machines can be upgraded later instead of replaced.');

-- 5. QUERIES (brief page 10)

-- Query 1: List every role
SELECT * FROM EmployeeRoles;

-- Query 2: Just the names and budgets
SELECT RoleName, BudgetPerUnit FROM EmployeeRoles;

-- Query 3: The higher-budget roles (over £1000)
SELECT RoleName, BudgetPerUnit FROM EmployeeRoles WHERE BudgetPerUnit > 1000;

-- Query 4: Roles by team size, largest first
SELECT RoleName, StaffCount FROM EmployeeRoles ORDER BY StaffCount DESC;

-- Query 5: Every item in my build (build 3)
SELECT * FROM BuildItems WHERE BuildID = 3;

-- Query 6: Count the items in my build
SELECT COUNT(*) AS ItemCount FROM BuildItems WHERE BuildID = 3;

-- Query 7: Total cost of my build
SELECT SUM(Cost) AS TotalCost FROM BuildItems WHERE BuildID = 3;

-- Query 8: Cost of every build, most expensive first
SELECT BuildID, SUM(Cost) AS TotalCost FROM BuildItems GROUP BY BuildID ORDER BY TotalCost DESC;

-- Query 9: Which role is each build for?
SELECT b.BuildName, r.RoleName
FROM WorkstationBuilds b
JOIN EmployeeRoles r ON b.RoleID = r.RoleID;

-- Query 10: Items with their build and role
SELECT i.ItemName, b.BuildName, r.RoleName
FROM BuildItems i
JOIN WorkstationBuilds b ON i.BuildID = b.BuildID
JOIN EmployeeRoles r ON b.RoleID = r.RoleID;

-- Query 11: Spend per role
SELECT r.RoleName, SUM(i.Cost) AS TotalSpend
FROM BuildItems i
JOIN WorkstationBuilds b ON i.BuildID = b.BuildID
JOIN EmployeeRoles r ON b.RoleID = r.RoleID
GROUP BY r.RoleName;

-- Role totals vs budget
SELECT r.RoleName,
       r.StaffCount,
       SUM(i.Cost) AS CostPerPC,
       SUM(i.Cost) * r.StaffCount AS RoleTotal,
       r.BudgetPerUnit * r.StaffCount AS RoleBudget
FROM BuildItems i
JOIN WorkstationBuilds b ON i.BuildID = b.BuildID
JOIN EmployeeRoles r ON b.RoleID = r.RoleID
GROUP BY r.RoleID, r.RoleName, r.StaffCount, r.BudgetPerUnit;

-- Check the other tables
SELECT * FROM WorkstationBuilds;
SELECT * FROM Recommendations;
