CREATE DATABASE Exercises_insert CHARACTER SET utf8 COLLATE utf8_unicode_ci;
SELECT DATABASE();
USE Exercises_insert;

-- --------------------------------------------------------
-- --------------------------------------------------------

-- MySQL Insert Rows into the Table - Exercises

-- --------------------------------------------------------
-- --------------------------------------------------------

# Creating a table countries

CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(2) DEFAULT NULL,
    country_name VARCHAR(40) DEFAULT NULL,
    region_id DECIMAL(10,0) DEFAULT NULL
);

/* 1. Write a SQL statement to insert a record with your own value into the table countries against each columns.

Here in the following is the structure of the table countries.

+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
| REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+	
*/

INSERT INTO countries VALUES('IN','India',1001);

-- --------------------------------------------------------

/* 2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.

Here in the following is the structure of the table countries.

+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
| REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+	
*/

INSERT INTO countries (country_id,country_name) VALUES('IN','India');

-- --------------------------------------------------------

/* 3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.

Here in the following is the structure of the table countries.

+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
| REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+	
*/

CREATE TABLE IF NOT EXISTS country_new AS SELECT * FROM countries;

-- --------------------------------------------------------

/*4. Write a SQL statement to insert NULL values against region_id column for a row of countries table.*/

INSERT INTO countries (country_id,country_name,region_id) VALUES('IN','India',NULL);

-- --------------------------------------------------------

/*5. Write a SQL statement to insert 3 rows by a single insert statement.*/

INSERT INTO country_new VALUES('IN','India',1001), ('US','USA',1007), ('UK','UK',1003);

-- --------------------------------------------------------

/*6. Write a SQL statement insert rows from country_new table to countries table.

Here is the rows for country_new table. Assume that, the countries table is empty.

+------------+--------------+-----------+
| COUNTRY_ID | COUNTRY_NAME | REGION_ID |
+------------+--------------+-----------+
| IN         | India        |      1001 |
| US         | USA          |      1007 |
| UK         | UK           |      1003 |
+------------+--------------+-----------+
*/

INSERT INTO countries SELECT * FROM country_new;

-- --------------------------------------------------------

/* 7. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.*/

CREATE TABLE IF NOT EXISTS jobs ( 
	job_id INTEGER NOT NULL UNIQUE PRIMARY KEY, 
	job_title VARCHAR(35) NOT NULL, 
	min_salary DECIMAL(6,0)
);

INSERT INTO jobs VALUES(1001,'OFFICER',8000);

SELECT * FROM jobs;

-- --------------------------------------------------------

/* 8. Write a SQL statement to insert a record into the table countries to ensure that, a country_id and region_id 
combination will be entered once in the table.*/

CREATE TABLE IF NOT EXISTS countries ( 
country_id INTEGER NOT NULL,
country_name VARCHAR(40) NOT NULL,
region_id INTEGER NOT NULL,
PRIMARY KEY (country_id, region_id)
);

INSERT INTO countries VALUES(in,'India',185);

SELECT * FROM countries;

-- --------------------------------------------------------

/* 9. Write a SQL statement to insert rows into the table countries in which the value of country_id column will be unique and auto incremented.*/

CREATE TABLE IF NOT EXISTS countries ( 
country_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(40) NOT NULL,
region_id INTEGER NOT NULL
);

INSERT INTO countries(contry_name, region_id) VALUES('India',185);

-- --------------------------------------------------------

/* 10. Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain 
any duplicate data and this will be automatically incremented and the column country_name will be filled up by 'N/A' 
if no value assigned for that column.*/


CREATE TABLE IF NOT EXISTS countries ( 
country_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(40) NOT NULL DEFAULT 'N/A',
region_id INTEGER NOT NULL
);

INSERT INTO countries VALUES(501,'India',102);
SELECT * FROM countries;
INSERT INTO countries(region_id) VALUES(109);
SELECT * FROM countries;
INSERT INTO countries(country_name,region_id) VALUES('Australia',121);
SELECT * FROM countries;

-- --------------------------------------------------------

/* 11. Write a SQL statement to insert rows in the job_history table in which one column job_id is containing those values 
which are exists in job_id column of jobs table.*/

CREATE TABLE IF NOT EXISTS jobs ( 
job_id INTEGER NOT NULL UNIQUE PRIMARY KEY, 
job_title VARCHAR(35) NOT NULL DEFAULT ' ', 
min_salary DECIMAL(6,0) DEFAULT 8000, 
max_salary DECIMAL(6,0) DEFAULT 20000
)ENGINE=InnoDB;

INSERT INTO jobs(job_id, job_title) VALUES(1001,'OFFICER');
INSERT INTO jobs(job_id, job_title) VALUES(1002,'CLERK');

CREATE TABLE job_history ( 
employee_id INTEGER NOT NULL PRIMARY KEY, 
job_id INTEGER NOT NULL, 
department_id INTEGER DEFAULT NULL, 
FOREIGN KEY (job_id) REFERENCES jobs(job_id)
)ENGINE=InnoDB;

INSERT INTO job_history VALUES(501,1001,60);

-- --------------------------------------------------------

/* 12. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and manager_id contains 
a unique value and that combined values must have exists into the table departments.*/

CREATE TABLE IF NOT EXISTS departments ( 
department_id INTEGER NOT NULL UNIQUE, 
department_name VARCHAR(30) NOT NULL, 
manager_id INTEGER DEFAULT NULL, 
location_id INTEGER DEFAULT NULL, 
PRIMARY KEY (department_id, manager_id) 
)ENGINE=InnoDB;


INSERT INTO departments VALUES(60,'SALES',201,89);
INSERT INTO departments VALUES(61,'ACCOUNTS',201,89);
INSERT INTO departments VALUES(80,'FINANCE',211,90);

SELECT * FROM departments;

CREATE TABLE IF NOT EXISTS employees ( 
employee_id INTEGER NOT NULL PRIMARY KEY, 
first_name VARCHAR(20) DEFAULT NULL, 
last_name VARCHAR(25) NOT NULL, 
job_id VARCHAR(10) NOT NULL, 
salary DECIMAL(8,2) DEFAULT NULL, 
manager_id INTEGER DEFAULT NULL, 
department_id INTEGER DEFAULT NULL, 
FOREIGN KEY(department_id, manager_id) 
REFERENCES  departments(department_id, manager_id)
)ENGINE=InnoDB;

INSERT INTO employees VALUES(510,'Alex','Hanes','CLERK',18000,201,60);
INSERT INTO employees VALUES(511,'Kim','Leon','CLERK',18000,211,80);

 SELECT * FROM employees;
 
-- --------------------------------------------------------

/* 13. Write a SQL statement to insert rows into the table employees in which a set of columns department_id and job_id 
contains the values which must have exists into the table departments and jobs. */

CREATE TABLE IF NOT EXISTS departments ( 
department_id INTEGER NOT NULL UNIQUE, 
department_name VARCHAR(30) NOT NULL, 
manager_id INTEGER DEFAULT NULL, 
location_id INTEGER DEFAULT NULL, 
PRIMARY KEY (department_id) 
)ENGINE=InnoDB;

INSERT INTO departments VALUES(60,'SALES',201,89);
INSERT INTO departments VALUES(61,'ACCOUNTS',201,89);

SELECT * FROM departments;

CREATE TABLE IF NOT EXISTS jobs ( 
job_id INTEGER NOT NULL UNIQUE PRIMARY KEY, 
job_title VARCHAR(35) NOT NULL DEFAULT ' ', 
min_salary DECIMAL(6,0) DEFAULT 8000, 
max_salary DECIMAL(6,0) DEFAULT 20000
)ENGINE=InnoDB;

INSERT INTO jobs(JOB_ID,JOB_TITLE) VALUES(1001,'OFFICER');
INSERT INTO jobs(JOB_ID,JOB_TITLE) VALUES(1002,'CLERK');

SELECT * FROM jobs;

CREATE TABLE IF NOT EXISTS employees ( 
employee_id INTEGER NOT NULL PRIMARY KEY, 
first_name VARCHAR(20) DEFAULT NULL, 
last_name VARCHAR(25) NOT NULL, 
department_id INTEGER DEFAULT NULL, 
FOREIGN KEY(department_id) 
REFERENCES  departments(department_id),
job_id INTEGER NOT NULL, 
FOREIGN KEY(job_id) 
REFERENCES  jobs(job_id),
salary DECIMAL(8,2) DEFAULT NULL
)ENGINE=InnoDB;

INSERT INTO employees VALUES(510,'Alex','Hanes',60,1001,18000);

SELECT * FROM employees;

-- --------------------------------------------------------