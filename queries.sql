-- ============================================================
-- LAPD Crime Data, SQL Practice Queries
-- Table: Crime_Data_from_2020_to_2024
-- ============================================================

-- 1. Basic Retrevial
SELECT "DATE OCC", "AREA NAME", "Crm Cd Desc"
FROM Crime_Data_from_2020_to_2024
LIMIT 10;

-- 2. Filtering Rows
SELECT "DATE OCC", "AREA NAME", "Crm Cd Desc"
FROM Crime_Data_from_2020_to_2024
WHERE "AREA NAME" = 'Central'
LIMIT 10;

-- 3. Sorting Results
SELECT "DATE OCC", "AREA NAME", "Crm Cd Desc"
FROM Crime_Data_from_2020_to_2024
WHERE "AREA NAME" = 'Central'
ORDER BY "DATE OCC" DESC
LIMIT 10;

-- 4. Aggregate Functions
SELECT COUNT(*) AS total_crimes
FROM Crime_Data_from_2020_to_2024
WHERE "AREA NAME" = 'Central';

SELECT AVG("Vict Age") AS avg_victim_age
FROM Crime_Data_from_2020_to_2024
WHERE "Vict Age" > 0;

-- 5. Crimes per Area
SELECT "AREA NAME", COUNT(*) AS total_crimes
FROM Crime_Data_from_2020_to_2024
GROUP BY "AREA NAME"
ORDER BY total_crimes DESC;

-- 6. Unique Crime Type Values
SELECT DISTINCT "Crm Cd Desc"
FROM Crime_Data_from_2020_to_2024;

-- 7. Data Quality Check, Month Coverage per Year
SELECT substr("DATE OCC", 7, 4) AS crime_year, 
       MIN(substr("DATE OCC", 1, 2)) AS earliest_month,
       MAX(substr("DATE OCC", 1, 2)) AS latest_month
FROM Crime_Data_from_2020_to_2024
GROUP BY crime_year;

-- 8. Crime Types Occurring More than 10,000 Times Total
SELECT "Crm Cd Desc", COUNT(*) AS crime_count
FROM Crime_Data_from_2020_to_2024
GROUP BY "Crm Cd Desc"
HAVING COUNT(*) > 10000
ORDER BY crime_count DESC;
