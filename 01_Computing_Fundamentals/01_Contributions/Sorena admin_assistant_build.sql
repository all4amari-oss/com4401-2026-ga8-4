-- Mini Project 1 · Northwest Architecture Studio · Team 4: The Avengers
-- Administrative Assistant workstation, built by Sorena
-- Figures from Sorena's BuildCores build and the brief's budget

CREATE TABLE admin_assistant_build (
    build_id       INT           PRIMARY KEY,
    role_name      VARCHAR(40)   NOT NULL,
    built_by       VARCHAR(20)   NOT NULL,
    cpu            VARCHAR(40)   NOT NULL,
    graphics       VARCHAR(40)   NOT NULL,
    ram            VARCHAR(30)   NOT NULL,
    storage        VARCHAR(30)   NOT NULL,
    monitors       VARCHAR(40)   NOT NULL,
    extras         VARCHAR(120)  NOT NULL,
    pcs_needed     INT           NOT NULL,
    cost_per_pc    DECIMAL(8,2)  NOT NULL,
    budget_per_pc  DECIMAL(8,2)  NOT NULL,
    -- worked out by MySQL from the columns above
    left_per_pc    DECIMAL(8,2)  AS (budget_per_pc - cost_per_pc) STORED,
    role_total     DECIMAL(9,2)  AS (cost_per_pc * pcs_needed) STORED,
    role_budget    DECIMAL(9,2)  AS (budget_per_pc * pcs_needed) STORED,
    budget_status  VARCHAR(15)   AS (CASE
                                       WHEN cost_per_pc < budget_per_pc THEN 'Under budget'
                                       WHEN cost_per_pc = budget_per_pc THEN 'On budget'
                                       ELSE 'Over budget'
                                     END) STORED
);

INSERT INTO admin_assistant_build
    (build_id, role_name, built_by, cpu, graphics, ram, storage, monitors,
     extras, pcs_needed, cost_per_pc, budget_per_pc)
VALUES
    (1, 'Administrative Assistant', 'Sorena', 'AMD Ryzen 5 8500G',
     'Built into the CPU', '16GB DDR5-5600', '500GB NVMe SSD',
     '1 x Dell 24in S2425H',
     'Case, power supply, keyboard, mouse, webcam, headset, Cat6 network cable',
     3, 808.81, 950.00);

-- 1. Key specifications (b is a short name for the table)
WITH b AS (SELECT * FROM admin_assistant_build)
SELECT 'Role' AS Item, role_name AS Specification FROM b
UNION ALL SELECT 'Built by',      built_by FROM b
UNION ALL SELECT 'CPU',           cpu      FROM b
UNION ALL SELECT 'Graphics',      graphics FROM b
UNION ALL SELECT 'RAM',           ram      FROM b
UNION ALL SELECT 'Storage',       storage  FROM b
UNION ALL SELECT 'Monitor(s)',    monitors FROM b
UNION ALL SELECT 'Also included', extras   FROM b;

-- 2. Budget check
WITH b AS (SELECT * FROM admin_assistant_build)
SELECT 'PCs needed' AS Item, CAST(pcs_needed AS CHAR(20)) AS Amount FROM b
UNION ALL SELECT 'Cost per PC',   CONCAT('£', FORMAT(cost_per_pc, 2))   FROM b
UNION ALL SELECT 'Budget per PC', CONCAT('£', FORMAT(budget_per_pc, 2)) FROM b
UNION ALL SELECT 'Left per PC',   CONCAT('£', FORMAT(left_per_pc, 2))   FROM b
UNION ALL SELECT 'Role total',    CONCAT('£', FORMAT(role_total, 2))    FROM b
UNION ALL SELECT 'Role budget',   CONCAT('£', FORMAT(role_budget, 2))   FROM b
UNION ALL SELECT 'Status',        budget_status                         FROM b;
