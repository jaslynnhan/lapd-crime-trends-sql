-- ============================================================
-- LAPD Crime Data — SQL Practice Queries
-- Table: Crime_Data_from_2020_to_2024
-- ============================================================

-- 1. SELECT / FROM / LIMIT — basic retrieval
SELECT "DATE OCC", "AREA NAME", "Crm Cd Desc"
FROM Crime_Data_from_2020_to_2024
LIMIT 10;


-- 2. WHERE — filtering rows
SELECT "DATE OCC", "AREA NAME", "Crm Cd Desc"
FROM Crime_Data_from_2020_to_2024
WHERE "AREA NAME" = 'Central'
LIMIT 10;


-- 3. ORDER BY — sorting results
SELECT "DATE OCC", "AREA NAME", "Crm Cd Desc"
FROM Crime_Data_from_2020_to_2024
WHERE "AREA NAME" = 'Central'
ORDER BY "DATE OCC" DESC
LIMIT 10;


-- 4. Aggregate functions — COUNT, AVG
SELECT COUNT(*) AS total_crimes
FROM Crime_Data_from_2020_to_2024
WHERE "AREA NAME" = 'Central';

SELECT AVG("Vict Age") AS avg_victim_age
FROM Crime_Data_from_2020_to_2024
WHERE "Vict Age" > 0;


-- 5. GROUP BY — crimes per area
SELECT "AREA NAME", COUNT(*) AS total_crimes
FROM Crime_Data_from_2020_to_2024
GROUP BY "AREA NAME"
ORDER BY total_crimes DESC;


-- 6. DISTINCT — unique crime type values
SELECT DISTINCT "Crm Cd Desc"
FROM Crime_Data_from_2020_to_2024;


-- 7. Data quality check — month coverage per year
-- (Used to confirm 2020-2023 are complete years, and identify that 
--  2024 has a reporting-lag issue in later months)
SELECT substr("DATE OCC", 7, 4) AS crime_year, 
       MIN(substr("DATE OCC", 1, 2)) AS earliest_month,
       MAX(substr("DATE OCC", 1, 2)) AS latest_month
FROM Crime_Data_from_2020_to_2024
GROUP BY crime_year;


-- 8. HAVING — filtering after grouping
-- Crime types occurring more than 10,000 times total
SELECT "Crm Cd Desc", COUNT(*) AS crime_count
FROM Crime_Data_from_2020_to_2024
GROUP BY "Crm Cd Desc"
HAVING COUNT(*) > 10000
ORDER BY crime_count DESC;
