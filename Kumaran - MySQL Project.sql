create database kumaran1;
use kumaran1;
create table employee(EmpId INT,EmpName VARCHAR(30),Dept VARCHAR(30),Contact bigint,Email VARCHAR(30),EmpHeadId INT);
insert into employee value('101','Isha','E-101','9876543210','isha@gmail.com','105');
insert into employee value('102','Priya','E-104','1234567890','priya@yahoo.com','103'),('103','Neha','E-101','1234567890','neha@gmail.com','101'),
('104','Rahul','E-102','1234567890','rahul@yahoo.com','105'),('105','Abhishek','E-101','1234567890','abhishek@gmail.com','102');
select * from employee;
#Task1 - Q1#
select * from employee where empname like 'P%';
#Task1 - Q2#
select * from employee where Email like '%gmail.com';
#Task1 - Q3#
select * from employee where Dept in ('E-104','E-102');
#Task1 - Q4#
select * from employee where empname like '%a';
#Task1 - Q5#
select * from employee where empname like '__h%';

#______________________________________________________TASK 2_________________________________________________________________#

create table worker(Worker_ID int, First_Name varchar(30), Last_Name varchar(30), Salary bigint, Joining_date date, department varchar(10));
insert into worker value
('001','Monika','Arora','100000','2014-02-20 09:00:00','HR'),
('002','Niharika','Verma','80000','2014-06-11 09:00:00','Admin'),
('003','Vishal','Singhal','300000','2014-02-20 09:00:00','HR'),
('004','Amitabh','Singh','500000','2014-02-20 09:00:00','Admin'),
('005','Vivek','Bhati','500000','2014-06-11 09:00:00','Admin'),
('006','Vipul','Diwan','200000','2014-06-11 09:00:00','Account'),
('007','Satish','Kumar','75000','2014-01-20 09:00:00','Account'),
('008','Geetika','Chauhan','90000','2014-04-11 09:00:00','Admin');

create table Table_bonus(Worker_Ref_ID int, Bonus_date date, Bonus_amount int);
Insert into Table_bonus value ('1','2016-02-20 00:00:00','5000'),('2','2016-06-11 00:00:00','3000'),('3','2016-02-20 00:00:00','4000'),('1','2016-02-20 00:00:00','4500'),('2','2016-06-11 00:00:00','3500');
create table Worker_title(Worker_Ref_ID int, Worker_title Varchar(20), Affected_from date);
Insert into Worker_title value('1','Manager','2016-02-20 00:00:00'),('2','Executive','2016-06-11 00:00:00'),('8','Executive','2016-06-11 00:00:00'),('5','Manager','2016-06-11 00:00:00'),('4','Asst. Manager','2016-06-11 00:00:00'),('7','Executive','2016-06-11 00:00:00'),('6','Lead','2016-06-11 00:00:00');
Insert into Worker_title value('3','Lead','2016-06-11 00:00:00');
#Task 2 -  Questions#
select first_name as worker_name from worker; #Q1#
select upper(first_name) from worker; #Q2#
select distinct department from worker; #Q3#
select substring(first_name, 1,3) from worker; #Q4#
select locate('a', first_name) from worker where first_name='Amitabh'; #Q5#
select rtrim(first_name) from worker; #Q6#
select ltrim(department) from worker; #Q7#
select distinct(department), length(department) from worker; #Q8#
select replace(first_name, 'a','A') from worker; #Q9#
select concat(first_name,last_name) as Complete_name from worker; #Q10#
select * from worker order by first_name asc; #Q11#
select * from worker order by department desc; #Q12#
select * from worker where first_name='Vipul'OR first_name='Satish'; #Q13#
select * from worker where first_name not in ('Vipul','Satish'); #Q14#
select concat(first_name,department) as 'Admin' from worker; #Q15#
select * from worker where first_name like 'a%'; #Q16#
select * from worker where first_name like '%a'; #Q17#
select * from worker where first_name like '%h' and length(first_name)=6; #Q18#
select * from worker where salary between '100000' and '500000'; #Q19#
select * from worker where Joining_date like '2014-02-__'; #Q20#
select department, count(*) as department_count from worker where department='Admin'; #Q21#
select concat(first_name,' ',Last_name) as worker_name, salary from worker where salary between 50000 and 100000; #Q22#
select department, count(*) as total_worker from worker group by department order by total_worker desc; #Q23#
select * from worker_title where worker_title like '%Manager'; #Q24#
select salary, department, count(*) as duplicate_records from worker group by salary, department having count(*)>1; #Q25#
select * from (select *, Row_number()over(order by Worker_ID, First_name, Last_name, salary, department) as row_id from worker) as temp_tab where row_id%2=1; #Q26#
select * from (select *, Row_number()over(order by Worker_ID, First_name, Last_name, salary, department) as row_id from worker) as temp_tab where row_id%2=0; #Q27#
select curdate(), current_time(); #Q28#
select * from worker order by salary desc limit 10; #29#
select * from worker order by salary desc limit 1 offset 4; #30#
select first_name, salary from worker where salary in(select salary from worker group by salary having count(*)>1); #31#
select * from worker order by salary desc limit 1 offset 2; #32#
select * from (select *, Row_number()over(order by Worker_ID, First_name, Last_name, salary, department) as row_id from worker) as row_num 
where row_id<=(select count(*) from worker)/2; #33#
select department, count(*) as No_of_Emp from worker group by department having count(*)<5; #34#
select department, count(*) as No_of_Emp from worker group by department; #35#
select * from worker order by worker_id desc limit 1; #36#
Select first_name, department, salary from worker where salary in (select max(salary) from worker group by department); #37#
select salary from worker order by salary desc limit 3; #38#
select department, sum(salary) as Total_sal from worker group by department; #39#
select first_name from worker where salary=(select max(salary) from worker); #40#
