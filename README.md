# Netflix Data Exploration Using SQL

## Project Overview
This project explores the Netflix Movies and TV Shows dataset using SQL to uncover meaningful insights about content distribution, trends, and global representation.  
The goal is to identify patterns such as the most represented countries, popular genres, active directors, and yearly content trends.

## Tools & Technologies
- SQL (PostgreSQL) – for querying and analysis  
- Kaggle – dataset source  
- pgAdmin / DBeaver – for managing and executing SQL queries  

## Dataset Source
**Dataset:** [Netflix Movies and TV Shows on Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)

The dataset includes:
- show_id  
- title  
- type (Movie/TV Show)  
- director  
- cast  
- country  
- date_added  
- release_year  
- rating  
- duration  
- listed_in (genres/categories)  
- description  

## Key SQL Explorations and Insights

### 1. Number of Shows by Type
**Goal:** Identify how many Movies and TV Shows exist on Netflix.  
**Insight:** Movies dominate the catalog with 6,131 Movies vs 2,676 TV Shows.

### 2. Shows Added by Year
**Goal:** Track how Netflix’s content library has grown over time.  
**Insight:** Content releases peaked in 2018, showing Netflix’s rapid global expansion after 2015.

### 3. Unique Countries Represented
**Goal:** Extract all unique countries where Netflix content was produced.  
**Insight:** Over 120 countries are represented, with the United States, India, and the United Kingdom leading.

### 4. Most Frequent Categories
**Goal:** Find which categories/genres dominate.  
**Insight:** Drama and International Movies appear most frequently.

### 5. Content Distribution by Rating
**Goal:** Analyze ratings such as TV-MA, PG-13, etc.  
**Insight:** TV-MA dominates, indicating a strong focus on mature content.

### 6. Recently Added Titles
**Goal:** Identify the latest titles added to Netflix.  
**Insight:** The most recent additions were on 24–25 September 2021.

### 7. Titles Containing “Love” or “War”
**Goal:** Filter titles based on keywords.  
**Insight:** 278 titles contain “Love” or “War,” showing common emotional and dramatic themes.

## Summary of Findings
- Movies dominate Netflix’s catalog.  
- The United States, India, and the United Kingdom are the top content producers.  
- Content releases surged after 2015, peaking in 2018.  
- TV-MA is the most common rating.  
- Drama and International Movies are the leading categories.

## What I Learned
- Efficiently cleaning and extracting data using string and date functions in SQL.  
- Handling multi-country fields using `string_to_array`, `unnest`, and `DISTINCT`.  
- Aggregating categorical data with `GROUP BY` and `COUNT`.  
- Using SQL as a storytelling tool for data-driven insights.



## Future Improvements
- Visualize key insights using Power BI or Tableau.  
- Automate analysis using Python (pandas + SQLAlchemy).  
- Build an interactive dashboard to show Netflix trends dynamically.

## Author
**Muhammad Abdus-Salam**  
Email Copywriter & Data Enthusiast  
[LinkedIn Profile]([https://www.linkedin.com/in/muhammad-abdus-salam/](https://www.linkedin.com/in/muhammad-abdus-salam-7b8511223/))
