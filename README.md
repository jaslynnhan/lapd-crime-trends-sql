# LAPD Crime Data - SQL 

## Overview
A self project analyzing LAPD crime data (2020-2024, ~1M records) to practice SQL fundamentals. I utilized SQLite (DB Browser for SQLite) to query a public dataset. Currently I am a completing the Coursera Google Data Analytics Professional Certificate, and will return to improve this upon completetion. 

## Goal
Explore crime patterns across LA's areas and crime types using SQL. This is not a polished dashboard, but a practice of SQL applied to a real dataset.

## Tools
- DB Browser for SQLite
- Dataset: LAPD Crime Data 2020-2024 (public, LA open data)

## Key Queries & Findings

**1. Vehicle theft is the single largest crime category citywide**
"VEHICLE - STOLEN" makes up about 11.5% of all reported crimes from 2020 to 2024. That's more than any other category, and about 1.5x the volume of the next biggest type, Battery - Simple Assault. Found this using GROUP BY and ORDER BY across roughly 1M records.

**2. 20 crime types account for the bulk of reported crime**
Using GROUP BY with HAVING, I isolated the crime categories that show up more than 10,000 times in the dataset. Only 20 out of 100+ distinct types met that bar, which shows crime volume is concentrated in a fairly small set of recurring categories.

**3. Central is the single highest-volume area citywide**
Central logged more reported crimes than any other LAPD area from 2020 to 2024, ahead of 77th Street and Pacific. Good starting point if you're looking at area-level resourcing.

**4. Data quality catch: 2024 excluded from year-over-year analysis**
Monthly record counts look complete and even across 2020 to 2023, but 2024 drops off sharply toward the end of the year (January had about 4x the records of December). That's a reporting lag, not an actual drop in crime, so I left 2024 out of any trend comparisons.

## Files
- `queries.sql` — all queries used in this project, commented
