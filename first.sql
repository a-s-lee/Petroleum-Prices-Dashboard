-- ==========================================================
-- Helpers: same date parsing pattern used everywhere below
-- (left inline per INSERT so it stays self-contained)
-- ==========================================================

/* ----------------------------------------------------------
   ALL GRADES — ALL AREAS, ALL FORMULATIONS
---------------------------------------------------------- */
DROP TABLE IF EXISTS allgrades_allareas_allformulations_2024;

CREATE TABLE allgrades_allareas_allformulations_2024 (
  Date TEXT,
  "Weekly U.S. All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO allgrades_allareas_allformulations_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)"
FROM "All Grades, Areas and Formulations-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;

/* ----------------------------------------------------------
   ALL GRADES CONVENTIONAL
---------------------------------------------------------- */
DROP TABLE IF EXISTS allgrades_conventional_2024;

CREATE TABLE allgrades_conventional_2024 (
  Date TEXT,
  "Weekly U.S. All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO allgrades_conventional_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)"
FROM "All Grades Conventional-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;

/* ----------------------------------------------------------
   ALL GRADES REFORMULATED
---------------------------------------------------------- */
DROP TABLE IF EXISTS allgrades_reformulated_2024;

CREATE TABLE allgrades_reformulated_2024 (
  Date TEXT,
  "Weekly U.S. All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO allgrades_reformulated_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)"
FROM "All Grades Reformulated-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;

/* ----------------------------------------------------------
   MIDGRADE — ALL FORMULATIONS
---------------------------------------------------------- */
DROP TABLE IF EXISTS midgrade_allformulations_2024;

CREATE TABLE midgrade_allformulations_2024 (
  Date TEXT,
  "Weekly U.S. Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO midgrade_allformulations_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)"
FROM "Midgrade All Areas All Formulations-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;


/* ----------------------------------------------------------
   MIDGRADE — CONVENTIONAL
---------------------------------------------------------- */
DROP TABLE IF EXISTS midgrade_conventional_2024;

CREATE TABLE midgrade_conventional_2024 (
  Date TEXT,
  "Weekly U.S. Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO midgrade_conventional_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)"
FROM "Midgrade Conventional-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;

/* ----------------------------------------------------------
   MIDGRADE — REFORMULATED
---------------------------------------------------------- */
DROP TABLE IF EXISTS midgrade_reformulated_2024;

CREATE TABLE midgrade_reformulated_2024 (
  Date TEXT,
  "Weekly U.S. Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO midgrade_reformulated_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  CAST("Weekly Rocky Mountain Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)" AS REAL),
  CAST("Weekly West Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)" AS REAL)
FROM "Midgrade Reformulated-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;

/* ----------------------------------------------------------
   PREMIUM — ALL FORMULATIONS
---------------------------------------------------------- */
DROP TABLE IF EXISTS premium_allformulations_2024;

CREATE TABLE premium_allformulations_2024 (
  Date TEXT,
  "Weekly U.S. Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO premium_allformulations_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)"
FROM "Premium All Areas All Formulations-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;


/* ----------------------------------------------------------
   PREMIUM — CONVENTIONAL
---------------------------------------------------------- */
DROP TABLE IF EXISTS premium_conventional_2024;

CREATE TABLE premium_conventional_2024 (
  Date TEXT,
  "Weekly U.S. Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO premium_conventional_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)"
FROM "Premium Conventional-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;


/* ----------------------------------------------------------
   PREMIUM — REFORMULATED
---------------------------------------------------------- */
DROP TABLE IF EXISTS premium_reformulated_2024;

CREATE TABLE premium_reformulated_2024 (
  Date TEXT,
  "Weekly U.S. Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO premium_reformulated_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)"
FROM "Premium Reformulated-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;


/* ----------------------------------------------------------
   REGULAR — ALL FORMULATIONS
---------------------------------------------------------- */
DROP TABLE IF EXISTS regular_allformulations_2024;

CREATE TABLE regular_allformulations_2024 (
  Date TEXT,
  "Weekly U.S. Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO regular_allformulations_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)"
FROM "Regular All Areas All Formulations-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;

/* ----------------------------------------------------------
   REGULAR — CONVENTIONAL
---------------------------------------------------------- */
DROP TABLE IF EXISTS regular_conventional_2024;

CREATE TABLE regular_conventional_2024 (
  Date TEXT,
  "Weekly U.S. Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO regular_conventional_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)"
FROM "Regular Conventional-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;

/* ----------------------------------------------------------
   REGULAR — REFORMULATED
---------------------------------------------------------- */
DROP TABLE IF EXISTS regular_reformulated_2024;

CREATE TABLE regular_reformulated_2024 (
  Date TEXT,
  "Weekly U.S. Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly East Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Midwest Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Gulf Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly Rocky Mountain Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL,
  "Weekly West Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)" REAL
);

INSERT INTO regular_reformulated_2024
SELECT
  date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) AS Date,
  "Weekly U.S. Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly East Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Midwest Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Gulf Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly Rocky Mountain Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
  "Weekly West Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)"
FROM "Regular Reformulated-clean"
WHERE substr("Date", -4) = '2024'
  AND date(
    substr("Date", -4) || '-' ||
    (CASE substr("Date", 1, 3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
     END) || '-' || ltrim(substr("Date", 5, 2))
  ) BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY Date;



/* ----------------------------------------------------------
   UNIFIED TABLE (includes your two existing tables too)
   Assumes these tables already exist:
     - regular_conventional_2024
     - allgrades_conventional_2024
---------------------------------------------------------- */
DROP TABLE IF EXISTS unified_gasoline;

CREATE TABLE unified_gasoline AS
-- Regular Conventional 
SELECT 
    Date,
    "Weekly U.S. Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" AS US,
    "Weekly East Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" AS East_Coast,
    "Weekly Midwest Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" AS Midwest,
    "Weekly Gulf Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" AS Gulf_Coast,
    "Weekly Rocky Mountain Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" AS Rocky_Mountain,
    "Weekly West Coast Regular Conventional Retail Gasoline Prices  (Dollars per Gallon)" AS West_Coast,
    'Regular Conventional' AS Dataset
FROM regular_conventional_2024

UNION ALL
-- All Grades Conventional (existing)
SELECT 
    Date,
    "Weekly U.S. All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast All Grades Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    'All Grades Conventional'
FROM allgrades_conventional_2024

UNION ALL
-- All Grades Reformulated 
SELECT 
    Date,
    "Weekly U.S. All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast All Grades Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    'All Grades Reformulated'
FROM allgrades_reformulated_2024

UNION ALL
-- All Grades All Formulations
SELECT 
    Date,
    "Weekly U.S. All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast All Grades All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    'All Grades All Formulations'
FROM allgrades_allareas_allformulations_2024

UNION ALL
-- Midgrade All Formulations
SELECT 
    Date,
    "Weekly U.S. Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast Midgrade All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    'Midgrade All Formulations'
FROM midgrade_allformulations_2024

UNION ALL
-- Midgrade Conventional
SELECT 
    Date,
    "Weekly U.S. Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast Midgrade Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    'Midgrade Conventional'
FROM midgrade_conventional_2024

UNION ALL
-- Midgrade Reformulated
SELECT 
    Date,
    "Weekly U.S. Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast Midgrade Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    'Midgrade Reformulated'
FROM midgrade_reformulated_2024

UNION ALL
-- Premium All Formulations
SELECT 
    Date,
    "Weekly U.S. Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast Premium All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    'Premium All Formulations'
FROM premium_allformulations_2024

UNION ALL
-- Premium Conventional
SELECT 
    Date,
    "Weekly U.S. Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast Premium Conventional Retail Gasoline Prices  (Dollars per Gallon)",
    'Premium Conventional'
FROM premium_conventional_2024

UNION ALL
-- Premium Reformulated
SELECT 
    Date,
    "Weekly U.S. Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast Premium Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    'Premium Reformulated'
FROM premium_reformulated_2024

UNION ALL
-- Regular All Formulations
SELECT 
    Date,
    "Weekly U.S. Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast Regular All Formulations Retail Gasoline Prices  (Dollars per Gallon)",
    'Regular All Formulations'
FROM regular_allformulations_2024

UNION ALL
-- Regular Reformulated
SELECT 
    Date,
    "Weekly U.S. Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly East Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Midwest Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Gulf Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly Rocky Mountain Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    "Weekly West Coast Regular Reformulated Retail Gasoline Prices  (Dollars per Gallon)",
    'Regular Reformulated'
FROM regular_reformulated_2024
ORDER BY Date, Dataset;
