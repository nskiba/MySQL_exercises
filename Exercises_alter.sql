CREATE DATABASE Exercises_alter CHARACTER SET utf8 COLLATE utf8_unicode_ci;
SELECT DATABASE();
USE Exercises_alter;

-- --------------------------------------------------------
-- --------------------------------------------------------

-- MySQL Alter Table statement - Exercises

-- --------------------------------------------------------
-- --------------------------------------------------------

# 1. Write a SQL statement to rename the table countries to country_new.

CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(2) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id DECIMAL(10,0) DEFAULT NULL
);

ALTER TABLE countries RENAME country_new;

-- --------------------------------------------------------

/* 2. Write a SQL statement to add a column region_id to the table locations.

Table locations;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| LOCATION_ID    | decimal(4,0) | YES  |     | NULL    |       |
| STREET_ADDRESS | varchar(40)  | YES  |     | NULL    |       |
| POSTAL_CODE    | varchar(12)  | YES  |     | NULL    |       |
| CITY           | varchar(30)  | YES  |     | NULL    |       |
| STATE_PROVINCE | varchar(25)  | YES  |     | NULL    |       |
| COUNTRY_ID     | varchar(2)   | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+

*/
CREATE TABLE locations (
  location_id DECIMAL(4,0) DEFAULT NULL,
  street_address VARCHAR(40) DEFAULT NULL,
  postal_code VARCHAR(12) DEFAULT NULL,
  city VARCHAR(30) DEFAULT NULL,
  state_province VARCHAR(25) DEFAULT NULL,
  country_id VARCHAR(2) DEFAULT NULL
);

SHOW COLUMNS FROM locations;

ALTER TABLE locations ADD region_id  INT;
SHOW COLUMNS FROM locations;

-- --------------------------------------------------------

# 3. Write a SQL statement to add a columns ID as the first column of the table locations.

ALTER TABLE locations ADD ID  INT FIRST;
SHOW COLUMNS FROM locations;

-- --------------------------------------------------------

# 4. Write a SQL statement to add a column region_id after state_province to the table locations.

SHOW COLUMNS FROM locations;

ALTER TABLE locations ADD region_id INT AFTER state_province;
SHOW COLUMNS FROM locations;

-- --------------------------------------------------------

# 5. Write a SQL statement change the data type of the column country_id to integer in the table locations.

SHOW COLUMNS FROM locations;

ALTER TABLE locations MODIFY country_id INT;
SHOW COLUMNS FROM locations;

-- --------------------------------------------------------

# 6. Write a SQL statement to drop the column city from the table locations.

SHOW COLUMNS FROM locations;

ALTER TABLE locations DROP city;
SHOW COLUMNS FROM locations;

-- --------------------------------------------------------

# 7. Write a SQL statement to change the name of the column state_province to state, keeping the data type and size same.

# For an empty table with no data inserted:

SHOW COLUMNS FROM locations;

ALTER TABLE locations DROP state_province, ADD state varchar(25) AFTER city;

# For a table with any data inserted:

ALTER TABLE locations CHANGE state_province state varchar(25);

SHOW COLUMNS FROM locations;

-- --------------------------------------------------------

# 8. Write a SQL statement to add a primary key for the columns location_id in the locations table.

ALTER TABLE locations ADD PRIMARY KEY(location_id);

-- --------------------------------------------------------

# 9. Write a SQL statement to add a primary key for a combination of columns location_id and country_id.

ALTER TABLE locations ADD PRIMARY KEY(location_id, country_id);

-- --------------------------------------------------------

# 10. Write a SQL statement to drop the existing primary from the table locations on a combination of columns location_id and country_id.

ALTER TABLE locations DROP PRIMARY KEY;

-- --------------------------------------------------------

/* 11. Write a SQL statement to add a foreign key on job_id column of job_history table referencing to the primary key job_id of jobs table.

SHOW COLUMNS FORM jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

SHOW COLUMNS FROM job_history;
+---------------+---------+------+-----+---------+-------+
| Field         | Type    | Null | Key | Default | Extra |
+---------------+---------+------+-----+---------+-------+
| EMPLOYEE_ID   | int(11) | NO   |     | NULL    |       |
| START_DATE    | date    | YES  |     | NULL    |       |
| HIRE_DATE     | date    | YES  |     | NULL    |       |
| JOB_ID        | int(11) | NO   |     | NULL    |       |
| DEPARTMENT_ID | int(11) | NO   |     | NULL    |       |
+---------------+---------+------+-----+---------+-------+

*/

CREATE TABLE jobs (
  job_id INTEGER(11) NOT NULL DEFAULT NULL,
  job_title VARCHAR(35) NOT NULL DEFAULT NULL,
  min_salary DECIMAL(6,0) DEFAULT NULL,
  max_salary DECIMAL(6,0) DEFAULT NULL,
  PRIMARY KEY (job_id)
) ;

CREATE TABLE job_history (
  employee_id INTEGER(11) NOT NULL DEFAULT NULL,
  start_date DATE DEFAULT NULL,
  hire_date DATE DEFAULT NULL,
  job_id INTEGER(11) NOT NULL DEFAULT NULL,
  department_id INTEGER(11) NOT NULL DEFAULT NULL
);

ALTER TABLE job_history ADD FOREIGN KEY(job_id) REFERENCES jobs(job_id);

-- --------------------------------------------------------

# 12. Write a SQL statement to add a foreign key constraint named fk_job_id on job_id column of job_history table referencing to the primary key job_id of jobs table.

ALTER TABLE job_history ADD CONSTRAINT fk_job_id FOREIGN KEY (job_id) REFERENCES jobs(job_id) ON UPDATE RESTRICT ON DELETE CASCADE;

-- --------------------------------------------------------

# 13. Write a SQL statement to drop the existing foreign key fk_job_id from job_history table on job_id column which is referencing to the job_id of jobs table.

ALTER TABLE job_history DROP FOREIGN KEY fk_job_id;

-- --------------------------------------------------------

# 14. Write a SQL statement to add an index named indx_job_id on job_id column in the table job_history.

SHOW INDEXES FROM job_history;

ALTER TABLE job_history ADD INDEX indx_job_id(job_id);
SHOW INDEXES FROM job_history;

-- --------------------------------------------------------

# 15. Write a SQL statement to drop the index indx_job_id from job_history table.

ALTER TABLE job_history DROP INDEX indx_job_id;

-- --------------------------------------------------------