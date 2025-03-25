# 💼 Job Market Analytics Using Web Scraping & Data Engineering
This project is a complete end-to-end data pipeline and visualization project that analyzes job market trends in the U.S. using data collected from the Adzuna API. It involves data extraction, transformation, loading into PostgreSQL, and creating an insightful Power BI dashboard to help job seekers and researchers understand:

- Which roles are in demand

- Which states are hiring the most

- Salary insights and trends

## 🔧 Technologies Used
Python (requests, pandas)
Adzuna API (job data collection)
PostgreSQL with pgAdmin 4 (SQL analysis)
Power BI (interactive visualizations)
Excel / Power Query (data transformation support)

## 📈 Project Workflow
1. 🔍 Data Extraction via Web Scraping
Used the Adzuna API to extract 10,000+ job postings for roles like: Software Engineer, Data Analyst, Business Analyst, Cybersecurity Engineer, and more.

Collected details such as: job title, company, location, salary, and description.

Stored the raw job listings in a CSV file.

2. 🧹 Data Cleaning & Transformation
Cleaned the dataset using Python and pandas:

Removed duplicate and null entries.

Extracted numeric min, max, and average salaries from string salary data.

Standardized inconsistent location strings.

3. 🧠 Handling Location Data Challenges
One of the biggest challenges was mapping vague or inconsistent location data.

Many job listings only had county names, e.g., Dallas, Rockwall County, or vague strings like US.

To solve this:

Downloaded an official U.S. County to State mapping file.

Used Power Query in Power BI to merge job data with state info based on county names.

Dealt with partial matches and cleaned unmapped entries manually.

4. 🗃️ Data Loading into PostgreSQL
Loaded the cleaned data into a PostgreSQL database using pgAdmin4.

Ran multiple SQL queries to explore:

Average salary by role

Number of openings per role

Which states hire which roles the most

5. 📊 Power BI Dashboard
Created a fully interactive Power BI dashboard that includes:

Bar Chart: Average salary for each role

Map: Top states hiring for the selected role (using dynamic slicers)

Column Chart: Number of job openings by role

Slicers: Role and location-based filtering

Additional data quality and summary insights

📁 Files Included
File	Description
adzuna_job_listings.xlsx	Raw job listing data extracted from the API
job_analysis_adzuna.ipynb	Python notebook for data cleaning and transformation
job_analytics_dashboard.pbix	Final Power BI dashboard
queries.sql	SQL queries for PostgreSQL exploration
states.csv & national_county.txt	County-to-state mapping files
Questions and queries.docx	Project questions and thought process
🧠 Key Learnings
Real-world data often contains inconsistencies that require external reference data.

Data enrichment (like mapping counties to states) is crucial for meaningful geographic insights.

Combining ETL, SQL, and visual storytelling provides powerful insights for job seekers.

📌 Next Steps
Automate regular job data updates via scheduled API calls.

Integrate skill keywords from job descriptions for deeper insights.

Extend to other countries supported by Adzuna.

