# LAPD Crime Data — SQL Practice Project

## Overview
A self project analyzing LAPD crime data (2020-2024, ~1M records) to practice SQL fundamentals. Built with SQLite (DB Browser for SQLite) to query a public dataset. Currently I am a completing the Coursera Google Data Analytics Professional Certificate, and will return to improve this upon completetion. 

## Goal
Explore crime patterns across LA's areas and crime types using SQL. This is not a polished dashboard, but a practice of SQL applied to a 
real dataset.

## Tools
- DB Browser for SQLite
- Dataset: LAPD Crime Data 2020-2024 (public, LA open data)

## Key Queries & Findings

**1. Vehicle theft is the single largest crime category citywide**
"VEHICLE - STOLEN" accounts for ~11.5% of all reported crimes (2020-2024) — more than 
any other category, and 1.5x the volume of the next-largest type (Battery - Simple 
Assault). Found using GROUP BY + ORDER BY across ~1M records.

**2. 20 crime types account for the bulk of reported crime**
Using GROUP BY + HAVING, isolated the crime categories occurring more than 10,000 times 
across the dataset — just 20 categories out of 100+ distinct types, showing crime volume 
is concentrated in a relatively small set of recurring categories.

**3. Central is the single highest-volume area citywide**
Central logged the most reported crimes of any LAPD area (2020-2024), ahead of 77th 
Street and Pacific — a useful entry point for area-level resourcing questions.

**4. Data quality catch: 2024 excluded from year-over-year analysis**
Month-by-month record counts show 2020-2023 are complete, evenly distributed years, 
but 2024 shows a steep drop in later months (January had ~4x more records than 
December) — a reporting-lag artifact, not an actual crime decline. Excluded 2024 
from any trend comparisons as a result.

## What I'm still building
Actively expanding into JOINs, subqueries, and more advanced aggregation as part of 
ongoing SQL practice through the Google Data Analytics Certificate.

## Files
- `queries.sql` — all queries used in this project, commented
