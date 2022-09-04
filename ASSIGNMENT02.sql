-----ZAID INAMDAR

create table dept(  
  deptno numeric(10) primary key,  
  dname  varchar(20),  
  loc    varchar(20),   
)

select * from dept

create table emp(  
  empno numeric(10) primary key,  
  ename varchar(20),  
  job varchar(20),  
  mgr numeric(10),  
  hiredate date,  
  sal numeric(10),  
  comm numeric(10),  
  deptno numeric(10) foreign key references dept (deptno)   
)

insert into dept
values(10, 'ACCOUNTING', 'NEW YORK')

insert into dept  
values(20, 'RESEARCH', 'DALLAS')

insert into dept  
values(30, 'SALES', 'CHICAGO')

insert into dept  
values(40, 'OPERATIONS', 'BOSTON')

insert into emp  
values(  
 7839, 'KING', 'PRESIDENT', null,  
 '1981-11-17',  
 5000, null, 10  
)

insert into emp  
values(  
 7698, 'BLAKE', 'MANAGER', 7839,  
 '1981-05-01',  
 2850, null, 30  
)

insert into emp  
values(  
 7782, 'CLARK', 'MANAGER', 7839,  
 '1981-06-09'  ,
 2450, null, 10  
)

insert into emp  
values(  
 7566, 'JONES', 'MANAGER', 7839,  
 '1981-04-02',  
 2975, null, 20  
)

insert into emp  
values(  
 7788, 'SCOTT', 'ANALYST', 7566,  
 '1987-07-13',  
 3000, null, 20  
)

update  emp set hiredate='1987-04-19' where empno=7788

insert into emp  
values(  
 7902, 'FORD', 'ANALYST', 7566,  
 '1981-12-03', 
 3000, null, 20  
)

insert into emp  
values(  
 7369, 'SMITH', 'CLERK', 7902,  
 '1980-12-17',  
 800, null, 20  
)

insert into emp  
values(  
 7499, 'ALLEN', 'SALESMAN', 7698,  
 '1981-02-20',  
 1600, 300, 30  
)

insert into emp  
values(  
 7521, 'WARD', 'SALESMAN', 7698,  
 '1981-02-22',  
 1250, 500, 30  
)

insert into emp  
values(  
 7654, 'MARTIN', 'SALESMAN', 7698,  
'1981-09-28', 
 1250, 1400, 30  
)

insert into emp  
values(  
 7844, 'TURNER', 'SALESMAN', 7698,  
 '1981-09-08',  
 1500, 0, 30  
)

insert into emp  
values(  
 7876, 'ADAMS', 'CLERK', 7788,  
 '1987-05-23', 
 1100,null, 20  
)

insert into emp  
values(  
 7900, 'JAMES', 'CLERK', 7698,  
 '1981-12-03',  
 950, null, 30  
)

insert into emp  
values(  
 7934, 'MILLER', 'CLERK', 7782,  
 '1982-01-23',  
 1300, null, 10  
)




-----1
select ename from emp where ename like 'A%'
-----2
select ename from emp where mgr is null
-----3
select ename,empno,sal from emp where sal between 1200 and 1400

-----4
select ename,sal from emp where deptno=20

update emp set sal=sal+(sal*0.1) where deptno=20

select * from emp where deptno=20

-----5

select count(*) as no_of_clerk from emp where job='CLERK' 

-----6

select job,avg(sal) as Avg_salary,count(job) as no_ofemp from emp group by job

-----7

select * from emp where sal in ((select min(sal) from emp),(select max(sal) from emp))

-----8

select b.deptno,b.dname,b.loc from dept b left outer join emp a on a.deptno=b.deptno group by b.deptno,b.dname,b.loc having count(a.deptno)=0

-----9

select ename,sal from emp where job='ANALYST' group by ename,sal,deptno having sal>1200 and deptno=20 order by ename asc 

-----10

select emp.deptno , sum(sal) as total_salary, dept.dname from emp inner join dept on emp.deptno=dept.deptno group by emp.deptno,dept.dname

-----11

select ename,sal from emp  where ename in('MILLER','SMITH')

------12

select ename from emp where ename like 'A%' or ename like 'M%'

-----13
Select ename,sal*12 as yearly_salary from emp where ename='SMITH'

------14
select ename,empno,sal from emp where sal not between 1500 and 2850

-----15
select mgr,count(empno) from emp group by mgr having(count(empno)>2)





