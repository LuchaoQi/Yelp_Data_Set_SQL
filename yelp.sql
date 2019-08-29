show databases;
create database yelp;
use yelp;

CREATE TABLE table_name (
    table_nameFirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT
);

insert into table_name
(FirstName,LastName,Age)
values ('Luchao','Qi',23);

SELECT * FROM table_name;
SELECT * FROM table_name LIMIT 10;

alter table table_name 
	change FirstName column1 varchar(50),
	change LastName column2 varchar(50),
	change Age column3 int;
    
SELECT column1, column2, column3 FROM table_name;

insert into table_name
	values('expression','Exp',10);

SELECT * FROM table_name WHERE column1 = 'expression';
select * from table_name where column3 = 10;

insert into table_name
	values('A','30',10);
SELECT * FROM table_name WHERE column1 != 'expression';
SELECT * FROM table_name WHERE column2 >= 10;

alter table table_name
	change column3 column3 varchar(20);
insert into table_name 
	values('A','B','123xzy123');
SELECT * FROM table_name WHERE column1 != 'expression' AND column3 LIKE
'%xzy%';

SELECT * FROM table_name WHERE column1 != 'expression' OR column3 LIKE
'%xzy%';

SELECT * FROM table_name ORDER BY column1;
SELECT * FROM table_name ORDER BY column1 DESC;
SELECT DISTINCT(column1) FROM table_name;

insert into table_name
	values ('something','a','10');

SELECT COUNT(*) FROM table_name WHERE column1 = 'something';
SELECT column1, COUNT(column2) FROM table_name GROUP BY column1;

SELECT column1, COUNT(column2) AS number_of_values FROM table_name
GROUP BY column1;


