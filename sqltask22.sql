
show databases;

use company_data_db;

 desc department;

desc emp;
   
 select * from department;
select * from emp;

select * from emp where salary<1000;

select * from emp where salary>=3000;

select * from emp where departNo=10;

select * from emp where departNo IN(30,40,50);


select * from company_data_db.emp;
insert into company_data_db.emp values(7002,'sham','manager',7698,'2020-06-18',2500.00,0,50);
insert into company_data_db.emp values(7004,'Ravi','clerk',7782,'2020-12-12',500.00,0,50);
insert into company_data_db.emp values(7369,'SMITH','CLERK',7902,'1993-06-13',800.00,0,20);
insert into company_data_db.emp values(7449,'ALLEN','SALESMAN',7698,'1998-08-15',1600.00,300.0,30);
insert into company_data_db.emp values(7521,'WARD','SALESMAN',7698,'1996-03-26',1250.00,500.0,30);
insert into company_data_db.emp values(7566,'JONES','MANAGER',7839,'1995-10-31',2975.00,0,20);
insert into company_data_db.emp values(7654,'MARTIN','SALESMAN',7698,'1998-12-05',1250.00,1400.0,30);
insert into company_data_db.emp values(7698,'BLAKE','MANAGER',7839,'1992-06-11',2850.00,0,30);
insert into company_data_db.emp values(7782,'CLARK','MANAGER',7839,'1993-05-14',2450.00,0,10);
insert into company_data_db.emp values(7788,'SCOTT','ANALYST',7566,'1996-03-05',3000.00,0,20);
insert into company_data_db.emp values(7839,'KING','PRESIDENT',0,'1990-06-09',5000.00,0,10);
insert into company_data_db.emp values(7844,'TURNER','SALESMAN',7698,'1995-06-04',1500.00,0,30);
insert into company_data_db.emp values(7876,'ADAMS','CLERK',7788,'1999-06-04',1100.00,0,20);
insert into company_data_db.emp values(7900,'JAMES','CLERK',7698,'2000-06-23',950.00,0,30);
insert into company_data_db.emp values(7902,'FORD','ANALYST',7566,'1997-12-05',3000.00,0,20);
insert into company_data_db.emp values(7934,'MILLER','CLERK',7782,'2000-01-21',1300.00,0,10);
SELECT * FROM company_data_db.EMP;

update company_data_db.emp set comm=NULL where empno=7000;
select * from company_data_db.emp;
select * from company_data_db.emp;
update company_data_db.emp set comm=NULL where empno=7002;
update company_data_db.emp set comm=NULL where empno=7004;
update company_data_db.emp set comm=NULL where empno=7566;
update company_data_db.emp set comm=NULL where empno=7698;
update company_data_db.emp set comm=NULL where empno=7782;
update company_data_db.emp set comm=NULL where empno=7788;
update company_data_db.emp set comm=NULL where empno=7876;
update company_data_db.emp set comm=NULL where empno=7900;
update company_data_db.emp set comm=NULL where empno=7902;
update company_data_db.emp set comm=NULL where empno=7934;

select * from company_data_db.emp where salary=3000 OR salary<3000;
SELECT * FROM company_data_db.EMP WHERE SALARY!=3000;
SELECT * FROM company_data_db.EMP WHERE JOB IN('CLERK','SALESMAN');
SELECT * FROM company_data_db.EMP WHERE ENAME LIKE '_L%';
select * from company_data_db.emp where salary<>3000;
select * from company_data_db.emp where departNo=10;
select * from company_data_db.emp where  departNo in(30,40,50);
select * from company_data_db.emp where ename like 's%';
select *from company_data_db.emp where ename like '%e_';
select *from company_data_db.emp where ename like '_____';
select *from company_data_db.emp where salary between 2000 and 3000;
select * from company_data_db.emp where salary between 7000 and 7500;
select ename,comm from company_data_db.emp where comm is null;
select * from company_data_db.emp where comm is null;
select * from company_data_db.emp where mgr is null;
select *from company_data_db.emp;
select * from company_data_db.emp where job='salesman' and departNo=30;
select * from company_data_db.emp where ename like 's%' or ename like'a%';
-- select * from company_data_db.emp where not departNo=20 or ename not like 's%'; --
select max(salary), min(salary), avg(salary), count(*) from company_data_db.emp;
select count(*), sum(salary), avg(salary) from company_data_db.emp where departNo=30;
select count(*) from company_data_db.emp where job='clerk' and departNo=30;
select  sum(salary), departNo from company_data_db.emp group by departNo;
select job,max(salary) from company_data_db.emp group by job;
