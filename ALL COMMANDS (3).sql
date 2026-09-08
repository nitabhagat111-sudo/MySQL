# run - control + enter
# with hashtag. comments (notes)

# Type Of Commands

# DDL , DQL , DML, TCL, DCL

# DDL - DATA DEFINATION LANGUAGE
# 1 - CREATE 

CREATE DATABASE 10_30_Batch ;
# use the database - 1st line

USE 10_30_BATCH;

CREATE TABLE employees(
emp_id INT PRIMARY KEY ,
emp_name VARCHAR(50)  ) ;

# 2 - ALTER  - CHANGE THE STRUCTURE
# OF ALREDY CREATED DATABASE/TABLE

ALTER TABLE employees
ADD email VARCHAR(100);


# 3 RENAME  - 

RENAME TABLE employees TO emp_details;


# (DROP , DELETE AND TRUNCATE)

# 4 TRUNCATE - delete all the data only 
TRUNCATE TABLE emp_details;

#5 DROP - DELETE PERMANENTLY

DROP TABLE emp_details;

DROP DATABASE 10_30_batch;

# DDL - DATA DEFINATION LANGUAGE
# CREATE , RENAME, ALTER, DROP, TRUNCATE

# 2 - DML
# DATA MANIPULATION LANGUAGE
# INSERT, UPDATE, DELETE

CREATE DATABASE 10BATCH;
USE 10BATCH;
CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(50) );

# INSERT

INSERT INTO student (student_id, name)
VALUES (01 , "Sudhiksha") ,
(02, "Nikita" ) ;

INSERT INTO student (student_id, name)
VALUES (03, "Nita");

select * from student;

# UPDATE - 

UPDATE student 
SET student_id = 05
WHERE name = "Nita";

SET SQL_SAFE_UPDATES = 0;


UPDATE student 
SET student_id = 05
WHERE name = "Nita";

SELECT * FROM student;

select * from student;

SET SQL_SAFE_UPDATES = 1;

# DELETE - PERTICULER RECORD

DELETE FROM student 
WHERE student_id = 05;


select * from student;

# 3 - DQL - data querry language

# SELECT columns name FROM table name
# *star use for all columns

SELECT student_id FROM student;

SELECT name FROM student;

SELECT student_id , name FROM student;

SELECT * FROM student;

# TCL - TRANSACTION CONTROL LANGUAGE

# 1 - COMMIT - SAVE 
# 2 - ROLLBACK - UNDO - 
# 3 - SAVEPOINT - 
# 4 - ROLLBACK TO SAVEPOINT

# DCL - DATA CONTROL LANGUAGE
# 1 GRANT - GIVE THE PERMISSION 
# 2 REVOKE - CANCEL THE PERMISION

# DDL, DCL, TCL, DQL, DML


# DATA TYPE 
# NUMERICAL - 
 # INT - INTEGER  - 100 , 500454
 # TINYINT - SMALL INTEGER - 1 , 2
 # DECIMAL(10,2) - 5000.45
 # FLOAT 
 # DOUBLE - LARGER FLOAT NO. 4584.982415
 # BIGINT
 
# CATEGORICAL
 # CHAR - CHARACHTER  - fixed length text
 # VARCHAR (Variable Character ) 
 # VARCHAR(100) - TUSHAR
 
# DATETIME  - 2026-09-08 11:35:20
# YEAR - 2026
# MONTH - 09
# DAY - 08
























