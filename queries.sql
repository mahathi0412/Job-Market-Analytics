CREATE TABLE job_data (
    Role TEXT,
    Title TEXT,
    Company TEXT,
    Location TEXT,
    Salary TEXT,
    Description TEXT,
    Salary_Min NUMERIC,
    Salary_Max NUMERIC,
    Average_Salary NUMERIC
);

ALTER TABLE job_data
DROP COLUMN IF EXISTS salary_min,
DROP COLUMN IF EXISTS salary_max,
DROP COLUMN IF EXISTS average_salary;


-- Which job is in demand?
select role, count(*) as total_jobs
from job_data
group by role
order by total_jobs desc;

-- Which county is hiring the most and which role?
select split_part(location, ',',2) as State, role,
count(*) as job_count
from job_data
group by state, role
order by job_count DESC;

-- Summary for a particular role (e.g., Data Analyst)
select title,company,location,count(*) as openings
from job_data
where role ILike 'Data Analyst'
group by title,company,location
order by openings DESC

-- Top hiring companies overall
select company, role, count(*) as job_count
from job_data
group by company, role
order by job_count DESC;

-- Average salary for each role
select role, avg(cast(replace(replace(salary,'$',''),',','') as NUMERIC)) as average_salary
from job_data
group by role
order by average_salary DESC;
