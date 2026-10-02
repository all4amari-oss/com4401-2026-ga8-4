-- ============================================
-- Mini Project 1: Northwest Architecture Studio
-- Team: The Avengers
-- Follows the ER diagram on page 7 of the brief (Design: E-R Diagram)
-- Budgets from the brief (page 3, Organisation & Budget)
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

-- ============================================
-- Added by Nah: Administrative Assistant build (Sorena) - ItemIDs 101+
-- ============================================
INSERT INTO BuildItems
  (ItemID, BuildID, HardwareCategory, ItemName, Specification, Cost)
VALUES
  (101, 1, 'Case/Cooling', 'Montech X5M', 'Micro ATX mini tower, tempered glass side panel', 24.98),
  (102, 1, 'CPU', 'AMD Ryzen 5 8500G', '6 cores, built-in graphics and cooler', 129.99);
INSERT INTO BuildItems VALUES (103, 1, 'Motherboard', 'Gigabyte A620 S2H DDR5 Micro ATX', 'Micro ATX, DDR5, HDMI and wired ethernet built in', 77.90);
INSERT INTO BuildItems VALUES (104, 1, 'RAM', 'Kingston FURY Beast 16GB (2X8GB)', '16GB (2X8GB) DDR5-5600 CL40', 239.99);
INSERT INTO BuildItems VALUES (105, 1, 'Storage', 'PNY CS2230 500GB', '500GB M.2-2280 PCIe 3.0 x4 NVMe SSD', 81.92);
INSERT INTO BuildItems VALUES (106, 1, 'PSU', 'Corsair CX 550W (2023)', '550W, 80+ Bronze, non-modular', 49);
INSERT INTO BuildItems VALUES (107, 1, 'Monitor', 'Dell 24 Monitor S2425H', '24-inch business monitor, HDMI', 129.99);
INSERT INTO BuildItems VALUES (108, 1, 'Keyboard', 'Logitech K120', 'UK layout, wired USB', 10.99);
INSERT INTO BuildItems VALUES (109, 1, 'Mouse', 'HP QY777AA Optical Wired Mouse', 'Wired optical mouse', 21.60);
INSERT INTO BuildItems VALUES (110, 1, 'Webcam/Headset', 'Logitech C270 Webcam', '720p USB webcam', 16.99);
INSERT INTO BuildItems VALUES (111, 1, 'Webcam/Headset', 'Razer Kraken 7.1 Channel Closed Headset', 'Closed-back wired headset with microphone', 21.98);
INSERT INTO BuildItems VALUES (112, 1, 'Network/Cables/Adapters', 'Nixsto Cat6 Ethernet Cable', 'Cat6 ethernet patch cable, 2m, RJ45', 3.48);

-- ============================================
-- Added by Nah: 3D Visualisation build (Charlie) - ItemIDs 401+
-- ============================================
INSERT INTO BuildItems VALUES (401, 4, 'Case/Cooling', 'Corsair 3200D RS ARGB Black', 'Case with strong airflow and room for high-performance parts', 69.95);
INSERT INTO BuildItems VALUES (402, 4, 'CPU', 'AMD Ryzen 9 9950X', '16 cores, 32 threads', 433.99);
INSERT INTO BuildItems VALUES (403, 4, 'Motherboard', 'MSI B850 GAMING PLUS WIFI', 'AM5, DDR5, ATX, wired and wireless networking', 144.98);
INSERT INTO BuildItems VALUES (404, 4, 'GPU', 'GIGABYTE GeForce RTX 5070 Ti WINDFORCE OC SFF', '16GB GDDR7', 1116.99);
INSERT INTO BuildItems VALUES (405, 4, 'RAM', 'Silicon Power Zenith 64GB (2x32GB)', '64GB (2x32GB) DDR5-6000 CL30', 926.99);
INSERT INTO BuildItems VALUES (406, 4, 'Case/Cooling', 'ARCTIC Liquid Freezer III 280 A-RGB', '280mm liquid CPU cooler', 82.19);
INSERT INTO BuildItems VALUES (407, 4, 'Storage', 'WD_BLACK SN7100 2TB', '2TB M.2-2280 PCIe 4.0 x4 NVMe SSD', 229.99);
INSERT INTO BuildItems VALUES (408, 4, 'PSU', 'Corsair RM1000e (2025)', '1000W, ATX, fully modular', 149.90);
INSERT INTO BuildItems VALUES (409, 4, 'Monitor', 'AOC U27B3A', '27-inch 4K (3840x2160) 60Hz IPS', 138.97);
INSERT INTO BuildItems VALUES (410, 4, 'Keyboard', 'Logitech MK270 Wireless Combo', 'Wireless keyboard and mouse combo', 22.49);
INSERT INTO BuildItems VALUES (411, 4, 'Webcam/Headset', 'HyperX Cloud III', 'Over-ear headset with noise-cancelling microphone', 64.99);
INSERT INTO BuildItems VALUES (412, 4, 'Webcam/Headset', 'Logitech C920e Webcam', '1080p webcam with microphone', 56.99);
INSERT INTO BuildItems VALUES (413, 4, 'Network/Cables/Adapters', 'RS PRO Cat6 Ethernet Cable', 'Cat6 ethernet cable, 2m', 6.79);

-- ============================================
-- Added by Nah: Project Manager build (taken over from Mo) - ItemIDs 201+
-- ============================================
INSERT INTO BuildItems VALUES (201, 2, 'Case/Cooling', 'Montech X5M Micro ATX Mini Tower Black', 'Micro ATX mini tower, tempered glass side panel', 41.10);
INSERT INTO BuildItems VALUES (202, 2, 'CPU', 'AMD Ryzen 5 8600G', '6 cores, AM5, built-in graphics and cooler', 149.99);
INSERT INTO BuildItems VALUES (203, 2, 'Motherboard', 'GIGABYTE EAGLE B850M WIFI6E AM5 DDR5 Micro ATX', 'AM5, DDR5, Micro ATX, 1 HDMI + 2 DisplayPort, wired ethernet', 142.99);
INSERT INTO BuildItems VALUES (204, 2, 'RAM', 'CORSAIR Vengeance 32GB (2x16GB) DDR5 6000 CL30', '32GB (2x16GB) DDR5-6000 CL30', 449.99);
INSERT INTO BuildItems VALUES (205, 2, 'Storage', 'ADATA LEGEND 860 1TB', '1TB M.2 PCIe 4.0 NVMe SSD', 139.99);
INSERT INTO BuildItems VALUES (206, 2, 'PSU', 'MSI MAG A650GL 650W', '650W, 80+ Gold, fully modular', 70.99);
INSERT INTO BuildItems VALUES (207, 2, 'Monitor', 'ViewSonic VX2418C 24in', '24-inch 1080p VA curved, HDMI + DisplayPort', 116.92);
INSERT INTO BuildItems VALUES (208, 2, 'Monitor', 'ViewSonic VX2418C 24in', 'Second identical screen for dual-monitor setup', 116.92);
INSERT INTO BuildItems VALUES (209, 2, 'Keyboard', 'Logitech K120', 'UK layout, wired USB, full-size with number pad', 10.02);
INSERT INTO BuildItems VALUES (210, 2, 'Mouse', 'Logitech M190', 'Wireless optical mouse, full-size', 11.99);
INSERT INTO BuildItems VALUES (211, 2, 'Webcam/Headset', 'Logitech C270 Webcam', '720p USB webcam', 18.01);
INSERT INTO BuildItems VALUES (212, 2, 'Webcam/Headset', 'Razer Kraken 7.1 Channel Closed Headset', 'Closed-back wired headset with microphone', 21.69);
INSERT INTO BuildItems VALUES (213, 2, 'Network/Cables/Adapters', 'CSL 2m CAT6 Ethernet Cable', 'Cat6 gigabit ethernet patch cable, 2m, RJ45', 5.99);

-- Recommendation for the Project Manager build (Nah)
INSERT INTO Recommendations
  (RecommendationID, RoleID, Justification, Compromise, Approved, EthicalNotes)
VALUES
  (2, 2,
   'A Project Manager works with reports, dashboards and video calls at the same time, so I chose two 24-inch monitors so they can have them open side by side. The Ryzen 5 8600G has built-in graphics, so no graphics card was needed, which saved money for the monitors. It comes to £1,296.59 a machine, £3.41 under the £1,300 budget.',
   'I chose 32GB of RAM because a Project Manager has more to do at once, like dashboards and reports, and needs more memory than a basic office PC. The RAM cost £449.99, about a third of the budget, so I kept the keyboard, mouse and webcam basic and cheap. I went for 1TB storage instead of 2TB, which saved about £100, and 1080p monitors instead of 1440p, which are good enough for reports and calls. The webcam is 720p, which is clear enough for calls. The budget ended up very tight, with only £3.41 left.',
   TRUE,
   'The power supply is 80+ Gold, so it wastes less electricity. I did not buy a graphics card because a Project Manager does not need one, which avoided over-buying and uses less power. Every part comes from known UK shops, with prices checked on 02/10/2026. The motherboard has 4 RAM slots and only 2 are used, so the PC can be upgraded later instead of replaced. The wired ethernet connection is harder to intercept than Wi-Fi, which is safer for sending client files and building plans.');
