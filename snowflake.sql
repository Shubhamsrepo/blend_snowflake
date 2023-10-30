-- Set the context for the database and schema
use database demo_db;
use schema public;

-- Set data retention time for various F1 tables
ALTER TABLE F1RESULTS
    SET DATA_RETENTION_TIME_IN_DAYS = 3;
ALTER TABLE F1RACES
    SET DATA_RETENTION_TIME_IN_DAYS = 3;
ALTER TABLE F1LAPTIMES
    SET DATA_RETENTION_TIME_IN_DAYS = 3;
ALTER TABLE F1CIRCUITS
    SET DATA_RETENTION_TIME_IN_DAYS = 3;
ALTER TABLE F1DRIVERS
    SET DATA_RETENTION_TIME_IN_DAYS = 3;
ALTER TABLE F1CONSTRUCTION
    SET DATA_RETENTION_TIME_IN_DAYS = 3;
ALTER TABLE F1STATUS
    SET DATA_RETENTION_TIME_IN_DAYS = 3;

-- Select data from various F1 tables
SELECT * FROM F1RESULTS;
SELECT * FROM F1RACES;
SELECT * FROM F1LAPTIMES;
SELECT * FROM F1CIRCUITS;
SELECT * FROM F1DRIVERS;
SELECT * FROM F1CONSTRUCTION;
SELECT * FROM F1STATUS;

-- (Optional) Perform DELETE operations (commented out for safety)
/*
DELETE FROM F1RESULTS;
DELETE FROM F1RACES;
DELETE FROM F1LAPTIMES;
DELETE FROM F1CIRCUITS;
DELETE FROM F1DRIVERS;
DELETE FROM F1CONSTRUCTION;
DELETE FROM F1STATUS;
*/

-- Create tasks to copy data from uploaded CSV files into respective F1 tables
/*
CREATE OR REPLACE TASK construction_task
    ...

CREATE OR REPLACE TASK results_task
    ...
*/

-- Tasks to insert specific insights into corresponding insight tables
/*
CREATE OR REPLACE TASK insight1_insert_task
    ...

CREATE OR REPLACE TASK insight2_insert_task
    ...

CREATE OR REPLACE TASK insight3_insert_task
    ...

CREATE OR REPLACE TASK insight4_insert_task
    ...
*/

-- Alter tasks to handle insertion and deletion of insights and data tables
/*
ALTER TASKs to RESUME or SUSPEND specific operations and tasks.
*/

-- Create insight tables (commented out if already created)
/*
CREATE TABLE INSIGHT1 (
  driver_id INT,
  forename VARCHAR(255),
  surname VARCHAR(255),
  avg_position DECIMAL(10,4)
);

CREATE TABLE insight2 (
  constructor_reference VARCHAR(255),
  season INT,
  total_points DECIMAL(18,2)
);
CREATE TABLE INSIGHT3 (
  driver_id INT,
  forename VARCHAR(255),
  surname VARCHAR(255),
  relative_pos_change DECIMAL(10,3)
);

CREATE TABLE insight4 (
  circuit_name VARCHAR(255),
  no_of_races INT,
  avg_lap_time DECIMAL(10,3)
);
*/

-- Perform DELETE operations (commented out) on insight tables
/*
DELETE FROM INSIGHT1;
DELETE FROM insight2;
DELETE FROM INSIGHT3;
DELETE FROM insight4;
*/

-- Alter task states to RESUME or SUSPEND based on their operations
/*
ALTER TASKs to RESUME or SUSPEND specific operations and tasks.
*/

-- Show the list of tasks
show tasks;

-- Retrieve task history for 'INSIGHT1_DELETE_TASK'
select *
from table(information_schema.task_history())
where name = 'INSIGHT1_DELETE_TASK'
order by scheduled_time DESC;

-- Create insight tables with specific column definitions
/*
CREATE TABLE INSIGHT1 (
  driver_id INT,
  forename VARCHAR(255),
  surname VARCHAR(255),
  avg_position DECIMAL(10,4)
);

CREATE TABLE insight2 (
  constructor_reference VARCHAR(255),
  season INT,
  total_points DECIMAL(18,2)
);
CREATE TABLE INSIGHT3 (
  driver_id INT,
  forename VARCHAR(255),
  surname VARCHAR(255),
  relative_pos_change DECIMAL(10,3)
);

CREATE TABLE insight4 (
  circuit_name VARCHAR(255),
  no_of_races INT,
  avg_lap_time DECIMAL(10,3)
);
*/

-- Drop insight tables (commented out if needed to delete the tables)
/*
DROP TABLE INSIGHT1;
DROP TABLE insight2;
DROP TABLE INSIGHT3;
DROP TABLE insight4;
*/

-- Show existing tables in the database
SHOW TABLES;
