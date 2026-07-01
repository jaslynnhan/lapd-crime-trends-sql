# lapd-crime-trends-sql
SQL Analysis of LAPD crime data (2020 - 2023) identifying area-level trends and improvement drivers

# LAPD Crime Data — SQL Practice Project

## Overview
A self project analyzing LAPD crime data (2020-2024, ~1M records) to practice 
SQL fundamentals: filtering, sorting, aggregation, and grouping. Built while completing 
the Google Data Analytics Professional Certificate, using SQLite (DB Browser for SQLite) 
to query a public dataset.

## Goal
Explore crime patterns across LA's policing areas and crime types using core SQL. This is not a polished dashboard, but a demonstration of hands-on query-writing applied to a 
real, large dataset.

## Tools
- DB Browser for SQLite
- Dataset: LAPD Crime Data 2020-2024 (public, LA open data)

## Key Queries & Findings

**1. Crimes by area**
Grouped total crime counts by LAPD area to identify the highest and lowest volume areas.

**2. Most common crime types**
Used `GROUP BY` + `HAVING` to isolate crime types occurring more than 10,000 times 
across the dataset, surfacing the handful of categories that make up the bulk of 
reported crime.

**3. Data quality check**
Checked month-by-month record counts for each year and found that while 2020-2023 
each have consistent, evenly distributed counts across all 12 months, 2024 shows a 
steep decline in record counts in the later months (ex: January had roughly 4x more 
records than December).
This points to reporting lag with crimes that occurred late in 
2024. It is likely that they were not entered into the system at the time this dataset was exported, rather than a genuine drop in crime. As a result, 2024 was excluded from any year to year comparisons in this analysis, since it isn't a complete, comparable year. 

## What I'm still building
Actively expanding into JOINs, subqueries, and more advanced aggregation as part of 
ongoing SQL practice through the Google Data Analytics Certificate.

## Files
- `queries.sql` — all queries used in this project, commented
